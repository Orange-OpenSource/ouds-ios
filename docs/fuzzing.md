# Fuzzing with ClusterFuzzLite

This document explains how fuzzing is wired into the `Orange-OpenSource/ouds-ios` repository, how to add a new fuzzer target, and how to run the fuzzer locally on macOS.

---

## Overview

The repository uses **[ClusterFuzzLite](https://github.com/google/clusterfuzzlite)** (CFLite) for continuous fuzz testing. Fuzzing runs natively on **macOS** runners (no Docker required) using two GitHub Actions workflows:

| Workflow | File | Trigger | Mode |
|---|---|---|---|
| PR fuzzing | `.github/workflows/cflite_pr.yml` | `pull_request` | `code-change` (600 s) |
| Batch fuzzing | `.github/workflows/cflite_batch.yml` | Scheduled (every 6 h) | `batch` (3600 s) |

Both workflows use `macos-latest` runners and the `address` sanitizer (AddressSanitizer + libFuzzer).

---

## Architecture

```
Sources/
└── Fuzzers/
    └── OUDSSwiftUIFuzzer/
        └── main.swift          ← libFuzzer entry point + Swift executable stub

infra/
└── build.sh                    ← native macOS build script (no Docker)

.github/workflows/
├── cflite_pr.yml               ← PR / code-change fuzzing
└── cflite_batch.yml            ← scheduled batch fuzzing
```

### Fuzzer target (`OUDSSwiftUIFuzzer`)

* Declared as an `executableTarget` in `Package.swift`.
* Depends on `OUDSFoundations` — the leaf dependency of `OUDSSwiftUI` that contains pure, deterministic logic (string utilities, WCAG colour-contrast maths, hex-colour parsing).
* Exports `LLVMFuzzerTestOneInput` with `@_cdecl`, which libFuzzer calls with arbitrary byte sequences.
* Also has a normal `main()` (top-level Swift code) so that `swift build --target OUDSSwiftUIFuzzer` works for everyday development without sanitizer flags.

### Build script (`infra/build.sh`)

The script:
1. Runs `swift build --target OUDSSwiftUIFuzzer -c release -Xswiftc -sanitize=address` to compile with ASan instrumentation.
2. Re-links the produced object files with `clang++ -fsanitize=fuzzer,address` so that libFuzzer's `main()` is used instead of Swift's generated entry point.
3. Copies the binary to `$OUT/OUDSSwiftUIFuzzer`.

Environment variables accepted by the script:

| Variable | Default | Description |
|---|---|---|
| `OUT` | `./out` | Destination directory for the compiled fuzzer binary |
| `SANITIZER` | `address` | `address`, `undefined`, or `coverage` |

---

## Running the fuzzer locally on macOS

### Prerequisites

* Xcode command-line tools installed (`xcode-select --install`)
* Swift 6.2 or later (`swift --version`)

### 1. Build the fuzzer

```bash
# From the repository root
SANITIZER=address OUT=/tmp/ouds-fuzzers bash infra/build.sh
```

This produces `/tmp/ouds-fuzzers/OUDSSwiftUIFuzzer`.

### 2. Run the fuzzer

```bash
# Create a corpus directory (reused across runs to accumulate interesting inputs)
mkdir -p /tmp/ouds-corpus

# Run the fuzzer for 60 seconds
/tmp/ouds-fuzzers/OUDSSwiftUIFuzzer /tmp/ouds-corpus -max_total_time=60
```

Common libFuzzer flags:

```bash
# Limit input size to 1 KB and run indefinitely
/tmp/ouds-fuzzers/OUDSSwiftUIFuzzer /tmp/ouds-corpus -max_len=1024

# Replay a single crashing input
/tmp/ouds-fuzzers/OUDSSwiftUIFuzzer crash-<hash>
```

### 3. Normal package build (without sanitizers)

The fuzzer target also builds cleanly without any special flags:

```bash
swift build --target OUDSSwiftUIFuzzer
```

This is useful for checking that the target compiles after changes.

---

## Adding a new fuzzer target

1. **Create the source file**

   ```
   Sources/Fuzzers/<YourFuzzerName>/main.swift
   ```

   Minimal template:

   ```swift
   import Foundation
   import OUDSFoundations  // or whichever OUDS module you want to fuzz

   @_cdecl("LLVMFuzzerTestOneInput")
   public func LLVMFuzzerTestOneInput(_ data: UnsafePointer<UInt8>?, _ size: Int) -> Int32 {
       guard let data, size > 0 else { return 0 }
       let bytes = Data(bytes: data, count: size)
       // Call the function / logic you want to fuzz
       return 0
   }

   // Normal executable entry point (non-fuzzing builds)
   print("<YourFuzzerName>: libFuzzer target — see docs/fuzzing.md")
   ```

2. **Register the target in `Package.swift`**

   Inside the `targets` array, add:

   ```swift
   .executableTarget(
       name: "<YourFuzzerName>",
       dependencies: ["OUDSFoundations"],   // adjust as needed
       path: "Sources/Fuzzers/<YourFuzzerName>"),
   ```

3. **Extend `infra/build.sh`**

   The script already collects all static archives produced by the build; it only needs to know which target to build. Duplicate the `swift build` and `clang++` steps, replacing `OUDSSwiftUIFuzzer` with your new target name.

4. **Verify locally**

   ```bash
   swift build --target <YourFuzzerName>          # normal build
   SANITIZER=address OUT=/tmp/fuzz bash infra/build.sh  # fuzzing build
   /tmp/fuzz/<YourFuzzerName> -max_total_time=30  # quick smoke test
   ```

---

## Guidelines for writing fuzz targets

* **Do** exercise deterministic, side-effect-free code (parsers, converters, formatters, math utilities).
* **Do** cover error paths — e.g., invalid hex colours, out-of-range indices.
* **Don't** call UI code (`View`, `Environment`, layout) — these require a running app context.
* **Don't** use network or file I/O — keep the fuzzer self-contained.
* **Don't** call `OUDSLogger.fatal` or other `Never`-returning functions; those terminate the process and would be reported as crashes.

---

## CI integration

Both workflows build the fuzzers natively before calling `run_fuzzers@v1`.  No Docker image (`infra/Dockerfile`) is required.  The `run_fuzzers` action uploads any crashes as SARIF reports to the GitHub Security tab.

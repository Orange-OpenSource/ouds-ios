fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

## iOS

### ios check_dead_code

```sh
[bundle exec] fastlane ios check_dead_code
```

RUN PERIPHERY FOR DEAD CODE ANALYSIS

### ios format

```sh
[bundle exec] fastlane ios format
```

RUN SWIFT FORMAT TO FORMAT SOURCES

### ios lint

```sh
[bundle exec] fastlane ios lint
```

RUN SWIFT LINT TO CHECK SMELLS

### ios check_leaks

```sh
[bundle exec] fastlane ios check_leaks
```

RUN GITLEAKS FOR SECET LEAKS SCAN

### ios build

```sh
[bundle exec] fastlane ios build
```

BUILD THE SWIFT PACKAGE

### ios test_unit

```sh
[bundle exec] fastlane ios test_unit
```

RUN UNIT TESTS OF SWIFT PAKCAGE

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).

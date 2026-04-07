---
type: ai-agent-guide
framework: OUDS-iOS
language: Swift
ui-framework: SwiftUI
platforms: [iOS, iPadOS, macOS, visionOS, watchOS, tvOS]
min-deployment: iOS 15.0
---

# OUDS iOS - AI Agent Guide

OUDS (Orange Unified Design System) is a Swift Package providing design tokens, themes and SwiftUI components for Orange Group products.
The demo application is called "Design System Toolbox".
The project is open source (MIT) at https://github.com/Orange-OpenSource/ouds-ios.
Target platforms: iOS 15, iPadOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16. Language: Swift 6 / SwiftUI.

## Skills

Load skills on demand for detailed guidance:

- **`ouds-vocabulary`** — glossary of OUDS-specific terms (tokenator, token types, theme, …)
- **`ouds-framework-usage`** — full usage reference: imports, themes, tokens, view modifiers, all components with code examples

## Key files

| File | Purpose |
|------|---------|
| `.github/copilot-instructions.md` | Architecture, build commands, best practices, accessibility, ecodesign, review checklist |
| `Package.swift` | Swift Package manifest — targets, products, dependencies |
| `.swiftformat` / `.swiftlint.yml` | Code style configuration |

## Critical rules

- Always load the **`ouds-vocabulary`** skill before discussing tokens or themes.
- Always load the **`ouds-framework-usage`** skill before writing or reviewing code that uses OUDS components or tokens.
- Before committing: format → build → fix errors → run tests → lint (see `.github/copilot-instructions.md` §3).
- Use `#available` for iOS 26 SDK APIs (min deployment is iOS 15).
- Use `#if os(…)` for platform-specific code.
- Never use UIKit unless strictly required for an accessibility API.

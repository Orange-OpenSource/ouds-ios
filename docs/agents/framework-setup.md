---
type: ai-agent-skills
topic: framework-setup
framework: OUDS-iOS
---

# OUDS iOS – Framework Setup

## Import

Import the OUDS umbrella product, which gathers all libraries (components, themes, tokens):

```swift
import OUDSSwiftUI
```

Other granular imports are documented at
<https://ios.unified-design-system.orange.com/documentation/oudsthemescontract/gettingstarted>.

## Instantiate a theme

| Theme | Use case |
|-------|----------|
| `OrangeTheme()` | Default Orange products |
| `OrangeCompactTheme()` | Orange products with compact spacing |
| `SoshTheme()` | Sosh products |
| `WireframeTheme()` | Prototyping / mockups |

```swift
let theme = OrangeTheme()
```

## Inject the theme

Wrap the root view with `OUDSThemeableView`. This sets up all required environment objects.

```swift
@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: OrangeTheme()) {
                ContentView()
            }
        }
    }
}
```

## Read the theme in a view

```swift
@Environment(\.theme) private var theme
```

## Full minimal example

```swift
import SwiftUI
import OUDSSwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: OrangeTheme()) {
                ContentView()
            }
        }
    }
}

struct ContentView: View {
    @Environment(\.theme) private var theme
    @State private var isToggled = false

    var body: some View {
        VStack(spacing: theme.spaces.fixedMedium) {
            OUDSButton(text: "Primary Action", appearance: .default) { }
            OUDSSwitch(isOn: $isToggled, accessibilityLabel: "Toggle setting")
        }
        .padding(theme.spaces.fixedLarge)
    }
}
```

## Available token namespaces

Access semantic tokens through the injected theme:

| Namespace | Access |
|-----------|--------|
| Colors | `theme.colors` |
| Color modes | `theme.colorModes` |
| Borders | `theme.borders` |
| Fonts | `theme.fonts` |
| Sizes | `theme.sizes` |
| Spaces | `theme.spaces` |
| Dimensions | `theme.dimensions` |
| Elevations | `theme.elevations` |
| Grids | `theme.grids` |
| Opacities | `theme.opacities` |
| Effects | `theme.effects` |

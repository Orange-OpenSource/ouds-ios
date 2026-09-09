---
name: ouds-ios-guide-create-theme
description: Use when the user wants to create a custom OUDS theme or brand theme for an iOS app — covers subclassing OrangeTheme, building a theme from scratch on OUDSTheme, mixing existing providers, local custom fonts (.ttf registration), and tuning.
license: MIT
---

# Skill: ouds-ios-guide-create-theme

Step-by-step guide to create a **custom OUDS theme** for an iOS/iPadOS app.

---

## 0. Prerequisites — ask the user first

Before writing any code, ask the user these two questions:

**Question 1 — Which strategy?**

| Strategy | When to choose |
|---|---|
| **A — Subclass `OrangeTheme`** *(recommended)* | Orange brand assets are needed; only some tokens differ from Orange defaults |
| **B — From scratch on `OUDSTheme`** | Fully independent brand (no Orange assets); all tokens are custom |
| **C — Mix existing providers** | Compose providers from existing themes without creating a new subclass |

**Question 2 — Custom fonts?**

Does the theme need to embed `.ttf` font files? If yes, collect:
- Font family name (as shown in Font Book)
- PostScript name for each weight used

---

## 📚 Reference documentation

To get the full list of properties / tokens by protocols:

- **General OUDS documentation** : https://ios.unified-design-system.orange.com

- **Semantic tokens** : https://ios.unified-design-system.orange.com/documentation/oudsTokensSemantic/
  - `ColorSemanticTokens` : https://ios.unified-design-system.orange.com/documentation/oudsTokensSemantic/ColorSemanticTokens
  - `BorderSemanticTokens` : https://ios.unified-design-system.orange.com/documentation/oudsTokensSemantic/BorderSemanticTokens
  - `DimensionSemanticTokens` : https://ios.unified-design-system.orange.com/documentation/oudsTokensSemantic/DimensionSemanticTokens
  - `SizeSemanticTokens` : https://ios.unified-design-system.orange.com/documentation/oudsTokensSemantic/SizeSemanticTokens
  - `SpaceSemanticTokens` : https://ios.unified-design-system.orange.com/documentation/oudsTokensSemantic/SpaceSemanticTokens
  - `FontSemanticTokens` : https://ios.unified-design-system.orange.com/documentation/oudsTokensSemantic/FontSemanticTokens
  - etc.

- **Component tokens** : https://ios.unified-design-system.orange.com/documentation/oudsTokensComponent/
  - `ButtonComponentTokens` : https://ios.unified-design-system.orange.com/documentation/oudsTokensComponent/ButtonComponentTokens
  - `TextInputComponentTokens` : https://ios.unified-design-system.orange.com/documentation/oudsTokensComponent/TextInputComponentTokens
  - etc.

> **Tip** : To see all properties / tokens of a provider, look in files `Values/SemanticTokens/` or `Values/ComponentTokens/` in Orange theme from OUDS iOS repository.

---

## 1. Inheritance hierarchy

```
OUDSTheme                    ← base "abstract" class (open)
    │
    └── OrangeTheme          ← open, the ONLY publicly subclassable theme
            │
            └── YourTheme    ← your app's custom theme (Strategy A)

OUDSTheme
    └── YourTheme            ← from-scratch theme (Strategy B)
```

> **Rule:** Only `OrangeTheme` can be subclassed by external code.
> `SoshTheme`, `OrangeCompactTheme`, and `WireframeTheme` are all `final`
> but their tokens providers can be reused.

---

## 2. Strategy A — Subclass `OrangeTheme` *(recommended)*

### 2.1 Import

```swift
import OUDSThemesOrange
// or the umbrella product that includes it:
import OUDSSwiftUIOrange
```

### 2.2 Override only the providers you need

Each provider inherits from an `OrangeThemeXxxProvider` class. Override `@objc open` properties.

**Semantic token providers available to override** (Layer 2 — generic tokens):

| What to override | Orange base class to inherit |
|---|---|
| Borders (style / width / radius) | `OrangeThemeBorderSemanticTokensProvider` |
| Colors (light + dark via `MultipleColorSemanticToken`) | `OrangeThemeColorSemanticTokensProvider` |
| Color modes (for `OUDSColoredSurface`) | `OrangeThemeColorModeSemanticTokensProvider` |
| Color charts | `OrangeThemeColorChartSemanticTokensProvider` |
| Color decorative | `OrangeThemeColorDecorativeSemanticTokensProvider` |
| Effects | `OrangeThemeEffectSemanticTokensProvider` |
| Elevations / shadows | `OrangeThemeElevationSemanticTokensProvider` |
| Typography / fonts | `OrangeThemeFontSemanticTokensProvider` |
| Grids | `OrangeThemeGridSemanticTokensProvider` |
| Opacities | `OrangeThemeOpacitySemanticTokensProvider` |
| Dimensions (base scale) | `OrangeThemeDimensionSemanticTokensProvider` |
| Sizes (icon, component) | `OrangeThemeSizeSemanticTokensProvider` |
| Spaces (fixed, scaled) | `OrangeThemeSpaceSemanticTokensProvider` |

**Component token providers available to override** (Layer 3 — component-specific tokens):

| Component | Orange base class |
|---|---|
| Alert messages | `OrangeThemeAlertComponentTokensProvider` |
| Badge | `OrangeThemeBadgeComponentTokensProvider` |
| Bar (tab bar / toolbar) | `OrangeThemeBarComponentTokensProvider` |
| Bullet list | `OrangeThemeBulletListComponentTokensProvider` |
| Button | `OrangeThemeButtonComponentTokensProvider` |
| Checkbox | `OrangeThemeCheckboxComponentTokensProvider` |
| Chip | `OrangeThemeChipComponentTokensProvider` |
| Divider | `OrangeThemeDividerComponentTokensProvider` |
| Icon | `OrangeThemeIconComponentTokensProvider` |
| Link | `OrangeThemeLinkComponentTokensProvider` |
| List item | `OrangeThemeListItemComponentTokensProvider` |
| Pin code input | `OrangeThemePinCodeInputComponentTokensProvider` |
| Quantity input | `OrangeThemeQuantityInputComponentTokensProvider` |
| Radio button | `OrangeThemeRadioButtonComponentTokensProvider` |
| Select input | `OrangeThemeSelectInputComponentTokensProvider` |
| Skeleton | `OrangeThemeSkeletonComponentTokensProvider` |
| Switch | `OrangeThemeSwitchComponentTokensProvider` |
| Tag | `OrangeThemeTagComponentTokensProvider` |
| Input tag | `OrangeThemeInputTagComponentTokensProvider` |
| Text area | `OrangeThemeTextAreaComponentTokensProvider` |
| Text input | `OrangeThemeTextInputComponentTokensProvider` |

Etc.

### 2.3 Example provider overrides

```swift
import OUDSTokensRaw

// Colors
class YourThemeColorProvider: OrangeThemeColorSemanticTokensProvider {
    override var bgSecondary: MultipleColorSemanticToken {
        MultipleColorSemanticToken(
            light: ColorRawTokens.colorDecorativeAmber500,
            dark:  OrangeBrandColorRawTokens.colorOrange900)
    }
    override var actionEnabled: MultipleColorSemanticToken {
        MultipleColorSemanticToken(
            light: ColorRawTokens.colorDecorativeShockingPink100,
            dark:  ColorRawTokens.functionalScarlet600)
    }
}

// Borders
class YourThemeBorderProvider: OrangeThemeBorderSemanticTokensProvider {
    override var styleDefault: BorderStyleSemanticToken { BorderRawTokens.styleDashed }
    override var radiusLarge:  BorderRadiusSemanticToken { BorderRawTokens.radius800 }
}

// Elevations
class YourThemeElevationProvider: OrangeThemeElevationSemanticTokensProvider {
    override var stickyEmphasized: ElevationCompositeSemanticToken {
        ElevationCompositeSemanticToken(ElevationRawTokens.bottom_4_600)
    }
}

// Opacities
class YourThemeOpacityProvider: OrangeThemeOpacitySemanticTokensProvider {
    override var strong: OpacitySemanticToken { OpacityRawTokens._920 }
}

// Spaces
class YourThemeSpaceProvider: OrangeThemeSpaceSemanticTokensProvider {
    override var fixedMedium: SpaceSemanticToken { DimensionRawTokens._400 }
    override var scaledSmall: MultipleSpaceSemanticToken {
        MultipleSpaceSemanticToken(compact: fixed5xl, regular: fixed5xl)
    }
}

// Sizes
class YourThemeSizeProvider: OrangeThemeSizeSemanticTokensProvider {
    override var iconDecorative2xl: SizeSemanticToken { DimensionRawTokens._300 }
}

// Grids
class YourThemeGridProvider: OrangeThemeGridSemanticTokensProvider {
    override var extraCompactColumnGap: GridSemanticToken { GridRawTokens.columnGap200 }
    override var compactColumnGap:      GridSemanticToken { GridRawTokens.columnGap200 }
    override var regularColumnGap:      GridSemanticToken { GridRawTokens.columnGap200 }
}

// Font (typography scale)
class YourThemeFontProvider: OrangeThemeFontSemanticTokensProvider {
    override var displayLarge: MultipleFontCompositeSemanticToken {
        MultipleFontCompositeSemanticToken(FontCompositeSemanticToken(
            size:          sizeDisplayLargeMobile,
            lineHeight:    lineHeightDisplayLargeMobile,
            weight:        weightDisplay,
            letterSpacing: letterSpacingDisplayLargeMobile))
    }
}
```

### 2.4 Theme class skeleton

```swift
import OUDSThemesContract
import OUDSTokensRaw

class YourTheme: OUDSTheme {

    static let name = "YourBrand"

    override init() {
        // Only instantiate providers you need to override.
        // All other parameters default to the Orange equivalents.
        let colors  = YourThemeColorProvider()
        let borders = YourThemeBorderProvider()
        let fonts   = YourThemeFontProvider()
        // … add only the providers you override …

        super.init(
            colors:  colors,
            borders: borders,
            fonts:   fonts,
            // Leave unspecified parameters as nil → Orange defaults are used if OrangeTheme used as super class.
            name:    Self.name,
            tuning:  Tuning.default,  // see §5 for tuning options
            hasTypographyHeadingLargeMarker: true  // see §5.1, OUDSTheme subclass required for this parameter
        )
    }
}
```

> All `super.init` parameters are **optional** (`? = nil`). Omit those you don't override.

---

## 3. Strategy B — From scratch on `OUDSTheme`

> **Warning:** This requires implementing all providers — potentially hundreds of `@objc open`
> property overrides. Use only for fully independent brands with no Orange assets.
> See `SoshTheme` in the OUDS source as the canonical reference.

### 3.1 Import

```swift
import OUDSThemesContract   // OUDSTheme base + AllXxx protocols
import SwiftUI
import CoreText              // only if registering custom fonts
```

### 3.2 Provider instantiation order

Respect dependency order — some providers take others as constructor arguments:

```
1. borders, colors, effects, elevations, fonts, grids, opacities
2. dimensions                              ← standalone
3. colorModes(colors:)                     ← depends on colors
4. sizes(dimensions:), spaces(dimensions:) ← depend on dimensions
5. All component providers                 ← depend on the semantic providers above
```

### 3.3 Full `AllXxx` protocol list

**Semantic providers (all mandatory except ✦):**

| `super.init` parameter | Protocol to implement | Notes |
|---|---|---|
| `borders` | `AllBorderSemanticTokensProvider` | |
| `colors` | `AllColorSemanticTokensProvider` | |
| `colorModes` | `AllColorModeSemanticTokensProvider` | depends on `colors` |
| `colorsCharts` | `AllColorChartSemanticTokensProvider` | ✦ optional, may be `nil` |
| `colorsDecorative` | `AllColorDecorativeSemanticTokensProvider` | ✦ optional, may be `nil` |
| `effects` | `AllEffectSemanticTokensProvider` | |
| `elevations` | `AllElevationSemanticTokensProvider` | |
| `fonts` | `AllFontSemanticTokensProvider` | |
| `grids` | `AllGridSemanticTokensProvider` | |
| `opacities` | `AllOpacitySemanticTokensProvider` | |
| `dimensions` | `AllDimensionSemanticTokensProvider` | |
| `sizes` | `AllSizeSemanticTokensProvider` | depends on `dimensions` |
| `spaces` | `AllSpaceSemanticTokensProvider` | depends on `dimensions` |

**Theme flags (Strategy B):**

| Parameter | Type | Description |
|-----------|------|-------------|
| `hasTypographyHeadingLargeMarker` | `Bool` | If `true`, displays a decorative marker below `OUDSHeading` when `size == .large` and `hasMarker: true`. Default: `false`. |

**Component providers (all mandatory):**

| `super.init` parameter | Protocol to implement |
|---|---|
| `alert` | `AllAlertComponentTokensProvider` |
| `badge` | `AllBadgeComponentTokensProvider` |
| `bar` | `AllBarComponentTokensProvider` |
| `bulletList` | `AllBulletListComponentTokensProvider` |
| `button` | `AllButtonComponentTokensProvider` |
| `checkbox` | `AllCheckboxComponentTokensProvider` |
| `chip` | `AllChipComponentTokensProvider` |
| `divider` | `AllDividerComponentTokensProvider` |
| `icon` | `AllIconComponentTokensProvider` |
| `link` | `AllLinkComponentTokensProvider` |
| `listItem` | `AllListItemComponentTokensProvider` |
| `pinCodeInput` | `AllPinCodeInputComponentTokensProvider` |
| `quantityInput` | `AllQuantityInputComponentTokensProvider` |
| `radioButton` | `AllRadioButtonComponentTokensProvider` |
| `selectInput` | `AllSelectInputComponentTokensProvider` |
| `skeleton` | `AllSkeletonComponentTokensProvider` |
| `switch` | `AllSwitchComponentTokensProvider` |
| `tag` | `AllTagComponentTokensProvider` |
| `inputTag` | `AllInputTagComponentTokensProvider` |
| `textArea` | `AllTextAreaComponentTokensProvider` |
| `textInput` | `AllTextInputComponentTokensProvider` |

See init of `OrangeTheme` or `OUDSTheme` for fill list.

### 3.4 Theme class skeleton

```swift
import Foundation
import OUDSThemesContract
import SwiftUI
// import CoreText  ← add only if using custom fonts

// swiftlint:disable function_body_length
public final class YourTheme: OUDSTheme, @unchecked Sendable {

    public static let name = "YourBrand"
    nonisolated(unsafe) private static var fontsAlreadyRegistered = false

    public init() {

        // ── Semantic providers ──────────────────────────────────────────
        let borders          = YourThemeBorderSemanticTokensProvider()
        let colors           = YourThemeColorSemanticTokensProvider()
        let colorModes       = YourThemeColorModeSemanticTokensProvider(colors: colors)
        // let colorsCharts  = YourThemeColorChartSemanticTokensProvider()   // optional
        // let colorsDecorative = YourThemeColorDecorativeSemanticTokensProvider() // optional
        let effects          = YourThemeEffectSemanticTokensProvider()
        let elevations       = YourThemeElevationSemanticTokensProvider()
        let fonts            = YourThemeFontSemanticTokensProvider()
        let grids            = YourThemeGridSemanticTokensProvider()
        let opacities        = YourThemeOpacitySemanticTokensProvider()
        let dimensions       = YourThemeDimensionSemanticTokensProvider()
        let sizes            = YourThemeSizeSemanticTokensProvider(dimensions: dimensions)
        let spaces           = YourThemeSpaceSemanticTokensProvider(dimensions: dimensions)

        // ── Component providers ─────────────────────────────────────────
        let alert        = YourThemeAlertComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces)
        let badge        = YourThemeBadgeComponentTokensProvider(spaces: spaces, dimensions: dimensions)
        let bar          = YourThemeBarComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, opacities: opacities, effects: effects)
        let bulletList   = YourThemeBulletListComponentTokensProvider(spaces: spaces)
        let button       = YourThemeButtonComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
        let checkbox     = YourThemeCheckboxComponentTokensProvider(sizes: sizes, borders: borders)
        let chip         = YourThemeChipComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
        let divider      = YourThemeDividerComponentTokensProvider(borders: borders)
        let icon         = YourThemeIconComponentTokensProvider(colors: colors)
        let link         = YourThemeLinkComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces)
        let listItem     = YourThemeListItemComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
        let pinCodeInput = YourThemePinCodeInputComponentTokensProvider(spaces: spaces, dimensions: dimensions)
        let quantityInput = YourThemeQuantityInputComponentTokensProvider(sizes: sizes, spaces: spaces)
        let radioButton  = YourThemeRadioButtonComponentTokensProvider(sizes: sizes, borders: borders)
        let selectInput  = YourThemeSelectInputComponentTokensProvider(dimensions: dimensions)
        let skeleton     = YourThemeSkeletonComponentTokensProvider(colors: colors)
        let `switch`     = YourThemeSwitchComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, opacities: opacities, dimensions: dimensions)
        let tag          = YourThemeTagComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces, dimensions: dimensions)
        let inputTag     = YourThemeInputTagComponentTokensProvider(borders: borders, colors: colors)
        let textArea     = YourThemeTextAreaComponentTokensProvider(sizes: sizes, spaces: spaces)
        let textInput    = YourThemeTextInputComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)

        // ── Super init ──────────────────────────────────────────────────
        super.init(
            borders:       borders,
            colors:        colors,
            colorModes:    colorModes,
            // colorsCharts: colorsCharts,         // omit if not used
            // colorsDecorative: colorsDecorative, // omit if not used
            effects:       effects,
            elevations:    elevations,
            fonts:         fonts,
            grids:         grids,
            opacities:     opacities,
            dimensions:    dimensions,
            sizes:         sizes,
            spaces:        spaces,
            alert:         alert,
            badge:         badge,
            bar:           bar,
            bulletList:    bulletList,
            button:        button,
            checkbox:      checkbox,
            chip:          chip,
            divider:       divider,
            icon:          icon,
            link:          link,
            listItem:      listItem,
            pinCodeInput:  pinCodeInput,
            quantityInput: quantityInput,
            radioButton:   radioButton,
            selectInput:   selectInput,
            skeleton:      skeleton,
            switch:        `switch`,
            tag:           tag,
            inputTag:      inputTag,
            textArea:      textArea,
            textInput:     textInput,
            resourcesBundle: Bundle.YourTheme,  // see §6 for custom fonts
            name:          Self.name,
            fontFamily:    "YourFontFamilyName", // nil = system font
            tuning:        Tuning.default,
            hasTypographyHeadingLargeMarker: true)  // see §5.1

        registerFonts()  // only if using custom fonts — see §6
    }

    deinit {}
}
// swiftlint:enable function_body_length
```

---

## 4. Strategy C — Mix existing providers

No new subclass needed. Instantiate providers from existing themes and pass them directly to `OrangeTheme` or `OUDSTheme`:

```swift
import OUDSThemesOrange

// Reuse most Orange providers, only replace colors:
let dimensions = OrangeThemeDimensionSemanticTokensProvider()
let borders    = OrangeThemeBorderSemanticTokensProvider()
let colors     = YourOwnColorSemanticTokensProvider()  // custom
let sizes      = OrangeThemeSizeSemanticTokensProvider(dimensions: dimensions)
let spaces     = OrangeThemeSpaceSemanticTokensProvider(dimensions: dimensions)

// Component providers that depend on colors must receive the custom one:
let button = OrangeThemeButtonComponentTokensProvider(
                 sizes: sizes, borders: borders, colors: colors, spaces: spaces)

// Inject directly — no subclass required:
let theme = OrangeTheme(colors: colors, button: button)
```

Or wrap in a named class for reuse across the app:

```swift
class YourTheme: OrangeTheme {
    override init() {
        let dimensions = OrangeThemeDimensionSemanticTokensProvider()
        let borders    = OrangeThemeBorderSemanticTokensProvider()
        let colors     = YourOwnColorSemanticTokensProvider()
        let sizes      = OrangeThemeSizeSemanticTokensProvider(dimensions: dimensions)
        let spaces     = OrangeThemeSpaceSemanticTokensProvider(dimensions: dimensions)
        let button     = OrangeThemeButtonComponentTokensProvider(
                             sizes: sizes, borders: borders, colors: colors, spaces: spaces)
        super.init(colors: colors, button: button)
    }
}
```

---

## 5. Tuning & Flags

Tuning controls brand-level UI decisions for corner rounding. Only `OrangeTheme` (and its subclasses) support tuning.

```swift
// Custom tuning:
let tuning = Tuning(
    hasRoundedButtons:       true,   // rounded corners on buttons
    hasRoundedTextInputs:    true,   // rounded corners on text / PIN / password / text area inputs
    hasRoundedAlertMessages: false)  // rounded corners on alert messages

let theme = OrangeTheme(tuning: tuning)
// or: YourTheme(tuning: tuning) if your init forwards the parameter

// Predefined tunings:
OrangeTheme(tuning: Tuning.default)        // all false
OrangeTheme(tuning: Tuning.OrangeFrance)   // same as default
OrangeTheme(tuning: Tuning.OrangeBusiness) // rounded inputs + alerts
OrangeTheme(tuning: Tuning.MaxIt)          // everything rounded
```

### 5.1 Theme flags

Additional boolean flags control specific UI behaviors:

| Flag | Description |
|------|-------------|
| `hasTypographyHeadingLargeMarker` | If `true`, displays a decorative marker below `OUDSHeading` when `size == .large` and `hasMarker: true`. Force to `true` for Orange-style brand markers and Wireframe brand. Subclass `OUDSTheme` to have the parameter in init (default: `false`). |

```swift
// Enable heading marker (e.g., for Orange-style themes):
let theme = OUDSTheme(hasTypographyHeadingLargeMarker: true)

// Disable it (default behavior):
let theme = OUDSTheme(hasTypographyHeadingLargeMarker: false)
```

For a from-scratch theme (Strategy B), declare a custom predefined tuning in an extension:

```swift
extension Tuning {
    public static let YourBrand = Tuning(
        hasRoundedButtons:       false,
        hasRoundedTextInputs:    false,
        hasRoundedAlertMessages: true)
}
```

Then pass it as `tuning: Tuning.YourBrand` in `super.init`.

---

## 6. Custom fonts (.ttf files)

### 6.1 Add font files to the Swift Package target

Place `.ttf` files inside the target's `Resources/` folder. Declare them in `Package.swift`:

```swift
.target(
    name: "YourTheme",
    resources: [.process("Resources")]
)
```

### 6.2 Expose `Bundle.module` under a named alias

```swift
// YourTheme+Bundle.swift
import Foundation

extension Bundle {
    /// The bundle for YourTheme resources (fonts, images, …)
    public static let YourTheme = Bundle.module
}
```

### 6.3 Register fonts at theme init (CoreText)

Call once in `init()`, guarded by a static flag to prevent duplicate registration errors:

```swift
import CoreText

// In your theme class:
nonisolated(unsafe) private static var fontsAlreadyRegistered = false

private func registerFonts() {
    guard !YourTheme.fontsAlreadyRegistered else { return }
    Bundle.YourTheme
        .urls(forResourcesWithExtension: "ttf", subdirectory: nil)?
        .forEach { CTFontManagerRegisterFontsForURL($0 as CFURL, .process, nil) }
    YourTheme.fontsAlreadyRegistered = true
}
```

Call it after `super.init(...)` in `init()`.

### 6.4 Set `fontFamily` in `super.init`

```swift
super.init(
    // …
    fontFamily: "YourFontFamily",  // PostScript name or family name — check Font Book on-device
    // …
)
```

Pass `nil` to fall back to the system font.

### 6.5 Register PostScript names per weight (multi-weight fonts)

When a font family has distinct PostScript names per weight, register the mapping so OUDS can resolve `Font` objects correctly. Use `registerFont(postScript:forCombination:)` with the `PSFNMK` typealias:

```swift
// Inside registerFonts(), after CTFontManagerRegisterFontsForURL calls:
registerFont(postScript: "YourFont-Light",    forCombination: PSFNMK("Your Font", Font.Weight.light))
registerFont(postScript: "YourFont-Regular",  forCombination: PSFNMK("Your Font", Font.Weight.regular))
registerFont(postScript: "YourFont-Medium",   forCombination: PSFNMK("Your Font", Font.Weight.medium))
registerFont(postScript: "YourFont-SemiBold", forCombination: PSFNMK("Your Font", Font.Weight.semibold))
registerFont(postScript: "YourFont-Bold",     forCombination: PSFNMK("Your Font", Font.Weight.bold))
registerFont(postScript: "YourFont-Black",    forCombination: PSFNMK("Your Font", Font.Weight.black))
```

> `kApplePostScriptFontNames` is the read-only map used internally by OUDS to resolve weights.
> Unregistered weight/family combinations fall back to the family name without weight hints.

### 6.6 Declare raw tokens for the font family (recommended)

```swift
// YourBrandFontRawTokens.swift
import OUDSTokensRaw  // for FontFamilyRawToken

public typealias YourBrandFontRawToken = FontFamilyRawToken

public enum YourBrandFontRawTokens {
    public static let familyDefault: YourBrandFontRawToken = "Your Font"
}
```

Then pass `YourBrandFontRawTokens.familyDefault` as `fontFamily:` in `super.init`.

---

## 7. Inject the theme in your app

```swift
import OUDSSwiftUI  // or OUDSSwiftUIOrange if subclassing OrangeTheme

@main
struct YourApp: App {
    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: YourTheme()) {
                ContentView()
            }
        }
    }
}

// Consume tokens in views:
struct ContentView: View {
    @Environment(\.theme) private var theme

    var body: some View {
        Text("Hello")
            .foregroundColor(theme.colors.contentBrandPrimary)
            .padding(theme.spaces.fixedMedium)
    }
}
```

---

## 8. Token hierarchy — raw → semantic → component

Understanding the three token layers is essential for creating custom themes:

```
┌─────────────────────────────────────────────────────────────────┐
│  RAW TOKENS (Layer 1)                                           │
│  Primitive values: ColorRawToken, DimensionRawToken, etc.      │
│  Example: ColorRawTokens.colorPrimary = "#FF6600FF"            │
│  Location: OUDSTokensRaw / YourBrandColorRawTokens             │
└─────────────────────────────────────────────────────────────────┘
                              ↓ references
┌─────────────────────────────────────────────────────────────────┐
│  SEMANTIC TOKENS (Layer 2)                                      │
│  Meaningful names tied to usage context; reference raw tokens  │
│  Example: theme.colors.contentPrimary → uses ColorRawToken     │
│  Provided by: OrangeThemeXxxSemanticTokensProvider             │
└─────────────────────────────────────────────────────────────────┘
                              ↓ references
┌─────────────────────────────────────────────────────────────────┐
│  COMPONENT TOKENS (Layer 3)                                     │
│  Scoped to specific components; reference semantic tokens      │
│  Example: theme.button.colorBackgroundDefault                  │
│  Provided by: OrangeThemeXxxComponentTokensProvider            │
└─────────────────────────────────────────────────────────────────┘
```

**Key distinction:**
- **Semantic tokens** (`theme.colors.*`, `theme.borders.*`, `theme.spaces.*`) are generic — used across many components
- **Component tokens** (`theme.button.*`, `theme.textInput.*`, `theme.badge.*`) are component-specific overrides

---

## 9. Custom raw tokens (Strategy B)

When creating a from-scratch theme (Strategy B), you may need to define your own raw tokens for brand-specific colors, fonts, or dimensions.

### 9.1 Raw token structure

Raw tokens are organized in two parts:
1. **Declaration** — empty enum in `Declarations/`
2. **Values** — static constants in `Values/`

### 9.2 Example: custom color raw tokens

```swift
// MyBrandColorRawTokens.swift (in Sources/Declarations/)
import OUDSTokensRaw

/// Color raw tokens exclusive to MyBrand theme.
/// These are primitive color values (hex strings) used to build semantic tokens.
@frozen public enum MyBrandColorRawTokens {
    // Values are defined in MyBrandColorRawTokens+Values.swift
}
```

```swift
// MyBrandColorRawTokens+Values.swift (in Sources/Values/RawTokens/)
import OUDSTokensRaw

extension MyBrandColorRawTokens {
    /// Primary brand color — orange
    public static let brandPrimary: ColorRawToken = "#FF6600FF"

    /// Secondary brand color — blue
    public static let brandSecondary: ColorRawToken = "#0066CCFF"

    /// Tertiary brand color — green
    public static let brandTertiary: ColorRawToken = "#00AA55FF"

    /// Dark variant for primary
    public static let brandPrimaryDark: ColorRawToken = "#CC5200FF"

    /// Light background
    public static let brandBgLight: ColorRawToken = "#FFF8F0FF"

    /// Dark background
    public static let brandBgDark: ColorRawToken = "#1A1A1AFF"
}
```

### 9.3 Example: custom font raw tokens

```swift
// MyBrandFontRawTokens.swift (in Sources/Declarations/)
import OUDSTokensRaw

/// Font family raw tokens for MyBrand theme.
@frozen public enum MyBrandFontRawTokens {
    // Values are defined in MyBrandFontRawTokens+Values.swift
}
```

```swift
// MyBrandFontRawTokens+Values.swift (in Sources/Values/RawTokens/)
import OUDSTokensRaw

extension MyBrandFontRawTokens {
    /// Default font family
    public static let familyDefault: FontFamilyRawToken = "MyBrand Sans"

    /// Monospace font for code
    public static let familyMono: FontFamilyRawToken = "MyBrand Code"
}
```

### 9.4 Using custom raw tokens in semantic providers

Once defined, use them in your semantic token providers:

```swift
import OUDSTokensRaw

class MyBrandColorSemanticTokensProvider: AllColorSemanticTokensProvider {

    // Use custom raw token directly (no override - implementing protocol directly)
    var contentBrandPrimary: ColorSemanticToken {
        MyBrandColorRawTokens.brandPrimary
    }

    // Or combine with existing core tokens
    var bgPrimary: ColorSemanticToken {
        MyBrandColorRawTokens.brandBgLight
    }

    // For light/dark variants, use MultipleColorSemanticToken
    var bgSecondary: MultipleColorSemanticToken {
        MultipleColorSemanticToken(
            light: MyBrandColorRawTokens.brandBgLight,
            dark:  MyBrandColorRawTokens.brandBgDark
        )
    }
}
```

### 9.5 Available raw token types

| Type | Token enum | Used for |
|---|---|---|
| Colors | `ColorRawToken` (`String`) | All color values |
| Dimensions | `DimensionRawToken` (`CGFloat`) | Sizes, spacings |
| Font families | `FontFamilyRawToken` (`String`) | Font names |
| Border styles | `BorderStyleRawToken` (`String`) | Border styles |
| Elevations | `ElevationRawToken` (`String`) | Shadow configurations |
| Grid values | `GridRawToken` (`CGFloat`) | Grid measurements |
| Opacities | `OpacityRawToken` (`Double`) | Alpha values |

---

## 10. Complete example: minimal from-scratch theme

This example shows a minimal but functional from-scratch theme. It uses existing core raw tokens (from `OUDSTokensRaw`) rather than defining custom ones, but demonstrates the full provider implementation.

### 10.1 File structure

```
MyBrandTheme/
├── Sources/
│   ├── MyBrandTheme.swift              # Main theme class
│   ├── Providers/
│   │   ├── MyBrandColorSemanticTokensProvider.swift
│   │   ├── MyBrandBorderSemanticTokensProvider.swift
│   │   ├── MyBrandDimensionSemanticTokensProvider.swift
│   │   ├── MyBrandSizeSemanticTokensProvider.swift
│   │   ├── MyBrandSpaceSemanticTokensProvider.swift
│   │   ├── MyBrandFontSemanticTokensProvider.swift
│   │   └── ComponentTokens/
│   │       └── MyBrandButtonComponentTokensProvider.swift
│   └── Values/
│       └── SemanticTokens/
│           ├── MyBrandTheme+ColorSemanticTokens.swift
│           └── MyBrandTheme+ColorMultipleSemanticTokens.swift
└── Resources/
    └── (font files if needed)
```

### 10.2 Color semantic provider

```swift
// MyBrandColorSemanticTokensProvider.swift
import OUDSFoundations
import OUDSThemesContract
import OUDSTokensRaw
import OUDSTokensSemantic

final class MyBrandColorSemanticTokensProvider: AllColorSemanticTokensProvider {

    init() {}

    // Implementation in Values/SemanticTokens/
}

// MyBrandTheme+ColorSemanticTokens.swift
import OUDSTokensRaw
import OUDSTokensSemantic

extension MyBrandColorSemanticTokensProvider: ColorSemanticTokens {

    @objc public final var actionEnabledLight: ColorSemanticToken {
        ColorRawTokens.repositoryPrimaryMedium
    }
    @objc public final var actionEnabledDark: ColorSemanticToken {
        ColorRawTokens.repositoryPrimaryLow
    }

    @objc public final var contentDefaultLight: ColorSemanticToken {
        ColorRawTokens.repositoryNeutralEmphasizedBlack
    }
    @objc public final var contentDefaultDark: ColorSemanticToken {
        ColorRawTokens.repositoryNeutralEmphasizedWhite
    }

    @objc public final var bgPrimaryLight: ColorSemanticToken {
        ColorRawTokens.repositoryNeutralEmphasizedWhite
    }
    @objc public final var bgPrimaryDark: ColorSemanticToken {
        ColorRawTokens.repositoryNeutralEmphasizedBlack
    }

    // ... many more properties required by ColorSemanticTokens protocol
    // See: https://ios.unified-design-system.orange.com/documentation/oudsTokensSemantic/ColorSemanticTokens
}

// MyBrandTheme+ColorMultipleSemanticTokens.swift
import OUDSTokensSemantic

extension MyBrandColorSemanticTokensProvider: ColorMultipleSemanticTokensProvider {

    @objc public final var actionEnabled: MultipleColorSemanticToken {
        MultipleColorSemanticToken(
            light: ColorRawTokens.repositoryPrimaryMedium,
            dark:  ColorRawTokens.repositoryPrimaryLow
        )
    }

    @objc public final var contentDefault: MultipleColorSemanticToken {
        MultipleColorSemanticToken(
            light: ColorRawTokens.repositoryNeutralEmphasizedBlack,
            dark:  ColorRawTokens.repositoryNeutralEmphasizedWhite
        )
    }

    @objc public final var bgPrimary: MultipleColorSemanticToken {
        MultipleColorSemanticToken(
            light: ColorRawTokens.repositoryNeutralEmphasizedWhite,
            dark:  ColorRawTokens.repositoryNeutralEmphasizedBlack
        )
    }

    // ... more multiple tokens
    // See: https://ios.unified-design-system.orange.com/documentation/oudsTokensSemantic/ColorMultipleSemanticTokens
}
```

### 10.3 Border semantic provider

```swift
// MyBrandBorderSemanticTokensProvider.swift
import OUDSFoundations
import OUDSThemesContract
import OUDSTokensRaw
import OUDSTokensSemantic

final class MyBrandBorderSemanticTokensProvider: AllBorderSemanticTokensProvider {

    init() {}
}

// In Values/SemanticTokens/MyBrandTheme+BorderSemanticTokens.swift
extension MyBrandBorderSemanticTokensProvider: BorderSemanticTokens {

    @objc public final var styleDefault: BorderStyleSemanticToken {
        BorderRawTokens.styleSolid
    }

    @objc public final var widthThin: BorderWidthSemanticToken {
        BorderRawTokens.width10
    }

    @objc public final var radiusMedium: BorderRadiusSemanticToken {
        BorderRawTokens.radius200
    }
    // See: https://ios.unified-design-system.orange.com/documentation/oudsTokensSemantic/BorderSemanticTokens
}
```

### 10.4 Dimension, Size, Space providers

```swift
import OUDSTokensRaw
import OUDSTokensSemantic

// MyBrandDimensionSemanticTokensProvider.swift
final class MyBrandDimensionSemanticTokensProvider: AllDimensionSemanticTokensProvider {
    init() {}
}

// Values/SemanticTokens/...
extension MyBrandDimensionSemanticTokensProvider: DimensionSemanticTokens {
    @objc public final var base: DimensionRawToken { DimensionRawTokens._100 }
}

// MyBrandSizeSemanticTokensProvider.swift
final class MyBrandSizeSemanticTokensProvider: AllSizeSemanticTokensProvider {
    init(dimensions: AllDimensionSemanticTokensProvider) {}
}
// Values/...
extension MyBrandSizeSemanticTokensProvider: SizeSemanticTokens {
    @objc public final var iconSmall: SizeSemanticToken { DimensionRawTokens._200 }
    @objc public final var iconMedium: SizeSemanticToken { DimensionRawTokens._300 }
}

// MyBrandSpaceSemanticTokensProvider.swift
final class MyBrandSpaceSemanticTokensProvider: AllSpaceSemanticTokensProvider {
    init(dimensions: AllDimensionSemanticTokensProvider) {}
}
// Values/...
extension MyBrandSpaceSemanticTokensProvider: SpaceSemanticTokens {
    @objc public final var fixedSmall: SpaceSemanticToken { DimensionRawTokens._100 }
    @objc public final var fixedMedium: SpaceSemanticToken { DimensionRawTokens._200 }
}
```

### 10.5 Font semantic provider

```swift
import OUDSTokensRaw
import OUDSTokensSemantic

// MyBrandFontSemanticTokensProvider.swift
final class MyBrandFontSemanticTokensProvider: AllFontSemanticTokensProvider {
    init() {}
}

// Values/SemanticTokens/...
extension MyBrandFontSemanticTokensProvider: FontSemanticTokens {

    @objc public final var familyDefault: FontFamilySemanticToken {
        FontRawTokens.familyDefault
    }

    @objc public final var familyCode: FontFamilySemanticToken {
        FontRawTokens.familyMono
    }
}

extension MyBrandFontSemanticTokensProvider: FontMultipleSemanticTokensProvider {

    @objc public final var bodyDefault: MultipleFontCompositeSemanticToken {
        MultipleFontCompositeSemanticToken(FontCompositeSemanticToken(
            size: DimensionRawTokens._400,
            lineHeight: DimensionRawTokens._600,
            weight: FontWeightRawToken.regular,
            letterSpacing: LetterSpacingRawToken._0
        ))
    }
}
```

### 10.6 Button component provider

```swift
import OUDSFoundations
import OUDSThemesContract
import OUDSTokensRaw
import OUDSTokensSemantic

// MyBrandButtonComponentTokensProvider.swift

final class MyBrandButtonComponentTokensProvider: AllButtonComponentTokensProvider {

    init(sizes: AllSizeSemanticTokensProvider,
         borders: AllBorderSemanticTokensProvider,
         colors: AllColorSemanticTokensProvider,
         spaces: AllSpaceSemanticTokensProvider) {
        self.sizes = sizes
        self.borders = borders
        self.colors = colors
        self.spaces = spaces
    }

    let sizes: AllSizeSemanticTokensProvider
    let borders: AllBorderSemanticTokensProvider
    let colors: AllColorSemanticTokensProvider
    let spaces: AllSpaceSemanticTokensProvider
}

// Values/ComponentTokens/MyBrandTheme+ButtonComponentTokens.swift
extension MyBrandButtonComponentTokensProvider: ButtonComponentTokens {

    @objc public final var sizeMinHeight: SizeSemanticToken {
        sizes.iconMedium
    }

    @objc public final var borderRadius: BorderRadiusSemanticToken {
        borders.radiusMedium
    }

    @objc public final var colorBackgroundDefaultEnabled: ColorSemanticToken {
        colors.actionEnabled
    }

    @objc public final var spacePaddingHorizontal: SpaceSemanticToken {
        spaces.fixedMedium
    }
}
```

### 10.7 Main theme class

```swift
// MyBrandTheme.swift
import Foundation
import OUDSThemesContract
import SwiftUI

public final class MyBrandTheme: OUDSTheme, @unchecked Sendable {

    public static let name = "MyBrand"

    public init() {
        // ── Semantic providers ─
        let borders     = MyBrandBorderSemanticTokensProvider()
        let colors      = MyBrandColorSemanticTokensProvider()
        let colorModes  = MyBrandColorModeSemanticTokensProvider(colors: colors)
        let effects     = MyBrandEffectSemanticTokensProvider()
        let elevations  = MyBrandElevationSemanticTokensProvider()
        let fonts       = MyBrandFontSemanticTokensProvider()
        let grids       = MyBrandGridSemanticTokensProvider()
        let opacities   = MyBrandOpacitySemanticTokensProvider()
        let dimensions  = MyBrandDimensionSemanticTokensProvider()
        let sizes       = MyBrandSizeSemanticTokensProvider(dimensions: dimensions)
        let spaces      = MyBrandSpaceSemanticTokensProvider(dimensions: dimensions)

        // ── Component providers ─
        let button = MyBrandButtonComponentTokensProvider(
            sizes: sizes, borders: borders, colors: colors, spaces: spaces)
        // ... other components - see https://ios.unified-design-system.orange.com/documentation/oudsTokensComponent/

        super.init(
            borders:     borders,
            colors:      colors,
            colorModes:  colorModes,
            effects:     effects,
            elevations:  elevations,
            fonts:       fonts,
            grids:       grids,
            opacities:   opacities,
            dimensions:  dimensions,
            sizes:       sizes,
            spaces:      spaces,
            button:      button,
            // ... other components - see https://ios.unified-design-system.orange.com/documentation/oudsTokensComponent/
            name:        Self.name,
            tuning:      Tuning.default,
            hasTypographyHeadingLargeMarker: false)
    }
}
```

---

## 11. Validation checklist

- [ ] `swift build` passes with zero errors
- [ ] No provider is missing from `super.init(...)` (check §3.3 for Strategy B)
- [ ] Component providers that depend on `colors` receive the **custom** color provider, not the Orange default
- [ ] `colorsCharts` / `colorsDecorative` are set or explicitly omitted (Strategy B)
- [ ] Font `.ttf` files are added to `Resources/` and declared in `Package.swift`
- [ ] `Bundle.YourTheme` extension is defined and references `Bundle.module`
- [ ] `registerFonts()` is called after `super.init(...)`
- [ ] PostScript names are registered for each weight variant used
- [ ] `fontFamily` value matches the exact string visible in Font Book (family name or PostScript name)
- [ ] `OUDSThemeableView` wraps the root view in the app entry point
- [ ] All semantic token providers implement their protocol (check with Xcode protocol conformance)
- [ ] Raw tokens used in providers exist and are spelled correctly (check `OUDSTokensRaw` module)

---
name: ouds-ios-create-theme
description: Use when the user wants to create a custom OUDS theme or brand theme for an iOS app — covers subclassing OrangeTheme, building a theme from scratch on OUDSTheme, mixing existing providers, local custom fonts (.ttf registration), and tuning.
license: MIT
---

# Skill: ouds-ios-create-theme

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

> **Rule:** Only `OrangeTheme` may be subclassed by external code.
> `SoshTheme`, `OrangeCompactTheme`, and `WireframeTheme` are all `final`.

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

**Semantic token providers available to override:**

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

**Component token providers available to override:**

| Component | Orange base class |
|---|---|
| Alert messages | `OrangeThemeAlertComponentTokensProvider` |
| Badge | `OrangeThemeBadgeComponentTokensProvider` |
| Bar (tab bar / toolbar) | `OrangeThemeBarComponentTokensProvider` |
| Bullet list | `OrangeThemeBulletListComponentTokensProvider` |
| Button | `OrangeThemeButtonComponentTokensProvider` |
| Checkbox | `OrangeThemeCheckboxComponentTokensProvider` |
| Chip | `OrangeThemeChipComponentTokensProvider` |
| Control item | `OrangeThemeControlItemComponentTokensProvider` |
| Divider | `OrangeThemeDividerComponentTokensProvider` |
| Icon | `OrangeThemeIconComponentTokensProvider` |
| Link | `OrangeThemeLinkComponentTokensProvider` |
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

### 2.3 Example provider overrides

```swift
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
import OUDSThemesOrange

class YourTheme: OrangeTheme {

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
            // Leave unspecified parameters as nil → Orange defaults are used.
            name:    Self.name,
            tuning:  Tuning.default  // see §5 for tuning options
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
| `controlItem` | `AllControlItemComponentTokensProvider` |
| `divider` | `AllDividerComponentTokensProvider` |
| `icon` | `AllIconComponentTokensProvider` |
| `link` | `AllLinkComponentTokensProvider` |
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
        let controlItem  = YourThemeControlItemComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
        let divider      = YourThemeDividerComponentTokensProvider(borders: borders)
        let icon         = YourThemeIconComponentTokensProvider(colors: colors)
        let link         = YourThemeLinkComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces)
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
            controlItem:   controlItem,
            divider:       divider,
            icon:          icon,
            link:          link,
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
            tuning:        Tuning.default)

        registerFonts()  // only if using custom fonts — see §6
    }

    deinit {}
}
// swiftlint:enable function_body_length
```

---

## 4. Strategy C — Mix existing providers

No new subclass needed. Instantiate providers from existing themes and pass them directly to `OrangeTheme`:

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

## 5. Tuning

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
struct SomeView: View {
    @Environment(\.theme) private var theme

    var body: some View {
        Text("Hello")
            .foregroundColor(theme.colors.contentBrandPrimary)
            .padding(theme.spaces.fixedMedium)
    }
}
```

---

## 8. Validation checklist

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

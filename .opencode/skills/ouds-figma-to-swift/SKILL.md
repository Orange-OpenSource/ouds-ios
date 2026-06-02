---
name: ouds-figma-to-swift
description: How to derive a Swift token name from a Figma token path in the OUDS iOS project (raw, semantic and component tokens)
license: MIT
compatibility: opencode
---

# Skill: ouds-figma-to-swift

How to derive the Swift token name from a Figma token path in the OUDS iOS project.

---

## 1. Architecture overview

OUDS iOS tokens are organised in three layers:

```
LAYER 1 — Raw tokens
  Figma path: core-ouds/<category>/<numeric-id>
  Swift:      <Category>RawTokens._<numericId>
  Example:    core-ouds/dimension/750  →  DimensionRawTokens._750

LAYER 2 — Semantic tokens
  Figma path: ouds/<category>/…  (no emoji-namespace segment)
  Swift:      theme.<provider>.<tokenName>
  Example:    ouds/border/width/focus  →  theme.borders.widthFocus

LAYER 3 — Component tokens
  Figma path: ouds/1f4a0_<category-group>/<component-name>/…
  Swift:      theme.<provider>.<tokenName>
  Example:    ouds/1f4a0_control/text-input/size/min-height  →  theme.textInput.sizeMinHeight
```

The `1f4a0` prefix is the Unicode codepoint for 💠 — a visual marker used in Figma to identify component-level token groups. Similarly, `1f4c4` is 📄 and `1f525` is 🔥, used to annotate internal documentation tokens or colour palette groups inside Figma; all such emoji prefixes are stripped during transformation, leaving the rest of the segment name intact.

---

## 2. Step-by-step algorithm

```
INPUT: a Figma token path (e.g. "ouds/1f4a0_control/text-input/color/border/hover")

Step 1 — Identify the layer
  ├─ path starts with "core-ouds/"
  │     → LAYER 1 (raw). Go to §6.
  ├─ path starts with "ouds/" AND contains "/1f4a0_"
  │     → LAYER 3 (component). Continue to Step 2C.
  └─ path starts with "ouds/" AND no "/1f4a0_"
        → LAYER 2 (semantic). Continue to Step 2S.

Step 1b — Check for non-convertible paths (stop immediately if any match)
  ├─ any segment contains "🚧" or "1f6a7_"  → WIP token, no Swift equivalent (see §8)
  └─ path starts with "ouds/grid/" AND second segment is NOT "ios/"
        → non-iOS grid token (web/Android breakpoints), no Swift equivalent (see §8)

Step 2S (semantic) — Remove "ouds/" prefix, keep the rest
  "ouds/border/width/focus"  →  "border/width/focus"

Step 2C (component) — Remove everything up to and including "/<component-name>/"
  "ouds/1f4a0_control/text-input/color/border/hover"
    → strip "ouds/1f4a0_control/text-input/"
    → "color/border/hover"
  The component name (text-input) identifies the Swift provider (see §4).

Step 3 — Look up the Swift provider
  Take the first segment of the remaining path (semantic)
  or the <component-name> (component) and look up the table in §3 / §4.

Step 4 — Convert the remaining path segments to a Swift property name
  a. Split on "/"
  b. For each segment:
       - Strip any leading emoji prefix (1f4c4_ / 📄) from the segment
       - Convert kebab-case to camelCase  (e.g. "min-height" → "MinHeight")
  c. Concatenate all segments together, first letter lowercase
       ("color" + "Border" + "Hover"  →  "colorBorderHover")

Step 5 — Apply special rules (§5)
  - Light/dark pairs      → drop -light / -dark suffix, single property
  - Mobile/tablet pairs   → keep as separate …Mobile / …Tablet properties
  - Numeric-only segment  → prepend underscore (raw tokens only, see §6)
  - Semantic protocols    → the domain is NOT repeated as a prefix (see R9 in §5)

OUTPUT: theme.<provider>.<propertyName>
  e.g.  theme.textInput.colorBorderHover
```

---

## 3. Semantic token provider table

The first path segment after stripping `ouds/` identifies the semantic provider.

| Figma path prefix | `theme.` property | Provider protocol |
|---|---|---|
| `ouds/border/` | `borders` | `AllBorderSemanticTokensProvider` |
| `ouds/color/` | `colors` | `AllColorSemanticTokensProvider` |
| `ouds/color/mode/` | `colorModes` | `AllColorModeSemanticTokensProvider` |
| `ouds/color/chart/` | `colorsCharts` | `AllColorChartSemanticTokensProvider` |
| `ouds/color/decorative/` | `colorsDecorative` | `AllColorDecorativeSemanticTokensProvider` |
| `ouds/dimension/` | `dimensions` | `AllDimensionSemanticTokensProvider` |
| `ouds/effect/` | `effects` | `AllEffectSemanticTokensProvider` |
| `ouds/elevation/` | `elevations` | `AllElevationSemanticTokensProvider` |
| `ouds/font/` | `fonts` | `AllFontSemanticTokensProvider` |
| `ouds/grid/ios/` | `grids` | `AllGridSemanticTokensProvider` |
| `ouds/opacity/` | `opacities` | `AllOpacitySemanticTokensProvider` |
| `ouds/size/` | `sizes` | `AllSizeSemanticTokensProvider` |
| `ouds/space/` | `spaces` | `AllSpaceSemanticTokensProvider` |

> **Naming convention for semantic providers:** pluralised lowercase (`borders`, `colors`, `sizes`, `spaces`, …).

> **Grid tokens:** only `ouds/grid/ios/…` paths map to Swift. The `ouds/grid/2xs/`, `ouds/grid/3xl/`, `ouds/grid/android/…` etc. are web/Android breakpoints with no iOS Swift equivalent (see §9).

---

## 4. Component token provider table

The `<component-name>` segment (after `1f4a0_<category-group>/`) identifies the component provider. The Figma emoji-category group (`control`, `action`, `navigation`, …) is always discarded.

| Figma `<component-name>` | `theme.` property | Provider protocol | SwiftUI component |
|---|---|---|---|
| `button` | `button` | `AllButtonComponentTokensProvider` | `OUDSButton` |
| `button-mono` | `button` | `AllButtonComponentTokensProvider` | `OUDSButton` (mono variant) |
| `text-input` | `textInput` | `AllTextInputComponentTokensProvider` | `OUDSTextInput` |
| `text-area` | `textArea` | `AllTextAreaComponentTokensProvider` | `OUDSTextArea` |
| `pin-code-input` | `pinCodeInput` | `AllPinCodeInputComponentTokensProvider` | `OUDSPinCodeInput` |
| `password-input` | `passwordInput` | `AllPasswordInputComponentTokensProvider` | `OUDSPasswordInput` |
| `checkbox` | `checkbox` | `AllCheckboxComponentTokensProvider` | `OUDSCheckbox` |
| `radio-button` | `radioButton` | `AllRadioButtonComponentTokensProvider` | `OUDSRadio` |
| `switch` | `switch` | `AllSwitchComponentTokensProvider` | `OUDSSwitch` |
| `chip` | `chip` | `AllChipComponentTokensProvider` | `OUDSFilterChip`, `OUDSSuggestionChip` |
| `select-input` | `selectInput` | `AllSelectInputComponentTokensProvider` | `OUDSSelectInput` |
| `quantity-input` | `quantityInput` | `AllQuantityInputComponentTokensProvider` | `OUDSQuantityInput` |
| `control-item` | `controlItem` | `AllControlItemComponentTokensProvider` | shared by switch/radio/checkbox items |
| `badge` | `badge` | `AllBadgeComponentTokensProvider` | `OUDSBadge` |
| `tag` | `tag` | `AllTagComponentTokensProvider` | `OUDSTag` |
| `input-tag` | `inputTag` | `AllInputTagComponentTokensProvider` | `OUDSInputTag` |
| `link` | `link` | `AllLinkComponentTokensProvider` | `OUDSLink` |
| `bar` | `bar` | `AllBarComponentTokensProvider` | toolbar / tab-bar bar components |
| `skeleton` | `skeleton` | `AllSkeletonComponentTokensProvider` | `OUDSSkeleton` |
| `alert` | `alert` | `AllAlertComponentTokensProvider` | `OUDSAlertMessage`, `OUDSInlineAlert` |
| `divider` | `divider` | `AllDividerComponentTokensProvider` | `OUDSHorizontalDivider`, `OUDSVerticalDivider` |
| `bullet-list` | `bulletList` | `AllBulletListComponentTokensProvider` | `OUDSBulletList` |
| `icon` | `icon` | `AllIconComponentTokensProvider` | icon helper views |

> **Naming convention for component providers:** singular camelCase, no `Tokens` suffix (`button`, `textInput`, `bulletList`, …).

> **`button-mono` special case:** `button-mono` is NOT a separate provider. Its tokens are merged into `AllButtonComponentTokensProvider` (which conforms to both `ButtonComponentTokens` and `ButtonMonoComponentTokens`). The Figma `button-mono` token sub-paths produce Swift properties **prefixed with `mono`** on `theme.button` (e.g. `ouds/1f4a0_action/button-mono/color/bg/default/enabled` → `theme.button.monoColorBgDefaultEnabled`).

---

## 5. Transformation rules

### R1 — Strip the root prefix

```
ouds/…       →  remove "ouds/"
core-ouds/…  →  remove "core-ouds/"  (raw tokens only)
```

### R2 — Component tokens: strip the emoji-category group

```
1f4a0_control/   →  (dropped)
1f4a0_action/    →  (dropped)
1f4a0_navigation/ →  (dropped)
1f4a0_indicator/ →  (dropped)
1f4a0_dialog/    →  (dropped)
1f4a0_layout/    →  (dropped)
1f4a0_content-display/ →  (dropped)
1f4a0_visual-assets/   →  (dropped)
```

### R3 — Component name: kebab-case → lowerCamelCase (provider access)

The `<component-name>` segment becomes the `theme.` property name:

```
text-input      →  textInput
pin-code-input  →  pinCodeInput
bullet-list     →  bulletList
radio-button    →  radioButton
control-item    →  controlItem
select-input    →  selectInput
quantity-input  →  quantityInput
input-tag       →  inputTag
text-area       →  textArea
button-mono     →  button   (merged into the button provider — see §4)
```

Single-word component names are used as-is (`button`, `badge`, `chip`, `link`, …).

### R4 — Token sub-path: convert to camelCase property name

Split on `/`, convert each segment from kebab-case to TitleCase, join, lowercase the first letter:

```
size/min-height              →  sizeMinHeight
color/border/hover           →  colorBorderHover
space/padding-inline/default →  spacePaddingInlineDefault
border/radius/default        →  borderRadiusDefault
space/column-gap/label-asterisk →  spaceColumnGapLabelAsterisk
```

### R5 — Light/dark colour pairs → single `MultipleColorSemanticToken`

Figma defines each adaptive colour as two tokens suffixed `-light` and `-dark`. In Swift they collapse into a **single property** of type `MultipleColorSemanticToken`. Drop the `-light` / `-dark` suffix entirely:

```
color/border/enabled-light  ⎫
color/border/enabled-dark   ⎭  →  colorBorderEnabled: MultipleColorSemanticToken

color/bg/default/hover-light  ⎫
color/bg/default/hover-dark   ⎭  →  colorBgDefaultHover: MultipleColorSemanticToken
```

### R6 — Responsive breakpoint pairs → separate properties

Unlike light/dark, `mobile` and `tablet` viewport variants are kept as **distinct properties**:

```
space/scaled/3xsmall/mobile  →  scaled3xsmallMobile: SpaceSemanticToken
space/scaled/3xsmall/tablet  →  scaled3xsmallTablet: SpaceSemanticToken

size/icon/with-heading/xlarge/size-small/mobile  →  iconWithHeadingXlargeSizeSmallMobile
size/icon/with-heading/xlarge/size-small/tablet  →  iconWithHeadingXlargeSizeSmallTablet
```

### R7 — Strip emoji annotation prefixes from segment names

Figma uses emoji-encoded prefixes on certain segment names as visual annotations. Strip the prefix (including the trailing `_`) and keep the rest of the segment name:

| Emoji | Codepoint | Meaning | Treatment |
|---|---|---|---|
| 📄 | `1f4c4` | Internal doc token | Strip `1f4c4_`, keep segment name |
| 🔥 | `1f525` | Colour palette group | Strip `1f525_`, keep segment name |

```
color/1f525_repository/accent/high    →  color/repository/accent/high  →  colorRepositoryAccentHigh
space/column-gap/1f4c4_label-asterisk →  spaceColumnGapLabelAsterisk
```

Note: `1f4a0_` (💠) and `1f6a7_` (🚧) are **not** stripped — they control layer detection and WIP exclusion (Steps 1 and 1b).

### R8 — Size qualifiers: preserve `Nx` notation as-is

Size multipliers like `2x`, `3x`, `4x`, `5x` are kept verbatim in camelCase (the digit stays lowercase):

```
3xsmall  →  3xsmall   (e.g. scaled3xsmallMobile, paddingInline3xsmall)
2xlarge  →  2xlarge
4xsmall  →  4xsmall
```

Do **not** capitalise: `3Xsmall` or `2XLarge` are wrong.

### R9 — Semantic protocols: domain is NOT repeated inside the property name

Inside a semantic token protocol the domain prefix is already implied by the provider itself. Do not repeat it:

```
// CORRECT — accessed as theme.borders.widthFocus
protocol BorderSemanticTokens {
    var widthFocus: BorderWidthSemanticToken { get }   // ✓ no "border" prefix
}

// WRONG (does not exist in the codebase)
    var borderWidthFocus: BorderWidthSemanticToken { get }  // ✗

// Component tokens are different: domain IS repeated as a prefix
protocol ButtonComponentTokens {
    var borderWidthDefault: BorderWidthSemanticToken { get }  // ✓ "border" prefix present
    var colorBgDefaultEnabled: MultipleColorSemanticToken { get }  // ✓ "color" prefix present
    var spacePaddingBlock: SpaceSemanticToken { get }  // ✓ "space" prefix present
}
```

### R10 — Grid tokens: iOS-scoped paths only

The Figma grid token tree contains breakpoints for multiple platforms (`2xs`, `xs`, `sm`, `md`, `lg`, `xl`, `2xl`, `3xl`, `android/…`). Only the `ios/` sub-tree has Swift equivalents. The platform segment is then absorbed into the property name:

```
ouds/grid/ios/extra-compact/margin   →  theme.grids.extraCompactMargin
ouds/grid/ios/compact/column-gap     →  theme.grids.compactColumnGap
ouds/grid/ios/regular/min-width      →  theme.grids.regularMinWidth

ouds/grid/2xs/margin    →  NO Swift equivalent (web breakpoint)
ouds/grid/3xl/margin    →  NO Swift equivalent (web breakpoint)
ouds/grid/android/…     →  NO Swift equivalent (Android only)
```

---

## 6. Raw tokens (layer 1)

Raw token paths start with `core-ouds/` and hold primitive values. They are referenced internally by semantic and component token implementations, not accessed directly in application code.

**Naming pattern:**

```
core-ouds/<family>/<numeric-id>          →   <Family>RawTokens._<numericId>
core-ouds/<family>/<sub-path>/<name>     →   <Family>RawTokens.<subPath><Name>  (camelCase)
```

The leading underscore on numeric-only IDs prevents Swift identifier conflicts (identifiers cannot start with a digit).

| Figma path | Swift constant |
|---|---|
| `core-ouds/dimension/750` | `DimensionRawTokens._750` |
| `core-ouds/dimension/125` | `DimensionRawTokens._125` |
| `core-ouds/font/size/150` | `FontRawTokens._150` |
| `core-ouds/font/size/250` | `FontRawTokens._250` |
| `core-ouds/font/weight/400` | `FontRawTokens._400` |
| `core-ouds/font/weight/700` | `FontRawTokens._700` |
| `core-ouds/font/family/system/sf-pro` | `FontRawTokens.systemSfPro` |
| `core-ouds/font/family/monospace/sf-mono` | `FontRawTokens.monospaceSfMono` |

**Available raw token families:**

| Family prefix | Swift type |
|---|---|
| `core-ouds/dimension/` | `DimensionRawTokens` |
| `core-ouds/font/` | `FontRawTokens` |
| `core-ouds/color/` | `ColorRawTokens` |
| `core-ouds/border/` | `BorderRawTokens` |
| `core-ouds/elevation/` | `ElevationRawTokens` |
| `core-ouds/grid/` | `GridRawTokens` |
| `core-ouds/opacity/` | `OpacityRawTokens` |
| `core-ouds/effect/` | `EffectRawTokens` |

---

## 7. Annotated examples

### Example 1 — Component token, size

```
Figma:  ouds/1f4a0_control/text-input/size/min-height
Layer:  3 (component) — "1f4a0_" present
Strip:  ouds/ + 1f4a0_control/
Comp:   text-input  →  theme.textInput
Path:   size/min-height  →  size + MinHeight  →  sizeMinHeight
Swift:  theme.textInput.sizeMinHeight
Type:   SizeSemanticToken
```

### Example 2 — Component token, adaptive colour (light/dark merge)

```
Figma:  ouds/1f4a0_control/text-input/color/border/hover-light
        ouds/1f4a0_control/text-input/color/border/hover-dark
Layer:  3 (component)
Strip:  ouds/ + 1f4a0_control/ + hover suffix (-light / -dark)
Comp:   text-input  →  theme.textInput
Path:   color/border/hover  →  colorBorderHover
Swift:  theme.textInput.colorBorderHover
Type:   MultipleColorSemanticToken
```

### Example 3 — Component token, spacing

```
Figma:  ouds/1f4a0_control/text-input/space/padding-inline/default
Layer:  3 (component)
Strip:  ouds/ + 1f4a0_control/
Comp:   text-input  →  theme.textInput
Path:   space/padding-inline/default  →  space + PaddingInline + Default  →  spacePaddingInlineDefault
Swift:  theme.textInput.spacePaddingInlineDefault
Type:   SpaceSemanticToken
```

### Example 4 — Component token, border

```
Figma:  ouds/1f4a0_control/text-input/border/width/focus
Layer:  3 (component)
Comp:   text-input  →  theme.textInput
Path:   border/width/focus  →  borderWidthFocus
Swift:  theme.textInput.borderWidthFocus
Type:   BorderWidthSemanticToken
```

### Example 5 — Component token, emoji annotation (📄)

```
Figma:  ouds/1f4a0_control/text-input/space/column-gap/1f4c4_label-asterisk
Layer:  3 (component)
Strip:  ouds/ + 1f4a0_control/ + 1f4c4_ emoji prefix
Comp:   text-input  →  theme.textInput
Path:   space/column-gap/label-asterisk  →  spaceColumnGapLabelAsterisk
Swift:  theme.textInput.spaceColumnGapLabelAsterisk
Type:   SpaceSemanticToken
```

### Example 6 — Component token, button colour

```
Figma:  ouds/1f4a0_action/button/color/bg/default/hover-light
        ouds/1f4a0_action/button/color/bg/default/hover-dark
Layer:  3 (component)
Strip:  ouds/ + 1f4a0_action/ + -light/-dark suffix
Comp:   button  →  theme.button
Path:   color/bg/default/hover  →  colorBgDefaultHover
Swift:  theme.button.colorBgDefaultHover
Type:   MultipleColorSemanticToken
```

### Example 7 — Component token, button border radius

```
Figma:  ouds/1f4a0_action/button/border/radius/default
Layer:  3 (component)
Comp:   button  →  theme.button
Path:   border/radius/default  →  borderRadiusDefault
Swift:  theme.button.borderRadiusDefault
Type:   BorderRadiusSemanticToken
```

### Example 8 — Component token, multi-word component name

```
Figma:  ouds/1f4a0_control/pin-code-input/size/min-height
Layer:  3 (component)
Strip:  ouds/ + 1f4a0_control/
Comp:   pin-code-input  →  pinCodeInput  →  theme.pinCodeInput
Path:   size/min-height  →  sizeMinHeight
Swift:  theme.pinCodeInput.sizeMinHeight
Type:   SizeSemanticToken
```

### Example 9 — Component token, badge size

```
Figma:  ouds/1f4a0_indicator/badge/size/medium
Layer:  3 (component)
Strip:  ouds/ + 1f4a0_indicator/
Comp:   badge  →  theme.badge
Path:   size/medium  →  sizeMedium
Swift:  theme.badge.sizeMedium
Type:   SizeSemanticToken
```

### Example 10 — Component token, button-mono (merged provider)

```
Figma:  ouds/1f4a0_action/button-mono/color/bg/default/enabled-light
        ouds/1f4a0_action/button-mono/color/bg/default/enabled-dark
Layer:  3 (component)
Strip:  ouds/ + 1f4a0_action/
Comp:   button-mono  →  theme.button  (merged into AllButtonComponentTokensProvider — R3)
Path:   color/bg/default/enabled  →  colorBgDefaultEnabled
Prefix: button-mono tokens carry a "mono" prefix in Swift
Swift:  theme.button.monoColorBgDefaultEnabled
Type:   MultipleColorSemanticToken
```

### Example 11 — Semantic token, border (R9 applies)

```
Figma:  ouds/border/width/focus
Layer:  2 (semantic) — no "1f4a0_"
Strip:  ouds/
Domain: border  →  theme.borders
Path:   width/focus  →  widthFocus        ← "border" NOT repeated (R9)
Swift:  theme.borders.widthFocus
Type:   BorderWidthSemanticToken
```

### Example 12 — Semantic token, border radius

```
Figma:  ouds/border/radius/pill
Layer:  2 (semantic)
Domain: border  →  theme.borders
Path:   radius/pill  →  radiusPill        ← "border" NOT repeated (R9)
Swift:  theme.borders.radiusPill
Type:   BorderRadiusSemanticToken
```

### Example 13 — Semantic token, spacing fixed

```
Figma:  ouds/space/fixed/medium
Layer:  2 (semantic)
Domain: space  →  theme.spaces
Path:   fixed/medium  →  fixedMedium      ← "space" NOT repeated (R9)
Swift:  theme.spaces.fixedMedium
Type:   SpaceSemanticToken
```

### Example 14 — Semantic token, spacing responsive (R6)

```
Figma:  ouds/space/scaled/3xsmall/mobile      ← mobile variant
        ouds/space/scaled/3xsmall/tablet      ← tablet variant → separate property
Layer:  2 (semantic)
Domain: space  →  theme.spaces
Path:   scaled/3xsmall/mobile  →  scaled3xsmallMobile   ← "3x" kept as-is (R8)
        scaled/3xsmall/tablet  →  scaled3xsmallTablet
Swift:  theme.spaces.scaled3xsmallMobile
        theme.spaces.scaled3xsmallTablet
Type:   SpaceSemanticToken
```

### Example 15 — Semantic token, size with responsive breakpoints

```
Figma:  ouds/size/icon/with-heading/xlarge/size-small/mobile
Layer:  2 (semantic)
Domain: size  →  theme.sizes
Path:   icon/with-heading/xlarge/size-small/mobile
        → icon + WithHeading + Xlarge + SizeSmall + Mobile
        → iconWithHeadingXlargeSizeSmallMobile
Swift:  theme.sizes.iconWithHeadingXlargeSizeSmallMobile
Type:   SizeSemanticToken
```

### Example 16 — Semantic token, grid iOS-scoped (R10)

```
Figma:  ouds/grid/ios/extra-compact/margin
Layer:  2 (semantic)
Check:  contains "ios/" sub-tree → valid iOS grid token (R10)
Domain: grid  →  theme.grids
Path:   ios/extra-compact/margin  →  Ios + ExtraCompact + Margin
        "ios" prefix absorbed → extraCompactMargin   (R9 + R10: platform qualifier dropped)
Swift:  theme.grids.extraCompactMargin
Type:   GridSemanticToken

Figma:  ouds/grid/3xl/margin
Check:  NOT under "ios/" → web breakpoint, NO Swift equivalent (R10)
```

### Example 17 — Semantic token, font (platform-scoped path)

```
Figma:  ouds/font/family/ios/code
Layer:  2 (semantic)
Domain: font  →  theme.fonts
Path:   family/ios/code  →  family + Ios + Code  →  familyIosCode
        Note: "ios" sub-segment is kept as a qualifier, not a namespace
Swift:  theme.fonts.familyIosCode
Type:   FontFamilySemanticToken
```

### Example 18 — Raw token

```
Figma:  core-ouds/dimension/750
Layer:  1 (raw)
Family: dimension  →  DimensionRawTokens
ID:     750  →  _750   ← leading underscore (numeric identifier)
Swift:  DimensionRawTokens._750
Value:  75 pt  (raw primitive, not accessed in app code)
```

### Example 19 — Raw token, named sub-path

```
Figma:  core-ouds/font/family/monospace/sf-mono
Layer:  1 (raw)
Family: font  →  FontRawTokens
Path:   family/monospace/sf-mono  →  family + Monospace + SfMono  →  monospaceSfMono
        (first segment "family" dropped — absorbed into type name)
Swift:  FontRawTokens.monospaceSfMono
Value:  "SF Mono"
```

### Example 20 — Semantic token, repository colour (🔥 emoji strip)

```
Figma:  ouds/color/1f525_repository/neutral/emphasized/black
Layer:  2 (semantic) — no "1f4a0_"
Strip:  ouds/
Domain: color  →  theme.colors
Path:   1f525_repository/neutral/emphasized/black
        → strip "1f525_" prefix from "1f525_repository"  (R7)
        → repository/neutral/emphasized/black
        → repository + Neutral + Emphasized + Black  →  repositoryNeutralEmphasizedBlack
        ← "color" NOT repeated (R9)
Swift:  theme.colors.repositoryNeutralEmphasizedBlack
Type:   ColorSemanticToken
```

### Example 21 — Component token, navigation

```
Figma:  ouds/1f4a0_navigation/link/size/icon
Layer:  3 (component)
Strip:  ouds/ + 1f4a0_navigation/
Comp:   link  →  theme.link
Path:   size/icon  →  sizeIcon
Swift:  theme.link.sizeIcon
Type:   SizeSemanticToken
```

---

## 8. Non-convertible token patterns

Some Figma tokens exist in the JSON files but have **no Swift equivalent** in the iOS codebase. Stop and report these rather than attempting a conversion.

### 8a — WIP / in-progress tokens (`🚧`)

Tokens where any path segment contains `🚧` (U+1F6A7, construction sign) mark features that are **designed but not yet implemented** in Swift.

```
ouds/1f4a0_action/🚧_button-AI/…          →  NO Swift equivalent
ouds/1f4a0_content-display/🚧_accordion/… →  NO Swift equivalent
```

**How to detect:** presence of `🚧` or `1f6a7` (case-insensitive) in any segment.

### 8b — ~~Internal Figma colour palette~~ — `1f525_repository` tokens ARE exposed in Swift

`ouds/color/1f525_repository/…` tokens **do have Swift equivalents**. They are declared in `ColorSemanticTokens` and accessible via `theme.colors.repository…`.

The `1f525_` emoji prefix is stripped from the `repository` segment (R7), which then becomes the start of the camelCase property name:

```
ouds/color/1f525_repository/accent/high              →  theme.colors.repositoryAccentHigh
ouds/color/1f525_repository/neutral/emphasized/black →  theme.colors.repositoryNeutralEmphasizedBlack
ouds/color/1f525_repository/negative/medium          →  theme.colors.repositoryNegativeMedium
ouds/color/1f525_repository/warning/lowest           →  theme.colors.repositoryWarningLowest
ouds/color/1f525_repository/primary/medium           →  theme.colors.repositoryPrimaryMedium
```

Apply the standard algorithm: Layer 2 (no `1f4a0_`), provider `theme.colors`, strip `1f525_` from the `repository` segment (R7), concatenate remaining segments in camelCase (R4), no domain repeat (R9).

### 8c — Non-iOS grid breakpoints

The Figma grid token tree defines breakpoints for web and Android that have no iOS counterpart. Only `ouds/grid/ios/…` paths map to `theme.grids`.

```
ouds/grid/2xs/…      →  NO Swift equivalent  (web breakpoint)
ouds/grid/xs/…       →  NO Swift equivalent
ouds/grid/sm/…       →  NO Swift equivalent
ouds/grid/md/…       →  NO Swift equivalent
ouds/grid/lg/…       →  NO Swift equivalent
ouds/grid/xl/…       →  NO Swift equivalent
ouds/grid/2xl/…      →  NO Swift equivalent
ouds/grid/3xl/…      →  NO Swift equivalent
ouds/grid/android/…  →  NO Swift equivalent  (Android breakpoints)

ouds/grid/ios/extra-compact/…  →  theme.grids.extraCompact…  ✓
ouds/grid/ios/compact/…        →  theme.grids.compact…       ✓
ouds/grid/ios/regular/…        →  theme.grids.regular…       ✓
```

---

## 9. Quick-reference cheat sheet

```
Figma path anatomy
──────────────────
ouds / [1f4a0_<group> / <component-name> /] <token-sub-path>

Layer detection
───────────────
core-ouds/…                  → raw token (DimensionRawTokens._NNN, …)
ouds/… no emoji              → semantic token (theme.<provider>.<name>)
ouds/… with 1f4a0_           → component token (theme.<component>.<name>)

Non-convertible — stop immediately
───────────────────────────────────
🚧 in any segment             → WIP token, no Swift equivalent
ouds/grid/<anything but ios>/ → non-iOS grid, no Swift equivalent

Provider lookup
───────────────
Semantic:  first segment after ouds/ → table §3
           (grid: must be ouds/grid/ios/ — "ios" segment is then dropped from property name)
Component: <component-name> after 1f4a0_<group>/ → table §4
           (button-mono → theme.button with "mono" prefix on property name)

Property name
─────────────
1. Drop layer prefix + provider segment
2. Strip emoji prefixes from any remaining segment: 1f4c4_ (📄), 1f525_ (🔥)
3. Convert each segment from kebab-case to TitleCase
4. Join all segments, lowercase the first letter
5. Collapse -light/-dark pairs into one property (MultipleColorSemanticToken)
6. Keep /mobile /tablet as …Mobile / …Tablet (separate properties)
7. Numeric size qualifiers (2x, 3x, …) stay lowercase as-is
8. In semantic protocols, do NOT repeat the domain as a property prefix
9. button-mono sub-path → same camelCase, but prepend "mono" to the result
```

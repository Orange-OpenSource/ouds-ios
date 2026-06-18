---
name: ouds-ios-figma-to-swift
description: How to derive a Swift token name from a Figma token path in the OUDS iOS project (raw, semantic and component tokens)
license: MIT
---

# Skill: ouds-ios-figma-to-swift

## 1. Quick-reference cheat sheet

```
PATH ANATOMY
  core-ouds/<family>/<id>                          → raw token
  ouds/<category>/…                                → semantic token  (no 1f4a0_)
  ouds/1f4a0_<group>/<component-name>/<sub-path>   → component token

LAYER DETECTION
  core-ouds/…          → Layer 1 raw   → <Family>RawTokens._<id>
  ouds/… no 1f4a0_     → Layer 2 sem   → theme.<provider>.<name>
  ouds/… with 1f4a0_   → Layer 3 comp  → theme.<component>.<name>

STOP IMMEDIATELY (no Swift equivalent)
  any segment has 🚧 or 1f6a7_          → WIP token
  ouds/grid/<x>/ where <x> ≠ ios        → non-iOS grid

PROPERTY NAME (apply in order)
  1. Drop layer prefix + provider/component segment
  2. Strip emoji prefixes from segments: 1f4c4_ (📄)  1f525_ (🔥)
  3. Each segment: kebab-case → TitleCase
  4. Join all, lowercase first letter
  5. -light / -dark suffix pair → drop suffix, single property (MultipleColorSemanticToken)
  6. /mobile  /tablet → keep as …Mobile / …Tablet (separate properties)
  7. Numeric qualifiers 2x 3x 4x 5x → stay lowercase as-is (3xsmall not 3Xsmall)
  8. Semantic provider: do NOT repeat the domain in the property name
  9. button-mono → theme.button, prepend "mono" to property name
```

---

## 2. Provider tables

### Layer 2 — Semantic providers

| Figma prefix | `theme.` property | Notes |
|---|---|---|
| `ouds/border/` | `borders` | |
| `ouds/color/` | `colors` | |
| `ouds/color/mode/` | `colorModes` | |
| `ouds/color/chart/` | `colorsCharts` | |
| `ouds/color/decorative/` | `colorsDecorative` | |
| `ouds/dimension/` | `dimensions` | |
| `ouds/effect/` | `effects` | |
| `ouds/elevation/` | `elevations` | |
| `ouds/font/` | `fonts` | |
| `ouds/grid/ios/` | `grids` | `ios/` segment dropped from property name |
| `ouds/opacity/` | `opacities` | |
| `ouds/size/` | `sizes` | |
| `ouds/space/` | `spaces` | |

### Layer 3 — Component providers

The `1f4a0_<group>/` segment is always dropped. `<component-name>` → lowerCamelCase = `theme.` property.

| Figma `<component-name>` | `theme.` property |
|---|---|
| `button` | `button` |
| `button-mono` | `button` (mono — prepend `mono` to property) |
| `text-input` | `textInput` |
| `text-area` | `textArea` |
| `pin-code-input` | `pinCodeInput` |
| `password-input` | `passwordInput` |
| `checkbox` | `checkbox` |
| `radio-button` | `radioButton` |
| `switch` | `switch` |
| `chip` | `chip` |
| `select-input` | `selectInput` |
| `quantity-input` | `quantityInput` |
| `control-item` | `controlItem` |
| `badge` | `badge` |
| `tag` | `tag` |
| `input-tag` | `inputTag` |
| `link` | `link` |
| `bar` | `bar` |
| `skeleton` | `skeleton` |
| `alert` | `alert` |
| `divider` | `divider` |
| `bullet-list` | `bulletList` |
| `icon` | `icon` |

### Layer 1 — Raw token families

| Figma prefix | Swift type |
|---|---|
| `core-ouds/dimension/` | `DimensionRawTokens` |
| `core-ouds/font/` | `FontRawTokens` |
| `core-ouds/color/` | `ColorRawTokens` |
| `core-ouds/border/` | `BorderRawTokens` |
| `core-ouds/elevation/` | `ElevationRawTokens` |
| `core-ouds/grid/` | `GridRawTokens` |
| `core-ouds/opacity/` | `OpacityRawTokens` |
| `core-ouds/effect/` | `EffectRawTokens` |

Numeric-only IDs get a leading underscore: `core-ouds/dimension/750` → `DimensionRawTokens._750`

---

## 3. Critical rules

**R5 — Light/dark pairs → single property**
`color/border/enabled-light` + `-dark` → `colorBorderEnabled: MultipleColorSemanticToken` (drop suffix)

**R6 — Mobile/tablet → separate properties**
`space/scaled/3xsmall/mobile` → `scaled3xsmallMobile` | `…/tablet` → `scaled3xsmallTablet`

**R7 — Strip emoji annotation prefixes**
`1f4c4_` (📄) and `1f525_` (🔥) are stripped from the segment, name kept.
`1f4a0_` (💠) and `1f6a7_` (🚧) are NOT stripped — they control layer detection and WIP exclusion.

**R8 — Semantic: domain NOT repeated in property name**
`ouds/border/width/focus` → `theme.borders.widthFocus` (not `borderWidthFocus`)
Component tokens are different: domain IS repeated → `theme.button.borderWidthDefault`

---

## 4. Examples

| Figma path | Swift |
|---|---|
| `ouds/border/width/focus` | `theme.borders.widthFocus` |
| `ouds/border/radius/pill` | `theme.borders.radiusPill` |
| `ouds/space/fixed/medium` | `theme.spaces.fixedMedium` |
| `ouds/space/scaled/3xsmall/mobile` | `theme.spaces.scaled3xsmallMobile` |
| `ouds/size/icon/with-heading/xlarge/size-small/tablet` | `theme.sizes.iconWithHeadingXlargeSizeSmallTablet` |
| `ouds/grid/ios/extra-compact/margin` | `theme.grids.extraCompactMargin` |
| `ouds/grid/3xl/margin` | NO Swift equivalent (non-iOS grid) |
| `ouds/font/family/ios/code` | `theme.fonts.familyIosCode` |
| `ouds/color/1f525_repository/neutral/emphasized/black` | `theme.colors.repositoryNeutralEmphasizedBlack` |
| `ouds/1f4a0_control/text-input/size/min-height` | `theme.textInput.sizeMinHeight` |
| `ouds/1f4a0_control/text-input/color/border/hover-light` | `theme.textInput.colorBorderHover` |
| `ouds/1f4a0_control/text-input/space/column-gap/1f4c4_label-asterisk` | `theme.textInput.spaceColumnGapLabelAsterisk` |
| `ouds/1f4a0_action/button/border/radius/default` | `theme.button.borderRadiusDefault` |
| `ouds/1f4a0_action/button-mono/color/bg/default/enabled-light` | `theme.button.monoColorBgDefaultEnabled` |
| `ouds/1f4a0_indicator/badge/size/medium` | `theme.badge.sizeMedium` |
| `ouds/1f4a0_navigation/link/size/icon` | `theme.link.sizeIcon` |
| `ouds/1f4a0_action/🚧_button-AI/color/bg/default` | NO Swift equivalent (WIP) |
| `core-ouds/dimension/750` | `DimensionRawTokens._750` |
| `core-ouds/font/family/monospace/sf-mono` | `FontRawTokens.monospaceSfMono` |

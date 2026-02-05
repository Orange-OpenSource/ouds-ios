# Migration Guide

- [v1.1.0 → v1.2.0](#v110--v120)
- [v1.0.0 → v1.1.0](#v100--v110)
- [Support](#support)

## v1.1.0 → v1.2.0

### Overview

The *Orange Business Tools* theme has been renamed by the design team to *Orange Compact*
Thus the theme name is more accurate and does not have ambiguity anymore with Orange Businesss company.

### Before You Begin

#### Prerequisites

- Use version 1.x

### Breaking Changes

#### 1. Rename of Swift package product

**Impact**: High

**Before (v1.x)**:
```swift
import OUDSThemeOrangeCompact
```

**After (v1.2.0)**:
```swift
import OUDSThemeOrangeCompact
```

**Required Action**:
- If you use individual imports, rename the name of the Swift Package product from `OUDSThemeOrangeCompact` to `OUDSThemeOrangeCompact`

**Reason for Change**: Use more accurate name for the theme

#### 2. Rename of the theme

**Impact**: High

**Before (v1.x)**:
```swift
OrangeCompactTheme()
```

**After (v1.2.0)**:
```swift
OrangeCompactTheme()
```

**Required Action**:
- If you instanciated `OrangeCompactTheme` object, use instead `OrangeCompactTheme` name

**Reason for Change**: Use more accurate name for the theme

#### 3. Change any use of "OrangeCompact"

**Impact**: High

**Required Action**:
- Wherever you use the name "OrangeCompact" (whatever the case or the style), in documentation, tests or source code, replace instead by "OrangeCompact"

**Reason for Change**: Use more accurate name for the theme

## v1.0.0 → v1.1.0

### Overview

Some "multiple" object tokens have been renamed from plural form to singular form.
Component tokens of button for borders have been shortened.

### Before You Begin

#### Prerequisites

- Use version 1.0.0

### Breaking Changes

#### 1. Rename of "multiple" objects

**Impact**: High

**Before (v1.0.0)**:
```swift
// Old namings of objects
MultipleElevationCompositeRawTokens
MultipleColorSemanticTokens
MultipleFontCompositeSemanticTokens
MultipleFontLetterSpacingSemanticTokens
MultipleFontLineHeightSemanticTokens
MultipleFontSizeSemanticTokens
MultipleSizeSemanticTokens
MultipleSpaceSemanticTokens
```

**After (v1.1.0)**:
```swift
// Use new namings without final 's'
MultipleElevationCompositeRawToken
MultipleColorSemanticToken
MultipleFontCompositeSemanticToken
MultipleFontLetterSpacingSemanticToken
MultipleFontLineHeightSemanticToken
MultipleFontSizeSemanticToken
MultipleSizeSemanticToken
MultipleSpaceSemanticToken
```

**Required Action**:
- Step 1: Rename all `MultipleColorSemanticTokens` uses to `MultipleColorSemanticToken`
- Step 2: Rename all `MultipleElevationCompositeRawTokens` uses to `MultipleElevationCompositeRawToken`
- Step 3: Rename all `MultipleFontCompositeSemanticTokens` uses to `MultipleFontCompositeSemanticToken`
- Step 4: Rename all `MultipleFontLetterSpacingSemanticTokens` uses to `MultipleFontLetterSpacingSemanticToken`
- Step 5: Rename all `MultipleFontLineHeightSemanticTokens` uses to `MultipleFontLineHeightSemanticToken`
- Step 6: Rename all `MultipleFontSizeSemanticTokens` uses to `MultipleFontSizeSemanticToken`
- Step 7: Rename all `MultipleSizeSemanticTokens` uses to `MultipleSizeSemanticToken`
- Step 8: Rename all `MultipleSpaceSemanticTokens` uses to `MultipleSpaceSemanticToken`

**Reason for Change**: Bring consistency between objects exposed by the API; plural form is not correct

#### 2. Rename of component tokens of button for border

**Impact**: High
    
**Before (v1.0.0)**:
```swift
// Old namings of objects
buttonBorderRadiusDefault
buttonBorderRadiusRounded
buttonBorderRadiusSocial
buttonBorderWidthDefault 
buttonBorderWidthDefaultInteraction
buttonBorderWidthDefaultInteractionMono
```

**After (v1.1.0)**:
```swift
// Use new namings without 'button' prefix
borderRadiusDefault
borderRadiusRounded
borderRadiusSocial
borderWidthDefault 
borderWidthDefaultInteraction
borderWidthDefaultInteractionMono
```

**Required Action**:
- Step 1: Rename all `buttonBorderRadiusDefault` uses to `borderRadiusDefault`
- Step 2: Rename all `buttonBorderRadiusRounded` uses to `borderRadiusRounded`
- Step 3: Rename all `buttonBorderRadiusSocial` uses to `borderRadiusSocial`
- Step 4: Rename all `buttonBorderWidthDefault` uses to `borderWidthDefault`
- Step 5: Rename all `buttonBorderWidthDefaultInteraction` uses to `buttonBorderWidthDefaultInteraction`
- Step 6: Rename all `buttonBorderWidthDefaultInteractionMono` uses to `borderWidthDefaultInteractionMono`

**Reason for Change**: Tokens names must be shortened and must not repeat the component name

### Compatibility

- **Backward Compatibility**: No
- **v1.0.0 Support**:  Until release of version v1.1.0

### Additional Resources

- [Full Changelog](https://github.com/Orange-OpenSource/ouds-ios/compare/1.0.0...1.1.0)

## Support

If you encounter issues:
- [Open an issue](https://github.com/Orange-OpenSource/ouds-ios/issues)

# ``OUDSTokensComponent``

These _tokens_ are defined for components and refer to semantic tokens or raw tokens.
They can be seen as a kind of bridge between components and in the end primitive values of the design kit.

<!-- NOTE: Do not forget to update tokens version -->
```
🧱 Core version: 1.2.0
```

## Overview

Thus if a component need to change for example its _background color_, and if a _component token_ is used for it, then only the value of this _token_ should be changed without any modification on the _component_ definition.
_Components_ use _component tokens_ exposed through the _theme_ thanks to token providers to get their style values.

Components tokens are defined and gathered inside _Swift protocol_ so as to be exposed then through implementation of `OUDSTheme` thanks to dedicated tokens providers.
Because we choose to split responsabilities and objects into their own modules, we faced troubles to make possible for children themes or providers to override properties declared in _protocols_ and defined in _extensions_.
That is the reason why tokens are exposed as `@objc open` to be available and overridable anywhere. 

Example with ``ButtonComponentTokens``:

```swift
// Declare some component tokens for buttons with properties they must apply
public protocol ButtonComponentTokens {
    var buttonSizeMaxHeightIconOnly: SizeSemanticToken { get }
    var buttonBorderWidthDefault: BorderWidthSemanticToken { get }
    var buttonBorderRadius: BorderRadiusSemanticToken { get }
    var buttonColorBgDefaultPressedMono: MultipleColorSemanticTokens { get }
    var buttonSpacePaddingBlock: SpaceSemanticToken { get }
}

// There is an existing provider for such tokens
open class OrangeThemeButtonComponentTokensProvider { }

// Define the components tokens exposed through the theme thanks to provider
extension OrangeThemeButtonComponentTokensProvider: ButtonComponentTokens {

    // Raw tokens can be used

    @objc open var buttonSizeMaxHeightIconOnly: SizeSemanticToken { DimensionRawTokens.dimension600 }
    
    // And also semantic tokens

    @objc open var buttonBorderWidthDefault: BorderWidthSemanticToken { borders.borderWidthThicker }
    @objc open var buttonBorderRadius: BorderRadiusSemanticToken { borders.borderRadiusMedium }
    @objc open var buttonColorBgDefaultPressedMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackHigher }
    @objc open var buttonSpacePaddingBlock: SpaceSemanticToken { spaces.spacePaddingInlineSpacious }
}

// This provider is then exposed through OUDSTheme as an AllButtonComponentTokensProvider
```

## How to use component tokens

In fact, the component tokens are declared and gathered in _Swift protocol_ so as to force any theme to implement them, and also to allow any theme to expose such properties whathever the implementation of the theme is, across providers.
Because *component tokens* have for values *raw tokens* or *semantic tokens*, and in the end for values primitive types, and all these tokens are declared with *type aliases* refering all together, you can handle a *component token* directly in your view because the final value will be used.
Thus, get the theme and call the needed property with some helpers.

```swift
struct SomeView: View {

    @Environment(\.theme) private var theme // Supposed you used in your root view the `OUDSThemeableView` to register the theme
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        Button {
            // Some action
        } label: {
            Text("Some label")
                .cornerRadius(theme.button.buttonBorderRadius)
        }
        .padding(.leading, theme.button.buttonSpacePaddingInlineChevronStart)
        .padding(.trailing, theme.button.buttonSpacePaddingInlineChevronEnd)
        .background(theme.button.buttonColorBgStrongEnabledMono)
        .overlay(
            RoundedRectangle(cornerRadius: theme.button.buttonBorderRadius)
                .stroke(Color.blue, lineWidth: theme.button.buttonBorderWidthDefault)
        )
    }
/*
    - The theme provides border semantic tokens "buttonBorderRadius" and "buttonBorderWidthDefault"
    - The theme provides a color semantic token "buttonColorBgStrongEnabledMono"
    - The theme provides spaces semantic token "buttonSpacePaddingInlineChevronStart" and "buttonSpacePaddingInlineChevronEnd"
*/
}

// Do not forget in your app to use the `OUDSThemeableView` for your theme, e.g. `OrangeTheme`
@main
struct DesignToolbox: App {

    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: OrangeTheme()) {
                // Your root view
                ...
            }
        }
    }
}
```

## Topics

### Group

- ``BadgeComponentTokens``
- ``BulletListComponentTokens``
- ``ButtonComponentTokens``
- ``CheckboxComponentTokens``
- ``ChipComponentTokens``
- ``ControlItemComponentTokens``
- ``DividerComponentTokens``
- ``InputTextComponentTokens``
- ``LinkComponentTokens``
- ``ListItemComponentTokens``
- ``PinCodeInputComponentTokens``
- ``QuantityInputComponentTokens``
- ``RadioButtonComponentTokens``
- ``SelectInputComponentTokens``
- ``SkeletonComponentTokens``
- ``SwitchComponentTokens``
- ``TagComponentTokens``
- ``TagInputComponentTokens``

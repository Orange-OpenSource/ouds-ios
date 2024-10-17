# ``OUDSTokensComponent``

These _tokens_ can be used to apply some style and configuration values to _components_.

## Overview

Thus if a component need to change for example its _background color_, and if a _component token_ is used for it, then only the value of this _token_ should be changed without any modification on the _component_ definition.
_Components_ use _component tokens_ exposed through the _theme_ to get their style values.

Example with a fake component named `FormsTextInputComponent` using component tokens in `FormsTextInputComponentTokens`:

```swift
// Declare component tokens
public protocol FormsTextInputComponentTokens {
    var ftiTitleFontWeight: TypographyFontWeightSemanticToken { get }
    var ftiTitleFontSize: TypographyFontSizeSemanticToken { get }
    var ftiTitleColor: ColorSemanticToken { get }
    
    var ftiBorderColor: ColorSemanticToken { get }
    var ftiBorderStyle: BorderStyleSemanticToken { get }
    var ftiBorderWidth: BorderWidthSemanticToken { get }
}

// Define the component tokens
extension OUDSTheme: FormsTextInputComponentTokens {
    private static let defaultBlack: ColorSemanticToken = ColorRawTokens.colorFunctionalBlack
    private static let defaultWhite: ColorSemanticToken = ColorRawTokens.colorFunctionalWhite

    @objc open var ftiTitleFontWeight: TypographyFontWeightSemanticToken { fontWeightHeading }
    @objc open var ftiTitleFontSize: TypographyFontSizeSemanticToken { fontSizeLabelLarge }
    @objc open var ftiTitleColor: ColorSemanticToken { colorContentBrandPrimaryLight ?? Self.defaultBlack }
    
    @objc open var ftiBorderColor: ColorSemanticToken { colorBorderEmphasizedLight ?? Self.defaultBlack }
    @objc open var ftiBorderStyle: BorderStyleSemanticToken { borderStyleDefault }
    @objc open var ftiBorderWidth: BorderWidthSemanticToken { borderWidthThin }
}

// In the implementation of the component, the theme will be retrieved to get these component tokens
// The View

struct OUDSFormsTextInput: View {

    // ...
    @Environment(\.theme) var theme

    public var body: some View {
        VStack(spacing: theme.spacePaddingBlockComponentTall) {
            Label(
                title: {
                    Text("Example of OUDSFormsTextInput")
                        .fontWeight(theme.ftiTitleFontWeight.fontWeight)
                        .font(.system(size: theme.ftiTitleFontSize))
                        .foregroundColor(theme.ftiTitleColor.color)
                },
                icon: { /*@START_MENU_TOKEN@*/Image(systemName: "42.circle")/*@END_MENU_TOKEN@*/ }
            )
            Text("Write bellow some awesome text!")
                .fontWeight(theme.ftiSubtitleFontWeight.fontWeight)
                .font(.system(size: theme.ftiSubtitleFontSize))
                .foregroundColor(theme.ftiSubtitleColor.color)
            TextField(placeholder, text: $value)
        }
        .padding(theme.spacePaddingBlockComponentTall)
        .background(theme.ftiBorderColor.color(for: colorScheme))
        .border(theme.ftiBorderColor.color(for: colorScheme), width: theme.ftiBorderWidth)
    }
}
```

## Topics

### Group

- ``FormsTextInputComponentTokens``


import OUDSSwiftUI
import SwiftUI

// MARK: - Lime Theme

class LimeTheme: OrangeTheme {

    init() {

        // Define the tokens providers you need
        // Because you override the OrangeTheme, some tokens providers will be silently defined
        super.init(
            // Register all colors
            colors: LimeThemeColorProvider())
    }
}

// MARK: - Color Provider

// By subclassing OrangeThemeColorSemanticTokensProvider, you get all existing tokens
// of colors of Orange theme.
// Then you can override some tokens with your own values.
class LimeThemeColorProvider: OrangeThemeColorSemanticTokensProvider {

    // ColorSemanticToken: only one value is contained
    // MultipleColorSemanticToken: two values are defined for light and dark modes

    override var bgTertiary: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: ColorRawTokens.functionalGrayLight80, dark: ColorRawTokens.functionalGrayDark960)
    }

    override var contentBrandPrimaryLight: ColorSemanticToken { ColorRawTokens.functionalMalachite600 }
    override var contentBrandPrimaryDark: ColorSemanticToken { ColorRawTokens.functionalMalachite400 }

    override var actionEnabledLight: ColorSemanticToken { ColorRawTokens.functionalMalachite600 }
    override var actionEnabledDark: ColorSemanticToken { ColorRawTokens.functionalMalachite400 }

    override var borderBrandPrimary: MultipleColorSemanticToken { MultipleColorSemanticToken(ColorRawTokens.functionalMalachite600) }
}

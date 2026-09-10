import OUDSSwiftUI
import SwiftUI

// MARK: - Eiffel Theme

class EiffelTheme: OrangeTheme {

    override init() {
        let colors = EiffelThemeColorProvider()

        super.init(
            colors: EiffelThemeColorProvider(),
            button: EiffelThemeButtonComponentTokensProvider(
                colors: colors),
            switch: EiffelThemeSwitchComponentTokensProvider(
                colors: colors))
    }
}

// MARK: - Color Provider

class EiffelThemeColorProvider: OrangeThemeColorSemanticTokensProvider {

    override var bgTertiary: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: ColorRawTokens.functionalGrayLight80, dark: ColorRawTokens.functionalGrayDark960)
    }

    override var contentBrandPrimaryLight: ColorSemanticToken { ColorRawTokens.functionalMalachite600 }
    override var contentBrandPrimaryDark: ColorSemanticToken { ColorRawTokens.functionalMalachite400 }

    override var actionEnabledLight: ColorSemanticToken { ColorRawTokens.functionalMalachite600 }
    override var actionEnabledDark: ColorSemanticToken { ColorRawTokens.functionalMalachite400 }
}

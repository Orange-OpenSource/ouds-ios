import OUDSSwiftUI
import SwiftUI

// MARK: - Eiffel Theme

class EiffelTheme: OrangeTheme {

    override init() {
        let borders = EiffelThemeBorderProvider()
        let colors = EiffelThemeColorProvider()

        super.init(
            borders: EiffelThemeBorderProvider(),
            colors: colors,
            button: EiffelThemeButtonComponentTokensProvider(
                colors: colors),
            checkbox: EiffelThemeCheckboxComponentTokensProvider(
                borders: borders),
            radioButton: EiffelThemeRadioButtonComponentTokensProvider(
                borders: borders),
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

// MARK: - Border Provider

class EiffelThemeBorderProvider: OrangeThemeBorderSemanticTokensProvider {

    override var colorActionEnabledLight: ColorSemanticToken { ColorRawTokens.functionalMalachite600 }
    override var colorActionEnabledDark: ColorSemanticToken { ColorRawTokens.functionalMalachite400 }

    override var radiusMedium: BorderRadiusSemanticToken { BorderRawTokens.radius800 }
}

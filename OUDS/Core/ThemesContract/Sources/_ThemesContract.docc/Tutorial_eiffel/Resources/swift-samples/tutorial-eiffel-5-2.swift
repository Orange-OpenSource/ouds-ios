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
            spaces: EiffelThemeSpaceProvider(),
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

// MARK: - Border Provider

class EiffelThemeBorderProvider: OrangeThemeBorderSemanticTokensProvider {

    override var styleDefault: BorderStyleSemanticToken { BorderRawTokens.styleDashed }

    override var widthThin: BorderWidthSemanticToken { BorderRawTokens.width100 }

    override var radiusMedium: BorderRadiusSemanticToken { BorderRawTokens.radius800 }

    override var colorActionEnabledLight: ColorSemanticToken { ColorRawTokens.functionalMalachite600 }
    override var colorActionEnabledDark: ColorSemanticToken { ColorRawTokens.functionalMalachite400 }
}

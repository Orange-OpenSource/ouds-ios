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
            colorModes: EiffelThemeColorModeProvider(),
            elevations: EiffelThemeElevationProvider(),
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

// MARK: - Color Mode Provider

class EiffelThemeColorModeProvider: OrangeThemeColorModeSemanticTokensProvider {

    override var onStatusInfoEmphasizedLight: ColorSemanticToken { ColorRawTokens.functionalMalachite100 }
    override var onStatusInfoEmphasizedDark: ColorSemanticToken { ColorRawTokens.functionalMalachite900 }
}

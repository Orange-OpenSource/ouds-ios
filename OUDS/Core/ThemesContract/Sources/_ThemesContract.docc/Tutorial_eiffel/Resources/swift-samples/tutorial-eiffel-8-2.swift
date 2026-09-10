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
            fonts: EiffelThemeFontProvider(),
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

// MARK: - Font Provider

class EiffelThemeFontProvider: OrangeThemeFontSemanticTokensProvider {

    override var headingXLarge: FontCompositeSemanticToken {
        FontCompositeSemanticToken(FontRawTokens.headingXLargeBold)
    }

    override var headingSmall: FontCompositeSemanticToken {
        FontCompositeSemanticToken(FontRawTokens.headingSmallBold)
    }

    override var labelDefaultSmall: FontCompositeSemanticToken {
        FontCompositeSemanticToken(FontRawTokens.labelDefaultSmallMedium)
    }
}

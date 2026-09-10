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

// MARK: - Elevation Provider

class EiffelThemeElevationProvider: OrangeThemeElevationSemanticTokensProvider {

    override var emphasized: ElevationCompositeSemanticToken {
        ElevationCompositeSemanticToken(ElevationRawTokens.bottom_4_600)
    }

    override var stickyEmphasized: ElevationCompositeSemanticToken {
        ElevationCompositeSemanticToken(ElevationRawTokens.bottom_4_600)
    }
}

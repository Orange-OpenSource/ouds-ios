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

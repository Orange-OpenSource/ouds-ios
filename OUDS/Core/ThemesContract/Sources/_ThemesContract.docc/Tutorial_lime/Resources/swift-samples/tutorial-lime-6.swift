import OUDSSwiftUI
import SwiftUI

// MARK: - Lime Theme

class LimeTheme: OrangeTheme {

    init() {
        // Define the tokens providers you need
        // Because you override the OrangeTheme, some tokens providers will be silently defined
        super.init(
            borders: LimeThemeBorderProvider(),
            colors: LimeThemeColorProvider(),
            elevations: LimeThemeElevationProvider(),
            spaces: LimeThemeSpaceProvider())
    }
}

// MARK: - Elevation Provider

// By subclassing OrangeThemeElevationSemanticTokensProvider, you get all existing tokens
// of elevations of Orange theme.
// Then you can override some tokens with your own values.
class LimeThemeElevationProvider: OrangeThemeElevationSemanticTokensProvider {

    override var emphasized: ElevationCompositeSemanticToken {
        raised
    }
}

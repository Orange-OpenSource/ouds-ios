import OUDSSwiftUI
import SwiftUI

// MARK: - Lime Theme

class LimeTheme: OrangeTheme {

    override init() {
        super.init(
            borders: LimeThemeBorderProvider(),
            colors: LimeThemeColorProvider(),
            spaces: LimeThemeSpaceProvider())
    }
}

// MARK: - Space Provider

class LimeThemeSpaceProvider: OrangeThemeSpaceSemanticTokensProvider {

    override var fixedMedium: SpaceSemanticToken { DimensionRawTokens._150 }
    override var fixedLarge: SpaceSemanticToken { DimensionRawTokens._200 }
}

import OUDSSwiftUI
import SwiftUI

// MARK: - Lime Theme

class LimeTheme: OrangeTheme {

    init() {
        // Define the tokens providers you need
        // Because you override the OrangeTheme, some tokens providers will be silently defined
        super.init(
            borders: LimeThemeBorderProvider(),
            colors: LimeThemeColorProvider())
    }
}

// MARK: - Border Provider

// By subclassing OrangeThemeBorderSemanticTokensProvider, you get all existing tokens
// of borders of Orange theme.
// Then you can override some tokens with your own values.
class LimeThemeBorderProvider: OrangeThemeBorderSemanticTokensProvider {

    override var styleDefault: BorderStyleSemanticToken { BorderRawTokens.styleDashed }
    override var widthThin: BorderWidthSemanticToken { BorderRawTokens.width100 }
    override var radiusMedium: BorderRadiusSemanticToken { BorderRawTokens.radius800 }
}

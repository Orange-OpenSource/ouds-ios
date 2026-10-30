//
// Software Name: OUDS iOS
// SPDX-FileCopyrightText: Copyright (c) Orange SA
// SPDX-License-Identifier: MIT
//
// This software is distributed under the MIT license,
// the text of which is available at https://opensource.org/license/MIT/
// or see the "LICENSE" file for more details.
//
// Authors: See CONTRIBUTORS.txt
// Software description: A SwiftUI components library with code examples for Orange Unified Design System
//

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

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
            // Register all colors
            colors: LimeThemeColorProvider())
    }
}

// MARK: - Color Provider

// By subclassing OrangeThemeColorSemanticTokensProvider, you get all existing tokens
// of colors of Orange theme.
// Then you can override some tokens with your own values.
class LimeThemeColorProvider: OrangeThemeColorSemanticTokensProvider {

    // ColorSemanticToken: only one value is contained
    // MultipleColorSemanticToken: two values are defined for light and dark modes

    override var bgTertiary: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: ColorRawTokens.functionalGrayLight80, dark: ColorRawTokens.functionalGrayDark960)
    }

    override var contentBrandPrimaryLight: ColorSemanticToken { ColorRawTokens.functionalMalachite600 }
    override var contentBrandPrimaryDark: ColorSemanticToken { ColorRawTokens.functionalMalachite400 }

    override var actionEnabledLight: ColorSemanticToken { ColorRawTokens.functionalMalachite600 }
    override var actionEnabledDark: ColorSemanticToken { ColorRawTokens.functionalMalachite400 }

    override var borderBrandPrimary: MultipleColorSemanticToken { MultipleColorSemanticToken(ColorRawTokens.functionalMalachite600) }
}

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

@main
struct OUDSTutorialSandboxApp: App {

    let myTheme = OrangeTheme(borders: MyOwnProviderOfBorderTokens(),
                              colors: MyOwnProviderOfColorTokens(),
                              fontFamily: "Menlo",
                              tuning: Tuning(hasRoundedButtons: true, hasRoundedTextInputs: true))

    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: myTheme) {
                ContentView()
            }
        }
    }
}

// Change the provider of semantic tokens of colors for the Orange theme
// Keep in mind colors are used everywhere in plenty of components
// so your changes can impact other elements
class MyOwnProviderOfColorTokens: OrangeThemeColorSemanticTokensProvider {

    // Some tokens have light and dark values used according to color scheme
    override var actionEnabledLight: ColorSemanticToken {
        ColorRawTokens.functionalAmethyst600
    }

    // This token can contain up to two values (light and dark), or only one for both
    override var bgTertiary: MultipleColorSemanticToken {
        MultipleColorSemanticToken(ColorRawTokens.sun160)
    }
}

// Change the provider of semantic tokens of border for the Orange theme
// Keep in mind borders are used everywhere in plenty of components
// so your changes can impact other elements
class MyOwnProviderOfBorderTokens: OrangeThemeBorderSemanticTokensProvider {

    override var widthThin: BorderWidthSemanticToken {
        BorderRawTokens.width75
    }

    override var styleDefault: BorderStyleSemanticToken {
        BorderRawTokens.styleDashed
    }

    override var radiusMedium: BorderRadiusSemanticToken {
        40 // Remember, thanks to use of typealias, in the end each token is a raw type
    }
}

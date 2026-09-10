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

class LimeTheme: OrangeTheme, @unchecked Sendable {

    init() {
        // Define the tokens providers you need
        // Because you override the OrangeTheme, some tokens providers will be silently defined
        let colors = LimeThemeColorProvider()
        super.init(
            borders: LimeThemeBorderProvider(),
            colors: colors,
            colorModes: LimeThemeColorModeProvider(colors: colors),
            elevations: LimeThemeElevationProvider(),
            fonts: LimeThemeFontProvider(),
            spaces: LimeThemeSpaceProvider())

        registerFonts()
    }

    // Register fonts only one time
    private static var fontsAlreadyRegistered = false

    // Register local fonts using TTF
    // In the exemple we use Shantell Sans which is already known in the OUDS Core.
    // If the font is not managed by OUDS you will need to save inside OUDS the
    // combinations between PostScript font identifiers and weights
    // with registerFont(postScript: String, forCombination: PostScriptFontNamesMapKey) API.
    private func registerFonts() {
        guard !LimeTheme.fontsAlreadyRegistered else { return }

        let fonts = Bundle.main.urls(forResourcesWithExtension: "ttf", subdirectory: nil)
        fonts?.forEach { CTFontManagerRegisterFontsForURL($0 as CFURL, .process, nil) }

        LimeTheme.fontsAlreadyRegistered = true
    }
}

// MARK: - Fonts Provider

// By subclassing OrangeThemeFontSemanticTokensProvider, you get all existing tokens
// of font of Orange theme.
// Then you can override some tokens with your own values.
class LimeThemeFontProvider: OrangeThemeFontSemanticTokensProvider {

    private static let myFont = "Shantell Sans"

    override var familyBody: FontFamilySemanticToken { Self.myFont }
    override var familyCode: FontFamilySemanticToken { Self.myFont }
    override var familyDisplay: FontFamilySemanticToken { Self.myFont }
    override var familyHeading: FontFamilySemanticToken { Self.myFont }
    override var familyLabel: FontFamilySemanticToken { Self.myFont }
    override var familySystem: FontFamilySemanticToken { Self.myFont }
}

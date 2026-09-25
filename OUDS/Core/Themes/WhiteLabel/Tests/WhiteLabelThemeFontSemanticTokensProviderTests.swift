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

import OUDSThemesContract
@testable import OUDSThemesWhiteLabel
import Testing

// swiftlint:disable type_name

/// Check if the custom tokens provider of font semantic tokens has the expected default configuration
struct WhiteLabelThemeFontSemanticTokensProviderTests {

    @Test func assignedFontFamily() throws {
        let defaultProvider = WhiteLabelThemeFontSemanticTokensProvider()
        #expect(defaultProvider.assignedFontFamily.isEmpty)

        let providerWithFontFamily = WhiteLabelThemeFontSemanticTokensProvider(fontFamily: "Winky Rough")
        #expect(providerWithFontFamily.assignedFontFamily == "Winky Rough")
    }

    @Test func fontTokensValues() throws {

        let provider: AllFontSemanticTokensProvider = WhiteLabelThemeFontSemanticTokensProvider(fontFamily: "Winky Rough")

        #expect(provider.familyBody == provider.familySystem)
        #expect(provider.familyCode == provider.familySystem)
        #expect(provider.familyDisplay == provider.familySystem)
        #expect(provider.familyHeading == provider.familySystem)
        #expect(provider.familyLabel == provider.familySystem)
        #expect(provider.familySystem == "Winky Rough")
    }
}

// swiftlint:enable type_name

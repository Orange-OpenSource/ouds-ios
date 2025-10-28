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

import OUDS
import OUDSThemesOrangeBusinessTools
import Testing

// swiftlint:disable type_name

/// The aim of this tests class is to look for regressions in **Orange Business Tools brand border semantic tokens**.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// In the semantics of **border semantic tokens**, there will be some unchanged things like relationships between tokens.
/// Thus this tests class just checks if such relationships are still here whatever the values at the end.
struct OrangeBusinessToolsThemeBorderSemanticTokensTests {

    private var theme: OUDSTheme

    init() {
        theme = OrangeBusinessToolsTheme()
    }

    @Test func widthSemanticTokensAreBiggerAndBigger() throws {
        #expect(theme.borders.widthNone < theme.borders.widthDefault)
        #expect(theme.borders.widthThin <= theme.borders.widthDefault)
        #expect(theme.borders.widthThin < theme.borders.widthMedium)
        #expect(theme.borders.widthMedium < theme.borders.widthThick)
        #expect(theme.borders.widthThick < theme.borders.widthThicker)

        #expect(theme.borders.widthFocusInset < theme.borders.widthFocus)

        #expect(theme.borders.radiusNone <= theme.borders.radiusDefault)
    }

    @Test func radiusSemanticTokensAreBiggerAndBigger() throws {
        #expect(theme.borders.radiusNone <= theme.borders.radiusDefault)
        #expect(theme.borders.radiusDefault <= theme.borders.radiusSmall) // Confirmed by Mdesign team, can be equal
        #expect(theme.borders.radiusSmall < theme.borders.radiusMedium)
        #expect(theme.borders.radiusMedium < theme.borders.radiusLarge)
        #expect(theme.borders.radiusLarge < theme.borders.radiusPill)
    }
}

// swiftlint:enable type_name

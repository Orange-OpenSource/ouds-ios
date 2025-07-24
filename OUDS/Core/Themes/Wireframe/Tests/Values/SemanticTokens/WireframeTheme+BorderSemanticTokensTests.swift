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
import OUDSThemesWireframe
import Testing

// swiftlint:disable type_name

/// The aim of this tests class is to look for regressions in **Wireframe brand border semantic tokens**.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// In the semantics of **border semantic tokens**, there will be some unchanged things like relationships between tokens.
/// Thus this tests class just checks if such relationships are still here whatever the values at the end.
struct WireframeThemeBorderSemanticTokensTests {

    private var theme: OUDSTheme

    init() {
        theme = WireframeTheme()
    }

    @Test func borderWidthSemanticTokensAreBiggerAndBigger() throws {
        #expect(theme.borders.borderWidthNone < theme.borders.borderWidthDefault)
        #expect(theme.borders.borderWidthThin <= theme.borders.borderWidthDefault) // Confirmed by Mdesign team, can be equal
        #expect(theme.borders.borderWidthThin < theme.borders.borderWidthMedium)
        #expect(theme.borders.borderWidthMedium < theme.borders.borderWidthThick)
        #expect(theme.borders.borderWidthThick < theme.borders.borderWidthThicker)

        #expect(theme.borders.borderWidthFocusInset < theme.borders.borderWidthFocus)

        #expect(theme.borders.borderRadiusNone <= theme.borders.borderRadiusDefault)
    }

    @Test func borderRadiusSemanticTokensAreBiggerAndBigger() throws {
        #expect(theme.borders.borderRadiusNone <= theme.borders.borderRadiusDefault) // Confirmed by Mdesign team, can be equal
        #expect(theme.borders.borderRadiusDefault < theme.borders.borderRadiusSmall)
        #expect(theme.borders.borderRadiusSmall < theme.borders.borderRadiusMedium)
        #expect(theme.borders.borderRadiusMedium < theme.borders.borderRadiusLarge)
        #expect(theme.borders.borderRadiusLarge < theme.borders.borderRadiusPill)
    }
}

// swiftlint:enable type_name

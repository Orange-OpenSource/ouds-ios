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
import OUDSThemesOrange
import OUDSTokensSemantic
import Testing

/// Tests some helper functions defined in extensions of `OUDSTheme` in the *OUDS* module, related to grids tokens.
/// Cannot be tested there because no theme exists at that level., but here the ``OrangeTheme`` can be used.
struct GridSemanticTokenHelperTests {

    private let someTheme: OUDSTheme = OrangeTheme()

    @Test func gridMinWith() throws {
        #expect(someTheme.grids.gridExtraCompactMinWidth == someTheme.gridMinWidth(for: .extraCompact))
        #expect(someTheme.grids.gridCompactMinWidth == someTheme.gridMinWidth(for: .compact))
        #expect(someTheme.grids.gridRegularMinWidth == someTheme.gridMinWidth(for: .regular))
    }

    @Test func gridMaxWith() throws {
        #expect(someTheme.grids.gridExtraCompactMaxWidth == someTheme.gridMaxWidth(for: .extraCompact))
        #expect(someTheme.grids.gridCompactMaxWidth == someTheme.gridMaxWidth(for: .compact))
        #expect(someTheme.grids.gridRegularMaxWidth == someTheme.gridMaxWidth(for: .regular))
    }

    @Test func gridMargin() throws {
        #expect(someTheme.grids.gridExtraCompactMargin == someTheme.gridMargin(for: .extraCompact))
        #expect(someTheme.grids.gridCompactMargin == someTheme.gridMargin(for: .compact))
        #expect(someTheme.grids.gridRegularMargin == someTheme.gridMargin(for: .regular))
    }

    @Test func gridColumnGap() throws {
        #expect(someTheme.grids.gridExtraCompactColumnGap == someTheme.gridColumnGap(for: .extraCompact))
        #expect(someTheme.grids.gridCompactColumnGap == someTheme.gridColumnGap(for: .compact))
        #expect(someTheme.grids.gridRegularColumnGap == someTheme.gridColumnGap(for: .regular))
    }
}

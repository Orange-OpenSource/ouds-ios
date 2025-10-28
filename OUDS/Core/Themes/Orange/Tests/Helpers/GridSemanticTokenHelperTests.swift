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
        #expect(someTheme.grids.extraCompactMinWidth == someTheme.gridMinWidth(for: .extraCompact))
        #expect(someTheme.grids.compactMinWidth == someTheme.gridMinWidth(for: .compact))
        #expect(someTheme.grids.regularMinWidth == someTheme.gridMinWidth(for: .regular))
    }

    @Test func gridMaxWith() throws {
        #expect(someTheme.grids.extraCompactMaxWidth == someTheme.gridMaxWidth(for: .extraCompact))
        #expect(someTheme.grids.compactMaxWidth == someTheme.gridMaxWidth(for: .compact))
        #expect(someTheme.grids.regularMaxWidth == someTheme.gridMaxWidth(for: .regular))
    }

    @Test func gridMargin() throws {
        #expect(someTheme.grids.extraCompactMargin == someTheme.gridMargin(for: .extraCompact))
        #expect(someTheme.grids.compactMargin == someTheme.gridMargin(for: .compact))
        #expect(someTheme.grids.regularMargin == someTheme.gridMargin(for: .regular))
    }

    @Test func gridColumnGap() throws {
        #expect(someTheme.grids.extraCompactColumnGap == someTheme.gridColumnGap(for: .extraCompact))
        #expect(someTheme.grids.compactColumnGap == someTheme.gridColumnGap(for: .compact))
        #expect(someTheme.grids.regularColumnGap == someTheme.gridColumnGap(for: .regular))
    }
}

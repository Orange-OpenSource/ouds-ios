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
import OUDSThemesOrangeCompact
import Testing

/// Checks if the semantic tokens of grids, as defined in the Orange Compact theme, have expected values and relationships
/// between them.
struct GridSemanticTokensValuesTests {

    private var theme: OUDSTheme

    init() {
        theme = OrangeCompactTheme()
    }

    // MARK: - Tests

    @Test("Min widths must be smaller than max widths")
    func widths() throws {
        #expect(theme.grids.extraCompactMinWidth < theme.grids.extraCompactMaxWidth)
        #expect(theme.grids.compactMinWidth < theme.grids.compactMaxWidth)
        #expect(theme.grids.regularMinWidth < theme.grids.regularMaxWidth)
    }
}

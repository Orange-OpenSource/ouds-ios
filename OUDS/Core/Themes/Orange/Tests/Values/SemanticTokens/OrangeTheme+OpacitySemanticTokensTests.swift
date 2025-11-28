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
import OUDSThemesOrange
import Testing

/// Checks if the semantic tokens of opacities, as defined in the Orange theme, have expected values and relationships
/// between them.
struct OpacitySemanticTokensValuesTests {

    private var theme: OUDSTheme

    init() {
        theme = OrangeTheme()
    }

    // MARK: - Tests

    @Test("Opacities must be bigger and bigger")
    func opacities() throws {
        #expect(theme.opacities.invisible < theme.opacities.weakest)
        #expect(theme.opacities.weakest < theme.opacities.weaker)
        #expect(theme.opacities.weaker < theme.opacities.weak)
        #expect(theme.opacities.weak < theme.opacities.medium)
        #expect(theme.opacities.medium < theme.opacities.strong)
        #expect(theme.opacities.strong < theme.opacities.opaque)
        // NOTE: "disabled" is particular, not tested here
    }
}

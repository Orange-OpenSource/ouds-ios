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

/// Checks if the multiple semantic tokens of fonts, as defined in the Orange Compact theme, have expected values and relationships
/// between them.
struct FontMultipleSemanticTokensValuesTests {

    private var theme: OUDSTheme

    init() {
        theme = OrangeCompactTheme()
    }

    // MARK: - Size

    @Test("Size multiple semantic tokens for display must be bigger and bigger")
    func sizeDisplay() throws {
        #expect(theme.fonts.sizeDisplaySmall < theme.fonts.sizeDisplayMedium)
        #expect(theme.fonts.sizeDisplayMedium < theme.fonts.sizeDisplayLarge)
    }

    @Test("Size multiple semantic tokens for headings must be bigger and bigger")
    func sizeHeading() throws {
        #expect(theme.fonts.sizeHeadingSmall < theme.fonts.sizeHeadingMedium)
        #expect(theme.fonts.sizeHeadingMedium < theme.fonts.sizeHeadingLarge)
        #expect(theme.fonts.sizeHeadingLarge < theme.fonts.sizeHeadingXlarge)
    }

    @Test("Size multiple semantic tokens for body must be bigger and bigger")
    func sizeBody() throws {
        #expect(theme.fonts.sizeBodySmall < theme.fonts.sizeBodyMedium)
        #expect(theme.fonts.sizeBodyMedium < theme.fonts.sizeBodyLarge)
    }

    // MARK: - Line height

    @Test("Line height multiple semantic tokens for display must be bigger and bigger")
    func lineHeightDisplay() throws {
        #expect(theme.fonts.lineHeightDisplaySmall < theme.fonts.lineHeightDisplayMedium)
        #expect(theme.fonts.lineHeightDisplayMedium < theme.fonts.lineHeightDisplayLarge)
    }

    @Test("Line height multiple semantic tokens for headings must be bigger and bigger")
    func lineHeightHeading() throws {
        #expect(theme.fonts.lineHeightHeadingSmall < theme.fonts.lineHeightHeadingMedium)
        #expect(theme.fonts.lineHeightHeadingMedium < theme.fonts.lineHeightHeadingLarge)
        #expect(theme.fonts.lineHeightHeadingLarge < theme.fonts.lineHeightHeadingXlarge)
    }

    @Test("Line height multiple semantic tokens for body must be bigger and bigger")
    func lineHeightBody() throws {
        #expect(theme.fonts.lineHeightBodySmall < theme.fonts.lineHeightBodyMedium)
        #expect(theme.fonts.lineHeightBodyMedium < theme.fonts.lineHeightBodyLarge)
    }
}

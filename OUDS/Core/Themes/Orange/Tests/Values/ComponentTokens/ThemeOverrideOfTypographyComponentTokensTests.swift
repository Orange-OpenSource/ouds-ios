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

// swiftlint:disable type_name

struct ThemeOverrideOfTypographyComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideTypographyComponentTokenSpacePaddingBlockTopHeadingLargeMarker() throws {
        #expect(inheritedTheme.typography.spacePaddingBlockTopHeadingLargeMarker != abstractTheme.typography.spacePaddingBlockTopHeadingLargeMarker)
        #expect(inheritedTheme.typography.spacePaddingBlockTopHeadingLargeMarker == MockThemeTypographyComponentTokenProvider.mockThemeTypographySpace)
    }

    @Test func inheritedThemeCanOverrideTypographyComponentTokenSpacePaddingBlockBottomHeadingLargeMarker() throws {
        #expect(inheritedTheme.typography.spacePaddingBlockBottomHeadingLargeMarker != abstractTheme.typography.spacePaddingBlockBottomHeadingLargeMarker)
        #expect(inheritedTheme.typography.spacePaddingBlockBottomHeadingLargeMarker == MockThemeTypographyComponentTokenProvider.mockThemeTypographySpace)
    }
}

// swiftlint:enable type_name

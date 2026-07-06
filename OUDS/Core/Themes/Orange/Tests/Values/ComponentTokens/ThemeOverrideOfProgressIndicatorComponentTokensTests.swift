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

struct ThemeOverrideOfProgressIndicatorComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideProgressIndicatorComponentTokenColorContentTrack() throws {
        #expect(inheritedTheme.progressIndicator.colorContentTrack != abstractTheme.progressIndicator.colorContentTrack)
        #expect(inheritedTheme.progressIndicator.colorContentTrack == MockThemeProgressIndicatorComponentTokenProvider.mockThemeProgressIndicatorColor)
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideProgressIndicatorComponentTokenBorderRadiusDefault() throws {
        #expect(inheritedTheme.progressIndicator.borderRadiusDefault != abstractTheme.progressIndicator.borderRadiusDefault)
        #expect(inheritedTheme.progressIndicator.borderRadiusDefault == MockThemeProgressIndicatorComponentTokenProvider.mockThemeProgressIndicatorBorderRadius)
    }

    @Test func inheritedThemeCanOverrideProgressIndicatorComponentTokenBorderRadiusRounded() throws {
        #expect(inheritedTheme.progressIndicator.borderRadiusRounded != abstractTheme.progressIndicator.borderRadiusRounded)
        #expect(inheritedTheme.progressIndicator.borderRadiusRounded == MockThemeProgressIndicatorComponentTokenProvider.mockThemeProgressIndicatorBorderRadius)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideProgressIndicatorComponentTokenSpacePaddingBlock() throws {
        #expect(inheritedTheme.progressIndicator.spacePaddingBlock != abstractTheme.progressIndicator.spacePaddingBlock)
        #expect(inheritedTheme.progressIndicator.spacePaddingBlock == MockThemeProgressIndicatorComponentTokenProvider.mockThemeProgressIndicatorSpace)
    }

    @Test func inheritedThemeCanOverrideProgressIndicatorComponentTokenSpaceColumnGap() throws {
        #expect(inheritedTheme.progressIndicator.spaceColumnGap != abstractTheme.progressIndicator.spaceColumnGap)
        #expect(inheritedTheme.progressIndicator.spaceColumnGap == MockThemeProgressIndicatorComponentTokenProvider.mockThemeProgressIndicatorSpace)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideProgressIndicatorComponentTokenSizeLinearIndicatorHeight() throws {
        #expect(inheritedTheme.progressIndicator.sizeLinearIndicatorHeight != abstractTheme.progressIndicator.sizeLinearIndicatorHeight)
        #expect(inheritedTheme.progressIndicator.sizeLinearIndicatorHeight == MockThemeProgressIndicatorComponentTokenProvider.mockThemeProgressIndicatorSize)
    }
}

// swiftlint:enable type_name

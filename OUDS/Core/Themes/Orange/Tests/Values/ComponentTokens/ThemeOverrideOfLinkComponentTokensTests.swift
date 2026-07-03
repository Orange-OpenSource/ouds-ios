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

struct ThemeOverrideOfLinkComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideLinkComponentTokenSizeMinHeightDefault() throws {
        #expect(inheritedTheme.link.sizeMinHeightDefault != abstractTheme.link.sizeMinHeightDefault)
        #expect(inheritedTheme.link.sizeMinHeightDefault == MockThemeLinkComponentTokenProvider.mockThemeLinkSize)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSizeMinWidth() throws {
        #expect(inheritedTheme.link.sizeMinWidth != abstractTheme.link.sizeMinWidth)
        #expect(inheritedTheme.link.sizeMinWidth == MockThemeLinkComponentTokenProvider.mockThemeLinkSize)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSizeMinHeightSmall() throws {
        #expect(inheritedTheme.link.sizeMinHeightSmall != abstractTheme.link.sizeMinHeightSmall)
        #expect(inheritedTheme.link.sizeMinHeightSmall == MockThemeLinkComponentTokenProvider.mockThemeLinkSize)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSizeMinWidthSmall() throws {
        #expect(inheritedTheme.link.sizeMinWidthSmall != abstractTheme.link.sizeMinWidthSmall)
        #expect(inheritedTheme.link.sizeMinWidthSmall == MockThemeLinkComponentTokenProvider.mockThemeLinkSize)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSizeIconDefault() throws {
        #expect(inheritedTheme.link.sizeIconDefault != abstractTheme.link.sizeIconDefault)
        #expect(inheritedTheme.link.sizeIconDefault == MockThemeLinkComponentTokenProvider.mockThemeLinkSize)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSizeIconSmall() throws {
        #expect(inheritedTheme.link.sizeIconSmall != abstractTheme.link.sizeIconSmall)
        #expect(inheritedTheme.link.sizeIconSmall == MockThemeLinkComponentTokenProvider.mockThemeLinkSize)
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideLinkMonoComponentTokenColorContentEnabled() throws {
        #expect(inheritedTheme.link.monoColorContentEnabled != abstractTheme.link.monoColorContentEnabled)
        #expect(inheritedTheme.link.monoColorContentEnabled == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkMonoComponentTokenColorContentHover() throws {
        #expect(inheritedTheme.link.monoColorContentHover != abstractTheme.link.monoColorContentHover)
        #expect(inheritedTheme.link.monoColorContentHover == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkMonoComponentTokenColorContentPressed() throws {
        #expect(inheritedTheme.link.monoColorContentPressed != abstractTheme.link.monoColorContentPressed)
        #expect(inheritedTheme.link.monoColorContentPressed == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkMonoComponentTokenColorContentFocus() throws {
        #expect(inheritedTheme.link.monoColorContentFocus != abstractTheme.link.monoColorContentFocus)
        #expect(inheritedTheme.link.monoColorContentFocus == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkMonoComponentTokenColorContentDisabled() throws {
        #expect(inheritedTheme.link.monoColorContentDisabled != abstractTheme.link.monoColorContentDisabled)
        #expect(inheritedTheme.link.monoColorContentDisabled == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenColorContentEnabled() throws {
        #expect(inheritedTheme.link.colorContentEnabled != abstractTheme.link.colorContentEnabled)
        #expect(inheritedTheme.link.colorContentEnabled == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenColorContentHover() throws {
        #expect(inheritedTheme.link.colorContentHover != abstractTheme.link.colorContentHover)
        #expect(inheritedTheme.link.colorContentHover == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenColorContentPressed() throws {
        #expect(inheritedTheme.link.colorContentPressed != abstractTheme.link.colorContentPressed)
        #expect(inheritedTheme.link.colorContentPressed == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenColorContentFocus() throws {
        #expect(inheritedTheme.link.colorContentFocus != abstractTheme.link.colorContentFocus)
        #expect(inheritedTheme.link.colorContentFocus == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenColorArrowEnabled() throws {
        #expect(inheritedTheme.link.colorChevronEnabled != abstractTheme.link.colorChevronEnabled)
        #expect(inheritedTheme.link.colorChevronEnabled == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenColorArrowHover() throws {
        #expect(inheritedTheme.link.colorChevronHover != abstractTheme.link.colorChevronHover)
        #expect(inheritedTheme.link.colorChevronHover == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenColorArrowPressed() throws {
        #expect(inheritedTheme.link.colorChevronPressed != abstractTheme.link.colorChevronPressed)
        #expect(inheritedTheme.link.colorChevronPressed == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenColorArrowFocus() throws {
        #expect(inheritedTheme.link.colorChevronFocus != abstractTheme.link.colorChevronFocus)
        #expect(inheritedTheme.link.colorChevronFocus == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideLinkComponentTokenSpacePaddingInline() throws {
        #expect(inheritedTheme.link.spacePaddingInline != abstractTheme.link.spacePaddingInline)
        #expect(inheritedTheme.link.spacePaddingInline == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSpacePaddingBlockDefault() throws {
        #expect(inheritedTheme.link.spacePaddingBlockDefault != abstractTheme.link.spacePaddingBlockDefault)
        #expect(inheritedTheme.link.spacePaddingBlockDefault == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSpacePaddingBlockSmall() throws {
        #expect(inheritedTheme.link.spacePaddingBlockSmall != abstractTheme.link.spacePaddingBlockSmall)
        #expect(inheritedTheme.link.spacePaddingBlockSmall == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSpacePaddingBlockCompactDensityDefault() throws {
        #expect(inheritedTheme.link.spacePaddingBlockCompactDensityDefault != abstractTheme.link.spacePaddingBlockCompactDensityDefault)
        #expect(inheritedTheme.link.spacePaddingBlockCompactDensityDefault == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSpacePaddingBlockCompactDensitySmall() throws {
        #expect(inheritedTheme.link.spacePaddingBlockCompactDensitySmall != abstractTheme.link.spacePaddingBlockCompactDensitySmall)
        #expect(inheritedTheme.link.spacePaddingBlockCompactDensitySmall == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSpaceColumnGapIconDefault() throws {
        #expect(inheritedTheme.link.spaceColumnGapIconDefault != abstractTheme.link.spaceColumnGapIconDefault)
        #expect(inheritedTheme.link.spaceColumnGapIconDefault == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSpaceColumnGapIconSmall() throws {
        #expect(inheritedTheme.link.spaceColumnGapIconSmall != abstractTheme.link.spaceColumnGapIconSmall)
        #expect(inheritedTheme.link.spaceColumnGapIconSmall == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSpaceColumnGapArrowDefault() throws {
        #expect(inheritedTheme.link.spaceColumnGapChevronDefault != abstractTheme.link.spaceColumnGapChevronDefault)
        #expect(inheritedTheme.link.spaceColumnGapChevronDefault == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSpaceColumnGapArrowSmall() throws {
        #expect(inheritedTheme.link.spaceColumnGapChevronSmall != abstractTheme.link.spaceColumnGapChevronSmall)
        #expect(inheritedTheme.link.spaceColumnGapChevronSmall == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }
}

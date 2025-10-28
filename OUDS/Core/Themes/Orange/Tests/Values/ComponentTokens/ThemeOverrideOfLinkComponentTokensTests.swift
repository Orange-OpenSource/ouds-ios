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
        #expect(inheritedTheme.link.linkSizeMinHeightDefault != abstractTheme.link.linkSizeMinHeightDefault)
        #expect(inheritedTheme.link.linkSizeMinHeightDefault == MockThemeLinkComponentTokenProvider.mockThemeLinkSize)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSizeMinWidthDefault() throws {
        #expect(inheritedTheme.link.linkSizeMinWidthDefault != abstractTheme.link.linkSizeMinWidthDefault)
        #expect(inheritedTheme.link.linkSizeMinWidthDefault == MockThemeLinkComponentTokenProvider.mockThemeLinkSize)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSizeMinHeightSmall() throws {
        #expect(inheritedTheme.link.linkSizeMinHeightSmall != abstractTheme.link.linkSizeMinHeightSmall)
        #expect(inheritedTheme.link.linkSizeMinHeightSmall == MockThemeLinkComponentTokenProvider.mockThemeLinkSize)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSizeMinWidthSmall() throws {
        #expect(inheritedTheme.link.linkSizeMinWidthSmall != abstractTheme.link.linkSizeMinWidthSmall)
        #expect(inheritedTheme.link.linkSizeMinWidthSmall == MockThemeLinkComponentTokenProvider.mockThemeLinkSize)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSizeIconDefault() throws {
        #expect(inheritedTheme.link.linkSizeIconDefault != abstractTheme.link.linkSizeIconDefault)
        #expect(inheritedTheme.link.linkSizeIconDefault == MockThemeLinkComponentTokenProvider.mockThemeLinkSize)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSizeIconSmall() throws {
        #expect(inheritedTheme.link.linkSizeIconSmall != abstractTheme.link.linkSizeIconSmall)
        #expect(inheritedTheme.link.linkSizeIconSmall == MockThemeLinkComponentTokenProvider.mockThemeLinkSize)
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideLinkMonoComponentTokenColorContentEnabled() throws {
        #expect(inheritedTheme.link.linkMonoColorContentEnabled != abstractTheme.link.linkMonoColorContentEnabled)
        #expect(inheritedTheme.link.linkMonoColorContentEnabled == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkMonoComponentTokenColorContentHover() throws {
        #expect(inheritedTheme.link.linkMonoColorContentHover != abstractTheme.link.linkMonoColorContentHover)
        #expect(inheritedTheme.link.linkMonoColorContentHover == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkMonoComponentTokenColorContentPressed() throws {
        #expect(inheritedTheme.link.linkMonoColorContentPressed != abstractTheme.link.linkMonoColorContentPressed)
        #expect(inheritedTheme.link.linkMonoColorContentPressed == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkMonoComponentTokenColorContentFocus() throws {
        #expect(inheritedTheme.link.linkMonoColorContentFocus != abstractTheme.link.linkMonoColorContentFocus)
        #expect(inheritedTheme.link.linkMonoColorContentFocus == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkMonoComponentTokenColorContentDisabled() throws {
        #expect(inheritedTheme.link.linkMonoColorContentDisabled != abstractTheme.link.linkMonoColorContentDisabled)
        #expect(inheritedTheme.link.linkMonoColorContentDisabled == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenColorContentEnabled() throws {
        #expect(inheritedTheme.link.linkColorContentEnabled != abstractTheme.link.linkColorContentEnabled)
        #expect(inheritedTheme.link.linkColorContentEnabled == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenColorContentHover() throws {
        #expect(inheritedTheme.link.linkColorContentHover != abstractTheme.link.linkColorContentHover)
        #expect(inheritedTheme.link.linkColorContentHover == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenColorContentPressed() throws {
        #expect(inheritedTheme.link.linkColorContentPressed != abstractTheme.link.linkColorContentPressed)
        #expect(inheritedTheme.link.linkColorContentPressed == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenColorContentFocus() throws {
        #expect(inheritedTheme.link.linkColorContentFocus != abstractTheme.link.linkColorContentFocus)
        #expect(inheritedTheme.link.linkColorContentFocus == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenColorArrowEnabled() throws {
        #expect(inheritedTheme.link.linkColorChevronEnabled != abstractTheme.link.linkColorChevronEnabled)
        #expect(inheritedTheme.link.linkColorChevronEnabled == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenColorArrowHover() throws {
        #expect(inheritedTheme.link.linkColorChevronHover != abstractTheme.link.linkColorChevronHover)
        #expect(inheritedTheme.link.linkColorChevronHover == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenColorArrowPressed() throws {
        #expect(inheritedTheme.link.linkColorChevronPressed != abstractTheme.link.linkColorChevronPressed)
        #expect(inheritedTheme.link.linkColorChevronPressed == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenColorArrowFocus() throws {
        #expect(inheritedTheme.link.linkColorChevronFocus != abstractTheme.link.linkColorChevronFocus)
        #expect(inheritedTheme.link.linkColorChevronFocus == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideLinkComponentTokenSpacePaddingInline() throws {
        #expect(inheritedTheme.link.linkSpacePaddingInline != abstractTheme.link.linkSpacePaddingInline)
        #expect(inheritedTheme.link.linkSpacePaddingInline == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSpacePaddingBlock() throws {
        #expect(inheritedTheme.link.linkSpacePaddingBlock != abstractTheme.link.linkSpacePaddingBlock)
        #expect(inheritedTheme.link.linkSpacePaddingBlock == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSpaceColumnGapIconDefault() throws {
        #expect(inheritedTheme.link.linkSpaceColumnGapIconDefault != abstractTheme.link.linkSpaceColumnGapIconDefault)
        #expect(inheritedTheme.link.linkSpaceColumnGapIconDefault == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSpaceColumnGapIconSmall() throws {
        #expect(inheritedTheme.link.linkSpaceColumnGapIconSmall != abstractTheme.link.linkSpaceColumnGapIconSmall)
        #expect(inheritedTheme.link.linkSpaceColumnGapIconSmall == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSpaceColumnGapArrowDefault() throws {
        #expect(inheritedTheme.link.linkSpaceColumnGapChevronDefault != abstractTheme.link.linkSpaceColumnGapChevronDefault)
        #expect(inheritedTheme.link.linkSpaceColumnGapChevronDefault == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSpaceColumnGapArrowSmall() throws {
        #expect(inheritedTheme.link.linkSpaceColumnGapChevronSmall != abstractTheme.link.linkSpaceColumnGapChevronSmall)
        #expect(inheritedTheme.link.linkSpaceColumnGapChevronSmall == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }

    // MARK: - Expand link

    @Test func inheritedThemeCanOverrideExpandLinkComponentTokenExpandLinkIconStart() throws {
        #expect(inheritedTheme.link.iconStart != abstractTheme.link.iconStart)
        #expect(inheritedTheme.link.iconStart == MockThemeLinkComponentTokenProvider.mockThemeExpandLinkIconStart)
    }

    @Test func inheritedThemeCanOverrideExpandLinkComponentTokenExpandLinkIconEnd() throws {
        #expect(inheritedTheme.link.iconEnd != abstractTheme.link.iconEnd)
        #expect(inheritedTheme.link.iconEnd == MockThemeLinkComponentTokenProvider.mockThemeExpandLinkIconEnd)
    }
}

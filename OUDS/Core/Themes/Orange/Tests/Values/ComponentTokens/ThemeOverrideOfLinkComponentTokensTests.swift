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

    @Test func inheritedThemeCanOverrideLinkComponentTokenSizeMinHeightMedium() throws {
        #expect(inheritedTheme.link.linkSizeMinHeightMedium != abstractTheme.link.linkSizeMinHeightMedium)
        #expect(inheritedTheme.link.linkSizeMinHeightMedium == MockThemeLinkComponentTokenProvider.mockThemeLinkSize)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSizeMinWidthMedium() throws {
        #expect(inheritedTheme.link.linkSizeMinWidthMedium != abstractTheme.link.linkSizeMinWidthMedium)
        #expect(inheritedTheme.link.linkSizeMinWidthMedium == MockThemeLinkComponentTokenProvider.mockThemeLinkSize)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSizeMinHeightSmall() throws {
        #expect(inheritedTheme.link.linkSizeMinHeightSmall != abstractTheme.link.linkSizeMinHeightSmall)
        #expect(inheritedTheme.link.linkSizeMinHeightSmall == MockThemeLinkComponentTokenProvider.mockThemeLinkSize)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSizeMinWidthSmall() throws {
        #expect(inheritedTheme.link.linkSizeMinWidthSmall != abstractTheme.link.linkSizeMinWidthSmall)
        #expect(inheritedTheme.link.linkSizeMinWidthSmall == MockThemeLinkComponentTokenProvider.mockThemeLinkSize)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSizeIconMedium() throws {
        #expect(inheritedTheme.link.linkSizeIconMedium != abstractTheme.link.linkSizeIconMedium)
        #expect(inheritedTheme.link.linkSizeIconMedium == MockThemeLinkComponentTokenProvider.mockThemeLinkSize)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSizeIconSmall() throws {
        #expect(inheritedTheme.link.linkSizeIconSmall != abstractTheme.link.linkSizeIconSmall)
        #expect(inheritedTheme.link.linkSizeIconSmall == MockThemeLinkComponentTokenProvider.mockThemeLinkSize)
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideLinkComponentTokenColorContentEnabledMono() throws {
        #expect(inheritedTheme.link.linkColorContentEnabledMono != abstractTheme.link.linkColorContentEnabledMono)
        #expect(inheritedTheme.link.linkColorContentEnabledMono == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenColorContentHoverMono() throws {
        #expect(inheritedTheme.link.linkColorContentHoverMono != abstractTheme.link.linkColorContentHoverMono)
        #expect(inheritedTheme.link.linkColorContentHoverMono == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenColorContentPressedMono() throws {
        #expect(inheritedTheme.link.linkColorContentPressedMono != abstractTheme.link.linkColorContentPressedMono)
        #expect(inheritedTheme.link.linkColorContentPressedMono == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenColorContentFocusMono() throws {
        #expect(inheritedTheme.link.linkColorContentFocusMono != abstractTheme.link.linkColorContentFocusMono)
        #expect(inheritedTheme.link.linkColorContentFocusMono == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenColorContentDisabledMono() throws {
        #expect(inheritedTheme.link.linkColorContentDisabledMono != abstractTheme.link.linkColorContentDisabledMono)
        #expect(inheritedTheme.link.linkColorContentDisabledMono == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
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
        #expect(inheritedTheme.link.linkColorArrowEnabled != abstractTheme.link.linkColorArrowEnabled)
        #expect(inheritedTheme.link.linkColorArrowEnabled == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenColorArrowHover() throws {
        #expect(inheritedTheme.link.linkColorArrowHover != abstractTheme.link.linkColorArrowHover)
        #expect(inheritedTheme.link.linkColorArrowHover == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenColorArrowPressed() throws {
        #expect(inheritedTheme.link.linkColorArrowPressed != abstractTheme.link.linkColorArrowPressed)
        #expect(inheritedTheme.link.linkColorArrowPressed == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenColorArrowFocus() throws {
        #expect(inheritedTheme.link.linkColorArrowFocus != abstractTheme.link.linkColorArrowFocus)
        #expect(inheritedTheme.link.linkColorArrowFocus == MockThemeLinkComponentTokenProvider.mockThemeLinkColor)
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

    @Test func inheritedThemeCanOverrideLinkComponentTokenSpaceColumnGapIconMedium() throws {
        #expect(inheritedTheme.link.linkSpaceColumnGapIconMedium != abstractTheme.link.linkSpaceColumnGapIconMedium)
        #expect(inheritedTheme.link.linkSpaceColumnGapIconMedium == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSpaceColumnGapIconSmall() throws {
        #expect(inheritedTheme.link.linkSpaceColumnGapIconSmall != abstractTheme.link.linkSpaceColumnGapIconSmall)
        #expect(inheritedTheme.link.linkSpaceColumnGapIconSmall == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSpaceColumnGapArrowMedium() throws {
        #expect(inheritedTheme.link.linkSpaceColumnGapArrowMedium != abstractTheme.link.linkSpaceColumnGapArrowMedium)
        #expect(inheritedTheme.link.linkSpaceColumnGapArrowMedium == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }

    @Test func inheritedThemeCanOverrideLinkComponentTokenSpaceColumnGapArrowSmall() throws {
        #expect(inheritedTheme.link.linkSpaceColumnGapArrowSmall != abstractTheme.link.linkSpaceColumnGapArrowSmall)
        #expect(inheritedTheme.link.linkSpaceColumnGapArrowSmall == MockThemeLinkComponentTokenProvider.mockThemeLinkSpace)
    }
}

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

struct ThemeOverrideOfTagComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Borders

    @Test func inheritedThemeCanOverrideTagBorderRadiusPill() throws {
        #expect(inheritedTheme.tag.tagBorderRadiusPill != abstractTheme.tag.tagBorderRadiusPill)
        #expect(inheritedTheme.tag.tagBorderRadiusPill == MockThemeTagComponentTokenProvider.mockThemeTagBorderRadius)
    }

    @Test func inheritedThemeCanOverrideTagBorderWidthDefault() throws {
        #expect(inheritedTheme.tag.tagBorderWidthDefault != abstractTheme.tag.tagBorderWidthDefault)
        #expect(inheritedTheme.tag.tagBorderWidthDefault == MockThemeTagComponentTokenProvider.mockThemeTagBorderWidth)
    }

    @Test func inheritedThemeCanOverrideTagBorderWidthDefaultInteraction() throws {
        #expect(inheritedTheme.tag.tagBorderWidthDefaultInteraction != abstractTheme.tag.tagBorderWidthDefaultInteraction)
        #expect(inheritedTheme.tag.tagBorderWidthDefaultInteraction == MockThemeTagComponentTokenProvider.mockThemeTagBorderWidth)
    }

    // MARK: - Colors

    @Test func inheritedThemeCanOverrideTagColorBgEnabled() throws {
        #expect(inheritedTheme.tag.tagColorBgEnabled != abstractTheme.tag.tagColorBgEnabled)
        #expect(inheritedTheme.tag.tagColorBgEnabled == MockThemeTagComponentTokenProvider.mockThemeTagColor)
    }

    @Test func inheritedThemeCanOverrideTagColorBgFocus() throws {
        #expect(inheritedTheme.tag.tagColorBgFocus != abstractTheme.tag.tagColorBgFocus)
        #expect(inheritedTheme.tag.tagColorBgFocus == MockThemeTagComponentTokenProvider.mockThemeTagColor)
    }

    @Test func inheritedThemeCanOverrideTagColorBgHover() throws {
        #expect(inheritedTheme.tag.tagColorBgHover != abstractTheme.tag.tagColorBgHover)
        #expect(inheritedTheme.tag.tagColorBgHover == MockThemeTagComponentTokenProvider.mockThemeTagColor)
    }

    @Test func inheritedThemeCanOverrideTagColorBgPressed() throws {
        #expect(inheritedTheme.tag.tagColorBgPressed != abstractTheme.tag.tagColorBgPressed)
        #expect(inheritedTheme.tag.tagColorBgPressed == MockThemeTagComponentTokenProvider.mockThemeTagColor)
    }

    @Test func inheritedThemeCanOverrideTagColorBorderDisabled() throws {
        #expect(inheritedTheme.tag.tagColorBorderDisabled != abstractTheme.tag.tagColorBorderDisabled)
        #expect(inheritedTheme.tag.tagColorBorderDisabled == MockThemeTagComponentTokenProvider.mockThemeTagColor)
    }

    @Test func inheritedThemeCanOverrideTagColorBorderEnabled() throws {
        #expect(inheritedTheme.tag.tagColorBorderEnabled != abstractTheme.tag.tagColorBorderEnabled)
        #expect(inheritedTheme.tag.tagColorBorderEnabled == MockThemeTagComponentTokenProvider.mockThemeTagColor)
    }

    @Test func inheritedThemeCanOverrideTagColorBorderFocus() throws {
        #expect(inheritedTheme.tag.tagColorBorderFocus != abstractTheme.tag.tagColorBorderFocus)
        #expect(inheritedTheme.tag.tagColorBorderFocus == MockThemeTagComponentTokenProvider.mockThemeTagColor)
    }

    @Test func inheritedThemeCanOverrideTagColorBorderHover() throws {
        #expect(inheritedTheme.tag.tagColorBorderHover != abstractTheme.tag.tagColorBorderHover)
        #expect(inheritedTheme.tag.tagColorBorderHover == MockThemeTagComponentTokenProvider.mockThemeTagColor)
    }

    @Test func inheritedThemeCanOverrideTagColorBorderPressed() throws {
        #expect(inheritedTheme.tag.tagColorBorderPressed != abstractTheme.tag.tagColorBorderPressed)
        #expect(inheritedTheme.tag.tagColorBorderPressed == MockThemeTagComponentTokenProvider.mockThemeTagColor)
    }

    @Test func inheritedThemeCanOverrideTagColorContentDisabled() throws {
        #expect(inheritedTheme.tag.tagColorContentDisabled != abstractTheme.tag.tagColorContentDisabled)
        #expect(inheritedTheme.tag.tagColorContentDisabled == MockThemeTagComponentTokenProvider.mockThemeTagColor)
    }

    @Test func inheritedThemeCanOverrideTagColorContentEnabled() throws {
        #expect(inheritedTheme.tag.tagColorContentEnabled != abstractTheme.tag.tagColorContentEnabled)
        #expect(inheritedTheme.tag.tagColorContentEnabled == MockThemeTagComponentTokenProvider.mockThemeTagColor)
    }

    @Test func inheritedThemeCanOverrideTagColorContentFocus() throws {
        #expect(inheritedTheme.tag.tagColorContentFocus != abstractTheme.tag.tagColorContentFocus)
        #expect(inheritedTheme.tag.tagColorContentFocus == MockThemeTagComponentTokenProvider.mockThemeTagColor)
    }

    @Test func inheritedThemeCanOverrideTagColorContentHover() throws {
        #expect(inheritedTheme.tag.tagColorContentHover != abstractTheme.tag.tagColorContentHover)
        #expect(inheritedTheme.tag.tagColorContentHover == MockThemeTagComponentTokenProvider.mockThemeTagColor)
    }

    @Test func inheritedThemeCanOverrideTagColorContentPressed() throws {
        #expect(inheritedTheme.tag.tagColorContentPressed != abstractTheme.tag.tagColorContentPressed)
        #expect(inheritedTheme.tag.tagColorContentPressed == MockThemeTagComponentTokenProvider.mockThemeTagColor)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideTagSizeIconMedium() throws {
        #expect(inheritedTheme.tag.tagSizeIconMedium != abstractTheme.tag.tagSizeIconMedium)
        #expect(inheritedTheme.tag.tagSizeIconMedium == MockThemeTagComponentTokenProvider.mockThemeTagSize)
    }

    @Test func inheritedThemeCanOverrideTagSizeIconSmall() throws {
        #expect(inheritedTheme.tag.tagSizeIconSmall != abstractTheme.tag.tagSizeIconSmall)
        #expect(inheritedTheme.tag.tagSizeIconSmall == MockThemeTagComponentTokenProvider.mockThemeTagSize)
    }

    @Test func inheritedThemeCanOverrideTagSizeMinHeightMedium() throws {
        #expect(inheritedTheme.tag.tagSizeMinHeightMedium != abstractTheme.tag.tagSizeMinHeightMedium)
        #expect(inheritedTheme.tag.tagSizeMinHeightMedium == MockThemeTagComponentTokenProvider.mockThemeTagSize)
    }

    @Test func inheritedThemeCanOverrideTagSizeMinHeightSmall() throws {
        #expect(inheritedTheme.tag.tagSizeMinHeightSmall != abstractTheme.tag.tagSizeMinHeightSmall)
        #expect(inheritedTheme.tag.tagSizeMinHeightSmall == MockThemeTagComponentTokenProvider.mockThemeTagSize)
    }

    @Test func inheritedThemeCanOverrideTagSizeMinWidthMedium() throws {
        #expect(inheritedTheme.tag.tagSizeMinWidthMedium != abstractTheme.tag.tagSizeMinWidthMedium)
        #expect(inheritedTheme.tag.tagSizeMinWidthMedium == MockThemeTagComponentTokenProvider.mockThemeTagSize)
    }

    @Test func inheritedThemeCanOverrideTagSizeMinWidthSmall() throws {
        #expect(inheritedTheme.tag.tagSizeMinWidthSmall != abstractTheme.tag.tagSizeMinWidthSmall)
        #expect(inheritedTheme.tag.tagSizeMinWidthSmall == MockThemeTagComponentTokenProvider.mockThemeTagSize)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideTagSpaceColumnGapColumnGapMedium() throws {
        #expect(inheritedTheme.tag.tagSpaceColumnGapColumnGapMedium != abstractTheme.tag.tagSpaceColumnGapColumnGapMedium)
        #expect(inheritedTheme.tag.tagSpaceColumnGapColumnGapMedium == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpaceColumnGapColumnGapSmall() throws {
        #expect(inheritedTheme.tag.tagSpaceColumnGapColumnGapSmall != abstractTheme.tag.tagSpaceColumnGapColumnGapSmall)
        #expect(inheritedTheme.tag.tagSpaceColumnGapColumnGapSmall == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpacePaddingBlockMedium() throws {
        #expect(inheritedTheme.tag.tagSpacePaddingBlockMedium != abstractTheme.tag.tagSpacePaddingBlockMedium)
        #expect(inheritedTheme.tag.tagSpacePaddingBlockMedium == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpacePaddingBlockSmall() throws {
        #expect(inheritedTheme.tag.tagSpacePaddingBlockSmall != abstractTheme.tag.tagSpacePaddingBlockSmall)
        #expect(inheritedTheme.tag.tagSpacePaddingBlockSmall == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpacePaddingInlineIconEndMedium() throws {
        #expect(inheritedTheme.tag.tagSpacePaddingInlineIconEndMedium != abstractTheme.tag.tagSpacePaddingInlineIconEndMedium)
        #expect(inheritedTheme.tag.tagSpacePaddingInlineIconEndMedium == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpacePaddingInlineIconEndSmall() throws {
        #expect(inheritedTheme.tag.tagSpacePaddingInlineIconEndSmall != abstractTheme.tag.tagSpacePaddingInlineIconEndSmall)
        #expect(inheritedTheme.tag.tagSpacePaddingInlineIconEndSmall == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpacePaddingInlineIconStartMedium() throws {
        #expect(inheritedTheme.tag.tagSpacePaddingInlineIconStartMedium != abstractTheme.tag.tagSpacePaddingInlineIconStartMedium)
        #expect(inheritedTheme.tag.tagSpacePaddingInlineIconStartMedium == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpacePaddingInlineIconStartSmall() throws {
        #expect(inheritedTheme.tag.tagSpacePaddingInlineIconStartSmall != abstractTheme.tag.tagSpacePaddingInlineIconStartSmall)
        #expect(inheritedTheme.tag.tagSpacePaddingInlineIconStartSmall == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpacePaddingInlineLabelEndMedium() throws {
        #expect(inheritedTheme.tag.tagSpacePaddingInlineLabelEndMedium != abstractTheme.tag.tagSpacePaddingInlineLabelEndMedium)
        #expect(inheritedTheme.tag.tagSpacePaddingInlineLabelEndMedium == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpacePaddingInlineLabelEndSmall() throws {
        #expect(inheritedTheme.tag.tagSpacePaddingInlineLabelEndSmall != abstractTheme.tag.tagSpacePaddingInlineLabelEndSmall)
        #expect(inheritedTheme.tag.tagSpacePaddingInlineLabelEndSmall == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpacePaddingInlineLabelStartMedium() throws {
        #expect(inheritedTheme.tag.tagSpacePaddingInlineLabelStartMedium != abstractTheme.tag.tagSpacePaddingInlineLabelStartMedium)
        #expect(inheritedTheme.tag.tagSpacePaddingInlineLabelStartMedium == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpacePaddingInlineLabelStartSmall() throws {
        #expect(inheritedTheme.tag.tagSpacePaddingInlineLabelStartSmall != abstractTheme.tag.tagSpacePaddingInlineLabelStartSmall)
        #expect(inheritedTheme.tag.tagSpacePaddingInlineLabelStartSmall == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }
}

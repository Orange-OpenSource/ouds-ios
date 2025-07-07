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

    @Test func inheritedThemeCanOverrideTagBorderRadius() throws {
        #expect(inheritedTheme.tag.tagBorderRadius != abstractTheme.tag.tagBorderRadius)
        #expect(inheritedTheme.tag.tagBorderRadius == MockThemeTagComponentTokenProvider.mockThemeTagBorderRadius)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideTagSizeIconDefault() throws {
        #expect(inheritedTheme.tag.tagSizeIconDefault != abstractTheme.tag.tagSizeIconDefault)
        #expect(inheritedTheme.tag.tagSizeIconDefault == MockThemeTagComponentTokenProvider.mockThemeTagSize)
    }

    @Test func inheritedThemeCanOverrideTagSizeIconSmall() throws {
        #expect(inheritedTheme.tag.tagSizeIconSmall != abstractTheme.tag.tagSizeIconSmall)
        #expect(inheritedTheme.tag.tagSizeIconSmall == MockThemeTagComponentTokenProvider.mockThemeTagSize)
    }

    @Test func inheritedThemeCanOverrideTagSizeMinHeightDefault() throws {
        #expect(inheritedTheme.tag.tagSizeMinHeightDefault != abstractTheme.tag.tagSizeMinHeightDefault)
        #expect(inheritedTheme.tag.tagSizeMinHeightDefault == MockThemeTagComponentTokenProvider.mockThemeTagSize)
    }

    @Test func inheritedThemeCanOverrideTagSizeMinWidthDefault() throws {
        #expect(inheritedTheme.tag.tagSizeMinWidthDefault != abstractTheme.tag.tagSizeMinWidthDefault)
        #expect(inheritedTheme.tag.tagSizeMinWidthDefault == MockThemeTagComponentTokenProvider.mockThemeTagSize)
    }

    @Test func inheritedThemeCanOverrideTagSizeMinHeightSmall() throws {
        #expect(inheritedTheme.tag.tagSizeMinHeightSmall != abstractTheme.tag.tagSizeMinHeightSmall)
        #expect(inheritedTheme.tag.tagSizeMinHeightSmall == MockThemeTagComponentTokenProvider.mockThemeTagSize)
    }

    @Test func inheritedThemeCanOverrideTagSizeMinWidthSmall() throws {
        #expect(inheritedTheme.tag.tagSizeMinWidthSmall != abstractTheme.tag.tagSizeMinWidthSmall)
        #expect(inheritedTheme.tag.tagSizeMinWidthSmall == MockThemeTagComponentTokenProvider.mockThemeTagSize)
    }

    @Test func inheritedThemeCanOverrideTagSizeMinHeightInteractiveArea() throws {
        #expect(inheritedTheme.tag.tagSizeMinHeightInteractiveArea != abstractTheme.tag.tagSizeMinHeightInteractiveArea)
        #expect(inheritedTheme.tag.tagSizeMinHeightInteractiveArea == MockThemeTagComponentTokenProvider.mockThemeTagSize)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideTagSpacePaddingBlockSmall() throws {
        #expect(inheritedTheme.tag.tagSpacePaddingBlockSmall != abstractTheme.tag.tagSpacePaddingBlockSmall)
        #expect(inheritedTheme.tag.tagSpacePaddingBlockSmall == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpacePaddingBlockDefault() throws {
        #expect(inheritedTheme.tag.tagSpacePaddingBlockDefault != abstractTheme.tag.tagSpacePaddingBlockDefault)
        #expect(inheritedTheme.tag.tagSpacePaddingBlockDefault == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpacePaddingInlineSmall() throws {
        #expect(inheritedTheme.tag.tagSpacePaddingInlineSmall != abstractTheme.tag.tagSpacePaddingInlineSmall)
        #expect(inheritedTheme.tag.tagSpacePaddingInlineSmall == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpacePaddingInlineDefault() throws {
        #expect(inheritedTheme.tag.tagSpacePaddingInlineDefault != abstractTheme.tag.tagSpacePaddingInlineDefault)
        #expect(inheritedTheme.tag.tagSpacePaddingInlineDefault == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpacePaddingInlineSmallAsset() throws {
        #expect(inheritedTheme.tag.tagSpacePaddingInlineSmallAsset != abstractTheme.tag.tagSpacePaddingInlineSmallAsset)
        #expect(inheritedTheme.tag.tagSpacePaddingInlineSmallAsset == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpacePaddingInlineDefaultAsset() throws {
        #expect(inheritedTheme.tag.tagSpacePaddingInlineDefaultAsset != abstractTheme.tag.tagSpacePaddingInlineDefaultAsset)
        #expect(inheritedTheme.tag.tagSpacePaddingInlineDefaultAsset == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpaceInsetSmallAsset() throws {
        #expect(inheritedTheme.tag.tagSpaceInsetSmallAsset != abstractTheme.tag.tagSpaceInsetSmallAsset)
        #expect(inheritedTheme.tag.tagSpaceInsetSmallAsset == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpaceInsetDefaultAsset() throws {
        #expect(inheritedTheme.tag.tagSpaceInsetDefaultAsset != abstractTheme.tag.tagSpaceInsetDefaultAsset)
        #expect(inheritedTheme.tag.tagSpaceInsetDefaultAsset == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpaceColumnGapSmall() throws {
        #expect(inheritedTheme.tag.tagSpaceColumnGapSmall != abstractTheme.tag.tagSpaceColumnGapSmall)
        #expect(inheritedTheme.tag.tagSpaceColumnGapSmall == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpaceColumnGapDefault() throws {
        #expect(inheritedTheme.tag.tagSpaceColumnGapDefault != abstractTheme.tag.tagSpaceColumnGapDefault)
        #expect(inheritedTheme.tag.tagSpaceColumnGapDefault == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }
}

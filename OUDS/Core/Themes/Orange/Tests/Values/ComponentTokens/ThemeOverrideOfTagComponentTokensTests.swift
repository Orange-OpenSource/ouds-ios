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

    @Test func inheritedThemeCanOverrideTagSizeAssetDefault() throws {
        #expect(inheritedTheme.tag.tagSizeAssetDefault != abstractTheme.tag.tagSizeAssetDefault)
        #expect(inheritedTheme.tag.tagSizeAssetDefault == MockThemeTagComponentTokenProvider.mockThemeTagSize)
    }

    @Test func inheritedThemeCanOverrideTagSizeAssetSmall() throws {
        #expect(inheritedTheme.tag.tagSizeAssetSmall != abstractTheme.tag.tagSizeAssetSmall)
        #expect(inheritedTheme.tag.tagSizeAssetSmall == MockThemeTagComponentTokenProvider.mockThemeTagSize)
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

    @Test func inheritedThemeCanOverrideTagSpacePaddingInlineAssetSmall() throws {
        #expect(inheritedTheme.tag.tagSpacePaddingInlineAssetSmall != abstractTheme.tag.tagSpacePaddingInlineAssetSmall)
        #expect(inheritedTheme.tag.tagSpacePaddingInlineAssetSmall == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpacePaddingInlineAssetDefault() throws {
        #expect(inheritedTheme.tag.tagSpacePaddingInlineAssetDefault != abstractTheme.tag.tagSpacePaddingInlineAssetDefault)
        #expect(inheritedTheme.tag.tagSpacePaddingInlineAssetDefault == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpaceInsetIconSmall() throws {
        #expect(inheritedTheme.tag.tagSpaceInsetIconSmall != abstractTheme.tag.tagSpaceInsetIconSmall)
        #expect(inheritedTheme.tag.tagSpaceInsetIconSmall == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpaceInsetBulletSmall() throws {
        #expect(inheritedTheme.tag.tagSpaceInsetBulletSmall != abstractTheme.tag.tagSpaceInsetBulletSmall)
        #expect(inheritedTheme.tag.tagSpaceInsetBulletSmall == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpaceInsetLoaderSmall() throws {
        #expect(inheritedTheme.tag.tagSpaceInsetLoaderSmall != abstractTheme.tag.tagSpaceInsetLoaderSmall)
        #expect(inheritedTheme.tag.tagSpaceInsetLoaderSmall == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpaceInsetIconDefault() throws {
        #expect(inheritedTheme.tag.tagSpaceInsetIconDefault != abstractTheme.tag.tagSpaceInsetIconDefault)
        #expect(inheritedTheme.tag.tagSpaceInsetIconDefault == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpaceInsetBulletDefault() throws {
        #expect(inheritedTheme.tag.tagSpaceInsetBulletDefault != abstractTheme.tag.tagSpaceInsetBulletDefault)
        #expect(inheritedTheme.tag.tagSpaceInsetBulletDefault == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpaceInsetLoaderDefault() throws {
        #expect(inheritedTheme.tag.tagSpaceInsetLoaderDefault != abstractTheme.tag.tagSpaceInsetLoaderDefault)
        #expect(inheritedTheme.tag.tagSpaceInsetLoaderDefault == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
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

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
        #expect(inheritedTheme.tag.borderRadius != abstractTheme.tag.borderRadius)
        #expect(inheritedTheme.tag.borderRadius == MockThemeTagComponentTokenProvider.mockThemeTagBorderRadius)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverrideTagSizeAssetDefault() throws {
        #expect(inheritedTheme.tag.sizeAssetDefault != abstractTheme.tag.sizeAssetDefault)
        #expect(inheritedTheme.tag.sizeAssetDefault == MockThemeTagComponentTokenProvider.mockThemeTagSize)
    }

    @Test func inheritedThemeCanOverrideTagSizeAssetSmall() throws {
        #expect(inheritedTheme.tag.sizeAssetSmall != abstractTheme.tag.sizeAssetSmall)
        #expect(inheritedTheme.tag.sizeAssetSmall == MockThemeTagComponentTokenProvider.mockThemeTagSize)
    }

    @Test func inheritedThemeCanOverrideTagSizeMinHeightDefault() throws {
        #expect(inheritedTheme.tag.sizeMinHeightDefault != abstractTheme.tag.sizeMinHeightDefault)
        #expect(inheritedTheme.tag.sizeMinHeightDefault == MockThemeTagComponentTokenProvider.mockThemeTagSize)
    }

    @Test func inheritedThemeCanOverrideTagSizeMinWidthDefault() throws {
        #expect(inheritedTheme.tag.sizeMinWidthDefault != abstractTheme.tag.sizeMinWidthDefault)
        #expect(inheritedTheme.tag.sizeMinWidthDefault == MockThemeTagComponentTokenProvider.mockThemeTagSize)
    }

    @Test func inheritedThemeCanOverrideTagSizeMinHeightSmall() throws {
        #expect(inheritedTheme.tag.sizeMinHeightSmall != abstractTheme.tag.sizeMinHeightSmall)
        #expect(inheritedTheme.tag.sizeMinHeightSmall == MockThemeTagComponentTokenProvider.mockThemeTagSize)
    }

    @Test func inheritedThemeCanOverrideTagSizeMinWidthSmall() throws {
        #expect(inheritedTheme.tag.sizeMinWidthSmall != abstractTheme.tag.sizeMinWidthSmall)
        #expect(inheritedTheme.tag.sizeMinWidthSmall == MockThemeTagComponentTokenProvider.mockThemeTagSize)
    }

    @Test func inheritedThemeCanOverrideTagSizeMinHeightInteractiveArea() throws {
        #expect(inheritedTheme.tag.sizeMinHeightInteractiveArea != abstractTheme.tag.sizeMinHeightInteractiveArea)
        #expect(inheritedTheme.tag.sizeMinHeightInteractiveArea == MockThemeTagComponentTokenProvider.mockThemeTagSize)
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverrideTagSpacePaddingBlockSmall() throws {
        #expect(inheritedTheme.tag.spacePaddingBlockSmall != abstractTheme.tag.spacePaddingBlockSmall)
        #expect(inheritedTheme.tag.spacePaddingBlockSmall == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpacePaddingBlockDefault() throws {
        #expect(inheritedTheme.tag.spacePaddingBlockDefault != abstractTheme.tag.spacePaddingBlockDefault)
        #expect(inheritedTheme.tag.spacePaddingBlockDefault == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpacePaddingInlineSmall() throws {
        #expect(inheritedTheme.tag.spacePaddingInlineSmall != abstractTheme.tag.spacePaddingInlineSmall)
        #expect(inheritedTheme.tag.spacePaddingInlineSmall == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpacePaddingInlineDefault() throws {
        #expect(inheritedTheme.tag.spacePaddingInlineDefault != abstractTheme.tag.spacePaddingInlineDefault)
        #expect(inheritedTheme.tag.spacePaddingInlineDefault == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpacePaddingInlineAssetSmall() throws {
        #expect(inheritedTheme.tag.spacePaddingInlineAssetSmall != abstractTheme.tag.spacePaddingInlineAssetSmall)
        #expect(inheritedTheme.tag.spacePaddingInlineAssetSmall == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpacePaddingInlineAssetDefault() throws {
        #expect(inheritedTheme.tag.spacePaddingInlineAssetDefault != abstractTheme.tag.spacePaddingInlineAssetDefault)
        #expect(inheritedTheme.tag.spacePaddingInlineAssetDefault == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpaceInsetIconSmall() throws {
        #expect(inheritedTheme.tag.spaceInsetIconSmall != abstractTheme.tag.spaceInsetIconSmall)
        #expect(inheritedTheme.tag.spaceInsetIconSmall == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpaceInsetBulletSmall() throws {
        #expect(inheritedTheme.tag.spaceInsetBulletSmall != abstractTheme.tag.spaceInsetBulletSmall)
        #expect(inheritedTheme.tag.spaceInsetBulletSmall == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpaceInsetLoaderSmall() throws {
        #expect(inheritedTheme.tag.spaceInsetLoaderSmall != abstractTheme.tag.spaceInsetLoaderSmall)
        #expect(inheritedTheme.tag.spaceInsetLoaderSmall == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpaceInsetIconDefault() throws {
        #expect(inheritedTheme.tag.spaceInsetIconDefault != abstractTheme.tag.spaceInsetIconDefault)
        #expect(inheritedTheme.tag.spaceInsetIconDefault == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpaceInsetBulletDefault() throws {
        #expect(inheritedTheme.tag.spaceInsetBulletDefault != abstractTheme.tag.spaceInsetBulletDefault)
        #expect(inheritedTheme.tag.spaceInsetBulletDefault == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpaceInsetLoaderDefault() throws {
        #expect(inheritedTheme.tag.spaceInsetLoaderDefault != abstractTheme.tag.spaceInsetLoaderDefault)
        #expect(inheritedTheme.tag.spaceInsetLoaderDefault == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpaceColumnGapSmall() throws {
        #expect(inheritedTheme.tag.spaceColumnGapSmall != abstractTheme.tag.spaceColumnGapSmall)
        #expect(inheritedTheme.tag.spaceColumnGapSmall == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }

    @Test func inheritedThemeCanOverrideTagSpaceColumnGapDefault() throws {
        #expect(inheritedTheme.tag.spaceColumnGapDefault != abstractTheme.tag.spaceColumnGapDefault)
        #expect(inheritedTheme.tag.spaceColumnGapDefault == MockThemeTagComponentTokenProvider.mockThemeTagSpace)
    }
}

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

// swiftlint:disable type_name

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _sizing semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeSizeSemanticTokensProvider``.
///
/// **These tests checks if any _size multiple semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
struct ThemeOverrideOfSizeMultipleSemanticTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Sizing - Icon with typography

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeSm() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeSm != abstractTheme.sizes.sizeIconWithHeadingXlargeSizeSm)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeSm == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeMd() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeMd != abstractTheme.sizes.sizeIconWithHeadingXlargeSizeMd)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeMd == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeLg() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeLg != abstractTheme.sizes.sizeIconWithHeadingXlargeSizeLg)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeLg == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeShort() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeSm != abstractTheme.sizes.sizeIconWithHeadingLargeSizeSm)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeSm == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeMedium() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeMd != abstractTheme.sizes.sizeIconWithHeadingLargeSizeMd)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeMd == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeTall() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeLg != abstractTheme.sizes.sizeIconWithHeadingLargeSizeLg)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeLg == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumShort() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeSm != abstractTheme.sizes.sizeIconWithHeadingMediumSizeSm)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeSm == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizIconWithHeadingMediumMedium() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeMd != abstractTheme.sizes.sizeIconWithHeadingMediumSizeMd)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeMd == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumTall() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeLg != abstractTheme.sizes.sizeIconWithHeadingMediumSizeLg)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeLg == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallShort() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeSm != abstractTheme.sizes.sizeIconWithHeadingSmallSizeSm)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeSm == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallMedium() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeMd != abstractTheme.sizes.sizeIconWithHeadingSmallSizeMd)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeMd == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallTall() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeLg != abstractTheme.sizes.sizeIconWithHeadingSmallSizeLg)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeLg == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeShort() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeSm != abstractTheme.sizes.sizeIconWithBodyLargeSizeSm)
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeSm.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeMedium() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeMd != abstractTheme.sizes.sizeIconWithBodyLargeSizeMd)
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeMd.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeTall() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeLg != abstractTheme.sizes.sizeIconWithBodyLargeSizeLg)
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeLg.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumShort() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeSm != abstractTheme.sizes.sizeIconWithBodyMediumSizeSm)
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeSm.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumMedium() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeMd != abstractTheme.sizes.sizeIconWithBodyMediumSizeMd)
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeMd.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumTall() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeLg != abstractTheme.sizes.sizeIconWithBodyMediumSizeLg)
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeLg.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallShort() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeSm != abstractTheme.sizes.sizeIconWithBodySmallSizeSm)
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeSm.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallMedium() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeMd != abstractTheme.sizes.sizeIconWithBodySmallSizeMd)
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeMd.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallTall() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeLg != abstractTheme.sizes.sizeIconWithBodySmallSizeLg)
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeLg.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    // MARK: - Semantic token - Sizing - Max width

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplayLarge() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeDisplayLarge != abstractTheme.sizes.sizeMaxWidthTypeDisplayLarge)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeDisplayLarge.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplayMedium() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeDisplayMedium != abstractTheme.sizes.sizeMaxWidthTypeDisplayMedium)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeDisplayMedium.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplaySmall() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeDisplaySmall != abstractTheme.sizes.sizeMaxWidthTypeDisplaySmall)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeDisplaySmall.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingXlargeSize() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeHeadingXlarge != abstractTheme.sizes.sizeMaxWidthTypeHeadingXlarge)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeHeadingXlarge.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingLarge() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeHeadingLarge != abstractTheme.sizes.sizeMaxWidthTypeHeadingLarge)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeHeadingLarge.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingMedium() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeHeadingMedium != abstractTheme.sizes.sizeMaxWidthTypeHeadingMedium)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeHeadingMedium.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingSmall() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeHeadingSmall != abstractTheme.sizes.sizeMaxWidthTypeHeadingSmall)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeHeadingSmall.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodyLarge() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeBodyLarge != abstractTheme.sizes.sizeMaxWidthTypeBodyLarge)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeBodyLarge.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodyMedium() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeBodyMedium != abstractTheme.sizes.sizeMaxWidthTypeBodyMedium)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeBodyMedium.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodySmall() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeBodySmall != abstractTheme.sizes.sizeMaxWidthTypeBodySmall)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeBodySmall.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }
}

// swiftlint:enable type_name

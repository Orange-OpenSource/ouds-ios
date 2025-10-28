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
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols dimensionsizing semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeSizeSemanticTokensProvider``.
///
/// **These tests checks if any dimensionsize multiple semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
struct ThemeOverrideOfSizeMultipleSemanticTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Sizing - Icon with typography

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeSmall() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeSmall != abstractTheme.sizes.sizeIconWithHeadingXlargeSizeSmall)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeSmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeMedium() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeMedium != abstractTheme.sizes.sizeIconWithHeadingXlargeSizeMedium)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeMedium == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeLarge() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeLarge != abstractTheme.sizes.sizeIconWithHeadingXlargeSizeLarge)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeLarge == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeSm() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeSmall != abstractTheme.sizes.sizeIconWithHeadingLargeSizeSmall)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeSmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeMedium() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeMedium != abstractTheme.sizes.sizeIconWithHeadingLargeSizeMedium)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeMedium == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeTall() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeLarge != abstractTheme.sizes.sizeIconWithHeadingLargeSizeLarge)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeLarge == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumSm() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeSmall != abstractTheme.sizes.sizeIconWithHeadingMediumSizeSmall)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeSmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizIconWithHeadingMediumMedium() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeMedium != abstractTheme.sizes.sizeIconWithHeadingMediumSizeMedium)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeMedium == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumTall() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeLarge != abstractTheme.sizes.sizeIconWithHeadingMediumSizeLarge)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeLarge == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSm() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeSmall != abstractTheme.sizes.sizeIconWithHeadingSmallSizeSmall)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeSmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallMedium() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeMedium != abstractTheme.sizes.sizeIconWithHeadingSmallSizeMedium)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeMedium == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallTall() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeLarge != abstractTheme.sizes.sizeIconWithHeadingSmallSizeLarge)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeLarge == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeSm() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeSmall != abstractTheme.sizes.sizeIconWithBodyLargeSizeSmall)
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeSmall.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeMedium() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeMedium != abstractTheme.sizes.sizeIconWithBodyLargeSizeMedium)
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeMedium.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeTall() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeLarge != abstractTheme.sizes.sizeIconWithBodyLargeSizeLarge)
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeLarge.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumSm() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeSmall != abstractTheme.sizes.sizeIconWithBodyMediumSizeSmall)
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeSmall.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumMedium() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeMedium != abstractTheme.sizes.sizeIconWithBodyMediumSizeMedium)
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeMedium.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumTall() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeLarge != abstractTheme.sizes.sizeIconWithBodyMediumSizeLarge)
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeLarge.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSm() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeSmall != abstractTheme.sizes.sizeIconWithBodySmallSizeSmall)
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeSmall.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallMedium() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeMedium != abstractTheme.sizes.sizeIconWithBodySmallSizeMedium)
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeMedium.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallTall() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeLarge != abstractTheme.sizes.sizeIconWithBodySmallSizeLarge)
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeLarge.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
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

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
        #expect(inheritedTheme.sizes.iconWithHeadingXlargeSizeSmall != abstractTheme.sizes.iconWithHeadingXlargeSizeSmall)
        #expect(inheritedTheme.sizes.iconWithHeadingXlargeSizeSmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeMedium() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingXlargeSizeMedium != abstractTheme.sizes.iconWithHeadingXlargeSizeMedium)
        #expect(inheritedTheme.sizes.iconWithHeadingXlargeSizeMedium == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeLarge() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingXlargeSizeLarge != abstractTheme.sizes.iconWithHeadingXlargeSizeLarge)
        #expect(inheritedTheme.sizes.iconWithHeadingXlargeSizeLarge == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeSm() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingLargeSizeSmall != abstractTheme.sizes.iconWithHeadingLargeSizeSmall)
        #expect(inheritedTheme.sizes.iconWithHeadingLargeSizeSmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeMedium() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingLargeSizeMedium != abstractTheme.sizes.iconWithHeadingLargeSizeMedium)
        #expect(inheritedTheme.sizes.iconWithHeadingLargeSizeMedium == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeTall() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingLargeSizeLarge != abstractTheme.sizes.iconWithHeadingLargeSizeLarge)
        #expect(inheritedTheme.sizes.iconWithHeadingLargeSizeLarge == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumSm() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingMediumSizeSmall != abstractTheme.sizes.iconWithHeadingMediumSizeSmall)
        #expect(inheritedTheme.sizes.iconWithHeadingMediumSizeSmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizIconWithHeadingMediumMedium() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingMediumSizeMedium != abstractTheme.sizes.iconWithHeadingMediumSizeMedium)
        #expect(inheritedTheme.sizes.iconWithHeadingMediumSizeMedium == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumTall() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingMediumSizeLarge != abstractTheme.sizes.iconWithHeadingMediumSizeLarge)
        #expect(inheritedTheme.sizes.iconWithHeadingMediumSizeLarge == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSm() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingSmallSizeSmall != abstractTheme.sizes.iconWithHeadingSmallSizeSmall)
        #expect(inheritedTheme.sizes.iconWithHeadingSmallSizeSmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallMedium() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingSmallSizeMedium != abstractTheme.sizes.iconWithHeadingSmallSizeMedium)
        #expect(inheritedTheme.sizes.iconWithHeadingSmallSizeMedium == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallTall() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingSmallSizeLarge != abstractTheme.sizes.iconWithHeadingSmallSizeLarge)
        #expect(inheritedTheme.sizes.iconWithHeadingSmallSizeLarge == MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeSm() throws {
        #expect(inheritedTheme.sizes.iconWithBodyLargeSizeSmall != abstractTheme.sizes.iconWithBodyLargeSizeSmall)
        #expect(inheritedTheme.sizes.iconWithBodyLargeSizeSmall.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeMedium() throws {
        #expect(inheritedTheme.sizes.iconWithBodyLargeSizeMedium != abstractTheme.sizes.iconWithBodyLargeSizeMedium)
        #expect(inheritedTheme.sizes.iconWithBodyLargeSizeMedium.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeTall() throws {
        #expect(inheritedTheme.sizes.iconWithBodyLargeSizeLarge != abstractTheme.sizes.iconWithBodyLargeSizeLarge)
        #expect(inheritedTheme.sizes.iconWithBodyLargeSizeLarge.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumSm() throws {
        #expect(inheritedTheme.sizes.iconWithBodyMediumSizeSmall != abstractTheme.sizes.iconWithBodyMediumSizeSmall)
        #expect(inheritedTheme.sizes.iconWithBodyMediumSizeSmall.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumMedium() throws {
        #expect(inheritedTheme.sizes.iconWithBodyMediumSizeMedium != abstractTheme.sizes.iconWithBodyMediumSizeMedium)
        #expect(inheritedTheme.sizes.iconWithBodyMediumSizeMedium.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumTall() throws {
        #expect(inheritedTheme.sizes.iconWithBodyMediumSizeLarge != abstractTheme.sizes.iconWithBodyMediumSizeLarge)
        #expect(inheritedTheme.sizes.iconWithBodyMediumSizeLarge.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSm() throws {
        #expect(inheritedTheme.sizes.iconWithBodySmallSizeSmall != abstractTheme.sizes.iconWithBodySmallSizeSmall)
        #expect(inheritedTheme.sizes.iconWithBodySmallSizeSmall.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallMedium() throws {
        #expect(inheritedTheme.sizes.iconWithBodySmallSizeMedium != abstractTheme.sizes.iconWithBodySmallSizeMedium)
        #expect(inheritedTheme.sizes.iconWithBodySmallSizeMedium.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallTall() throws {
        #expect(inheritedTheme.sizes.iconWithBodySmallSizeLarge != abstractTheme.sizes.iconWithBodySmallSizeLarge)
        #expect(inheritedTheme.sizes.iconWithBodySmallSizeLarge.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    // MARK: - Semantic token - Sizing - Max width

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplayLarge() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeDisplayLarge != abstractTheme.sizes.maxWidthTypeDisplayLarge)
        #expect(inheritedTheme.sizes.maxWidthTypeDisplayLarge.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplayMedium() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeDisplayMedium != abstractTheme.sizes.maxWidthTypeDisplayMedium)
        #expect(inheritedTheme.sizes.maxWidthTypeDisplayMedium.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplaySmall() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeDisplaySmall != abstractTheme.sizes.maxWidthTypeDisplaySmall)
        #expect(inheritedTheme.sizes.maxWidthTypeDisplaySmall.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingXlargeSize() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeHeadingXlarge != abstractTheme.sizes.maxWidthTypeHeadingXlarge)
        #expect(inheritedTheme.sizes.maxWidthTypeHeadingXlarge.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingLarge() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeHeadingLarge != abstractTheme.sizes.maxWidthTypeHeadingLarge)
        #expect(inheritedTheme.sizes.maxWidthTypeHeadingLarge.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingMedium() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeHeadingMedium != abstractTheme.sizes.maxWidthTypeHeadingMedium)
        #expect(inheritedTheme.sizes.maxWidthTypeHeadingMedium.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingSmall() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeHeadingSmall != abstractTheme.sizes.maxWidthTypeHeadingSmall)
        #expect(inheritedTheme.sizes.maxWidthTypeHeadingSmall.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodyLarge() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeBodyLarge != abstractTheme.sizes.maxWidthTypeBodyLarge)
        #expect(inheritedTheme.sizes.maxWidthTypeBodyLarge.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodyMedium() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeBodyMedium != abstractTheme.sizes.maxWidthTypeBodyMedium)
        #expect(inheritedTheme.sizes.maxWidthTypeBodyMedium.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodySmall() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeBodySmall != abstractTheme.sizes.maxWidthTypeBodySmall)
        #expect(inheritedTheme.sizes.maxWidthTypeBodySmall.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }
}

// swiftlint:enable type_name

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

    @Test func inheritedThemeCanOverrideSemanticTokenSizemaxWidthDisplayLarge() throws {
        #expect(inheritedTheme.sizes.maxWidthDisplayLarge != abstractTheme.sizes.maxWidthDisplayLarge)
        #expect(inheritedTheme.sizes.maxWidthDisplayLarge.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizemaxWidthDisplayMedium() throws {
        #expect(inheritedTheme.sizes.maxWidthDisplayMedium != abstractTheme.sizes.maxWidthDisplayMedium)
        #expect(inheritedTheme.sizes.maxWidthDisplayMedium.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizemaxWidthDisplaySmall() throws {
        #expect(inheritedTheme.sizes.maxWidthDisplaySmall != abstractTheme.sizes.maxWidthDisplaySmall)
        #expect(inheritedTheme.sizes.maxWidthDisplaySmall.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizemaxWidthHeadingXlargeSize() throws {
        #expect(inheritedTheme.sizes.maxWidthHeadingXlarge != abstractTheme.sizes.maxWidthHeadingXlarge)
        #expect(inheritedTheme.sizes.maxWidthHeadingXlarge.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizemaxWidthHeadingLarge() throws {
        #expect(inheritedTheme.sizes.maxWidthHeadingLarge != abstractTheme.sizes.maxWidthHeadingLarge)
        #expect(inheritedTheme.sizes.maxWidthHeadingLarge.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizemaxWidthHeadingMedium() throws {
        #expect(inheritedTheme.sizes.maxWidthHeadingMedium != abstractTheme.sizes.maxWidthHeadingMedium)
        #expect(inheritedTheme.sizes.maxWidthHeadingMedium.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizemaxWidthHeadingSmall() throws {
        #expect(inheritedTheme.sizes.maxWidthHeadingSmall != abstractTheme.sizes.maxWidthHeadingSmall)
        #expect(inheritedTheme.sizes.maxWidthHeadingSmall.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizemaxWidthBodyLarge() throws {
        #expect(inheritedTheme.sizes.maxWidthBodyLarge != abstractTheme.sizes.maxWidthBodyLarge)
        #expect(inheritedTheme.sizes.maxWidthBodyLarge.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizemaxWidthBodyMedium() throws {
        #expect(inheritedTheme.sizes.maxWidthBodyMedium != abstractTheme.sizes.maxWidthBodyMedium)
        #expect(inheritedTheme.sizes.maxWidthBodyMedium.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizemaxWidthBodySmall() throws {
        #expect(inheritedTheme.sizes.maxWidthBodySmall != abstractTheme.sizes.maxWidthBodySmall)
        #expect(inheritedTheme.sizes.maxWidthBodySmall.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizemaxWidthLabelXlarge() throws {
        #expect(inheritedTheme.sizes.maxWidthLabelXlarge != abstractTheme.sizes.maxWidthLabelXlarge)
        #expect(inheritedTheme.sizes.maxWidthLabelXlarge.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizemaxWidthLabelLarge() throws {
        #expect(inheritedTheme.sizes.maxWidthLabelLarge != abstractTheme.sizes.maxWidthLabelLarge)
        #expect(inheritedTheme.sizes.maxWidthLabelLarge.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizemaxWidthLabelMedium() throws {
        #expect(inheritedTheme.sizes.maxWidthLabelMedium != abstractTheme.sizes.maxWidthLabelMedium)
        #expect(inheritedTheme.sizes.maxWidthLabelMedium.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizemaxWidthLabelSmall() throws {
        #expect(inheritedTheme.sizes.maxWidthLabelSmall != abstractTheme.sizes.maxWidthLabelSmall)
        #expect(inheritedTheme.sizes.maxWidthLabelSmall.isEqual(MockThemeSizeSemanticTokensProvider.mockThemeSizeCompositeToken))
    }
}

// swiftlint:enable type_name

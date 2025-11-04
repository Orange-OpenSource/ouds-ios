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

// swiftlint:disable type_body_length

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols dimensionsizing semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeSizeSemanticTokensProvider``.
///
/// **These tests checks if any dimensionsize semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
struct ThemeOverrideOfSizeSemanticTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Sizing - Icon with typography

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeSmallMobile() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingXlargeSizeSmallMobile != abstractTheme.sizes.iconWithHeadingXlargeSizeSmallMobile)
        #expect(inheritedTheme.sizes.iconWithHeadingXlargeSizeSmallMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeSmallTablet() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingXlargeSizeSmallTablet != abstractTheme.sizes.iconWithHeadingXlargeSizeSmallTablet)
        #expect(inheritedTheme.sizes.iconWithHeadingXlargeSizeSmallTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeMediumMobile() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingXlargeSizeMediumMobile != abstractTheme.sizes.iconWithHeadingXlargeSizeMediumMobile)
        #expect(inheritedTheme.sizes.iconWithHeadingXlargeSizeMediumMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeMediumTablet() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingXlargeSizeMediumTablet != abstractTheme.sizes.iconWithHeadingXlargeSizeMediumTablet)
        #expect(inheritedTheme.sizes.iconWithHeadingXlargeSizeMediumTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeLargeMobile() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingXlargeSizeLargeMobile != abstractTheme.sizes.iconWithHeadingXlargeSizeLargeMobile)
        #expect(inheritedTheme.sizes.iconWithHeadingXlargeSizeLargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeLargeTablet() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingXlargeSizeLargeTablet != abstractTheme.sizes.iconWithHeadingXlargeSizeLargeTablet)
        #expect(inheritedTheme.sizes.iconWithHeadingXlargeSizeLargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeSizeSmallMobile() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingLargeSizeSmallMobile != abstractTheme.sizes.iconWithHeadingLargeSizeSmallMobile)
        #expect(inheritedTheme.sizes.iconWithHeadingLargeSizeSmallMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeSmTablet() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingLargeSizeSmallTablet != abstractTheme.sizes.iconWithHeadingLargeSizeSmallTablet)
        #expect(inheritedTheme.sizes.iconWithHeadingLargeSizeSmallTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeMediumMobile() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingLargeSizeMediumMobile != abstractTheme.sizes.iconWithHeadingLargeSizeMediumMobile)
        #expect(inheritedTheme.sizes.iconWithHeadingLargeSizeMediumMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeMediumTablet() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingLargeSizeMediumTablet != abstractTheme.sizes.iconWithHeadingLargeSizeMediumTablet)
        #expect(inheritedTheme.sizes.iconWithHeadingLargeSizeMediumTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeTallMobile() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingLargeSizeLargeMobile != abstractTheme.sizes.iconWithHeadingLargeSizeLargeMobile)
        #expect(inheritedTheme.sizes.iconWithHeadingLargeSizeLargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeTallTablet() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingLargeSizeLargeTablet != abstractTheme.sizes.iconWithHeadingLargeSizeLargeTablet)
        #expect(inheritedTheme.sizes.iconWithHeadingLargeSizeLargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumSmMobile() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingMediumSizeSmallMobile != abstractTheme.sizes.iconWithHeadingMediumSizeSmallMobile)
        #expect(inheritedTheme.sizes.iconWithHeadingMediumSizeSmallMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumSmTablet() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingMediumSizeSmallTablet != abstractTheme.sizes.iconWithHeadingMediumSizeSmallTablet)
        #expect(inheritedTheme.sizes.iconWithHeadingMediumSizeSmallTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumMediumMobile() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingMediumSizeMediumMobile != abstractTheme.sizes.iconWithHeadingMediumSizeMediumMobile)
        #expect(inheritedTheme.sizes.iconWithHeadingMediumSizeMediumMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumMediumTablet() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingMediumSizeMediumTablet != abstractTheme.sizes.iconWithHeadingMediumSizeMediumTablet)
        #expect(inheritedTheme.sizes.iconWithHeadingMediumSizeMediumTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumSizeLargeMobile() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingMediumSizeLargeMobile != abstractTheme.sizes.iconWithHeadingMediumSizeLargeMobile)
        #expect(inheritedTheme.sizes.iconWithHeadingMediumSizeLargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumSizeLargeTablet() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingMediumSizeLargeTablet != abstractTheme.sizes.iconWithHeadingMediumSizeLargeTablet)
        #expect(inheritedTheme.sizes.iconWithHeadingMediumSizeLargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSizeSmallMobile() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingSmallSizeSmallMobile != abstractTheme.sizes.iconWithHeadingSmallSizeSmallMobile)
        #expect(inheritedTheme.sizes.iconWithHeadingSmallSizeSmallMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSmTablet() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingSmallSizeSmallTablet != abstractTheme.sizes.iconWithHeadingSmallSizeSmallTablet)
        #expect(inheritedTheme.sizes.iconWithHeadingSmallSizeSmallTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSizeMediumMobile() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingSmallSizeMediumMobile != abstractTheme.sizes.iconWithHeadingSmallSizeMediumMobile)
        #expect(inheritedTheme.sizes.iconWithHeadingSmallSizeMediumMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallMediumTablet() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingSmallSizeMediumTablet != abstractTheme.sizes.iconWithHeadingSmallSizeMediumTablet)
        #expect(inheritedTheme.sizes.iconWithHeadingSmallSizeMediumTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSizeLargeMobile() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingSmallSizeLargeMobile != abstractTheme.sizes.iconWithHeadingSmallSizeLargeMobile)
        #expect(inheritedTheme.sizes.iconWithHeadingSmallSizeLargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallTallTablet() throws {
        #expect(inheritedTheme.sizes.iconWithHeadingSmallSizeLargeTablet != abstractTheme.sizes.iconWithHeadingSmallSizeLargeTablet)
        #expect(inheritedTheme.sizes.iconWithHeadingSmallSizeLargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeSizeSmallMobile() throws {
        #expect(inheritedTheme.sizes.iconWithBodyLargeSizeSmallMobile != abstractTheme.sizes.iconWithBodyLargeSizeSmallMobile)
        #expect(inheritedTheme.sizes.iconWithBodyLargeSizeSmallMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeSmTablet() throws {
        #expect(inheritedTheme.sizes.iconWithBodyLargeSizeSmallTablet != abstractTheme.sizes.iconWithBodyLargeSizeSmallTablet)
        #expect(inheritedTheme.sizes.iconWithBodyLargeSizeSmallTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeMediumMobile() throws {
        #expect(inheritedTheme.sizes.iconWithBodyLargeSizeMediumMobile != abstractTheme.sizes.iconWithBodyLargeSizeMediumMobile)
        #expect(inheritedTheme.sizes.iconWithBodyLargeSizeMediumMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeMediumTablet() throws {
        #expect(inheritedTheme.sizes.iconWithBodyLargeSizeMediumTablet != abstractTheme.sizes.iconWithBodyLargeSizeMediumTablet)
        #expect(inheritedTheme.sizes.iconWithBodyLargeSizeMediumTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeTallMobile() throws {
        #expect(inheritedTheme.sizes.iconWithBodyLargeSizeLargeMobile != abstractTheme.sizes.iconWithBodyLargeSizeLargeMobile)
        #expect(inheritedTheme.sizes.iconWithBodyLargeSizeLargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeTallTablet() throws {
        #expect(inheritedTheme.sizes.iconWithBodyLargeSizeLargeTablet != abstractTheme.sizes.iconWithBodyLargeSizeLargeTablet)
        #expect(inheritedTheme.sizes.iconWithBodyLargeSizeLargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumSmMobile() throws {
        #expect(inheritedTheme.sizes.iconWithBodyMediumSizeSmallMobile != abstractTheme.sizes.iconWithBodyMediumSizeSmallMobile)
        #expect(inheritedTheme.sizes.iconWithBodyMediumSizeSmallMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumSmTablet() throws {
        #expect(inheritedTheme.sizes.iconWithBodyMediumSizeSmallTablet != abstractTheme.sizes.iconWithBodyMediumSizeSmallTablet)
        #expect(inheritedTheme.sizes.iconWithBodyMediumSizeSmallTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumMediumMobile() throws {
        #expect(inheritedTheme.sizes.iconWithBodyMediumSizeMediumMobile != abstractTheme.sizes.iconWithBodyMediumSizeMediumMobile)
        #expect(inheritedTheme.sizes.iconWithBodyMediumSizeMediumMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumMediumTablet() throws {
        #expect(inheritedTheme.sizes.iconWithBodyMediumSizeMediumTablet != abstractTheme.sizes.iconWithBodyMediumSizeMediumTablet)
        #expect(inheritedTheme.sizes.iconWithBodyMediumSizeMediumTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumSizeLargeMobile() throws {
        #expect(inheritedTheme.sizes.iconWithBodyMediumSizeLargeMobile != abstractTheme.sizes.iconWithBodyMediumSizeLargeMobile)
        #expect(inheritedTheme.sizes.iconWithBodyMediumSizeLargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumSizeLargeTablet() throws {
        #expect(inheritedTheme.sizes.iconWithBodyMediumSizeLargeTablet != abstractTheme.sizes.iconWithBodyMediumSizeLargeTablet)
        #expect(inheritedTheme.sizes.iconWithBodyMediumSizeLargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSizeSmallMobile() throws {
        #expect(inheritedTheme.sizes.iconWithBodySmallSizeSmallMobile != abstractTheme.sizes.iconWithBodySmallSizeSmallMobile)
        #expect(inheritedTheme.sizes.iconWithBodySmallSizeSmallMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSmTablet() throws {
        #expect(inheritedTheme.sizes.iconWithBodySmallSizeSmallTablet != abstractTheme.sizes.iconWithBodySmallSizeSmallTablet)
        #expect(inheritedTheme.sizes.iconWithBodySmallSizeSmallTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSizeMediumMobile() throws {
        #expect(inheritedTheme.sizes.iconWithBodySmallSizeMediumMobile != abstractTheme.sizes.iconWithBodySmallSizeMediumMobile)
        #expect(inheritedTheme.sizes.iconWithBodySmallSizeMediumMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallMediumTablet() throws {
        #expect(inheritedTheme.sizes.iconWithBodySmallSizeMediumTablet != abstractTheme.sizes.iconWithBodySmallSizeMediumTablet)
        #expect(inheritedTheme.sizes.iconWithBodySmallSizeMediumTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSizeLargeMobile() throws {
        #expect(inheritedTheme.sizes.iconWithBodySmallSizeLargeMobile != abstractTheme.sizes.iconWithBodySmallSizeLargeMobile)
        #expect(inheritedTheme.sizes.iconWithBodySmallSizeLargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallTallTablet() throws {
        #expect(inheritedTheme.sizes.iconWithBodySmallSizeLargeTablet != abstractTheme.sizes.iconWithBodySmallSizeLargeTablet)
        #expect(inheritedTheme.sizes.iconWithBodySmallSizeLargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelXlargeSizeSmall() throws {
        #expect(inheritedTheme.sizes.iconWithLabelXlargeSizeSmall != abstractTheme.sizes.iconWithLabelXlargeSizeSmall)
        #expect(inheritedTheme.sizes.iconWithLabelXlargeSizeSmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelXlargeSizeMedium() throws {
        #expect(inheritedTheme.sizes.iconWithLabelXlargeSizeMedium != abstractTheme.sizes.iconWithLabelXlargeSizeMedium)
        #expect(inheritedTheme.sizes.iconWithLabelXlargeSizeMedium == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelXlargeSizeLarge() throws {
        #expect(inheritedTheme.sizes.iconWithLabelXlargeSizeLarge != abstractTheme.sizes.iconWithLabelXlargeSizeLarge)
        #expect(inheritedTheme.sizes.iconWithLabelXlargeSizeLarge == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelSizeXsmall() throws {
        #expect(inheritedTheme.sizes.iconWithLabelLargeSizeXsmall != abstractTheme.sizes.iconWithLabelLargeSizeXsmall)
        #expect(inheritedTheme.sizes.iconWithLabelLargeSizeXsmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabeSizeSmall() throws {
        #expect(inheritedTheme.sizes.iconWithLabelLargeSizeSmall != abstractTheme.sizes.iconWithLabelLargeSizeSmall)
        #expect(inheritedTheme.sizes.iconWithLabelLargeSizeSmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelSizeMedium() throws {
        #expect(inheritedTheme.sizes.iconWithLabelLargeSizeMedium != abstractTheme.sizes.iconWithLabelLargeSizeMedium)
        #expect(inheritedTheme.sizes.iconWithLabelLargeSizeMedium == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelSizeLarge() throws {
        #expect(inheritedTheme.sizes.iconWithLabelLargeSizeLarge != abstractTheme.sizes.iconWithLabelLargeSizeLarge)
        #expect(inheritedTheme.sizes.iconWithLabelLargeSizeLarge == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelSizeXlarge() throws {
        #expect(inheritedTheme.sizes.iconWithLabelLargeSizeXlarge != abstractTheme.sizes.iconWithLabelLargeSizeXlarge)
        #expect(inheritedTheme.sizes.iconWithLabelLargeSizeXlarge == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelMediumSizeXsmall() throws {
        #expect(inheritedTheme.sizes.iconWithLabelMediumSizeXsmall != abstractTheme.sizes.iconWithLabelMediumSizeXsmall)
        #expect(inheritedTheme.sizes.iconWithLabelMediumSizeXsmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelMediumSizeSmall() throws {
        #expect(inheritedTheme.sizes.iconWithLabelMediumSizeSmall != abstractTheme.sizes.iconWithLabelMediumSizeSmall)
        #expect(inheritedTheme.sizes.iconWithLabelMediumSizeSmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelMediumSizeMedium() throws {
        #expect(inheritedTheme.sizes.iconWithLabelMediumSizeMedium != abstractTheme.sizes.iconWithLabelMediumSizeMedium)
        #expect(inheritedTheme.sizes.iconWithLabelMediumSizeMedium == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelMediumSizeLarge() throws {
        #expect(inheritedTheme.sizes.iconWithLabelMediumSizeLarge != abstractTheme.sizes.iconWithLabelMediumSizeLarge)
        #expect(inheritedTheme.sizes.iconWithLabelMediumSizeLarge == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelSmallSizeXsmall() throws {
        #expect(inheritedTheme.sizes.iconWithLabelSmallSizeXsmall != abstractTheme.sizes.iconWithLabelSmallSizeXsmall)
        #expect(inheritedTheme.sizes.iconWithLabelSmallSizeXsmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelSmallSizeSmall() throws {
        #expect(inheritedTheme.sizes.iconWithLabelSmallSizeSmall != abstractTheme.sizes.iconWithLabelSmallSizeSmall)
        #expect(inheritedTheme.sizes.iconWithLabelSmallSizeSmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelSmallSizeMedium() throws {
        #expect(inheritedTheme.sizes.iconWithLabelSmallSizeMedium != abstractTheme.sizes.iconWithLabelSmallSizeMedium)
        #expect(inheritedTheme.sizes.iconWithLabelSmallSizeMedium == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelSmallSizeLarge() throws {
        #expect(inheritedTheme.sizes.iconWithLabelSmallSizeLarge != abstractTheme.sizes.iconWithLabelSmallSizeLarge)
        #expect(inheritedTheme.sizes.iconWithLabelSmallSizeLarge == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    // MARK: - Semantic token - Sizing - Icon decorative

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconDecorative4xs() throws {
        #expect(inheritedTheme.sizes.iconDecorative4xsmall != abstractTheme.sizes.iconDecorative4xsmall)
        #expect(inheritedTheme.sizes.iconDecorative4xsmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconDecorative3xs() throws {
        #expect(inheritedTheme.sizes.iconDecorative3xsmall != abstractTheme.sizes.iconDecorative3xsmall)
        #expect(inheritedTheme.sizes.iconDecorative3xsmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconDecorative2xs() throws {
        #expect(inheritedTheme.sizes.iconDecorative2xsmall != abstractTheme.sizes.iconDecorative2xsmall)
        #expect(inheritedTheme.sizes.iconDecorative2xsmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconDecorativeXs() throws {
        #expect(inheritedTheme.sizes.iconDecorativeXsmall != abstractTheme.sizes.iconDecorativeXsmall)
        #expect(inheritedTheme.sizes.iconDecorativeXsmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokensizeIconDecorativeSm() throws {
        #expect(inheritedTheme.sizes.iconDecorativeSmall != abstractTheme.sizes.iconDecorativeSmall)
        #expect(inheritedTheme.sizes.iconDecorativeSmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconDecorativeMd() throws {
        #expect(inheritedTheme.sizes.iconDecorativeMedium != abstractTheme.sizes.iconDecorativeMedium)
        #expect(inheritedTheme.sizes.iconDecorativeMedium == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconDecorativeLg() throws {
        #expect(inheritedTheme.sizes.iconDecorativeLarge != abstractTheme.sizes.iconDecorativeLarge)
        #expect(inheritedTheme.sizes.iconDecorativeLarge == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconDecorativeXl() throws {
        #expect(inheritedTheme.sizes.iconDecorativeXlarge != abstractTheme.sizes.iconDecorativeXlarge)
        #expect(inheritedTheme.sizes.iconDecorativeXlarge == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconDecorative2xl() throws {
        #expect(inheritedTheme.sizes.iconDecorative2xlarge != abstractTheme.sizes.iconDecorative2xlarge)
        #expect(inheritedTheme.sizes.iconDecorative2xlarge == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    // MARK: - Semantic token - Sizing - Max width

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplayLargeMobile() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeDisplayLargeMobile != abstractTheme.sizes.maxWidthTypeDisplayLargeMobile)
        #expect(inheritedTheme.sizes.maxWidthTypeDisplayLargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplayLargeTablet() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeDisplayLargeTablet != abstractTheme.sizes.maxWidthTypeDisplayLargeTablet)
        #expect(inheritedTheme.sizes.maxWidthTypeDisplayLargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplayMediumMobile() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeDisplayMediumMobile != abstractTheme.sizes.maxWidthTypeDisplayMediumMobile)
        #expect(inheritedTheme.sizes.maxWidthTypeDisplayMediumMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplayMediumTablet() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeDisplayMediumTablet != abstractTheme.sizes.maxWidthTypeDisplayMediumTablet)
        #expect(inheritedTheme.sizes.maxWidthTypeDisplayMediumTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplaySmallMobile() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeDisplaySmallMobile != abstractTheme.sizes.maxWidthTypeDisplaySmallMobile)
        #expect(inheritedTheme.sizes.maxWidthTypeDisplaySmallMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplaySmallTablet() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeDisplaySmallTablet != abstractTheme.sizes.maxWidthTypeDisplaySmallTablet)
        #expect(inheritedTheme.sizes.maxWidthTypeDisplaySmallTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingXlargeSizeMobile() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeHeadingXlargeMobile != abstractTheme.sizes.maxWidthTypeHeadingXlargeMobile)
        #expect(inheritedTheme.sizes.maxWidthTypeHeadingXlargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingXlargeSizeTablet() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeHeadingXlargeTablet != abstractTheme.sizes.maxWidthTypeHeadingXlargeTablet)
        #expect(inheritedTheme.sizes.maxWidthTypeHeadingXlargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingLargeMobile() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeHeadingLargeMobile != abstractTheme.sizes.maxWidthTypeHeadingLargeMobile)
        #expect(inheritedTheme.sizes.maxWidthTypeHeadingLargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingLargeTablet() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeHeadingLargeTablet != abstractTheme.sizes.maxWidthTypeHeadingLargeTablet)
        #expect(inheritedTheme.sizes.maxWidthTypeHeadingLargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingMediumMobile() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeHeadingMediumMobile != abstractTheme.sizes.maxWidthTypeHeadingMediumMobile)
        #expect(inheritedTheme.sizes.maxWidthTypeHeadingMediumMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingMediumTablet() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeHeadingMediumTablet != abstractTheme.sizes.maxWidthTypeHeadingMediumTablet)
        #expect(inheritedTheme.sizes.maxWidthTypeHeadingMediumTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingSmallMobile() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeHeadingSmallMobile != abstractTheme.sizes.maxWidthTypeHeadingSmallMobile)
        #expect(inheritedTheme.sizes.maxWidthTypeHeadingSmallMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingSmallTablet() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeHeadingSmallTablet != abstractTheme.sizes.maxWidthTypeHeadingSmallTablet)
        #expect(inheritedTheme.sizes.maxWidthTypeHeadingSmallTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodyLargeMobile() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeBodyLargeMobile != abstractTheme.sizes.maxWidthTypeBodyLargeMobile)
        #expect(inheritedTheme.sizes.maxWidthTypeBodyLargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodyLargeTablet() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeBodyLargeTablet != abstractTheme.sizes.maxWidthTypeBodyLargeTablet)
        #expect(inheritedTheme.sizes.maxWidthTypeBodyLargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodyMediumMobile() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeBodyMediumMobile != abstractTheme.sizes.maxWidthTypeBodyMediumMobile)
        #expect(inheritedTheme.sizes.maxWidthTypeBodyMediumMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodyMediumTablet() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeBodyMediumTablet != abstractTheme.sizes.maxWidthTypeBodyMediumTablet)
        #expect(inheritedTheme.sizes.maxWidthTypeBodyMediumTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodySmallMobile() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeBodySmallMobile != abstractTheme.sizes.maxWidthTypeBodySmallMobile)
        #expect(inheritedTheme.sizes.maxWidthTypeBodySmallMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodySmallTablet() throws {
        #expect(inheritedTheme.sizes.maxWidthTypeBodySmallTablet != abstractTheme.sizes.maxWidthTypeBodySmallTablet)
        #expect(inheritedTheme.sizes.maxWidthTypeBodySmallTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    // MARK: - Semantic token - Sizing - Interactive area

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMinInteractiveArea() throws {
        #expect(inheritedTheme.sizes.minInteractiveArea != abstractTheme.sizes.minInteractiveArea)
        #expect(inheritedTheme.sizes.minInteractiveArea == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }
}

// swiftlint:enable type_body_length

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

// swiftlint:disable type_body_length

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _sizing semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeSizeSemanticTokensProvider``.
///
/// **These tests checks if any _size semantic tokens_ can be surcharged by a child theme**
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
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeSmallMobile != abstractTheme.sizes.sizeIconWithHeadingXlargeSizeSmallMobile)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeSmallMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeSmallTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeSmallTablet != abstractTheme.sizes.sizeIconWithHeadingXlargeSizeSmallTablet)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeSmallTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeMediumMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeMediumMobile != abstractTheme.sizes.sizeIconWithHeadingXlargeSizeMediumMobile)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeMediumMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeMediumTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeMediumTablet != abstractTheme.sizes.sizeIconWithHeadingXlargeSizeMediumTablet)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeMediumTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeLargeMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeLargeMobile != abstractTheme.sizes.sizeIconWithHeadingXlargeSizeLargeMobile)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeLargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeLargeTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeLargeTablet != abstractTheme.sizes.sizeIconWithHeadingXlargeSizeLargeTablet)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeLargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeSizeSmallMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeSmallMobile != abstractTheme.sizes.sizeIconWithHeadingLargeSizeSmallMobile)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeSmallMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeSmTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeSmallTablet != abstractTheme.sizes.sizeIconWithHeadingLargeSizeSmallTablet)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeSmallTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeMediumMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeMediumMobile != abstractTheme.sizes.sizeIconWithHeadingLargeSizeMediumMobile)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeMediumMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeMediumTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeMediumTablet != abstractTheme.sizes.sizeIconWithHeadingLargeSizeMediumTablet)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeMediumTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeTallMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeLargeMobile != abstractTheme.sizes.sizeIconWithHeadingLargeSizeLargeMobile)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeLargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeTallTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeLargeTablet != abstractTheme.sizes.sizeIconWithHeadingLargeSizeLargeTablet)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeLargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumSmMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeSmallMobile != abstractTheme.sizes.sizeIconWithHeadingMediumSizeSmallMobile)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeSmallMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumSmTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeSmallTablet != abstractTheme.sizes.sizeIconWithHeadingMediumSizeSmallTablet)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeSmallTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumMediumMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeMediumMobile != abstractTheme.sizes.sizeIconWithHeadingMediumSizeMediumMobile)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeMediumMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumMediumTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeMediumTablet != abstractTheme.sizes.sizeIconWithHeadingMediumSizeMediumTablet)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeMediumTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumSizeLargeMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeLargeMobile != abstractTheme.sizes.sizeIconWithHeadingMediumSizeLargeMobile)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeLargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumSizeLargeTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeLargeTablet != abstractTheme.sizes.sizeIconWithHeadingMediumSizeLargeTablet)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeLargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSizeSmallMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeSmallMobile != abstractTheme.sizes.sizeIconWithHeadingSmallSizeSmallMobile)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeSmallMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSmTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeSmallTablet != abstractTheme.sizes.sizeIconWithHeadingSmallSizeSmallTablet)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeSmallTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSizeMediumMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeMediumMobile != abstractTheme.sizes.sizeIconWithHeadingSmallSizeMediumMobile)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeMediumMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallMediumTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeMediumTablet != abstractTheme.sizes.sizeIconWithHeadingSmallSizeMediumTablet)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeMediumTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSizeLargeMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeLargeMobile != abstractTheme.sizes.sizeIconWithHeadingSmallSizeLargeMobile)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeLargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallTallTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeLargeTablet != abstractTheme.sizes.sizeIconWithHeadingSmallSizeLargeTablet)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeLargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeSizeSmallMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeSmallMobile != abstractTheme.sizes.sizeIconWithBodyLargeSizeSmallMobile)
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeSmallMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeSmTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeSmallTablet != abstractTheme.sizes.sizeIconWithBodyLargeSizeSmallTablet)
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeSmallTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeMediumMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeMediumMobile != abstractTheme.sizes.sizeIconWithBodyLargeSizeMediumMobile)
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeMediumMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeMediumTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeMediumTablet != abstractTheme.sizes.sizeIconWithBodyLargeSizeMediumTablet)
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeMediumTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeTallMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeLargeMobile != abstractTheme.sizes.sizeIconWithBodyLargeSizeLargeMobile)
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeLargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeTallTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeLargeTablet != abstractTheme.sizes.sizeIconWithBodyLargeSizeLargeTablet)
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeLargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumSmMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeSmallMobile != abstractTheme.sizes.sizeIconWithBodyMediumSizeSmallMobile)
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeSmallMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumSmTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeSmallTablet != abstractTheme.sizes.sizeIconWithBodyMediumSizeSmallTablet)
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeSmallTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumMediumMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeMediumMobile != abstractTheme.sizes.sizeIconWithBodyMediumSizeMediumMobile)
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeMediumMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumMediumTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeMediumTablet != abstractTheme.sizes.sizeIconWithBodyMediumSizeMediumTablet)
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeMediumTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumSizeLargeMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeLargeMobile != abstractTheme.sizes.sizeIconWithBodyMediumSizeLargeMobile)
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeLargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumSizeLargeTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeLargeTablet != abstractTheme.sizes.sizeIconWithBodyMediumSizeLargeTablet)
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeLargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSizeSmallMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeSmallMobile != abstractTheme.sizes.sizeIconWithBodySmallSizeSmallMobile)
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeSmallMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSmTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeSmallTablet != abstractTheme.sizes.sizeIconWithBodySmallSizeSmallTablet)
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeSmallTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSizeMediumMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeMediumMobile != abstractTheme.sizes.sizeIconWithBodySmallSizeMediumMobile)
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeMediumMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallMediumTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeMediumTablet != abstractTheme.sizes.sizeIconWithBodySmallSizeMediumTablet)
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeMediumTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSizeLargeMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeLargeMobile != abstractTheme.sizes.sizeIconWithBodySmallSizeLargeMobile)
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeLargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallTallTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeLargeTablet != abstractTheme.sizes.sizeIconWithBodySmallSizeLargeTablet)
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeLargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelXlargeSizeSmall() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelXlargeSizeSmall != abstractTheme.sizes.sizeIconWithLabelXlargeSizeSmall)
        #expect(inheritedTheme.sizes.sizeIconWithLabelXlargeSizeSmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelXlargeSizeMedium() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelXlargeSizeMedium != abstractTheme.sizes.sizeIconWithLabelXlargeSizeMedium)
        #expect(inheritedTheme.sizes.sizeIconWithLabelXlargeSizeMedium == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelXlargeSizeLarge() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelXlargeSizeLarge != abstractTheme.sizes.sizeIconWithLabelXlargeSizeLarge)
        #expect(inheritedTheme.sizes.sizeIconWithLabelXlargeSizeLarge == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelSizeXsmall() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelLargeSizeXsmall != abstractTheme.sizes.sizeIconWithLabelLargeSizeXsmall)
        #expect(inheritedTheme.sizes.sizeIconWithLabelLargeSizeXsmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabeSizeSmall() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelLargeSizeSmall != abstractTheme.sizes.sizeIconWithLabelLargeSizeSmall)
        #expect(inheritedTheme.sizes.sizeIconWithLabelLargeSizeSmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelSizeMedium() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelLargeSizeMedium != abstractTheme.sizes.sizeIconWithLabelLargeSizeMedium)
        #expect(inheritedTheme.sizes.sizeIconWithLabelLargeSizeMedium == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelSizeLarge() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelLargeSizeLarge != abstractTheme.sizes.sizeIconWithLabelLargeSizeLarge)
        #expect(inheritedTheme.sizes.sizeIconWithLabelLargeSizeLarge == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelSizeXlarge() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelLargeSizeXlarge != abstractTheme.sizes.sizeIconWithLabelLargeSizeXlarge)
        #expect(inheritedTheme.sizes.sizeIconWithLabelLargeSizeXlarge == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelMediumSizeXsmall() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelMediumSizeXsmall != abstractTheme.sizes.sizeIconWithLabelMediumSizeXsmall)
        #expect(inheritedTheme.sizes.sizeIconWithLabelMediumSizeXsmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelMediumSizeSmall() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelMediumSizeSmall != abstractTheme.sizes.sizeIconWithLabelMediumSizeSmall)
        #expect(inheritedTheme.sizes.sizeIconWithLabelMediumSizeSmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelMediumSizeMedium() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelMediumSizeMedium != abstractTheme.sizes.sizeIconWithLabelMediumSizeMedium)
        #expect(inheritedTheme.sizes.sizeIconWithLabelMediumSizeMedium == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelMediumSizeLarge() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelMediumSizeLarge != abstractTheme.sizes.sizeIconWithLabelMediumSizeLarge)
        #expect(inheritedTheme.sizes.sizeIconWithLabelMediumSizeLarge == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelSmallSizeXsmall() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelSmallSizeXsmall != abstractTheme.sizes.sizeIconWithLabelSmallSizeXsmall)
        #expect(inheritedTheme.sizes.sizeIconWithLabelSmallSizeXsmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelSmallSizeSmall() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelSmallSizeSmall != abstractTheme.sizes.sizeIconWithLabelSmallSizeSmall)
        #expect(inheritedTheme.sizes.sizeIconWithLabelSmallSizeSmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelSmallSizeMedium() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelSmallSizeMedium != abstractTheme.sizes.sizeIconWithLabelSmallSizeMedium)
        #expect(inheritedTheme.sizes.sizeIconWithLabelSmallSizeMedium == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelSmallSizeLarge() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelSmallSizeLarge != abstractTheme.sizes.sizeIconWithLabelSmallSizeLarge)
        #expect(inheritedTheme.sizes.sizeIconWithLabelSmallSizeLarge == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    // MARK: - Semantic token - Sizing - Icon decorative

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconDecorative4xs() throws {
        #expect(inheritedTheme.sizes.sizeIconDecorative4xsmall != abstractTheme.sizes.sizeIconDecorative4xsmall)
        #expect(inheritedTheme.sizes.sizeIconDecorative4xsmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconDecorative3xs() throws {
        #expect(inheritedTheme.sizes.sizeIconDecorative3xsmall != abstractTheme.sizes.sizeIconDecorative3xsmall)
        #expect(inheritedTheme.sizes.sizeIconDecorative3xsmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconDecorative2xs() throws {
        #expect(inheritedTheme.sizes.sizeIconDecorative2xsmall != abstractTheme.sizes.sizeIconDecorative2xsmall)
        #expect(inheritedTheme.sizes.sizeIconDecorative2xsmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconDecorativeXs() throws {
        #expect(inheritedTheme.sizes.sizeIconDecorativeXsmall != abstractTheme.sizes.sizeIconDecorativeXsmall)
        #expect(inheritedTheme.sizes.sizeIconDecorativeXsmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokensizeIconDecorativeSm() throws {
        #expect(inheritedTheme.sizes.sizeIconDecorativeSmall != abstractTheme.sizes.sizeIconDecorativeSmall)
        #expect(inheritedTheme.sizes.sizeIconDecorativeSmall == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconDecorativeMd() throws {
        #expect(inheritedTheme.sizes.sizeIconDecorativeMedium != abstractTheme.sizes.sizeIconDecorativeMedium)
        #expect(inheritedTheme.sizes.sizeIconDecorativeMedium == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconDecorativeLg() throws {
        #expect(inheritedTheme.sizes.sizeIconDecorativeLarge != abstractTheme.sizes.sizeIconDecorativeLarge)
        #expect(inheritedTheme.sizes.sizeIconDecorativeLarge == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconDecorativeXl() throws {
        #expect(inheritedTheme.sizes.sizeIconDecorativeXlarge != abstractTheme.sizes.sizeIconDecorativeXlarge)
        #expect(inheritedTheme.sizes.sizeIconDecorativeXlarge == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconDecorative2xl() throws {
        #expect(inheritedTheme.sizes.sizeIconDecorative2xlarge != abstractTheme.sizes.sizeIconDecorative2xlarge)
        #expect(inheritedTheme.sizes.sizeIconDecorative2xlarge == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    // MARK: - Semantic token - Sizing - Max width

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplayLargeMobile() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeDisplayLargeMobile != abstractTheme.sizes.sizeMaxWidthTypeDisplayLargeMobile)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeDisplayLargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplayLargeTablet() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeDisplayLargeTablet != abstractTheme.sizes.sizeMaxWidthTypeDisplayLargeTablet)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeDisplayLargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplayMediumMobile() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeDisplayMediumMobile != abstractTheme.sizes.sizeMaxWidthTypeDisplayMediumMobile)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeDisplayMediumMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplayMediumTablet() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeDisplayMediumTablet != abstractTheme.sizes.sizeMaxWidthTypeDisplayMediumTablet)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeDisplayMediumTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplaySmallMobile() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeDisplaySmallMobile != abstractTheme.sizes.sizeMaxWidthTypeDisplaySmallMobile)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeDisplaySmallMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeDisplaySmallTablet() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeDisplaySmallTablet != abstractTheme.sizes.sizeMaxWidthTypeDisplaySmallTablet)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeDisplaySmallTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingXlargeSizeMobile() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeHeadingXlargeMobile != abstractTheme.sizes.sizeMaxWidthTypeHeadingXlargeMobile)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeHeadingXlargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingXlargeSizeTablet() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeHeadingXlargeTablet != abstractTheme.sizes.sizeMaxWidthTypeHeadingXlargeTablet)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeHeadingXlargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingLargeMobile() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeHeadingLargeMobile != abstractTheme.sizes.sizeMaxWidthTypeHeadingLargeMobile)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeHeadingLargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingLargeTablet() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeHeadingLargeTablet != abstractTheme.sizes.sizeMaxWidthTypeHeadingLargeTablet)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeHeadingLargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingMediumMobile() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeHeadingMediumMobile != abstractTheme.sizes.sizeMaxWidthTypeHeadingMediumMobile)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeHeadingMediumMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingMediumTablet() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeHeadingMediumTablet != abstractTheme.sizes.sizeMaxWidthTypeHeadingMediumTablet)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeHeadingMediumTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingSmallMobile() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeHeadingSmallMobile != abstractTheme.sizes.sizeMaxWidthTypeHeadingSmallMobile)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeHeadingSmallMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeHeadingSmallTablet() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeHeadingSmallTablet != abstractTheme.sizes.sizeMaxWidthTypeHeadingSmallTablet)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeHeadingSmallTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodyLargeMobile() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeBodyLargeMobile != abstractTheme.sizes.sizeMaxWidthTypeBodyLargeMobile)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeBodyLargeMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodyLargeTablet() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeBodyLargeTablet != abstractTheme.sizes.sizeMaxWidthTypeBodyLargeTablet)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeBodyLargeTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodyMediumMobile() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeBodyMediumMobile != abstractTheme.sizes.sizeMaxWidthTypeBodyMediumMobile)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeBodyMediumMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodyMediumTablet() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeBodyMediumTablet != abstractTheme.sizes.sizeMaxWidthTypeBodyMediumTablet)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeBodyMediumTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodySmallMobile() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeBodySmallMobile != abstractTheme.sizes.sizeMaxWidthTypeBodySmallMobile)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeBodySmallMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMaxWidthTypeBodySmallTablet() throws {
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeBodySmallTablet != abstractTheme.sizes.sizeMaxWidthTypeBodySmallTablet)
        #expect(inheritedTheme.sizes.sizeMaxWidthTypeBodySmallTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    // MARK: - Semantic token - Sizing - Interactive area

    @Test func inheritedThemeCanOverrideSemanticTokenSizeMinInteractiveArea() throws {
        #expect(inheritedTheme.sizes.sizeMinInteractiveArea != abstractTheme.sizes.sizeMinInteractiveArea)
        #expect(inheritedTheme.sizes.sizeMinInteractiveArea == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }
}

// swiftlint:enable type_body_length

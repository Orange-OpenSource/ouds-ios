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
final class ThemeOverrideOfSizeSemanticTokensTests: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Sizing - Icon with typography

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeSmMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeSmMobile != abstractTheme.sizes.sizeIconWithHeadingXlargeSizeSmMobile)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeSmMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeSmTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeSmTablet != abstractTheme.sizes.sizeIconWithHeadingXlargeSizeSmTablet)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeSmTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeMdMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeMdMobile != abstractTheme.sizes.sizeIconWithHeadingXlargeSizeMdMobile)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeMdMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeMdTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeMdTablet != abstractTheme.sizes.sizeIconWithHeadingXlargeSizeMdTablet)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeMdTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeLgMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeLgMobile != abstractTheme.sizes.sizeIconWithHeadingXlargeSizeLgMobile)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeLgMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingXlargeSizeLgTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeLgTablet != abstractTheme.sizes.sizeIconWithHeadingXlargeSizeLgTablet)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingXlargeSizeLgTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeSizeSmMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeSmMobile != abstractTheme.sizes.sizeIconWithHeadingLargeSizeSmMobile)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeSmMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeShortTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeSmTablet != abstractTheme.sizes.sizeIconWithHeadingLargeSizeSmTablet)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeSmTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeMediumMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeMdMobile != abstractTheme.sizes.sizeIconWithHeadingLargeSizeMdMobile)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeMdMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeMediumTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeMdTablet != abstractTheme.sizes.sizeIconWithHeadingLargeSizeMdTablet)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeMdTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeTallMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeLgMobile != abstractTheme.sizes.sizeIconWithHeadingLargeSizeLgMobile)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeLgMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingLargeTallTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeLgTablet != abstractTheme.sizes.sizeIconWithHeadingLargeSizeLgTablet)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingLargeSizeLgTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumShortMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeSmMobile != abstractTheme.sizes.sizeIconWithHeadingMediumSizeSmMobile)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeSmMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumShortTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeSmTablet != abstractTheme.sizes.sizeIconWithHeadingMediumSizeSmTablet)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeSmTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumMediumMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeMdMobile != abstractTheme.sizes.sizeIconWithHeadingMediumSizeMdMobile)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeMdMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumMediumTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeMdTablet != abstractTheme.sizes.sizeIconWithHeadingMediumSizeMdTablet)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeMdTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumSizeLgMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeLgMobile != abstractTheme.sizes.sizeIconWithHeadingMediumSizeLgMobile)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeLgMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingMediumSizeLgTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeLgTablet != abstractTheme.sizes.sizeIconWithHeadingMediumSizeLgTablet)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingMediumSizeLgTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSizeSmMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeSmMobile != abstractTheme.sizes.sizeIconWithHeadingSmallSizeSmMobile)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeSmMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallShortTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeSmTablet != abstractTheme.sizes.sizeIconWithHeadingSmallSizeSmTablet)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeSmTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSizeMdMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeMdMobile != abstractTheme.sizes.sizeIconWithHeadingSmallSizeMdMobile)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeMdMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallMediumTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeMdTablet != abstractTheme.sizes.sizeIconWithHeadingSmallSizeMdTablet)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeMdTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallSizeLgMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeLgMobile != abstractTheme.sizes.sizeIconWithHeadingSmallSizeLgMobile)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeLgMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithHeadingSmallTallTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeLgTablet != abstractTheme.sizes.sizeIconWithHeadingSmallSizeLgTablet)
        #expect(inheritedTheme.sizes.sizeIconWithHeadingSmallSizeLgTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeSizeSmMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeSmMobile != abstractTheme.sizes.sizeIconWithBodyLargeSizeSmMobile)
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeSmMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeShortTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeSmTablet != abstractTheme.sizes.sizeIconWithBodyLargeSizeSmTablet)
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeSmTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeMediumMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeMdMobile != abstractTheme.sizes.sizeIconWithBodyLargeSizeMdMobile)
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeMdMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeMediumTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeMdTablet != abstractTheme.sizes.sizeIconWithBodyLargeSizeMdTablet)
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeMdTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeTallMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeLgMobile != abstractTheme.sizes.sizeIconWithBodyLargeSizeLgMobile)
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeLgMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyLargeTallTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeLgTablet != abstractTheme.sizes.sizeIconWithBodyLargeSizeLgTablet)
        #expect(inheritedTheme.sizes.sizeIconWithBodyLargeSizeLgTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumShortMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeSmMobile != abstractTheme.sizes.sizeIconWithBodyMediumSizeSmMobile)
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeSmMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumShortTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeSmTablet != abstractTheme.sizes.sizeIconWithBodyMediumSizeSmTablet)
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeSmTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumMediumMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeMdMobile != abstractTheme.sizes.sizeIconWithBodyMediumSizeMdMobile)
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeMdMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumMediumTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeMdTablet != abstractTheme.sizes.sizeIconWithBodyMediumSizeMdTablet)
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeMdTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumSizeLgMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeLgMobile != abstractTheme.sizes.sizeIconWithBodyMediumSizeLgMobile)
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeLgMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodyMediumSizeLgTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeLgTablet != abstractTheme.sizes.sizeIconWithBodyMediumSizeLgTablet)
        #expect(inheritedTheme.sizes.sizeIconWithBodyMediumSizeLgTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSizeSmMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeSmMobile != abstractTheme.sizes.sizeIconWithBodySmallSizeSmMobile)
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeSmMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallShortTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeSmTablet != abstractTheme.sizes.sizeIconWithBodySmallSizeSmTablet)
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeSmTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSizeMdMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeMdMobile != abstractTheme.sizes.sizeIconWithBodySmallSizeMdMobile)
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeMdMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallMediumTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeMdTablet != abstractTheme.sizes.sizeIconWithBodySmallSizeMdTablet)
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeMdTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallSizeLgMobile() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeLgMobile != abstractTheme.sizes.sizeIconWithBodySmallSizeLgMobile)
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeLgMobile == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconWithBodySmallTallTablet() throws {
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeLgTablet != abstractTheme.sizes.sizeIconWithBodySmallSizeLgTablet)
        #expect(inheritedTheme.sizes.sizeIconWithBodySmallSizeLgTablet == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelXlargeSizeSm() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelXlargeSizeSm != abstractTheme.sizes.sizeIconWithLabelXlargeSizeSm)
        #expect(inheritedTheme.sizes.sizeIconWithLabelXlargeSizeSm == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelXlargeSizeMd() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelXlargeSizeMd != abstractTheme.sizes.sizeIconWithLabelXlargeSizeMd)
        #expect(inheritedTheme.sizes.sizeIconWithLabelXlargeSizeMd == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelXlargeSizeLg() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelXlargeSizeLg != abstractTheme.sizes.sizeIconWithLabelXlargeSizeLg)
        #expect(inheritedTheme.sizes.sizeIconWithLabelXlargeSizeLg == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelSizeXs() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelLargeSizeXs != abstractTheme.sizes.sizeIconWithLabelLargeSizeXs)
        #expect(inheritedTheme.sizes.sizeIconWithLabelLargeSizeXs == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabeSizeSm() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelLargeSizeSm != abstractTheme.sizes.sizeIconWithLabelLargeSizeSm)
        #expect(inheritedTheme.sizes.sizeIconWithLabelLargeSizeSm == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelSizeMedium() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelLargeSizeMd != abstractTheme.sizes.sizeIconWithLabelLargeSizeMd)
        #expect(inheritedTheme.sizes.sizeIconWithLabelLargeSizeMd == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelSizeLg() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelLargeSizeLg != abstractTheme.sizes.sizeIconWithLabelLargeSizeLg)
        #expect(inheritedTheme.sizes.sizeIconWithLabelLargeSizeLg == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelSizeXl() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelLargeSizeXl != abstractTheme.sizes.sizeIconWithLabelLargeSizeXl)
        #expect(inheritedTheme.sizes.sizeIconWithLabelLargeSizeXl == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelMediumSizeXs() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelMediumSizeXs != abstractTheme.sizes.sizeIconWithLabelMediumSizeXs)
        #expect(inheritedTheme.sizes.sizeIconWithLabelMediumSizeXs == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelMediumSizeSm() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelMediumSizeSm != abstractTheme.sizes.sizeIconWithLabelMediumSizeSm)
        #expect(inheritedTheme.sizes.sizeIconWithLabelMediumSizeSm == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelMediumSizeMedium() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelMediumSizeMd != abstractTheme.sizes.sizeIconWithLabelMediumSizeMd)
        #expect(inheritedTheme.sizes.sizeIconWithLabelMediumSizeMd == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelMediumSizeLg() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelMediumSizeLg != abstractTheme.sizes.sizeIconWithLabelMediumSizeLg)
        #expect(inheritedTheme.sizes.sizeIconWithLabelMediumSizeLg == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelSmallSizeXs() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelSmallSizeXs != abstractTheme.sizes.sizeIconWithLabelSmallSizeXs)
        #expect(inheritedTheme.sizes.sizeIconWithLabelSmallSizeXs == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelSmallSizeSm() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelSmallSizeSm != abstractTheme.sizes.sizeIconWithLabelSmallSizeSm)
        #expect(inheritedTheme.sizes.sizeIconWithLabelSmallSizeSm == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelSmallSizeMedium() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelSmallSizeMd != abstractTheme.sizes.sizeIconWithLabelSmallSizeMd)
        #expect(inheritedTheme.sizes.sizeIconWithLabelSmallSizeMd == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeWithLabelSmallSizeLg() throws {
        #expect(inheritedTheme.sizes.sizeIconWithLabelSmallSizeLg != abstractTheme.sizes.sizeIconWithLabelSmallSizeLg)
        #expect(inheritedTheme.sizes.sizeIconWithLabelSmallSizeLg == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    // MARK: - Semantic token - Sizing - Icon decorative

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconDecorative2xs() throws {
        #expect(inheritedTheme.sizes.sizeIconDecorative2xs != abstractTheme.sizes.sizeIconDecorative2xs)
        #expect(inheritedTheme.sizes.sizeIconDecorative2xs == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconDecorativeXs() throws {
        #expect(inheritedTheme.sizes.sizeIconDecorativeXs != abstractTheme.sizes.sizeIconDecorativeXs)
        #expect(inheritedTheme.sizes.sizeIconDecorativeXs == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokensizeIconDecorativeSm() throws {
        #expect(inheritedTheme.sizes.sizeIconDecorativeSm != abstractTheme.sizes.sizeIconDecorativeSm)
        #expect(inheritedTheme.sizes.sizeIconDecorativeSm == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconDecorativeMd() throws {
        #expect(inheritedTheme.sizes.sizeIconDecorativeMd != abstractTheme.sizes.sizeIconDecorativeMd)
        #expect(inheritedTheme.sizes.sizeIconDecorativeMd == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconDecorativeLg() throws {
        #expect(inheritedTheme.sizes.sizeIconDecorativeLg != abstractTheme.sizes.sizeIconDecorativeLg)
        #expect(inheritedTheme.sizes.sizeIconDecorativeLg == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconDecorativeXl() throws {
        #expect(inheritedTheme.sizes.sizeIconDecorativeXl != abstractTheme.sizes.sizeIconDecorativeXl)
        #expect(inheritedTheme.sizes.sizeIconDecorativeXl == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSizeIconDecorative2xl() throws {
        #expect(inheritedTheme.sizes.sizeIconDecorative2xl != abstractTheme.sizes.sizeIconDecorative2xl)
        #expect(inheritedTheme.sizes.sizeIconDecorative2xl == MockThemeSizeSemanticTokensProvider.mockThemeSizeRawToken)
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
}

// swiftlint:enable type_body_length

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

import OUDSThemesOrange
import OUDSTokensRaw
import OUDSTokensSemantic

// swiftlint:disable required_deinit

/// Overrides **all** the size semantic tokens (from its super class, i.e. ``OrangeThemeSizeSemanticTokensProvider`` so as to test overriding of them (unit tests)
/// and to act like smoke tests with crashing tests if some tokens disappeared.
final class MockThemeSizeSemanticTokensProvider: OrangeThemeSizeSemanticTokensProvider {

    static let mockThemeSizeRawToken: DimensionRawToken = 118_000
    static let mockThemeSizeCompositeToken = MultipleSizeSemanticTokens(compact: 1, regular: 151)

    // MARK: - Semantic token - Sizing - Icon with typography - Multiples

    override public var sizeIconWithHeadingXlargeSizeSm: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithHeadingXlargeSizeMd: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithHeadingXlargeSizeLg: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override public var sizeIconWithHeadingLargeSizeSm: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithHeadingLargeSizeMd: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithHeadingLargeSizeLg: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override public var sizeIconWithHeadingMediumSizeSm: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithHeadingMediumSizeMd: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithHeadingMediumSizeLg: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override public var sizeIconWithHeadingSmallSizeSm: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithHeadingSmallSizeMd: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithHeadingSmallSizeLg: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override public var sizeIconWithBodyLargeSizeSm: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithBodyLargeSizeMd: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithBodyLargeSizeLg: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override public var sizeIconWithBodyMediumSizeSm: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithBodyMediumSizeMd: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithBodyMediumSizeLg: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override public var sizeIconWithBodySmallSizeSm: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithBodySmallSizeMd: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithBodySmallSizeLg: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    // MARK: - Semantic token - Sizing - Icon with typography - Pure semantic

    override public var sizeIconWithHeadingXlargeSizeSmMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithHeadingXlargeSizeSmTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithHeadingXlargeSizeMdMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithHeadingXlargeSizeMdTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithHeadingXlargeSizeLgMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithHeadingXlargeSizeLgTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithHeadingLargeSizeSmMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithHeadingLargeSizeSmTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithHeadingLargeSizeMdMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithHeadingLargeSizeMdTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithHeadingLargeSizeLgMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithHeadingLargeSizeLgTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithHeadingMediumSizeSmMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithHeadingMediumSizeSmTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithHeadingMediumSizeMdMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithHeadingMediumSizeMdTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithHeadingMediumSizeLgMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithHeadingMediumSizeLgTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithHeadingSmallSizeSmMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithHeadingSmallSizeSmTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithHeadingSmallSizeMdMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithHeadingSmallSizeMdTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithHeadingSmallSizeLgMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithHeadingSmallSizeLgTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithBodyLargeSizeSmMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithBodyLargeSizeSmTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithBodyLargeSizeMdMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithBodyLargeSizeMdTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithBodyLargeSizeLgMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithBodyLargeSizeLgTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithBodyMediumSizeSmMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithBodyMediumSizeSmTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithBodyMediumSizeMdMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithBodyMediumSizeMdTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithBodyMediumSizeLgMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithBodyMediumSizeLgTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithBodySmallSizeSmMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithBodySmallSizeSmTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithBodySmallSizeMdMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithBodySmallSizeMdTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithBodySmallSizeLgMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithBodySmallSizeLgTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithLabelXlargeSizeSm: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithLabelXlargeSizeMd: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithLabelXlargeSizeLg: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithLabelLargeSizeXs: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithLabelLargeSizeSm: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithLabelLargeSizeMd: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithLabelLargeSizeLg: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithLabelLargeSizeXl: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithLabelMediumSizeSm: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithLabelMediumSizeMd: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithLabelMediumSizeLg: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithLabelSmallSizeSm: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithLabelSmallSizeMd: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithLabelSmallSizeLg: SizeSemanticToken { Self.mockThemeSizeRawToken }

    // MARK: - Semantic token - Sizing - Icon decorative

    override public var sizeIconDecorative2xs: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconDecorativeXs: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconDecorativeSm: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconDecorativeMd: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconDecorativeLg: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconDecorativeXl: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconDecorative2xl: SizeSemanticToken { Self.mockThemeSizeRawToken }

    // MARK: - Semantic token - Sizing - Max width typography - Multiples

    override public var sizeMaxWidthTypeDisplayLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeMaxWidthTypeDisplayMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeMaxWidthTypeDisplaySmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override public var sizeMaxWidthTypeHeadingXlarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeMaxWidthTypeHeadingLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeMaxWidthTypeHeadingMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeMaxWidthTypeHeadingSmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override public var sizeMaxWidthTypeBodyLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeMaxWidthTypeBodyMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeMaxWidthTypeBodySmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    // MARK: - Semantic token - Sizing - Max width typography - Pure semantic

    override public var sizeMaxWidthTypeDisplayLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeMaxWidthTypeDisplayLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeMaxWidthTypeDisplayMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeMaxWidthTypeDisplayMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeMaxWidthTypeDisplaySmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeMaxWidthTypeDisplaySmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeMaxWidthTypeHeadingXlargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeMaxWidthTypeHeadingXlargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeMaxWidthTypeHeadingLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeMaxWidthTypeHeadingLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeMaxWidthTypeHeadingMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeMaxWidthTypeHeadingMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeMaxWidthTypeHeadingSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeMaxWidthTypeHeadingSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeMaxWidthTypeBodyLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeMaxWidthTypeBodyLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeMaxWidthTypeBodyMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeMaxWidthTypeBodyMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeMaxWidthTypeBodySmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeMaxWidthTypeBodySmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }
}

// swiftlint:enable required_deinit

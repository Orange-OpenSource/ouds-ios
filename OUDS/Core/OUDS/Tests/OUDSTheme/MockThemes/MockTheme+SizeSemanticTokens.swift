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

import OUDSTokensRaw
import OUDSTokensSemantic

/// Overrides **all** the size semantic tokens (from its super class, i.e. `OUDSTheme` so as to test overriding of them (unit tests)
/// and to act like smoke tests with crashing tests if some tokens disappeared.
extension MockTheme {

    static let mockThemeSizeRawToken: DimensionRawToken = 118_000
    static let mockThemeSizeCompositeToken = MultipleSizeSemanticTokens(compact: 1, regular: 151)

    // MARK: - Semantic token - Sizing - Icon with typography - Multiples

    override open var sizeIconWithHeadingXlargeSizeSm: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingXlargeSizeMd: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingXlargeSizeLg: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithHeadingLargeSizeSm: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingLargeSizeMd: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingLargeSizeLg: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithHeadingMediumSizeSm: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingMediumSizeMd: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingMediumSizeLg: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithHeadingSmallSizeSm: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingSmallSizeMd: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingSmallSizeLg: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithBodyLargeSizeSm: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodyLargeSizeMd: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodyLargeSizeLg: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithBodyMediumSizeSm: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodyMediumSizeMd: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodyMediumSizeLg: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithBodySmallSizeSm: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodySmallSizeMd: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodySmallSizeLg: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    // MARK: - Semantic token - Sizing - Icon with typography - Pure semantic

    override open var sizeIconWithHeadingXlargeSizeSmMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingXlargeSizeSmTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingXlargeSizeMdMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingXlargeSizeMdTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingXlargeSizeLgMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingXlargeSizeLgTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingLargeSizeSmMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingLargeSizeSmTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingLargeSizeMdMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingLargeSizeMdTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingLargeSizeLgMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingLargeSizeLgTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingMediumSizeSmMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingMediumSizeSmTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingMediumSizeMdMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingMediumSizeMdTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingMediumSizeLgMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingMediumSizeLgTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingSmallSizeSmMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingSmallSizeSmTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingSmallSizeMdMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingSmallSizeMdTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingSmallSizeLgMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingSmallSizeLgTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodyLargeSizeSmMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodyLargeSizeSmTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodyLargeSizeMdMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodyLargeSizeMdTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodyLargeSizeLgMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodyLargeSizeLgTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodyMediumSizeSmMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodyMediumSizeSmTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodyMediumSizeMdMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodyMediumSizeMdTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodyMediumSizeLgMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodyMediumSizeLgTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodySmallSizeSmMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodySmallSizeSmTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodySmallSizeMdMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodySmallSizeMdTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodySmallSizeLgMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodySmallSizeLgTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithLabelXlargeSizeSm: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelXlargeSizeMd: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelXlargeSizeLg: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithLabelLargeSizeXs: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelLargeSizeSm: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelLargeSizeMd: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelLargeSizeLg: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelLargeSizeXl: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithLabelMediumSizeSm: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelMediumSizeMd: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelMediumSizeLg: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithLabelSmallSizeSm: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelSmallSizeMd: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelSmallSizeLg: SizeSemanticToken { Self.mockThemeSizeRawToken }

    // MARK: - Semantic token - Sizing - Icon decorative

    override open var sizeIconDecorative2xs: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconDecorativeXs: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconDecorativeSm: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconDecorativeMd: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconDecorativeLg: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconDecorativeXl: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconDecorative2xl: SizeSemanticToken { Self.mockThemeSizeRawToken }

    // MARK: - Semantic token - Sizing - Max width typography - Multiples

    override open var sizeMaxWidthTypeDisplayLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeMaxWidthTypeDisplayMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeMaxWidthTypeDisplaySmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeMaxWidthTypeHeadingXlarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeMaxWidthTypeHeadingLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeMaxWidthTypeHeadingMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeMaxWidthTypeHeadingSmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeMaxWidthTypeBodyLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeMaxWidthTypeBodyMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeMaxWidthTypeBodySmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    // MARK: - Semantic token - Sizing - Max width typography - Pure semantic

    override open var sizeMaxWidthTypeDisplayLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeMaxWidthTypeDisplayLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeMaxWidthTypeDisplayMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeMaxWidthTypeDisplayMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeMaxWidthTypeDisplaySmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeMaxWidthTypeDisplaySmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeMaxWidthTypeHeadingXlargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeMaxWidthTypeHeadingXlargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeMaxWidthTypeHeadingLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeMaxWidthTypeHeadingLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeMaxWidthTypeHeadingMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeMaxWidthTypeHeadingMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeMaxWidthTypeHeadingSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeMaxWidthTypeHeadingSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeMaxWidthTypeBodyLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeMaxWidthTypeBodyLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeMaxWidthTypeBodyMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeMaxWidthTypeBodyMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeMaxWidthTypeBodySmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeMaxWidthTypeBodySmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }
}

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

extension MockTheme {

    static let mockThemeSizeRawToken: DimensionRawToken = 118_000
    static let mockThemeSizeCompositeToken = MultipleSizeSemanticTokens(compact: 1, regular: 151)

    // MARK: - Semantic token - Sizing - Icon with typography - Multiples

    override open var sizeIconWithHeadingXlargeSizeShort: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingXlargeSizeMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingXlargeSizeTall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithHeadingLargeSizeShort: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingLargeSizeMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingLargeSizeTall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithHeadingMediumSizeShort: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingMediumSizeMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingMediumSizeTall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithHeadingSmallSizeShort: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingSmallSizeMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingSmallSizeTall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithBodyLargeSizeShort: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodyLargeSizeMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodyLargeSizeTall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithBodyMediumSizeShort: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodyMediumSizeMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodyMediumSizeTall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithBodySmallSizeShort: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodySmallSizeMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodySmallSizeTall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    // MARK: - Semantic token - Sizing - Icon with typography - Pure semantic

    override open var sizeIconWithHeadingXlargeSizeShortMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingXlargeSizeShortTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingXlargeSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingXlargeSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingXlargeSizeTallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingXlargeSizeTallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingLargeSizeShortMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingLargeSizeShortTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingLargeSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingLargeSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingLargeSizeTallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingLargeSizeTallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingMediumSizeShortMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingMediumSizeShortTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingMediumSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingMediumSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingMediumSizeTallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingMediumSizeTallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingSmallSizeShortMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingSmallSizeShortTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingSmallSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingSmallSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingSmallSizeTallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingSmallSizeTallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodyLargeSizeShortMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodyLargeSizeShortTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodyLargeSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodyLargeSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodyLargeSizeTallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodyLargeSizeTallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodyMediumSizeShortMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodyMediumSizeShortTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodyMediumSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodyMediumSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodyMediumSizeTallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodyMediumSizeTallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodySmallSizeShortMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodySmallSizeShortTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodySmallSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodySmallSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodySmallSizeTallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodySmallSizeTallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithLabelXlargeSizeShort: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelXlargeSizeMedium: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelXlargeSizeTall: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithLabelLargeSizeShorter: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelLargeSizeShort: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelLargeSizeMedium: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelLargeSizeTall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelLargeSizeTaller: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithLabelMediumSizeShort: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelMediumSizeMedium: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelMediumSizeTall: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithLabelSmallSizeShort: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelSmallSizeMedium: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelSmallSizeTall: SizeSemanticToken { Self.mockThemeSizeRawToken }

    // MARK: - Semantic token - Sizing - Icon decorative

    override open var sizeIconDecorativeShortest: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconDecorativeShorter: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconDecorativeShort: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconDecorativeMedium: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconDecorativeTall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconDecorativeTaller: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconDecorativeTallest: SizeSemanticToken { Self.mockThemeSizeRawToken }

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

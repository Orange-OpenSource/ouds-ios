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

    override open var sizeIconWithHeadingXLargeShort: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingXLargeMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingXLargeTall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithHeadingLargeShort: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingLargeMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingLargeTall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithHeadingMediumShort: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingMediumMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingMediumTall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithHeadingSmallShort: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingSmallMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingSmallTall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithBodyLargeShort: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodyLargeMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodyLargeTall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithBodyMediumShort: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodyMediumMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodyMediumTall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithBodySmallShort: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodySmallMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodySmallTall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    // MARK: - Semantic token - Sizing - Icon with typography - Pure semantic

    override open var sizeIconWithHeadingXLargeShortMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingXLargeShortTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingXLargeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingXLargeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingXLargeTallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingXLargeTallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingLargeShortMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingLargeShortTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingLargeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingLargeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingLargeTallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingLargeTallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingMediumShortMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingMediumShortTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingMediumMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingMediumMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingMediumTallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingMediumTallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingSmallShortMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingSmallShortTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingSmallMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingSmallMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithHeadingSmallTallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithHeadingSmallTallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodyLargeShortMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodyLargeShortTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodyLargeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodyLargeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodyLargeTallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodyLargeTallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodyMediumShortMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodyMediumShortTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodyMediumMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodyMediumMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodyMediumTallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodyMediumTallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodySmallShortMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodySmallShortTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodySmallMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodySmallMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithBodySmallTallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithBodySmallTallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithLabelXLargeSizeShort: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelXLargeSizeMedium: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelXLargeSizeTall: SizeSemanticToken { Self.mockThemeSizeRawToken }

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

    override open var sizeMaxWidthTypeHeadingXLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
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

    override open var sizeMaxWidthTypeHeadingXLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeMaxWidthTypeHeadingXLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

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

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
    static let mockThemeSizeCompositeToken = MultipleSizeTokens(compact: 1, regular: 151)

    // MARK: - Semantic token - Sizing - Icon with typography - Multiples

    override open var sizeIconWithHeadingXLargeShort: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingXLargeMedium: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingXLargeTall: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithHeadingLargeShort: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingLargeMedium: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingLargeTall: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithHeadingMediumShort: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingMediumMedium: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingMediumTall: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithHeadingSmallShort: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingSmallMedium: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingSmallTall: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithBodyLargeShort: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodyLargeMedium: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodyLargeTall: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithBodyMediumShort: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodyMediumMedium: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodyMediumTall: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithBodySmallShort: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodySmallMedium: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodySmallTall: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }

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

    override open var sizeMaxWidthTypeDisplayLarge: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeMaxWidthTypeDisplayMedium: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeMaxWidthTypeDisplaySmall: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeMaxWidthTypeHeadingXLarge: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeMaxWidthTypeHeadingLarge: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeMaxWidthTypeHeadingMedium: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeMaxWidthTypeHeadingSmall: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeMaxWidthTypeBodyLarge: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeMaxWidthTypeBodyMedium: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeMaxWidthTypeBodySmall: MultipleSizeTokens { Self.mockThemeSizeCompositeToken }

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

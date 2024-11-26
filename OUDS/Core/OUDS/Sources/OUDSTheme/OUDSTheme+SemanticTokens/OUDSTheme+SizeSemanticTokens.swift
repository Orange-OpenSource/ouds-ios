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

import Foundation
import OUDSTokensRaw
import OUDSTokensSemantic

// swiftlint:disable identifier_name

extension OUDSTheme: SizeSemanticTokens {
    @objc open var sizeIconDecorativeMedium: SizeSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var sizeIconDecorativeShort: SizeSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var sizeIconDecorativeShorter: SizeSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var sizeIconDecorativeShortest: SizeSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var sizeIconDecorativeTall: SizeSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var sizeIconDecorativeTaller: SizeSemanticToken { DimensionRawTokens.dimension700 }
    @objc open var sizeIconDecorativeTallest: SizeSemanticToken { DimensionRawTokens.dimension900 }
    @objc open var sizeIconWithBodyLargeSizeMediumMobile: SizeSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var sizeIconWithBodyLargeSizeMediumTablet: SizeSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var sizeIconWithBodyLargeSizeShortMobile: SizeSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var sizeIconWithBodyLargeSizeShortTablet: SizeSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var sizeIconWithBodyLargeSizeTallMobile: SizeSemanticToken { DimensionRawTokens.dimension350 }
    @objc open var sizeIconWithBodyLargeSizeTallTablet: SizeSemanticToken { DimensionRawTokens.dimension350 }
    @objc open var sizeIconWithBodyMediumSizeMediumMobile: SizeSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var sizeIconWithBodyMediumSizeMediumTablet: SizeSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var sizeIconWithBodyMediumSizeShortMobile: SizeSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var sizeIconWithBodyMediumSizeShortTablet: SizeSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var sizeIconWithBodyMediumSizeTallMobile: SizeSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var sizeIconWithBodyMediumSizeTallTablet: SizeSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var sizeIconWithBodySmallSizeMediumMobile: SizeSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var sizeIconWithBodySmallSizeMediumTablet: SizeSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var sizeIconWithBodySmallSizeShortMobile: SizeSemanticToken { DimensionRawTokens.dimension150 }
    @objc open var sizeIconWithBodySmallSizeShortTablet: SizeSemanticToken { DimensionRawTokens.dimension150 }
    @objc open var sizeIconWithBodySmallSizeTallMobile: SizeSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var sizeIconWithBodySmallSizeTallTablet: SizeSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var sizeIconWithHeadingLargeSizeMediumMobile: SizeSemanticToken { DimensionRawTokens.dimension550 }
    @objc open var sizeIconWithHeadingLargeSizeMediumTablet: SizeSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var sizeIconWithHeadingLargeSizeShortMobile: SizeSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var sizeIconWithHeadingLargeSizeShortTablet: SizeSemanticToken { DimensionRawTokens.dimension550 }
    @objc open var sizeIconWithHeadingLargeSizeTallMobile: SizeSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var sizeIconWithHeadingLargeSizeTallTablet: SizeSemanticToken { DimensionRawTokens.dimension650 }
    @objc open var sizeIconWithHeadingMediumSizeMediumMobile: SizeSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var sizeIconWithHeadingMediumSizeMediumTablet: SizeSemanticToken { DimensionRawTokens.dimension550 }
    @objc open var sizeIconWithHeadingMediumSizeShortMobile: SizeSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var sizeIconWithHeadingMediumSizeShortTablet: SizeSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var sizeIconWithHeadingMediumSizeTallMobile: SizeSemanticToken { DimensionRawTokens.dimension550 }
    @objc open var sizeIconWithHeadingMediumSizeTallTablet: SizeSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var sizeIconWithHeadingSmallSizeMediumMobile: SizeSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var sizeIconWithHeadingSmallSizeMediumTablet: SizeSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var sizeIconWithHeadingSmallSizeShortMobile: SizeSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var sizeIconWithHeadingSmallSizeShortTablet: SizeSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var sizeIconWithHeadingSmallSizeTallMobile: SizeSemanticToken { DimensionRawTokens.dimension550 }
    @objc open var sizeIconWithHeadingSmallSizeTallTablet: SizeSemanticToken { DimensionRawTokens.dimension550 }
    @objc open var sizeIconWithHeadingXlargeSizeMediumMobile: SizeSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var sizeIconWithHeadingXlargeSizeMediumTablet: SizeSemanticToken { DimensionRawTokens.dimension700 }
    @objc open var sizeIconWithHeadingXlargeSizeShortMobile: SizeSemanticToken { DimensionRawTokens.dimension550 }
    @objc open var sizeIconWithHeadingXlargeSizeShortTablet: SizeSemanticToken { DimensionRawTokens.dimension650 }
    @objc open var sizeIconWithHeadingXlargeSizeTallMobile: SizeSemanticToken { DimensionRawTokens.dimension650 }
    @objc open var sizeIconWithHeadingXlargeSizeTallTablet: SizeSemanticToken { DimensionRawTokens.dimension800 }
    @objc open var sizeIconWithLabelLargeSizeMedium: SizeSemanticToken { DimensionSemanticTokens.dimension350 }
    @objc open var sizeIconWithLabelLargeSizeShort: SizeSemanticToken { DimensionSemanticTokens.dimension300 }
    @objc open var sizeIconWithLabelLargeSizeShorter: SizeSemanticToken { DimensionSemanticTokens.dimension250 }
    @objc open var sizeIconWithLabelLargeSizeTall: SizeSemanticToken { DimensionSemanticTokens.dimension400 }
    @objc open var sizeIconWithLabelLargeSizeTaller: SizeSemanticToken { DimensionSemanticTokens.dimension550 }
    @objc open var sizeIconWithLabelMediumSizeMedium: SizeSemanticToken { DimensionSemanticTokens.dimension250 }
    @objc open var sizeIconWithLabelMediumSizeShort: SizeSemanticToken { DimensionSemanticTokens.dimension200 }
    @objc open var sizeIconWithLabelMediumSizeTall: SizeSemanticToken { DimensionSemanticTokens.dimension300 }
    @objc open var sizeIconWithLabelSmallSizeMedium: SizeSemanticToken { DimensionSemanticTokens.dimension200 }
    @objc open var sizeIconWithLabelSmallSizeShort: SizeSemanticToken { DimensionSemanticTokens.dimension150 }
    @objc open var sizeIconWithLabelSmallSizeTall: SizeSemanticToken { DimensionSemanticTokens.dimension250 }
    @objc open var sizeIconWithLabelXlargeSizeMedium: SizeSemanticToken { DimensionSemanticTokens.dimension500 }
    @objc open var sizeIconWithLabelXlargeSizeShort: SizeSemanticToken { DimensionSemanticTokens.dimension400 }
    @objc open var sizeIconWithLabelXlargeSizeTall: SizeSemanticToken { DimensionSemanticTokens.dimension550 }
    @objc open var sizeMaxWidthTypeBodyLargeMobile: SizeSemanticToken { DimensionRawTokens.dimension6000 }
    @objc open var sizeMaxWidthTypeBodyLargeTablet: SizeSemanticToken { DimensionRawTokens.dimension6000 }
    @objc open var sizeMaxWidthTypeBodyMediumMobile: SizeSemanticToken { DimensionRawTokens.dimension6000 }
    @objc open var sizeMaxWidthTypeBodyMediumTablet: SizeSemanticToken { DimensionRawTokens.dimension6000 }
    @objc open var sizeMaxWidthTypeBodySmallMobile: SizeSemanticToken { DimensionRawTokens.dimension6000 }
    @objc open var sizeMaxWidthTypeBodySmallTablet: SizeSemanticToken { DimensionRawTokens.dimension6000 }
    @objc open var sizeMaxWidthTypeDisplayLargeMobile: SizeSemanticToken { DimensionRawTokens.dimension9000 }
    @objc open var sizeMaxWidthTypeDisplayLargeTablet: SizeSemanticToken { DimensionRawTokens.dimension9000 }
    @objc open var sizeMaxWidthTypeDisplayMediumMobile: SizeSemanticToken { DimensionRawTokens.dimension9000 }
    @objc open var sizeMaxWidthTypeDisplayMediumTablet: SizeSemanticToken { DimensionRawTokens.dimension9000 }
    @objc open var sizeMaxWidthTypeDisplaySmallMobile: SizeSemanticToken { DimensionRawTokens.dimension9000 }
    @objc open var sizeMaxWidthTypeDisplaySmallTablet: SizeSemanticToken { DimensionRawTokens.dimension9000 }
    @objc open var sizeMaxWidthTypeHeadingLargeMobile: SizeSemanticToken { DimensionRawTokens.dimension9000 }
    @objc open var sizeMaxWidthTypeHeadingLargeTablet: SizeSemanticToken { DimensionRawTokens.dimension9000 }
    @objc open var sizeMaxWidthTypeHeadingMediumMobile: SizeSemanticToken { DimensionRawTokens.dimension9000 }
    @objc open var sizeMaxWidthTypeHeadingMediumTablet: SizeSemanticToken { DimensionRawTokens.dimension9000 }
    @objc open var sizeMaxWidthTypeHeadingSmallMobile: SizeSemanticToken { DimensionRawTokens.dimension6000 }
    @objc open var sizeMaxWidthTypeHeadingSmallTablet: SizeSemanticToken { DimensionRawTokens.dimension6000 }
    @objc open var sizeMaxWidthTypeHeadingXlargeMobile: SizeSemanticToken { DimensionRawTokens.dimension9000 }
    @objc open var sizeMaxWidthTypeHeadingXlargeTablet: SizeSemanticToken { DimensionRawTokens.dimension9000 }
}

// swiftlint:enable identifier_name

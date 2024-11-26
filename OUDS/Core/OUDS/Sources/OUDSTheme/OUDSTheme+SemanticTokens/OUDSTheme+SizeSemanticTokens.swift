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

// ଘ( ･ω･)_/ﾟ･:*:･｡☆
// [File to generate by the tokenator]
// WARNING: Not synchronized anymore with the Figjam / Figma by developers team
// Create an issue for update https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=token_update.yml

/// Defines basic values common to all themes for `SizeSemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension OUDSTheme: SizeSemanticTokens {

    // MARK: - Semantic token - Sizing - Icon with typography

    @objc open var sizeIconWithHeadingXLargeShortMobile: SizeSemanticToken { DimensionRawTokens.dimension550 }
    @objc open var sizeIconWithHeadingXLargeShortTablet: SizeSemanticToken { DimensionRawTokens.dimension650 }

    @objc open var sizeIconWithHeadingXLargeMediumMobile: SizeSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var sizeIconWithHeadingXLargeMediumTablet: SizeSemanticToken { DimensionRawTokens.dimension700 }

    @objc open var sizeIconWithHeadingXLargeTallMobile: SizeSemanticToken { DimensionRawTokens.dimension650 }
    @objc open var sizeIconWithHeadingXLargeTallTablet: SizeSemanticToken { DimensionRawTokens.dimension800 }

    @objc open var sizeIconWithHeadingLargeShortMobile: SizeSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var sizeIconWithHeadingLargeShortTablet: SizeSemanticToken { DimensionRawTokens.dimension550 }

    @objc open var sizeIconWithHeadingLargeMediumMobile: SizeSemanticToken { DimensionRawTokens.dimension550 }
    @objc open var sizeIconWithHeadingLargeMediumTablet: SizeSemanticToken { DimensionRawTokens.dimension600 }

    @objc open var sizeIconWithHeadingLargeTallMobile: SizeSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var sizeIconWithHeadingLargeTallTablet: SizeSemanticToken { DimensionRawTokens.dimension650 }

    @objc open var sizeIconWithHeadingMediumShortMobile: SizeSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var sizeIconWithHeadingMediumShortTablet: SizeSemanticToken { DimensionRawTokens.dimension500 }

    @objc open var sizeIconWithHeadingMediumMediumMobile: SizeSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var sizeIconWithHeadingMediumMediumTablet: SizeSemanticToken { DimensionRawTokens.dimension550 }

    @objc open var sizeIconWithHeadingMediumTallMobile: SizeSemanticToken { DimensionRawTokens.dimension550 }
    @objc open var sizeIconWithHeadingMediumTallTablet: SizeSemanticToken { DimensionRawTokens.dimension600 }

    @objc open var sizeIconWithHeadingSmallShortMobile: SizeSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var sizeIconWithHeadingSmallShortTablet: SizeSemanticToken { DimensionRawTokens.dimension400 }

    @objc open var sizeIconWithHeadingSmallMediumMobile: SizeSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var sizeIconWithHeadingSmallMediumTablet: SizeSemanticToken { DimensionRawTokens.dimension500 }

    @objc open var sizeIconWithHeadingSmallTallMobile: SizeSemanticToken { DimensionRawTokens.dimension550 }
    @objc open var sizeIconWithHeadingSmallTallTablet: SizeSemanticToken { DimensionRawTokens.dimension550 }

    @objc open var sizeIconWithBodyLargeShortMobile: SizeSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var sizeIconWithBodyLargeShortTablet: SizeSemanticToken { DimensionRawTokens.dimension250 }

    @objc open var sizeIconWithBodyLargeMediumMobile: SizeSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var sizeIconWithBodyLargeMediumTablet: SizeSemanticToken { DimensionRawTokens.dimension300 }

    @objc open var sizeIconWithBodyLargeTallMobile: SizeSemanticToken { DimensionRawTokens.dimension350 }
    @objc open var sizeIconWithBodyLargeTallTablet: SizeSemanticToken { DimensionRawTokens.dimension350 }

    @objc open var sizeIconWithBodyMediumShortMobile: SizeSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var sizeIconWithBodyMediumShortTablet: SizeSemanticToken { DimensionRawTokens.dimension200 }

    @objc open var sizeIconWithBodyMediumMediumMobile: SizeSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var sizeIconWithBodyMediumMediumTablet: SizeSemanticToken { DimensionRawTokens.dimension250 }

    @objc open var sizeIconWithBodyMediumTallMobile: SizeSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var sizeIconWithBodyMediumTallTablet: SizeSemanticToken { DimensionRawTokens.dimension300 }

    @objc open var sizeIconWithBodySmallShortMobile: SizeSemanticToken { DimensionRawTokens.dimension150 }
    @objc open var sizeIconWithBodySmallShortTablet: SizeSemanticToken { DimensionRawTokens.dimension150 }

    @objc open var sizeIconWithBodySmallMediumMobile: SizeSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var sizeIconWithBodySmallMediumTablet: SizeSemanticToken { DimensionRawTokens.dimension200 }

    @objc open var sizeIconWithBodySmallTallMobile: SizeSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var sizeIconWithBodySmallTallTablet: SizeSemanticToken { DimensionRawTokens.dimension250 }

    // MARK: - Semantic token - Sizing - Max width typography

    @objc open var sizeMaxWidthTypeDisplaySmallMobile: SizeSemanticToken { DimensionRawTokens.dimension9000 }
    @objc open var sizeMaxWidthTypeDisplaySmallTablet: SizeSemanticToken { DimensionRawTokens.dimension9000 }

    @objc open var sizeMaxWidthTypeDisplayMediumMobile: SizeSemanticToken { DimensionRawTokens.dimension9000 }
    @objc open var sizeMaxWidthTypeDisplayMediumTablet: SizeSemanticToken { DimensionRawTokens.dimension9000 }

    @objc open var sizeMaxWidthTypeDisplayLargeMobile: SizeSemanticToken { DimensionRawTokens.dimension9000 }
    @objc open var sizeMaxWidthTypeDisplayLargeTablet: SizeSemanticToken { DimensionRawTokens.dimension9000 }

    @objc open var sizeMaxWidthTypeHeadingXLargeMobile: SizeSemanticToken { DimensionRawTokens.dimension9000 }
    @objc open var sizeMaxWidthTypeHeadingXLargeTablet: SizeSemanticToken { DimensionRawTokens.dimension9000 }

    @objc open var sizeMaxWidthTypeHeadingLargeMobile: SizeSemanticToken { DimensionRawTokens.dimension9000 }
    @objc open var sizeMaxWidthTypeHeadingLargeTablet: SizeSemanticToken { DimensionRawTokens.dimension9000 }

    @objc open var sizeMaxWidthTypeHeadingMediumMobile: SizeSemanticToken { DimensionRawTokens.dimension9000 }
    @objc open var sizeMaxWidthTypeHeadingMediumTablet: SizeSemanticToken { DimensionRawTokens.dimension9000 }

    @objc open var sizeMaxWidthTypeHeadingSmallMobile: SizeSemanticToken { DimensionRawTokens.dimension6000 }
    @objc open var sizeMaxWidthTypeHeadingSmallTablet: SizeSemanticToken { DimensionRawTokens.dimension6000 }

    @objc open var sizeMaxWidthTypeBodySmallMobile: SizeSemanticToken { DimensionRawTokens.dimension6000 }
    @objc open var sizeMaxWidthTypeBodySmallTablet: SizeSemanticToken { DimensionRawTokens.dimension6000 }

    @objc open var sizeMaxWidthTypeBodyMediumMobile: SizeSemanticToken { DimensionRawTokens.dimension6000 }
    @objc open var sizeMaxWidthTypeBodyMediumTablet: SizeSemanticToken { DimensionRawTokens.dimension6000 }

    @objc open var sizeMaxWidthTypeBodyLargeMobile: SizeSemanticToken { DimensionRawTokens.dimension6000 }
    @objc open var sizeMaxWidthTypeBodyLargeTablet: SizeSemanticToken { DimensionRawTokens.dimension6000 }

    // MARK: - Semantic token - Sizing - Icon with typography

    @objc open var sizeIconWithLabelXLargeSizeShort: SizeSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var sizeIconWithLabelXLargeSizeMedium: SizeSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var sizeIconWithLabelXLargeSizeTall: SizeSemanticToken { DimensionRawTokens.dimension550 }

    @objc open var sizeIconWithLabelLargeSizeShorter: SizeSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var sizeIconWithLabelLargeSizeShort: SizeSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var sizeIconWithLabelLargeSizeMedium: SizeSemanticToken { DimensionRawTokens.dimension350 }
    @objc open var sizeIconWithLabelLargeSizeTall: SizeSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var sizeIconWithLabelLargeSizeTaller: SizeSemanticToken { DimensionRawTokens.dimension550 }

    @objc open var sizeIconWithLabelMediumSizeShort: SizeSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var sizeIconWithLabelMediumSizeMedium: SizeSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var sizeIconWithLabelMediumSizeTall: SizeSemanticToken { DimensionRawTokens.dimension300 }

    @objc open var sizeIconWithLabelSmallSizeShort: SizeSemanticToken { DimensionRawTokens.dimension150 }
    @objc open var sizeIconWithLabelSmallSizeMedium: SizeSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var sizeIconWithLabelSmallSizeTall: SizeSemanticToken { DimensionRawTokens.dimension250 }

    // MARK: - Semantic token - Sizing - Icon decorative

    @objc open var sizeIconDecorativeShortest: SizeSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var sizeIconDecorativeShorter: SizeSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var sizeIconDecorativeShort: SizeSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var sizeIconDecorativeMedium: SizeSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var sizeIconDecorativeTall: SizeSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var sizeIconDecorativeTaller: SizeSemanticToken { DimensionRawTokens.dimension700 }
    @objc open var sizeIconDecorativeTallest: SizeSemanticToken { DimensionRawTokens.dimension900 }
}

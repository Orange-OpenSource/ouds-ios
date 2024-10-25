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
// [File to generate with the tokenator]

/// Defines basic values common to all themes for `SizeSemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension OUDSTheme: SizeSemanticTokens {

    // MARK: - Semantic token - Sizing - Icon with typography

    @objc open var sizeIconWithHeadingXLargeShort: MultipleSizeTokens { MultipleSizeTokens(compact: DimensionRawTokens.dimension550, regular: DimensionRawTokens.dimension650) }
    @objc open var sizeIconWithHeadingXLargeMedium: MultipleSizeTokens { MultipleSizeTokens(compact: DimensionRawTokens.dimension600, regular: DimensionRawTokens.dimension700) }
    @objc open var sizeIconWithHeadingXLargeTall: MultipleSizeTokens { MultipleSizeTokens(compact: DimensionRawTokens.dimension650, regular: DimensionRawTokens.dimension800) }

    @objc open var sizeIconWithHeadingLargeShort: MultipleSizeTokens { MultipleSizeTokens(compact: DimensionRawTokens.dimension500, regular: DimensionRawTokens.dimension550) }
    @objc open var sizeIconWithHeadingLargeMedium: MultipleSizeTokens { MultipleSizeTokens(compact: DimensionRawTokens.dimension550, regular: DimensionRawTokens.dimension600) }
    @objc open var sizeIconWithHeadingLargeTall: MultipleSizeTokens { MultipleSizeTokens(compact: DimensionRawTokens.dimension600, regular: DimensionRawTokens.dimension650) }

    @objc open var sizeIconWithHeadingMediumShort: MultipleSizeTokens { MultipleSizeTokens(compact: DimensionRawTokens.dimension400, regular: DimensionRawTokens.dimension500) }
    @objc open var sizeIconWithHeadingMediumMedium: MultipleSizeTokens { MultipleSizeTokens(compact: DimensionRawTokens.dimension500, regular: DimensionRawTokens.dimension550) }
    @objc open var sizeIconWithHeadingMediumTall: MultipleSizeTokens { MultipleSizeTokens(compact: DimensionRawTokens.dimension550, regular: DimensionRawTokens.dimension600) }

    @objc open var sizeIconWithHeadingSmallShort: MultipleSizeTokens { MultipleSizeTokens(DimensionRawTokens.dimension400) }
    @objc open var sizeIconWithHeadingSmallMedium: MultipleSizeTokens { MultipleSizeTokens(DimensionRawTokens.dimension500) }
    @objc open var sizeIconWithHeadingSmallTall: MultipleSizeTokens { MultipleSizeTokens(DimensionRawTokens.dimension550) }

    @objc open var sizeIconWithBodyLargeShort: MultipleSizeTokens { MultipleSizeTokens(DimensionRawTokens.dimension250) }
    @objc open var sizeIconWithBodyLargeMedium: MultipleSizeTokens { MultipleSizeTokens(DimensionRawTokens.dimension300) }
    @objc open var sizeIconWithBodyLargeTall: MultipleSizeTokens { MultipleSizeTokens(DimensionRawTokens.dimension350) }

    @objc open var sizeIconWithBodyMediumShort: MultipleSizeTokens { MultipleSizeTokens(DimensionRawTokens.dimension200) }
    @objc open var sizeIconWithBodyMediumMedium: MultipleSizeTokens { MultipleSizeTokens(DimensionRawTokens.dimension250) }
    @objc open var sizeIconWithBodyMediumTall: MultipleSizeTokens { MultipleSizeTokens(DimensionRawTokens.dimension300) }

    @objc open var sizeIconWithBodySmallShort: MultipleSizeTokens { MultipleSizeTokens(DimensionRawTokens.dimension150) }
    @objc open var sizeIconWithBodySmallMedium: MultipleSizeTokens { MultipleSizeTokens(DimensionRawTokens.dimension200) }
    @objc open var sizeIconWithBodySmallTall: MultipleSizeTokens { MultipleSizeTokens(DimensionRawTokens.dimension250) }

    @objc open var sizeIconWithLabelXLargeSizeShort: SizeSemanticToken { dimensionXS }
    @objc open var sizeIconWithLabelXLargeSizeMedium: SizeSemanticToken { dimensionMD }
    @objc open var sizeIconWithLabelXLargeSizeTall: SizeSemanticToken { dimensionLG }

    @objc open var sizeIconWithLabelLargeSizeShorter: SizeSemanticToken { dimension4XS }
    @objc open var sizeIconWithLabelLargeSizeShort: SizeSemanticToken { dimension3XS }
    @objc open var sizeIconWithLabelLargeSizeMedium: SizeSemanticToken { dimension2XS }
    @objc open var sizeIconWithLabelLargeSizeTall: SizeSemanticToken { dimensionXS }
    @objc open var sizeIconWithLabelLargeSizeTaller: SizeSemanticToken { dimensionLG }

    @objc open var sizeIconWithLabelMediumSizeShort: SizeSemanticToken { dimension5XS }
    @objc open var sizeIconWithLabelMediumSizeMedium: SizeSemanticToken { dimension4XS }
    @objc open var sizeIconWithLabelMediumSizeTall: SizeSemanticToken { dimension3XS }

    @objc open var sizeIconWithLabelSmallSizeShort: SizeSemanticToken { dimension6XS }
    @objc open var sizeIconWithLabelSmallSizeMedium: SizeSemanticToken { dimension5XS }
    @objc open var sizeIconWithLabelSmallSizeTall: SizeSemanticToken { dimension4XS }

    // MARK: - Semantic token - Sizing - Icon decorative

    @objc open var sizeIconDecorativeShortest: SizeSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var sizeIconDecorativeShorter: SizeSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var sizeIconDecorativeShort: SizeSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var sizeIconDecorativeMedium: SizeSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var sizeIconDecorativeTall: SizeSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var sizeIconDecorativeTaller: SizeSemanticToken { DimensionRawTokens.dimension700 }
    @objc open var sizeIconDecorativeTallest: SizeSemanticToken { DimensionRawTokens.dimension900 }

    // MARK: - Semantic token - Sizing - Max width typography

    @objc open var sizeMaxWidthTypeDisplaySmall: MultipleSizeTokens { MultipleSizeTokens(DimensionRawTokens.dimension9000) }
    @objc open var sizeMaxWidthTypeDisplayMedium: MultipleSizeTokens { MultipleSizeTokens(DimensionRawTokens.dimension9000) }
    @objc open var sizeMaxWidthTypeDisplayLarge: MultipleSizeTokens { MultipleSizeTokens(DimensionRawTokens.dimension9000) }

    @objc open var sizeMaxWidthTypeHeadingXLarge: MultipleSizeTokens { MultipleSizeTokens(DimensionRawTokens.dimension9000) }
    @objc open var sizeMaxWidthTypeHeadingLarge: MultipleSizeTokens { MultipleSizeTokens(DimensionRawTokens.dimension9000) }
    @objc open var sizeMaxWidthTypeHeadingMedium: MultipleSizeTokens { MultipleSizeTokens(DimensionRawTokens.dimension9000) }
    @objc open var sizeMaxWidthTypeHeadingSmall: MultipleSizeTokens { MultipleSizeTokens(DimensionRawTokens.dimension6000) }

    @objc open var sizeMaxWidthTypeBodySmall: MultipleSizeTokens { MultipleSizeTokens(DimensionRawTokens.dimension6000) }
    @objc open var sizeMaxWidthTypeBodyMedium: MultipleSizeTokens { MultipleSizeTokens(DimensionRawTokens.dimension6000) }
    @objc open var sizeMaxWidthTypeBodyLarge: MultipleSizeTokens { MultipleSizeTokens(DimensionRawTokens.dimension6000) }
}

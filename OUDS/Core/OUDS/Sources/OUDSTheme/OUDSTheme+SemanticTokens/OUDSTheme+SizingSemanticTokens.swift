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

// swiftlint:disable line_length

/// Defines basic values common to all themes for `SizingSemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension OUDSTheme: SizingSemanticTokens {

    // MARK: - Semantic token - Sizing - Icon decorative

    @objc open var sizeIconDecorativeShortest: SizingSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var sizeIconDecorativeShorter: SizingSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var sizeIconDecorativeShort: SizingSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var sizeIconDecorativeMedium: SizingSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var sizeIconDecorativeTall: SizingSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var sizeIconDecorativeTaller: SizingSemanticToken { DimensionRawTokens.dimension700 }
    @objc open var sizeIconDecorativeTallest: SizingSemanticToken { DimensionRawTokens.dimension900 }

    // MARK: - Semantic token - Sizing - Icon with typography

    @objc open var sizeIconWithHeadingSmallShort: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension400, regular: DimensionRawTokens.dimension400) }
    @objc open var sizeIconWithHeadingSmallMedium: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension500, regular: DimensionRawTokens.dimension500) }
    @objc open var sizeIconWithHeadingSmallTall: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension550, regular: DimensionRawTokens.dimension550) }

    @objc open var sizeIconWithHeadingMediumShort: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension400, regular: DimensionRawTokens.dimension500) }
    @objc open var sizeIconWithHeadingMediumMedium: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension500, regular: DimensionRawTokens.dimension550) }
    @objc open var sizeIconWithHeadingMediumTall: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension550, regular: DimensionRawTokens.dimension600) }

    @objc open var sizeIconWithHeadingLargeShort: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension500, regular: DimensionRawTokens.dimension550) }
    @objc open var sizeIconWithHeadingLargeMedium: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension550, regular: DimensionRawTokens.dimension600) }
    @objc open var sizeIconWithHeadingLargeTall: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension600, regular: DimensionRawTokens.dimension650) }

    @objc open var sizeIconWithHeadingXLargeShort: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension550, regular: DimensionRawTokens.dimension650) }
    @objc open var sizeIconWithHeadingXLargeMedium: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension600, regular: DimensionRawTokens.dimension700) }
    @objc open var sizeIconWithHeadingXLargeTall: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension550, regular: DimensionRawTokens.dimension650) }

    @objc open var sizeIconWithBodySmallShort: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension150, regular: DimensionRawTokens.dimension150 ) }
    @objc open var sizeIconWithBodySmallMedium: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension200, regular: DimensionRawTokens.dimension200 ) }
    @objc open var sizeIconWithBodySmallTall: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension250, regular: DimensionRawTokens.dimension250 ) }

    @objc open var sizeIconWithBodyMediumShort: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension200, regular: DimensionRawTokens.dimension200 ) }
    @objc open var sizeIconWithBodyMediumMedium: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension250, regular: DimensionRawTokens.dimension250 ) }
    @objc open var sizeIconWithBodyMediumTall: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension300, regular: DimensionRawTokens.dimension300 ) }

    @objc open var sizeIconWithBodyLargeShort: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension250, regular: DimensionRawTokens.dimension250 ) }
    @objc open var sizeIconWithBodyLargeMedium: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension300, regular: DimensionRawTokens.dimension300 ) }
    @objc open var sizeIconWithBodyLargeTall: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension350, regular: DimensionRawTokens.dimension350 ) }

    @objc open var sizeIconWithLabelSmallSizeShort: SizingSemanticToken { dimension6XS }
    @objc open var sizeIconWithLabelSmallSizeMedium: SizingSemanticToken { dimension5XS }
    @objc open var sizeIconWithLabelSmallSizeTall: SizingSemanticToken { dimension4XS }

    @objc open var sizeIconWithLabelMediumSizeShort: SizingSemanticToken { dimension5XS }
    @objc open var sizeIconWithLabelMediumSizeMedium: SizingSemanticToken { dimension4XS }
    @objc open var sizeIconWithLabelMediumSizeTall: SizingSemanticToken { dimension3XS }

    @objc open var sizeIconWithLabelLargeSizeShorter: SizingSemanticToken { dimension4XS }
    @objc open var sizeIconWithLabelLargeSizeShort: SizingSemanticToken { dimension3XS }
    @objc open var sizeIconWithLabelLargeSizeMedium: SizingSemanticToken { dimension2XS }
    @objc open var sizeIconWithLabelLargeSizeTall: SizingSemanticToken { dimensionXS }
    @objc open var sizeIconWithLabelLargeSizeTaller: SizingSemanticToken { dimensionLG }

    @objc open var sizeIconWithLabelXLargeSizeShort: SizingSemanticToken { dimensionXS }
    @objc open var sizeIconWithLabelXLargeSizeMedium: SizingSemanticToken { dimensionMD }
    @objc open var sizeIconWithLabelXLargeSizeTall: SizingSemanticToken { dimensionLG }

    // MARK: - Semantic token - Sizing - Max width typography

    @objc open var sizeMaxWidthTypeDisplaySmall: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension9000, regular: DimensionRawTokens.dimension9000 ) }
    @objc open var sizeMaxWidthTypeDisplayMedium: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension9000, regular: DimensionRawTokens.dimension9000 ) }
    @objc open var sizeMaxWidthTypeDisplayLarge: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension9000, regular: DimensionRawTokens.dimension9000 ) }

    @objc open var sizeMaxWidthTypeHeadingSmall: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension6000, regular: DimensionRawTokens.dimension6000 ) }
    @objc open var sizeMaxWidthTypeHeadingMedium: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension9000, regular: DimensionRawTokens.dimension9000 ) }
    @objc open var sizeMaxWidthTypeHeadingLarge: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension9000, regular: DimensionRawTokens.dimension9000 ) }
    @objc open var sizeMaxWidthTypeHeadingXLarge: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension9000, regular: DimensionRawTokens.dimension9000 ) }

    @objc open var sizeMaxWidthTypeBodySmall: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension6000, regular: DimensionRawTokens.dimension6000 ) }
    @objc open var sizeMaxWidthTypeBodyMedium: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension6000, regular: DimensionRawTokens.dimension6000 ) }
    @objc open var sizeMaxWidthTypeBodyLarge: MultipleSizingTokens { MultipleSizingTokens(compact: DimensionRawTokens.dimension6000, regular: DimensionRawTokens.dimension6000 ) }
}

// swiftlint:enable line_length

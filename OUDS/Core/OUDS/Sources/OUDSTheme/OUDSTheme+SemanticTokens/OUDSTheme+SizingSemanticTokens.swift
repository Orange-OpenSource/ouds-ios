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

    @objc open var sizeIconWithTypeHeadingSmallShort: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension400, regular: DimensionRawTokens.dimension400) }
    @objc open var sizeIconWithTypeHeadingSmallMedium: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension500, regular: DimensionRawTokens.dimension500) }
    @objc open var sizeIconWithTypeHeadingSmallTall: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension550, regular: DimensionRawTokens.dimension550) }

    @objc open var sizeIconWithTypeHeadingMediumShort: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension400, regular: DimensionRawTokens.dimension500) }
    @objc open var sizeIconWithTypeHeadingMediumMedium: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension500, regular: DimensionRawTokens.dimension550) }
    @objc open var sizeIconWithTypeHeadingMediumTall: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension550, regular: DimensionRawTokens.dimension600) }

    @objc open var sizeIconWithTypeHeadingLargeShort: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension500, regular: DimensionRawTokens.dimension550) }
    @objc open var sizeIconWithTypeHeadingLargeMedium: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension550, regular: DimensionRawTokens.dimension600) }
    @objc open var sizeIconWithTypeHeadingLargeTall: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension600, regular: DimensionRawTokens.dimension650) }

    @objc open var sizeIconWithTypeHeadingXLargeShort: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension550, regular: DimensionRawTokens.dimension650) }
    @objc open var sizeIconWithTypeHeadingXLargeMedium: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension600, regular: DimensionRawTokens.dimension700) }
    @objc open var sizeIconWithTypeHeadingXLargeTall: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension550, regular: DimensionRawTokens.dimension650) }

    @objc open var sizeIconWithTypeBodySmallShort: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension150, regular: DimensionRawTokens.dimension150 ) }
    @objc open var sizeIconWithTypeBodySmallMedium: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension200, regular: DimensionRawTokens.dimension200 ) }
    @objc open var sizeIconWithTypeBodySmallTall: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension250, regular: DimensionRawTokens.dimension250 ) }

    @objc open var sizeIconWithTypeBodyMediumShort: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension200, regular: DimensionRawTokens.dimension200 ) }
    @objc open var sizeIconWithTypeBodyMediumMedium: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension250, regular: DimensionRawTokens.dimension250 ) }
    @objc open var sizeIconWithTypeBodyMediumTall: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension300, regular: DimensionRawTokens.dimension300 ) }

    @objc open var sizeIconWithTypeBodyLargeShort: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension250, regular: DimensionRawTokens.dimension250 ) }
    @objc open var sizeIconWithTypeBodyLargeMedium: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension300, regular: DimensionRawTokens.dimension300 ) }
    @objc open var sizeIconWithTypeBodyLargeTall: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension350, regular: DimensionRawTokens.dimension350 ) }

    @objc open var sizeIconWithTypeLabelSmallShort: SizingSemanticToken { dimension6XS }
    @objc open var sizeIconWithTypeLabelSmallMedium: SizingSemanticToken { dimension5XS }
    @objc open var sizeIconWithTypeLabelSmallTall: SizingSemanticToken { dimension4XS }

    @objc open var sizeIconWithTypeLabelMediumShort: SizingSemanticToken { dimension5XS }
    @objc open var sizeIconWithTypeLabelMediumMedium: SizingSemanticToken { dimension4XS }
    @objc open var sizeIconWithTypeLabelMediumTall: SizingSemanticToken { dimension3XS }

    @objc open var sizeIconWithTypeLabelLargeShorter: SizingSemanticToken { dimension4XS }
    @objc open var sizeIconWithTypeLabelLargeShort: SizingSemanticToken { dimension3XS }
    @objc open var sizeIconWithTypeLabelLargeMedium: SizingSemanticToken { dimension2XS }
    @objc open var sizeIconWithTypeLabelLargeTall: SizingSemanticToken { dimensionXS }
    @objc open var sizeIconWithTypeLabelLargeTaller: SizingSemanticToken { dimensionLG }

    @objc open var sizeIconWithTypeLabelXLargeShort: SizingSemanticToken { dimensionXS }
    @objc open var sizeIconWithTypeLabelXLargeMedium: SizingSemanticToken { dimensionMD }
    @objc open var sizeIconWithTypeLabelXLargeTall: SizingSemanticToken { dimensionLG }

    // MARK: - Semantic token - Sizing - Max width typography

    @objc open var sizeMaxWidthTypeDisplaySmall: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension9000, regular: DimensionRawTokens.dimension9000 ) }
    @objc open var sizeMaxWidthTypeDisplayMedium: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension9000, regular: DimensionRawTokens.dimension9000 ) }
    @objc open var sizeMaxWidthTypeDisplayLarge: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension9000, regular: DimensionRawTokens.dimension9000 ) }

    @objc open var sizeMaxWidthTypeHeadingSmall: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension6000, regular: DimensionRawTokens.dimension6000 ) }
    @objc open var sizeMaxWidthTypeHeadingMedium: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension9000, regular: DimensionRawTokens.dimension9000 ) }
    @objc open var sizeMaxWidthTypeHeadingLarge: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension9000, regular: DimensionRawTokens.dimension9000 ) }
    @objc open var sizeMaxWidthTypeHeadingXLarge: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension9000, regular: DimensionRawTokens.dimension9000 ) }

    @objc open var sizeMaxWidthTypeBodySmall: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension6000, regular: DimensionRawTokens.dimension6000 ) }
    @objc open var sizeMaxWidthTypeBodyMedium: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension6000, regular: DimensionRawTokens.dimension6000 ) }
    @objc open var sizeMaxWidthTypeBodyLarge: MultipleSizingSemanticToken { MultipleSizingSemanticToken(compact: DimensionRawTokens.dimension6000, regular: DimensionRawTokens.dimension6000 ) }
}
// swiftlint:enable line_length

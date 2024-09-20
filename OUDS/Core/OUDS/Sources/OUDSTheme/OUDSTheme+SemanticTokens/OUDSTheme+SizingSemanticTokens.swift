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

// swiftlint:disable line_length
/// Defines basic values common to all themes for `SizingSemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension OUDSTheme: SizingSemanticTokens {

    // MARK: Semantic token - Sizing - Width height - Icon decorative

    @objc open var sizeIconDecorativeShortest: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var sizeIconDecorativeShorter: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var sizeIconDecorativeShort: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var sizeIconDecorativeMedium: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var sizeIconDecorativeTall: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var sizeIconDecorativeTaller: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension700 }
    @objc open var sizeIconDecorativeTallest: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension900 }

    // MARK: Semantic token - Sizing - Width height - Icon component

    @objc open var sizeIconWithTypeHeadingSmallShort: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension150 }
    @objc open var sizeIconWithTypeHeadingSmallMedium: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var sizeIconWithTypeHeadingSmallTall: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var sizeIconWithTypeHeadingMediumShort: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var sizeIconWithTypeHeadingMediumMedium: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var sizeIconWithTypeHeadingTall: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var sizeIconWithTypeHeadingLargeShort: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var sizeIconWithTypeHeadingLargeMedium: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var sizeIconWithTypeHeadingLargeTall: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension350 }
    @objc open var sizeIconWithTypeHeadingXLargeShort: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var sizeIconWithTypeHeadingXLargeMedium: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension550 }
    @objc open var sizeIconWithTypeHeadingXLargeTall: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var sizeIconWithTypeLabelXLargeMedium: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var sizeIconWithTypeLabelXLargeTall: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension550 }

    // MARK: Semantic token - Sizing - Width height - Icon typography - Heading

    @objc open var sizeWidthHeightIconIsHeadingSmallShort: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension400, regular: DimensionRawTokens.dimension400) }
    @objc open var sizeWidthHeightIconIsHeadingSmallMedium: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension500, regular: DimensionRawTokens.dimension500 ) }
    @objc open var sizeWidthHeightIconIsHeadingSmallTall: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension550, regular: DimensionRawTokens.dimension550 ) }
    @objc open var sizeWidthHeightIconIsHeadingMediumShort: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension400, regular: DimensionRawTokens.dimension500 ) }
    @objc open var sizeWidthHeightIconIsHeadingMediumMedium: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension500, regular: DimensionRawTokens.dimension550 ) }
    @objc open var sizeWidthHeightIconIsHeadingMediumTall: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension550, regular: DimensionRawTokens.dimension600 ) }
    @objc open var sizeWidthHeightIconIsHeadingLargeShort: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension500, regular: DimensionRawTokens.dimension550 ) }
    @objc open var sizeWidthHeightIconIsHeadingLargeMedium: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension550, regular: DimensionRawTokens.dimension600 ) }
    @objc open var sizeWidthHeightIconIsHeadingLargeTall: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension600, regular: DimensionRawTokens.dimension650 ) }
    @objc open var sizeWidthHeightIconIsHeadingXLargeShort: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension550, regular: DimensionRawTokens.dimension650 ) }
    @objc open var sizeWidthHeightIconIsHeadingXLargeMedium: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension600, regular: DimensionRawTokens.dimension700 ) }
    @objc open var sizeWidthHeightIconIsHeadingXLargeTall: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension650, regular: DimensionRawTokens.dimension800 ) }

    // MARK: Semantic token - Sizing - Width height - Icon typography - Body

    @objc open var sizeIconWithTypeBodySmallShort: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension150, regular: DimensionRawTokens.dimension150 ) }
    @objc open var sizeIconWithTypeBodySmallMediuù: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension200, regular: DimensionRawTokens.dimension200 ) }
    @objc open var sizeIconWithTypeBodySmallTall: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension250, regular: DimensionRawTokens.dimension250 ) }
    @objc open var sizeIconWithTypeBodyMediumShort: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension200, regular: DimensionRawTokens.dimension200 ) }
    @objc open var sizeIconWithTypeBodyMediumMedium: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension250, regular: DimensionRawTokens.dimension250 ) }
    @objc open var sizeIconWithTypeBodyMediumTall: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension300, regular: DimensionRawTokens.dimension300 ) }
    @objc open var sizeIconWithTypeBodyLargeShort: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension250, regular: DimensionRawTokens.dimension250 ) }
    @objc open var sizeIconWithTypeBodyLargeMedium: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension300, regular: DimensionRawTokens.dimension300 ) }
    @objc open var sizeIconWithTypeBodyLargeTall: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension350, regular: DimensionRawTokens.dimension350 ) }

    // MARK: Semantic token - Sizing - Max width

    @objc open var sizeMaxWidthTypeDisplaySmall: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension9000, regular: DimensionRawTokens.dimension9000 ) }
    @objc open var sizeMaxWidthTypeDisplayMedium: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension9000, regular: DimensionRawTokens.dimension9000 ) }
    @objc open var sizeMaxWidthTypeDisplayLarge: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension9000, regular: DimensionRawTokens.dimension9000 ) }
    @objc open var sizeMaxWidthTypeHeadingSmall: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension6000, regular: DimensionRawTokens.dimension6000 ) }
    @objc open var sizeMaxWidthTypeHeadingMedium: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension9000, regular: DimensionRawTokens.dimension9000 ) }
    @objc open var sizeMaxWidthTypeHeadingLarge: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension9000, regular: DimensionRawTokens.dimension9000 ) }
    @objc open var sizeMaxWidthTypeHeadingXLarge: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension9000, regular: DimensionRawTokens.dimension9000 ) }
    @objc open var sizeMaxWidthTypeBodySmall: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension6000, regular: DimensionRawTokens.dimension6000 ) }
    @objc open var sizeMaxWidthTypeBodyMedium: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension6000, regular: DimensionRawTokens.dimension6000 ) }
    @objc open var sizeMaxWidthTypeBodyLarge: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension6000, regular: DimensionRawTokens.dimension6000 ) }
}
// swiftlint:enable line_length

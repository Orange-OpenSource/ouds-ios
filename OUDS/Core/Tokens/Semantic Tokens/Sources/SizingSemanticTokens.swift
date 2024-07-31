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
import OUDSTokensPrimitive

// MARK: - Type aliases to keep grammar clear

typealias SizingWidthHeightSemanticToken = DimensionPrimitiveToken
typealias SizingMaxWidthSemanticToken = DimensionPrimitiveToken

// MARK: - Semantic tokens

protocol SizingSemanticTokens {
    
    // MARK: Semantic token - Sizing - Width height - Icon decorative

    var sizeWidthHeightIconShortest: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension200
    var sizeWidthHeightIconShorter: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension300
    var sizeWidthHeightIconShort: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension400
    var sizeWidthHeightIconMedium: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension500
    var sizeWidthHeightIconTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension600
    var sizeWidthHeightIconTaller: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension700
    var sizeWidthHeightIconTallest: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension900

    // MARK: Semantic token - Sizing - Width height - Icon component

    var sizeWidthHeightIsLabelSmallShort: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension150
    var sizeWidthHeightIsLabelSmallMedium: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension200
    var sizeWidthHeightIsLabelSmallTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension250
    var sizeWidthHeightIsLabelMediumShort: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension200
    var sizeWidthHeightIsLabelMediumMedium: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension250
    var sizeWidthHeightIsLabelMediumTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension300
    var sizeWidthHeightIsLabelLargeShorter: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension250
    var sizeWidthHeightIsLabelLargeShort: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension300
    var sizeWidthHeightIsLabelLargeMedium: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension350
    var sizeWidthHeightIsLabelLargeTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension400
    var sizeWidthHeightIsLabelLargeTaller: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension550
    var sizeWidthHeightIsLabelXLargeShort: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension400
    var sizeWidthHeightIsLabelXLargeMedium: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension500
    var sizeWidthHeightIsLabelXLargeTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension550

    // MARK: Semantic token - Sizing - Width height - Icon typography - Heading

    var sizeWidthHeightIconIsHeadingSmallShort: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension400
    var sizeWidthHeightIconIsHeadingSmallMedium: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension500
    var sizeWidthHeightIconIsHeadingSmallTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension550
    var sizeWidthHeightIconIsHeadingMediumShort: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension500
    var sizeWidthHeightIconIsHeadingMediumMedium: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension550
    var sizeWidthHeightIconIsHeadingMediumTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension600
    var sizeWidthHeightIconIsHeadingLargeShort: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension550
    var sizeWidthHeightIconIsHeadingLargeMedium: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension600
    var sizeWidthHeightIconIsHeadingLargeTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension650
    var sizeWidthHeightIconIsHeadingXLargeShort: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension650
    var sizeWidthHeightIconIsHeadingXLargeMedium: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension700
    var sizeWidthHeightIconIsHeadingXLargeTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension800

    // MARK: Semantic token - Sizing - Width height - Icon typography - Body

    var sizeWidthHeightIconIsBodySmallTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension150
    var sizeWidthHeightIconIsBodySmallMedium: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension500
    var sizeWidthHeightIconIsBodySmallTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension250
    var sizeWidthHeightIconIsBodyMediumShort: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension200
    var sizeWidthHeightIconIsBodyMediumMedium: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension250
    var sizeWidthHeightIconIsBodyMediumTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension300
    var sizeWidthHeightIconIsBodyLargeShort: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension250
    var sizeWidthHeightIconIsBodyLargeMedium: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension300
    var sizeWidthHeightIconIsBodyLargeTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension350

    // MARK: Semantic token - Sizing - Max width

    var sizeMaxWidthTypographyDisplaySmall: SizingMaxWidthSemanticToken = DimensionPrimitiveTokens.dimension9000
    var sizeMaxWidthTypographyDisplayMedium: SizingMaxWidthSemanticToken = DimensionPrimitiveTokens.dimension9000
    var sizeMaxWidthTypographyDisplayLarge: SizingMaxWidthSemanticToken = DimensionPrimitiveTokens.dimension9000
    var sizeMaxWidthTypographyHeadingSmall: SizingMaxWidthSemanticToken = DimensionPrimitiveTokens.dimension6000
    var sizeMaxWidthTypographyHeadingMedium: SizingMaxWidthSemanticToken = DimensionPrimitiveTokens.dimension9000
    var sizeMaxWidthTypographyHeadingLarge: SizingMaxWidthSemanticToken = DimensionPrimitiveTokens.dimension9000
    var sizeMaxWidthTypographyHeadingXLarge: SizingMaxWidthSemanticToken = DimensionPrimitiveTokens.dimension9000
    var sizeMaxWidthTypographyBodySmall: SizingMaxWidthSemanticToken = DimensionPrimitiveTokens.dimension6000
    var sizeMaxWidthTypographyBodyMedium: SizingMaxWidthSemanticToken = DimensionPrimitiveTokens.dimension6000
    var sizeMaxWidthTypographyBodyLarge: SizingMaxWidthSemanticToken = DimensionPrimitiveTokens.dimension6000
    
}

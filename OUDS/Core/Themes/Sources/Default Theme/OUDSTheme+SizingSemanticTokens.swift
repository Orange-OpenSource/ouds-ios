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
import OUDSTokensSemantic

extension OUDSTheme: SizingSemanticTokens {
    
    // MARK: Semantic token - Sizing - Width height - Icon decorative

    public var sizeWidthHeightIconShortest: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension200 } set { } }
    public var sizeWidthHeightIconShorter: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension300 } set { } }
    public var sizeWidthHeightIconShort: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension400 } set { } }
    public var sizeWidthHeightIconMedium: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension500 } set { } }
    public var sizeWidthHeightIconTall: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension600 } set { } }
    public var sizeWidthHeightIconTaller: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension700 } set { } }
    public var sizeWidthHeightIconTallest: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension900 } set { } }

    // MARK: Semantic token - Sizing - Width height - Icon component

    public var sizeWidthHeightIsLabelSmallShort: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension150 } set { } }
    public var sizeWidthHeightIsLabelSmallMedium: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension200 } set { } }
    public var sizeWidthHeightIsLabelSmallTall: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension250 } set { } }
    public var sizeWidthHeightIsLabelMediumShort: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension200 } set { } }
    public var sizeWidthHeightIsLabelMediumMedium: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension250 } set { } }
    public var sizeWidthHeightIsLabelMediumTall: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension300 } set { } }
    public var sizeWidthHeightIsLabelLargeShorter: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension250 } set { } }
    public var sizeWidthHeightIsLabelLargeShort: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension300 } set { } }
    public var sizeWidthHeightIsLabelLargeMedium: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension350 } set { } }
    public var sizeWidthHeightIsLabelLargeTall: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension400 } set { } }
    public var sizeWidthHeightIsLabelLargeTaller: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension550 } set { } }
    public var sizeWidthHeightIsLabelXLargeShort: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension400 } set { } }
    public var sizeWidthHeightIsLabelXLargeMedium: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension500 } set { } }
    public var sizeWidthHeightIsLabelXLargeTall: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension550 } set { } }

    // MARK: Semantic token - Sizing - Width height - Icon typography - Heading

    public var sizeWidthHeightIconIsHeadingSmallShort: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension400 } set { } }
    public var sizeWidthHeightIconIsHeadingSmallMedium: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension500 } set { } }
    public var sizeWidthHeightIconIsHeadingSmallTall: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension550 } set { } }
    public var sizeWidthHeightIconIsHeadingMediumShort: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension500 } set { } }
    public var sizeWidthHeightIconIsHeadingMediumMedium: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension550 } set { } }
    public var sizeWidthHeightIconIsHeadingMediumTall: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension600 } set { } }
    public var sizeWidthHeightIconIsHeadingLargeShort: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension550 } set { } }
    public var sizeWidthHeightIconIsHeadingLargeMedium: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension600 } set { } }
    public var sizeWidthHeightIconIsHeadingLargeTall: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension650 } set { } }
    public var sizeWidthHeightIconIsHeadingXLargeShort: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension650 } set { } }
    public var sizeWidthHeightIconIsHeadingXLargeMedium: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension700 } set { } }
    public var sizeWidthHeightIconIsHeadingXLargeTall: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension800 } set { } }

    // MARK: Semantic token - Sizing - Width height - Icon typography - Body

    public var sizeWidthHeightIconIsBodySmallShort: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension150 } set { } }
    public var sizeWidthHeightIconIsBodySmallMedium: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension500 } set { } }
    public var sizeWidthHeightIconIsBodySmallTall: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension250 } set { } }
    public var sizeWidthHeightIconIsBodyMediumShort: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension200 } set { } }
    public var sizeWidthHeightIconIsBodyMediumMedium: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension250 } set { } }
    public var sizeWidthHeightIconIsBodyMediumTall: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension300 } set { } }
    public var sizeWidthHeightIconIsBodyLargeShort: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension250 } set { } }
    public var sizeWidthHeightIconIsBodyLargeMedium: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension300 } set { } }
    public var sizeWidthHeightIconIsBodyLargeTall: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension350 } set { } }

    // MARK: Semantic token - Sizing - Max width

    public var sizeMaxWidthTypographyDisplaySmall: SizingMaxWidthSemanticToken { get { DimensionPrimitiveTokens.dimension9000 } set { } }
    public var sizeMaxWidthTypographyDisplayMedium: SizingMaxWidthSemanticToken { get { DimensionPrimitiveTokens.dimension9000 } set { } }
    public var sizeMaxWidthTypographyDisplayLarge: SizingMaxWidthSemanticToken { get { DimensionPrimitiveTokens.dimension9000 } set { } }
    public var sizeMaxWidthTypographyHeadingSmall: SizingMaxWidthSemanticToken { get { DimensionPrimitiveTokens.dimension6000 } set { } }
    public var sizeMaxWidthTypographyHeadingMedium: SizingMaxWidthSemanticToken { get { DimensionPrimitiveTokens.dimension9000 } set { } }
    public var sizeMaxWidthTypographyHeadingLarge: SizingMaxWidthSemanticToken { get { DimensionPrimitiveTokens.dimension9000 } set { } }
    public var sizeMaxWidthTypographyHeadingXLarge: SizingMaxWidthSemanticToken { get { DimensionPrimitiveTokens.dimension9000 } set { } }
    public var sizeMaxWidthTypographyBodySmall: SizingMaxWidthSemanticToken { get { DimensionPrimitiveTokens.dimension6000 } set { } }
    public var sizeMaxWidthTypographyBodyMedium: SizingMaxWidthSemanticToken { get { DimensionPrimitiveTokens.dimension6000 } set { } }
    public var sizeMaxWidthTypographyBodyLarge: SizingMaxWidthSemanticToken { get { DimensionPrimitiveTokens.dimension6000 } set { } }
}

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

    @objc open var sizeWidthHeightIconShortest: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension200 } set { } }
    @objc open var sizeWidthHeightIconShorter: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension300 } set { } }
    @objc open var sizeWidthHeightIconShort: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension400 } set { } }
    @objc open var sizeWidthHeightIconMedium: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension500 } set { } }
    @objc open var sizeWidthHeightIconTall: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension600 } set { } }
    @objc open var sizeWidthHeightIconTaller: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension700 } set { } }
    @objc open var sizeWidthHeightIconTallest: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension900 } set { } }

    // MARK: Semantic token - Sizing - Width height - Icon component

    @objc open var sizeWidthHeightIsLabelSmallShort: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension150 } set { } }
    @objc open var sizeWidthHeightIsLabelSmallMedium: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension200 } set { } }
    @objc open var sizeWidthHeightIsLabelSmallTall: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension250 } set { } }
    @objc open var sizeWidthHeightIsLabelMediumShort: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension200 } set { } }
    @objc open var sizeWidthHeightIsLabelMediumMedium: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension250 } set { } }
    @objc open var sizeWidthHeightIsLabelMediumTall: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension300 } set { } }
    @objc open var sizeWidthHeightIsLabelLargeShorter: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension250 } set { } }
    @objc open var sizeWidthHeightIsLabelLargeShort: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension300 } set { } }
    @objc open var sizeWidthHeightIsLabelLargeMedium: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension350 } set { } }
    @objc open var sizeWidthHeightIsLabelLargeTall: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension400 } set { } }
    @objc open var sizeWidthHeightIsLabelLargeTaller: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension550 } set { } }
    @objc open var sizeWidthHeightIsLabelXLargeShort: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension400 } set { } }
    @objc open var sizeWidthHeightIsLabelXLargeMedium: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension500 } set { } }
    @objc open var sizeWidthHeightIsLabelXLargeTall: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension550 } set { } }

    // MARK: Semantic token - Sizing - Width height - Icon typography - Heading

    @objc open var sizeWidthHeightIconIsHeadingSmallShort: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension400 } set { } }
    @objc open var sizeWidthHeightIconIsHeadingSmallMedium: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension500 } set { } }
    @objc open var sizeWidthHeightIconIsHeadingSmallTall: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension550 } set { } }
    @objc open var sizeWidthHeightIconIsHeadingMediumShort: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension500 } set { } }
    @objc open var sizeWidthHeightIconIsHeadingMediumMedium: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension550 } set { } }
    @objc open var sizeWidthHeightIconIsHeadingMediumTall: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension600 } set { } }
    @objc open var sizeWidthHeightIconIsHeadingLargeShort: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension550 } set { } }
    @objc open var sizeWidthHeightIconIsHeadingLargeMedium: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension600 } set { } }
    @objc open var sizeWidthHeightIconIsHeadingLargeTall: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension650 } set { } }
    @objc open var sizeWidthHeightIconIsHeadingXLargeShort: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension650 } set { } }
    @objc open var sizeWidthHeightIconIsHeadingXLargeMedium: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension700 } set { } }
    @objc open var sizeWidthHeightIconIsHeadingXLargeTall: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension800 } set { } }

    // MARK: Semantic token - Sizing - Width height - Icon typography - Body

    @objc open var sizeWidthHeightIconIsBodySmallShort: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension150 } set { } }
    @objc open var sizeWidthHeightIconIsBodySmallMedium: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension500 } set { } }
    @objc open var sizeWidthHeightIconIsBodySmallTall: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension250 } set { } }
    @objc open var sizeWidthHeightIconIsBodyMediumShort: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension200 } set { } }
    @objc open var sizeWidthHeightIconIsBodyMediumMedium: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension250 } set { } }
    @objc open var sizeWidthHeightIconIsBodyMediumTall: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension300 } set { } }
    @objc open var sizeWidthHeightIconIsBodyLargeShort: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension250 } set { } }
    @objc open var sizeWidthHeightIconIsBodyLargeMedium: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension300 } set { } }
    @objc open var sizeWidthHeightIconIsBodyLargeTall: SizingWidthHeightSemanticToken { get { DimensionPrimitiveTokens.dimension350 } set { } }

    // MARK: Semantic token - Sizing - Max width

    @objc open var sizeMaxWidthTypographyDisplaySmall: SizingMaxWidthSemanticToken { get { DimensionPrimitiveTokens.dimension9000 } set { } }
    @objc open var sizeMaxWidthTypographyDisplayMedium: SizingMaxWidthSemanticToken { get { DimensionPrimitiveTokens.dimension9000 } set { } }
    @objc open var sizeMaxWidthTypographyDisplayLarge: SizingMaxWidthSemanticToken { get { DimensionPrimitiveTokens.dimension9000 } set { } }
    @objc open var sizeMaxWidthTypographyHeadingSmall: SizingMaxWidthSemanticToken { get { DimensionPrimitiveTokens.dimension6000 } set { } }
    @objc open var sizeMaxWidthTypographyHeadingMedium: SizingMaxWidthSemanticToken { get { DimensionPrimitiveTokens.dimension9000 } set { } }
    @objc open var sizeMaxWidthTypographyHeadingLarge: SizingMaxWidthSemanticToken { get { DimensionPrimitiveTokens.dimension9000 } set { } }
    @objc open var sizeMaxWidthTypographyHeadingXLarge: SizingMaxWidthSemanticToken { get { DimensionPrimitiveTokens.dimension9000 } set { } }
    @objc open var sizeMaxWidthTypographyBodySmall: SizingMaxWidthSemanticToken { get { DimensionPrimitiveTokens.dimension6000 } set { } }
    @objc open var sizeMaxWidthTypographyBodyMedium: SizingMaxWidthSemanticToken { get { DimensionPrimitiveTokens.dimension6000 } set { } }
    @objc open var sizeMaxWidthTypographyBodyLarge: SizingMaxWidthSemanticToken { get { DimensionPrimitiveTokens.dimension6000 } set { } }
}

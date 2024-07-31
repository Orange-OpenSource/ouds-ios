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

public typealias SizingWidthHeightSemanticToken = DimensionPrimitiveToken
public typealias SizingMaxWidthSemanticToken = DimensionPrimitiveToken

// MARK: - Semantic tokens

public protocol SizingSemanticTokens {
    
    // MARK: Semantic token - Sizing - Width height - Icon decorative

    var sizeWidthHeightIconShortest: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconShorter: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconShort: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconMedium: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconTall: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconTaller: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconTallest: SizingWidthHeightSemanticToken { get set }

    // MARK: Semantic token - Sizing - Width height - Icon component

    var sizeWidthHeightIsLabelSmallShort: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIsLabelSmallMedium: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIsLabelSmallTall: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIsLabelMediumShort: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIsLabelMediumMedium: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIsLabelMediumTall: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIsLabelLargeShorter: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIsLabelLargeShort: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIsLabelLargeMedium: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIsLabelLargeTall: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIsLabelLargeTaller: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIsLabelXLargeShort: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIsLabelXLargeMedium: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIsLabelXLargeTall: SizingWidthHeightSemanticToken { get set }

    // MARK: Semantic token - Sizing - Width height - Icon typography - Heading

    var sizeWidthHeightIconIsHeadingSmallShort: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconIsHeadingSmallMedium: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconIsHeadingSmallTall: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconIsHeadingMediumShort: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconIsHeadingMediumMedium: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconIsHeadingMediumTall: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconIsHeadingLargeShort: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconIsHeadingLargeMedium: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconIsHeadingLargeTall: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconIsHeadingXLargeShort: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconIsHeadingXLargeMedium: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconIsHeadingXLargeTall: SizingWidthHeightSemanticToken { get set }

    // MARK: Semantic token - Sizing - Width height - Icon typography - Body

    var sizeWidthHeightIconIsBodySmallShort: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconIsBodySmallMedium: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconIsBodySmallTall: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconIsBodyMediumShort: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconIsBodyMediumMedium: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconIsBodyMediumTall: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconIsBodyLargeShort: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconIsBodyLargeMedium: SizingWidthHeightSemanticToken { get set }
    var sizeWidthHeightIconIsBodyLargeTall: SizingWidthHeightSemanticToken { get set }

    // MARK: Semantic token - Sizing - Max width

    var sizeMaxWidthTypographyDisplaySmall: SizingMaxWidthSemanticToken { get set }
    var sizeMaxWidthTypographyDisplayMedium: SizingMaxWidthSemanticToken { get set }
    var sizeMaxWidthTypographyDisplayLarge: SizingMaxWidthSemanticToken { get set }
    var sizeMaxWidthTypographyHeadingSmall: SizingMaxWidthSemanticToken { get set }
    var sizeMaxWidthTypographyHeadingMedium: SizingMaxWidthSemanticToken { get set }
    var sizeMaxWidthTypographyHeadingLarge: SizingMaxWidthSemanticToken { get set }
    var sizeMaxWidthTypographyHeadingXLarge: SizingMaxWidthSemanticToken { get set }
    var sizeMaxWidthTypographyBodySmall: SizingMaxWidthSemanticToken { get set }
    var sizeMaxWidthTypographyBodyMedium: SizingMaxWidthSemanticToken { get set }
    var sizeMaxWidthTypographyBodyLarge: SizingMaxWidthSemanticToken { get set }


    
}

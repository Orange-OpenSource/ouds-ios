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

// MARK: - Type aliases to keep grammar clear

public typealias SizingWidthHeightSemanticToken = DimensionPrimitiveToken
public typealias SizingMaxWidthSemanticToken = DimensionPrimitiveToken

// MARK: - Semantic tokens

public struct SizingSemanticTokens {
    
    // MARK: Width height - icon decorative
    
    static let sizeWidthHeightIconShortest: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension200
    static let sizeWidthHeightIconShorter: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension300
    static let sizeWidthHeightIconShort: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension400
    static let sizeWidthHeightIconMedium: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension500
    static let sizeWidthHeightIconTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension600
    static let sizeWidthHeightIconTaller: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension700
    static let sizeWidthHeightIconTallest: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension900
    
    // MARK: Width height - icon component
 
    static let sizeWidthHeightIsLabelSmallShort: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension150
    static let sizeWidthHeightIsLabelSmallMedium: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension200
    static let sizeWidthHeightIsLabelSmallTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension250
    static let sizeWidthHeightIsLabelMediumShort: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension200
    static let sizeWidthHeightIsLabelMediumMedium: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension250
    static let sizeWidthHeightIsLabelMediumTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension300
    static let sizeWidthHeightIsLabelLargeShorter: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension250
    static let sizeWidthHeightIsLabelLargeShort: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension300
    static let sizeWidthHeightIsLabelLargeMedium: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension350
    static let sizeWidthHeightIsLabelLargeTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension400
    static let sizeWidthHeightIsLabelLargeTaller: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension550
    static let sizeWidthHeightIsLabelXLargeShort: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension400
    static let sizeWidthHeightIsLabelXLargeMedium: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension500
    static let sizeWidthHeightIsLabelXLargeTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension550
    
    // MARK: Width height - icon typography
    
    // NOTE: In design team whiteboard, there are 3 values for each token depending to viewport. How to manage them?
    static let sizeWidthHeightIconIsHeadingSmallShort: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension400
    static let sizeWidthHeightIconIsHeadingSmallMedium: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension500
    static let sizeWidthHeightIconIsHeadingSmallTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension550
    static let sizeWidthHeightIconIsHeadingMediumShort: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension500
    static let sizeWidthHeightIconIsHeadingMediumMedium: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension550
    static let sizeWidthHeightIconIsHeadingMediumTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension600
    static let sizeWidthHeightIconIsHeadingLargeShort: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension550
    static let sizeWidthHeightIconIsHeadingLargeMedium: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension600
    static let sizeWidthHeightIconIsHeadingLargeTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension650
    static let sizeWidthHeightIconIsHeadingXLargeShort: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension650
    static let sizeWidthHeightIconIsHeadingXLargeMedium: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension700
    static let sizeWidthHeightIconIsHeadingXLargeTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension800
    
    // NOTE: In design team whiteboard, there are 3 values for each token depending to viewport. How to manage them?
    static let sizeWidthHeightIconIsBodySmallShort: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension150
    static let sizeWidthHeightIconIsBodySmallMedium: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension500
    static let sizeWidthHeightIconIsBodySmallTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension250
    static let sizeWidthHeightIconIsBodyMediumShort: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension200
    static let sizeWidthHeightIconIsBodyMediumMedium: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension250
    static let sizeWidthHeightIconIsBodyMediumTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension300
    static let sizeWidthHeightIconIsBodyLargeShort: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension250
    static let sizeWidthHeightIconIsBodyLargeMedium: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension300
    static let sizeWidthHeightIconIsBodyLargeTall: SizingWidthHeightSemanticToken = DimensionPrimitiveTokens.dimension350
    
    // MARK: Max width - typography
    
    static let sizeMaxWidthTypographyDisplaySmall: SizingMaxWidthSemanticToken = DimensionPrimitiveTokens.dimension9000
    static let sizeMaxWidthTypographyDisplayMedium: SizingMaxWidthSemanticToken = DimensionPrimitiveTokens.dimension9000
    static let sizeMaxWidthTypographyDisplayLarge: SizingMaxWidthSemanticToken = DimensionPrimitiveTokens.dimension9000
    static let sizeMaxWidthTypographyHeadingSmall: SizingMaxWidthSemanticToken = DimensionPrimitiveTokens.dimension6000
    static let sizeMaxWidthTypographyHeadingMedium: SizingMaxWidthSemanticToken = DimensionPrimitiveTokens.dimension9000
    static let sizeMaxWidthTypographyHeadingLarge: SizingMaxWidthSemanticToken = DimensionPrimitiveTokens.dimension9000
    static let sizeMaxWidthTypographyHeadingXLarge: SizingMaxWidthSemanticToken = DimensionPrimitiveTokens.dimension9000
    static let sizeMaxWidthTypographyBodySmall: SizingMaxWidthSemanticToken = DimensionPrimitiveTokens.dimension6000
    static let sizeMaxWidthTypographyBodyMedium: SizingMaxWidthSemanticToken = DimensionPrimitiveTokens.dimension6000
    static let sizeMaxWidthTypographyBodyLarge: SizingMaxWidthSemanticToken = DimensionPrimitiveTokens.dimension6000
    
    // MARK: Max width - component
    
    // NOTE: Missing two values (short, tall)
    static let sizeMaxWidthComponentSmall: SizingMaxWidthSemanticToken = DimensionPrimitiveTokens.dimension400
    
    
}

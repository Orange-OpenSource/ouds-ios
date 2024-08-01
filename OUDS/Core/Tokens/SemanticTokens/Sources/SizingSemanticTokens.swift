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

// MARK: - Type aliases to keep grammar clear

public typealias SizingWidthHeightSemanticToken = DimensionRawToken
public typealias SizingMaxWidthSemanticToken = DimensionRawToken

// MARK: - Semantic tokens

/// This is a group of semantic tokens for **sizing**.
/// It defines all `SizingSemanticToken` a theme must have.
public protocol SizingSemanticTokens {

    // MARK: Semantic token - Sizing - Width height - Icon decorative

    var sizeWidthHeightIconShortest: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconShorter: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconShort: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconMedium: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconTall: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconTaller: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconTallest: SizingWidthHeightSemanticToken { get }

    // MARK: Semantic token - Sizing - Width height - Icon component

    var sizeWidthHeightIsLabelSmallShort: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIsLabelSmallMedium: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIsLabelSmallTall: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIsLabelMediumShort: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIsLabelMediumMedium: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIsLabelMediumTall: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIsLabelLargeShorter: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIsLabelLargeShort: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIsLabelLargeMedium: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIsLabelLargeTall: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIsLabelLargeTaller: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIsLabelXLargeShort: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIsLabelXLargeMedium: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIsLabelXLargeTall: SizingWidthHeightSemanticToken { get }

    // MARK: Semantic token - Sizing - Width height - Icon typography - Heading

    var sizeWidthHeightIconIsHeadingSmallShort: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconIsHeadingSmallMedium: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconIsHeadingSmallTall: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconIsHeadingMediumShort: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconIsHeadingMediumMedium: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconIsHeadingMediumTall: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconIsHeadingLargeShort: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconIsHeadingLargeMedium: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconIsHeadingLargeTall: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconIsHeadingXLargeShort: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconIsHeadingXLargeMedium: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconIsHeadingXLargeTall: SizingWidthHeightSemanticToken { get }

    // MARK: Semantic token - Sizing - Width height - Icon typography - Body

    var sizeWidthHeightIconIsBodySmallShort: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconIsBodySmallMedium: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconIsBodySmallTall: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconIsBodyMediumShort: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconIsBodyMediumMedium: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconIsBodyMediumTall: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconIsBodyLargeShort: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconIsBodyLargeMedium: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconIsBodyLargeTall: SizingWidthHeightSemanticToken { get }

    // MARK: Semantic token - Sizing - Max width

    var sizeMaxWidthTypographyDisplaySmall: SizingMaxWidthSemanticToken { get }
    var sizeMaxWidthTypographyDisplayMedium: SizingMaxWidthSemanticToken { get }
    var sizeMaxWidthTypographyDisplayLarge: SizingMaxWidthSemanticToken { get }
    var sizeMaxWidthTypographyHeadingSmall: SizingMaxWidthSemanticToken { get }
    var sizeMaxWidthTypographyHeadingMedium: SizingMaxWidthSemanticToken { get }
    var sizeMaxWidthTypographyHeadingLarge: SizingMaxWidthSemanticToken { get }
    var sizeMaxWidthTypographyHeadingXLarge: SizingMaxWidthSemanticToken { get }
    var sizeMaxWidthTypographyBodySmall: SizingMaxWidthSemanticToken { get }
    var sizeMaxWidthTypographyBodyMedium: SizingMaxWidthSemanticToken { get }
    var sizeMaxWidthTypographyBodyLarge: SizingMaxWidthSemanticToken { get }
}

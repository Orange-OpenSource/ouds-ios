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

/// This is a group of semantic tokens for **sizing**.
/// It defines all `SizingSemanticToken` a theme must have.
public protocol SizingSemanticTokens {

    // MARK: - Semantic token - Sizing - Width height - Icon decorative

    var sizeWidthHeightIconShortest: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconShorter: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconShort: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconMedium: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconTall: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconTaller: SizingWidthHeightSemanticToken { get }
    var sizeWidthHeightIconTallest: SizingWidthHeightSemanticToken { get }

    // MARK: - Semantic token - Sizing - Width height - Icon component

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

    // MARK: - Semantic token - Sizing - Width height - Icon typography - Heading

    var sizeWidthHeightIconIsHeadingSmallShort: SizingCompositeSemanticToken { get }
    var sizeWidthHeightIconIsHeadingSmallMedium: SizingCompositeSemanticToken { get }
    var sizeWidthHeightIconIsHeadingSmallTall: SizingCompositeSemanticToken { get }
    var sizeWidthHeightIconIsHeadingMediumShort: SizingCompositeSemanticToken { get }
    var sizeWidthHeightIconIsHeadingMediumMedium: SizingCompositeSemanticToken { get }
    var sizeWidthHeightIconIsHeadingMediumTall: SizingCompositeSemanticToken { get }
    var sizeWidthHeightIconIsHeadingLargeShort: SizingCompositeSemanticToken { get }
    var sizeWidthHeightIconIsHeadingLargeMedium: SizingCompositeSemanticToken { get }
    var sizeWidthHeightIconIsHeadingLargeTall: SizingCompositeSemanticToken { get }
    var sizeWidthHeightIconIsHeadingXLargeShort: SizingCompositeSemanticToken { get }
    var sizeWidthHeightIconIsHeadingXLargeMedium: SizingCompositeSemanticToken { get }
    var sizeWidthHeightIconIsHeadingXLargeTall: SizingCompositeSemanticToken { get }

    // MARK: - Semantic token - Sizing - Width height - Icon typography - Body

    var sizeWidthHeightIconIsBodySmallShort: SizingCompositeSemanticToken { get }
    var sizeWidthHeightIconIsBodySmallMedium: SizingCompositeSemanticToken { get }
    var sizeWidthHeightIconIsBodySmallTall: SizingCompositeSemanticToken { get }
    var sizeWidthHeightIconIsBodyMediumShort: SizingCompositeSemanticToken { get }
    var sizeWidthHeightIconIsBodyMediumMedium: SizingCompositeSemanticToken { get }
    var sizeWidthHeightIconIsBodyMediumTall: SizingCompositeSemanticToken { get }
    var sizeWidthHeightIconIsBodyLargeShort: SizingCompositeSemanticToken { get }
    var sizeWidthHeightIconIsBodyLargeMedium: SizingCompositeSemanticToken { get }
    var sizeWidthHeightIconIsBodyLargeTall: SizingCompositeSemanticToken { get }

    // MARK: - Semantic token - Sizing - Max width

    var sizeMaxWidthTypographyDisplaySmall: SizingCompositeSemanticToken { get }
    var sizeMaxWidthTypographyDisplayMedium: SizingCompositeSemanticToken { get }
    var sizeMaxWidthTypographyDisplayLarge: SizingCompositeSemanticToken { get }
    var sizeMaxWidthTypographyHeadingSmall: SizingCompositeSemanticToken { get }
    var sizeMaxWidthTypographyHeadingMedium: SizingCompositeSemanticToken { get }
    var sizeMaxWidthTypographyHeadingLarge: SizingCompositeSemanticToken { get }
    var sizeMaxWidthTypographyHeadingXLarge: SizingCompositeSemanticToken { get }
    var sizeMaxWidthTypographyBodySmall: SizingCompositeSemanticToken { get }
    var sizeMaxWidthTypographyBodyMedium: SizingCompositeSemanticToken { get }
    var sizeMaxWidthTypographyBodyLarge: SizingCompositeSemanticToken { get }
}

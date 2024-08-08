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

/// Defines basic values common to all themes for `SizingSemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension OUDSTheme: SizingSemanticTokens {

    // MARK: Semantic token - Sizing - Width height - Icon decorative

    @objc open var sizeWidthHeightIconShortest: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var sizeWidthHeightIconShorter: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var sizeWidthHeightIconShort: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var sizeWidthHeightIconMedium: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var sizeWidthHeightIconTall: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var sizeWidthHeightIconTaller: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension700 }
    @objc open var sizeWidthHeightIconTallest: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension900 }

    // MARK: Semantic token - Sizing - Width height - Icon component

    @objc open var sizeWidthHeightIsLabelSmallShort: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension150 }
    @objc open var sizeWidthHeightIsLabelSmallMedium: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var sizeWidthHeightIsLabelSmallTall: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var sizeWidthHeightIsLabelMediumShort: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var sizeWidthHeightIsLabelMediumMedium: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var sizeWidthHeightIsLabelMediumTall: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var sizeWidthHeightIsLabelLargeShorter: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var sizeWidthHeightIsLabelLargeShort: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var sizeWidthHeightIsLabelLargeMedium: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension350 }
    @objc open var sizeWidthHeightIsLabelLargeTall: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var sizeWidthHeightIsLabelLargeTaller: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension550 }
    @objc open var sizeWidthHeightIsLabelXLargeShort: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var sizeWidthHeightIsLabelXLargeMedium: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var sizeWidthHeightIsLabelXLargeTall: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension550 }

    // MARK: Semantic token - Sizing - Width height - Icon typography - Heading

    // TODO: What should we do? In issue #36 there are 3 possible values (web paradigm ?), selected here the xl-2xl-3xl case
    @objc open var sizeWidthHeightIconIsHeadingSmallShort: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var sizeWidthHeightIconIsHeadingSmallMedium: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension550 }
    @objc open var sizeWidthHeightIconIsHeadingSmallTall: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var sizeWidthHeightIconIsHeadingMediumShort: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension550 }
    @objc open var sizeWidthHeightIconIsHeadingMediumMedium: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var sizeWidthHeightIconIsHeadingMediumTall: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension650 }
    @objc open var sizeWidthHeightIconIsHeadingLargeShort: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var sizeWidthHeightIconIsHeadingLargeMedium: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension650 }
    @objc open var sizeWidthHeightIconIsHeadingLargeTall: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension700 }
    @objc open var sizeWidthHeightIconIsHeadingXLargeShort: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension700 }
    @objc open var sizeWidthHeightIconIsHeadingXLargeMedium: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension750 }
    @objc open var sizeWidthHeightIconIsHeadingXLargeTall: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension800 }

    // MARK: Semantic token - Sizing - Width height - Icon typography - Body

    // TODO: What should we do? In issue #36 there are 3 possible values (web paradigm ?), selected here the xl-2xl-3xl case
    @objc open var sizeWidthHeightIconIsBodySmallShort: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var sizeWidthHeightIconIsBodySmallMedium: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var sizeWidthHeightIconIsBodySmallTall: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var sizeWidthHeightIconIsBodyMediumShort: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var sizeWidthHeightIconIsBodyMediumMedium: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var sizeWidthHeightIconIsBodyMediumTall: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension350 }
    @objc open var sizeWidthHeightIconIsBodyLargeShort: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var sizeWidthHeightIconIsBodyLargeMedium: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var sizeWidthHeightIconIsBodyLargeTall: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension550 }

    // MARK: Semantic token - Sizing - Max width

    // TODO: What should we do? In issue #36 there are 3 possible values (web paradigm ?), selected here the xl-2xl-3xl case
    @objc open var sizeMaxWidthTypographyDisplaySmall: SizingMaxWidthSemanticToken { DimensionRawTokens.dimension11000 }
    @objc open var sizeMaxWidthTypographyDisplayMedium: SizingMaxWidthSemanticToken { DimensionRawTokens.dimension11000 }
    @objc open var sizeMaxWidthTypographyDisplayLarge: SizingMaxWidthSemanticToken { DimensionRawTokens.dimension11000 }
    @objc open var sizeMaxWidthTypographyHeadingSmall: SizingMaxWidthSemanticToken { DimensionRawTokens.dimension7000 }
    @objc open var sizeMaxWidthTypographyHeadingMedium: SizingMaxWidthSemanticToken { DimensionRawTokens.dimension11000 }
    @objc open var sizeMaxWidthTypographyHeadingLarge: SizingMaxWidthSemanticToken { DimensionRawTokens.dimension11000 }
    @objc open var sizeMaxWidthTypographyHeadingXLarge: SizingMaxWidthSemanticToken { DimensionRawTokens.dimension11000 }
    @objc open var sizeMaxWidthTypographyBodySmall: SizingMaxWidthSemanticToken { DimensionRawTokens.dimension6000 }
    @objc open var sizeMaxWidthTypographyBodyMedium: SizingMaxWidthSemanticToken { DimensionRawTokens.dimension7000 }
    @objc open var sizeMaxWidthTypographyBodyLarge: SizingMaxWidthSemanticToken { DimensionRawTokens.dimension7000 }
}

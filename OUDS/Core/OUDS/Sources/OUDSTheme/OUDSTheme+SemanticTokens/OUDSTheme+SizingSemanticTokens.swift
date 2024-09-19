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

    @objc open var sizeWidthHeightIconIsBodySmallShort: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension150, regular: DimensionRawTokens.dimension150 ) }
    @objc open var sizeWidthHeightIconIsBodySmallMedium: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension200, regular: DimensionRawTokens.dimension200 ) }
    @objc open var sizeWidthHeightIconIsBodySmallTall: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension250, regular: DimensionRawTokens.dimension250 ) }
    @objc open var sizeWidthHeightIconIsBodyMediumShort: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension200, regular: DimensionRawTokens.dimension200 ) }
    @objc open var sizeWidthHeightIconIsBodyMediumMedium: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension250, regular: DimensionRawTokens.dimension250 ) }
    @objc open var sizeWidthHeightIconIsBodyMediumTall: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension300, regular: DimensionRawTokens.dimension300 ) }
    @objc open var sizeWidthHeightIconIsBodyLargeShort: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension250, regular: DimensionRawTokens.dimension250 ) }
    @objc open var sizeWidthHeightIconIsBodyLargeMedium: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension300, regular: DimensionRawTokens.dimension300 ) }
    @objc open var sizeWidthHeightIconIsBodyLargeTall: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension350, regular: DimensionRawTokens.dimension350 ) }

    // MARK: Semantic token - Sizing - Max width

    @objc open var sizeMaxWidthTypographyDisplaySmall: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension9000, regular: DimensionRawTokens.dimension9000 ) }
    @objc open var sizeMaxWidthTypographyDisplayMedium: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension9000, regular: DimensionRawTokens.dimension9000 ) }
    @objc open var sizeMaxWidthTypographyDisplayLarge: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension9000, regular: DimensionRawTokens.dimension9000 ) }
    @objc open var sizeMaxWidthTypographyHeadingSmall: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension6000, regular: DimensionRawTokens.dimension6000 ) }
    @objc open var sizeMaxWidthTypographyHeadingMedium: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension9000, regular: DimensionRawTokens.dimension9000 ) }
    @objc open var sizeMaxWidthTypographyHeadingLarge: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension9000, regular: DimensionRawTokens.dimension9000 ) }
    @objc open var sizeMaxWidthTypographyHeadingXLarge: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension9000, regular: DimensionRawTokens.dimension9000 ) }
    @objc open var sizeMaxWidthTypographyBodySmall: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension6000, regular: DimensionRawTokens.dimension6000 ) }
    @objc open var sizeMaxWidthTypographyBodyMedium: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension6000, regular: DimensionRawTokens.dimension6000 ) }
    @objc open var sizeMaxWidthTypographyBodyLarge: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension6000, regular: DimensionRawTokens.dimension6000 ) }
}
// swiftlint:enable line_length

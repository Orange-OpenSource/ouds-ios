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

    // MARK: - Semantic token - Sizing - Icon decorative

    @objc open var sizeIconDecorativeShortest: SizingSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var sizeIconDecorativeShorter: SizingSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var sizeIconDecorativeShort: SizingSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var sizeIconDecorativeMedium: SizingSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var sizeIconDecorativeTall: SizingSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var sizeIconDecorativeTaller: SizingSemanticToken { DimensionRawTokens.dimension700 }
    @objc open var sizeIconDecorativeTallest: SizingSemanticToken { DimensionRawTokens.dimension900 }

    // MARK: - Semantic token - Sizing - Icon with typography

    @objc open var sizeIconWithTypeHeadingSmallShort: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension400, regular: DimensionRawTokens.dimension400) }
    @objc open var sizeIconWithTypeHeadingSmallMedium: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension500, regular: DimensionRawTokens.dimension500) }
    @objc open var sizeIconWithTypeHeadingSmallTall: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension550, regular: DimensionRawTokens.dimension550) }

    @objc open var sizeIconWithTypeHeadingMediumShort: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension400, regular: DimensionRawTokens.dimension500) }
    @objc open var sizeIconWithTypeHeadingMediumMedium: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension500, regular: DimensionRawTokens.dimension550) }
    @objc open var sizeIconWithTypeHeadingMediumTall: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension550, regular: DimensionRawTokens.dimension600) }

    @objc open var sizeIconWithTypeHeadingLargeShort: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension500, regular: DimensionRawTokens.dimension550) }
    @objc open var sizeIconWithTypeHeadingLargeMedium: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension550, regular: DimensionRawTokens.dimension600) }
    @objc open var sizeIconWithTypeHeadingLargeTall: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension600, regular: DimensionRawTokens.dimension650) }

    @objc open var sizeIconWithTypeHeadingXLargeShort: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension550, regular: DimensionRawTokens.dimension650) }
    @objc open var sizeIconWithTypeHeadingXLargeMedium: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension600, regular: DimensionRawTokens.dimension700) }
    @objc open var sizeIconWithTypeHeadingXLargeTall: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension550, regular: DimensionRawTokens.dimension650) }

    @objc open var sizeIconWithTypeBodySmallShort: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension150, regular: DimensionRawTokens.dimension150 ) }
    @objc open var sizeIconWithTypeBodySmallMedium: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension200, regular: DimensionRawTokens.dimension200 ) }
    @objc open var sizeIconWithTypeBodySmallTall: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension250, regular: DimensionRawTokens.dimension250 ) }

    @objc open var sizeIconWithTypeBodyMediumShort: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension200, regular: DimensionRawTokens.dimension200 ) }
    @objc open var sizeIconWithTypeBodyMediumMedium: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension250, regular: DimensionRawTokens.dimension250 ) }
    @objc open var sizeIconWithTypeBodyMediumTall: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension300, regular: DimensionRawTokens.dimension300 ) }

    @objc open var sizeIconWithTypeBodyLargeShort: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension250, regular: DimensionRawTokens.dimension250 ) }
    @objc open var sizeIconWithTypeBodyLargeMedium: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension300, regular: DimensionRawTokens.dimension300 ) }
    @objc open var sizeIconWithTypeBodyLargeTall: SizingCompositeSemanticToken { SizingCompositeSemanticToken(compact: DimensionRawTokens.dimension350, regular: DimensionRawTokens.dimension350 ) }

    @objc open var sizeIconWithTypeLabelSmallShort: SizingSemanticToken { dimension6XS }
    @objc open var sizeIconWithTypeLabelSmallMedium: SizingSemanticToken { dimension5XS }
    @objc open var sizeIconWithTypeLabelSmallTall: SizingSemanticToken { dimension4XS }

    @objc open var sizeIconWithTypeLabelMediumShort: SizingSemanticToken { dimension5XS }
    @objc open var sizeIconWithTypeLabelMediumMedium: SizingSemanticToken { dimension4XS }
    @objc open var sizeIconWithTypeLabelMediumTall: SizingSemanticToken { dimension3XS }

    @objc open var sizeIconWithTypeLabelLargeShorter: SizingSemanticToken { dimension4XS }
    @objc open var sizeIconWithTypeLabelLargeShort: SizingSemanticToken { dimension3XS }
    @objc open var sizeIconWithTypeLabelLargeMedium: SizingSemanticToken { dimension2XS }
    @objc open var sizeIconWithTypeLabelLargeTall: SizingSemanticToken { dimensionXS }
    @objc open var sizeIconWithTypeLabelLargeTaller: SizingSemanticToken { dimensionLG }

    @objc open var sizeIconWithTypeLabelXLargeShort: SizingSemanticToken { dimensionXS }
    @objc open var sizeIconWithTypeLabelXLargeMedium: SizingSemanticToken { dimensionMD }
    @objc open var sizeIconWithTypeLabelXLargeTall: SizingSemanticToken { dimensionLG }

    // MARK: - Semantic token - Sizing - Max width typography

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

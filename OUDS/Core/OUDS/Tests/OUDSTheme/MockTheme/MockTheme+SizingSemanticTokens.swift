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

extension MockTheme {

    static let mockThemeSizeRawToken: DimensionRawToken = 118_000
    static let mockThemeSizeCompositeToken: SizingCompositeSemanticToken = SizingCompositeSemanticToken(compact: 1, regular: 151)

    // MARK: Semantic token - Sizing - Width height - Icon decorative

    override var sizeIconDecorativeShortest: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeShorter: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeShort: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeMedium: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeTall: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeTaller: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeTallest: SizingSemanticToken { Self.mockThemeSizeRawToken }

    // MARK: Semantic token - Sizing - Width height - Icon component

    override var sizeIconWithTypeHeadingSmallShort: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithTypeHeadingSmallMedium: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithTypeHeadingSmallTall: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithTypeHeadingMediumShort: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithTypeHeadingMediumMedium: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithTypeHeadingTall: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithTypeHeadingLargeShort: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithTypeHeadingLargeMedium: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithTypeHeadingTall: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithTypeHeadingXLargeShort: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithTypeHeadingXLargeMedium: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithTypeHeadingXLargeTall: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithTypeLabelXLargeMedium: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithTypeLabelXLargeTall: SizingSemanticToken { Self.mockThemeSizeRawToken }

    // MARK: Semantic token - Sizing - Width height - Icon typography - Heading

    override var sizeWidthHeightIconIsHeadingSmallShort: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeWidthHeightIconIsHeadingSmallMedium: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeWidthHeightIconIsHeadingSmallTall: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeWidthHeightIconIsHeadingMediumShort: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeWidthHeightIconIsHeadingMediumMedium: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeWidthHeightIconIsHeadingMediumTall: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeWidthHeightIconIsHeadingLargeShort: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeWidthHeightIconIsHeadingLargeMedium: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeWidthHeightIconIsHeadingLargeTall: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeWidthHeightIconIsHeadingXLargeShort: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeWidthHeightIconIsHeadingXLargeMedium: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeWidthHeightIconIsHeadingXLargeTall: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }

    // MARK: Semantic token - Sizing - Width height - Icon typography - Body

    override var sizeIconWithTypeBodySmallShort: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodySmallMediuù: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodySmallTall: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodyMediumShort: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodyMediumMedium: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodyMediumTall: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodyLargeShort: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodyLargeMedium: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodyLargeTall: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }

    // MARK: Semantic token - Sizing - Max width

    override var sizeMaxWidthTypeDisplaySmall: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeDisplayMedium: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeDisplayLarge: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeHeadingSmall: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeHeadingMedium: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeHeadingLarge: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeHeadingXLarge: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeBodySmall: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeBodyMedium: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeBodyLarge: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
}

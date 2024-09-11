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

    override var sizeWidthHeightIconShortest: SizingWidthHeightSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeWidthHeightIconShorter: SizingWidthHeightSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeWidthHeightIconShort: SizingWidthHeightSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeWidthHeightIconMedium: SizingWidthHeightSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeWidthHeightIconTall: SizingWidthHeightSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeWidthHeightIconTaller: SizingWidthHeightSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeWidthHeightIconTallest: SizingWidthHeightSemanticToken { Self.mockThemeSizeRawToken }

    // MARK: Semantic token - Sizing - Width height - Icon component

    override var sizeWidthHeightIsLabelSmallShort: SizingWidthHeightSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeWidthHeightIsLabelSmallMedium: SizingWidthHeightSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeWidthHeightIsLabelSmallTall: SizingWidthHeightSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeWidthHeightIsLabelMediumShort: SizingWidthHeightSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeWidthHeightIsLabelMediumMedium: SizingWidthHeightSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeWidthHeightIsLabelMediumTall: SizingWidthHeightSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeWidthHeightIsLabelLargeShorter: SizingWidthHeightSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeWidthHeightIsLabelLargeShort: SizingWidthHeightSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeWidthHeightIsLabelLargeMedium: SizingWidthHeightSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeWidthHeightIsLabelLargeTall: SizingWidthHeightSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeWidthHeightIsLabelLargeTaller: SizingWidthHeightSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeWidthHeightIsLabelXLargeShort: SizingWidthHeightSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeWidthHeightIsLabelXLargeMedium: SizingWidthHeightSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeWidthHeightIsLabelXLargeTall: SizingWidthHeightSemanticToken { Self.mockThemeSizeRawToken }

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

    override var sizeWidthHeightIconIsBodySmallShort: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeWidthHeightIconIsBodySmallMedium: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeWidthHeightIconIsBodySmallTall: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeWidthHeightIconIsBodyMediumShort: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeWidthHeightIconIsBodyMediumMedium: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeWidthHeightIconIsBodyMediumTall: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeWidthHeightIconIsBodyLargeShort: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeWidthHeightIconIsBodyLargeMedium: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeWidthHeightIconIsBodyLargeTall: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }

    // MARK: Semantic token - Sizing - Max width

    override var sizeMaxWidthTypographyDisplaySmall: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypographyDisplayMedium: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypographyDisplayLarge: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypographyHeadingSmall: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypographyHeadingMedium: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypographyHeadingLarge: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypographyHeadingXLarge: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypographyBodySmall: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypographyBodyMedium: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypographyBodyLarge: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
}

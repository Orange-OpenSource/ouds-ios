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
    static let mockThemeSizeCompositeToken: MultipleSizingSemanticToken = MultipleSizingSemanticToken(compact: 1, regular: 151)

    // MARK: - Semantic token - Sizing - Icon decorative

    override var sizeIconDecorativeShortest: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeShorter: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeShort: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeMedium: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeTall: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeTaller: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeTallest: SizingSemanticToken { Self.mockThemeSizeRawToken }

    // MARK: - Semantic token - Sizing - Icon with typography

    override var sizeIconWithTypeHeadingSmallShort: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeHeadingSmallMedium: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeHeadingSmallTall: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithTypeHeadingMediumShort: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeHeadingMediumMedium: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeHeadingMediumTall: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithTypeHeadingLargeShort: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeHeadingLargeMedium: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeHeadingLargeTall: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithTypeHeadingXLargeShort: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeHeadingXLargeMedium: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeHeadingXLargeTall: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithTypeBodySmallShort: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodySmallMedium: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodySmallTall: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithTypeBodyMediumShort: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodyMediumMedium: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodyMediumTall: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithTypeBodyLargeShort: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodyLargeMedium: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodyLargeTall: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithTypeLabelSmallShort: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithTypeLabelSmallMedium: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithTypeLabelSmallTall: SizingSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithTypeLabelMediumShort: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithTypeLabelMediumMedium: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithTypeLabelMediumTall: SizingSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithTypeLabelLargeShorter: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithTypeLabelLargeShort: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithTypeLabelLargeMedium: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithTypeLabelLargeTall: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithTypeLabelLargeTaller: SizingSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithTypeLabelXLargeShort: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithTypeLabelXLargeMedium: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithTypeLabelXLargeTall: SizingSemanticToken { Self.mockThemeSizeRawToken }

    // MARK: - Semantic token - Sizing - Max width typography

    override var sizeMaxWidthTypeDisplaySmall: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeDisplayMedium: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeDisplayLarge: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }

    override var sizeMaxWidthTypeHeadingSmall: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeHeadingMedium: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeHeadingLarge: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeHeadingXLarge: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }

    override var sizeMaxWidthTypeBodySmall: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeBodyMedium: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeBodyLarge: MultipleSizingSemanticToken { Self.mockThemeSizeCompositeToken }
}

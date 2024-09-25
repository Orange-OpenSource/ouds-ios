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
    static let mockThemeSizeCompositeToken: MultipleSizingTokens = MultipleSizingTokens(compact: 1, regular: 151)

    // MARK: - Semantic token - Sizing - Icon decorative

    override var sizeIconDecorativeShortest: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeShorter: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeShort: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeMedium: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeTall: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeTaller: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeTallest: SizingSemanticToken { Self.mockThemeSizeRawToken }

    // MARK: - Semantic token - Sizing - Icon with typography

    override var sizeIconWithTypeHeadingSmallShort: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeHeadingSmallMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeHeadingSmallTall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithTypeHeadingMediumShort: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeHeadingMediumMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeHeadingMediumTall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithTypeHeadingLargeShort: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeHeadingLargeMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeHeadingLargeTall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithTypeHeadingXLargeShort: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeHeadingXLargeMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeHeadingXLargeTall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithTypeBodySmallShort: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodySmallMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodySmallTall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithTypeBodyMediumShort: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodyMediumMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodyMediumTall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithTypeBodyLargeShort: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodyLargeMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodyLargeTall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

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

    override var sizeMaxWidthTypeDisplaySmall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeDisplayMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeDisplayLarge: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

    override var sizeMaxWidthTypeHeadingSmall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeHeadingMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeHeadingLarge: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeHeadingXLarge: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

    override var sizeMaxWidthTypeBodySmall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeBodyMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeBodyLarge: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
}

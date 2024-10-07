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

    override var sizeIconWithHeadingSmallShort: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithHeadingSmallMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithHeadingSmallTall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithHeadingMediumShort: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithHeadingMediumMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithHeadingMediumTall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithHeadingLargeShort: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithHeadingLargeMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithHeadingLargeTall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithHeadingXLargeShort: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithHeadingXLargeMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithHeadingXLargeTall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithBodySmallShort: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithBodySmallMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithBodySmallTall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithBodyMediumShort: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithBodyMediumMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithBodyMediumTall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithBodyLargeShort: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithBodyLargeMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithBodyLargeTall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithLabelSmallSizeShort: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithLabelSmallSizeMedium: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithLabelSmallSizeTall: SizingSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithLabelMediumSizeShort: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithLabelMediumSizeMedium: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithLabelMediumSizeTall: SizingSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithLabelLargeSizeShorter: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithLabelLargeSizeShort: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithLabelLargeSizeMedium: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithLabelLargeSizeTall: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithLabelLargeSizeTaller: SizingSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithLabelXLargeSizeShort: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithLabelXLargeSizeMedium: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithLabelXLargeSizeTall: SizingSemanticToken { Self.mockThemeSizeRawToken }

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

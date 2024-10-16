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
    static let mockThemeSizeCompositeToken = MultipleSizingTokens(compact: 1, regular: 151)

    // MARK: - Semantic token - Sizing - Icon decorative

    override open var sizeIconDecorativeShortest: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconDecorativeShorter: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconDecorativeShort: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconDecorativeMedium: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconDecorativeTall: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconDecorativeTaller: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconDecorativeTallest: SizingSemanticToken { Self.mockThemeSizeRawToken }

    // MARK: - Semantic token - Sizing - Icon with typography

    override open var sizeIconWithHeadingSmallShort: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingSmallMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingSmallTall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithHeadingMediumShort: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingMediumMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingMediumTall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithHeadingLargeShort: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingLargeMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingLargeTall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithHeadingXLargeShort: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingXLargeMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithHeadingXLargeTall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithBodySmallShort: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodySmallMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodySmallTall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithBodyMediumShort: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodyMediumMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodyMediumTall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithBodyLargeShort: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodyLargeMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeIconWithBodyLargeTall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeIconWithLabelSmallSizeShort: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelSmallSizeMedium: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelSmallSizeTall: SizingSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithLabelMediumSizeShort: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelMediumSizeMedium: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelMediumSizeTall: SizingSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithLabelLargeSizeShorter: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelLargeSizeShort: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelLargeSizeMedium: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelLargeSizeTall: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelLargeSizeTaller: SizingSemanticToken { Self.mockThemeSizeRawToken }

    override open var sizeIconWithLabelXLargeSizeShort: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelXLargeSizeMedium: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override open var sizeIconWithLabelXLargeSizeTall: SizingSemanticToken { Self.mockThemeSizeRawToken }

    // MARK: - Semantic token - Sizing - Max width typography

    override open var sizeMaxWidthTypeDisplaySmall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeMaxWidthTypeDisplayMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeMaxWidthTypeDisplayLarge: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeMaxWidthTypeHeadingSmall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeMaxWidthTypeHeadingMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeMaxWidthTypeHeadingLarge: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeMaxWidthTypeHeadingXLarge: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }

    override open var sizeMaxWidthTypeBodySmall: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeMaxWidthTypeBodyMedium: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
    override open var sizeMaxWidthTypeBodyLarge: MultipleSizingTokens { Self.mockThemeSizeCompositeToken }
}

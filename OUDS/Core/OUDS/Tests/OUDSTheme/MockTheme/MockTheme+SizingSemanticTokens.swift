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

    // MARK: - Semantic token - Sizing - Icon decorative

    override var sizeIconDecorativeShortest: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeShorter: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeShort: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeMedium: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeTall: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeTaller: SizingSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeTallest: SizingSemanticToken { Self.mockThemeSizeRawToken }

    // MARK: - Semantic token - Sizing - Icon with typography

    override var sizeIconWithTypeHeadingSmallShort: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeHeadingSmallMedium: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeHeadingSmallTall: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    
    override var sizeIconWithTypeHeadingMediumShort: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeHeadingMediumMedium: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeHeadingMediumTall: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    
    override var sizeIconWithTypeHeadingLargeShort: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeHeadingLargeMedium: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeHeadingLargeTall: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    
    override var sizeIconWithTypeHeadingXLargeShort: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeHeadingXLargeMedium: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeHeadingXLargeTall: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithTypeBodySmallShort: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodySmallMedium: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodySmallTall: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    
    override var sizeIconWithTypeBodyMediumShort: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodyMediumMedium: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodyMediumTall: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    
    override var sizeIconWithTypeBodyLargeShort: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodyLargeMedium: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithTypeBodyLargeTall: SizingCompositeSemanticToken { Self.mockThemeSizeCompositeToken }

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

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
import OUDSTokensPrimitive
import OUDSTokensSemantic

extension OUDSTheme: TypographySemanticTokens {
    
    // MARK: Semantic token - Typography - Font - Family

    public var fontFamilyDisplay: TypographyFontFamilySemanticToken { get { TypographyPrimitiveTokens.fontFamilySystem } set { } }
    public var fontFamilyHeading: TypographyFontFamilySemanticToken { get { TypographyPrimitiveTokens.fontFamilySystem } set { } }
    public var fontFamilyBody: TypographyFontFamilySemanticToken { get { TypographyPrimitiveTokens.fontFamilySystem } set { } }
    public var fontFamilyLabel: TypographyFontFamilySemanticToken { get { TypographyPrimitiveTokens.fontFamilySystem } set { } }
    public var fontFamilyCode: TypographyFontFamilySemanticToken { get { TypographyPrimitiveTokens.fontFamilySystem } set { } }

    // MARK: Semantic token - Typography - Font - Weight

    public var fontWeightDisplay: TypographyFontWeightSemanticToken { get { TypographyPrimitiveTokens.fontWeight700 } set { } }
    public var fontWeightHeading: TypographyFontWeightSemanticToken { get { TypographyPrimitiveTokens.fontWeight700 } set { } }
    public var fontWeightBodyDefault: TypographyFontWeightSemanticToken { get { TypographyPrimitiveTokens.fontWeight400 } set { } }
    public var fontWeightBodyStrong: TypographyFontWeightSemanticToken { get { TypographyPrimitiveTokens.fontWeight700 } set { } }
    public var fontWeightLabelDefault: TypographyFontWeightSemanticToken { get { TypographyPrimitiveTokens.fontWeight400 } set { } }
    public var fontWeightLabelStrong: TypographyFontWeightSemanticToken { get { TypographyPrimitiveTokens.fontWeight700 } set { } }
    public var fontWeightWeightCode: TypographyFontWeightSemanticToken { get { TypographyPrimitiveTokens.fontWeight400 } set { } }

    // MARK: Semantic token - Typography - Font - Size - Mobile

    public var fontSizeMobileDislayLarge: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize850 } set { } }
    public var fontSizeMobileDisplayMedium: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize750 } set { } }
    public var fontSizeMobileDisplaySmall: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize650 } set { } }
    public var fontSizeMobileHeadingXLarge: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize550 } set { } }
    public var fontSizeMobileHeadingLarge: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize450 } set { } }
    public var fontSizeMobileHeadingMedium: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize350 } set { } }
    public var fontSizeMobileHeadingSmall: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize300 } set { } }
    public var fontSizeMobileBodyLarge: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize250 } set { } }
    public var fontSizeMobileBodyMedium: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize200 } set { } }
    public var fontSizeMobileBodySmall: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize100 } set { } }

    // MARK: Semantic token - Typography - Font - Size - Tablet

    public var fontSizeTabletDislayLarge: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize1450 } set { } }
    public var fontSizeTabletDisplayMedium: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize1050 } set { } }
    public var fontSizeTabletDisplaySmall: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize850 } set { } }
    public var fontSizeTabletHeadingXLarge: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize750 } set { } }
    public var fontSizeTabletHeadingLarge: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize550 } set { } }
    public var fontSizeTabletHeadingMedium: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize450 } set { } }
    public var fontSizeTabletHeadingSmall: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize350 } set { } }
    public var fontSizeTabletBodyLarge: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize250 } set { } }
    public var fontSizeTabletBodyMedium: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize200 } set { } }
    public var fontSizeTabletBodySmall: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize150 } set { } }

    // MARK: Semantic token - Typography - Font - Size - Others

    public var fontSizeLabelXLarge: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize300 } set { } }
    public var fontSizeLabelLarge: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize250 } set { } }
    public var fontSizeLabelMedium: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize200 } set { } }
    public var fontSizeLabelSmall: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize100 } set { } }
    public var fontSizeCodeMedium: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize200 } set { } }
    public var fontSizeCodeSmall: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize150 } set { } }

    // MARK: Semantic token - Typography - Font - Light height - Mobile

    public var fontLineHeightMobileDislayLarge: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight1050 } set { } }
    public var fontLineHeightMobileDisplayMedium: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight950 } set { } }
    public var fontLineHeightMobileDisplaySmall: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight850 } set { } }
    public var fontLineHeightMobileHeadingXLarge: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight750 } set { } }
    public var fontLineHeightMobileHeadingLarge: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight650 } set { } }
    public var fontLineHeightMobileHeadingMedium: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight550 } set { } }
    public var fontLineHeightMobileHeadingSmall: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight450 } set { } }
    public var fontLineHeightMobileBodyLarge: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight450 } set { } }
    public var fontLineHeightMobileBodyMedium: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight350 } set { } }
    public var fontLineHeightMobileBodySmall: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight250 } set { } }

    // MARK: Semantic token - Typography - Font - Light height - Tablet

    public var fontLineHeightTabletDislayLarge: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight1850 } set { } }
    public var fontLineHeightTabletDisplayMedium: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight1250 } set { } }
    public var fontLineHeightTabletDisplaySmall: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight1050 } set { } }
    public var fontLineHeightTabletHeadingXLarge: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight950 } set { } }
    public var fontLineHeightTabletHeadingLarge: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight750 } set { } }
    public var fontLineHeightTabletHeadingMedium: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight650 } set { } }
    public var fontLineHeightTabletHeadingSmall: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight550 } set { } }
    public var fontLineHeightTabletBodyLarge: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight450 } set { } }
    public var fontLineHeightTabletBodyMedium: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight350 } set { } }
    public var fontLineHeightTabletBodySmall: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight250 } set { } }

    // MARK: Semantic token - Typography - Font - Light height - Others

    public var fontLineHeightLabelXLarge: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight450 } set { } }
    public var fontLineHeightLabelLarge: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight450 } set { } }
    public var fontLineHeightLabelMedium: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight350 } set { } }
    public var fontLineHeightLabelSmall: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight250 } set { } }
    public var fontLineHeightCodeMedium: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight350 } set { } }
    public var fontLineHeightCodeSmall: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight250 } set { } }

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Mobile

    public var fontParagraphSpacingMobileDislayLarge: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    public var fontParagraphSpacingMobileDisplayMedium: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    public var fontParagraphSpacingMobileDisplaySmall: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    public var fontParagraphSpacingMobileHeadingXLarge: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    public var fontParagraphSpacingMobileHeadingLarge: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    public var fontParagraphSpacingMobileHeadingMedium: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    public var fontParagraphSpacingMobileHeadingSmall: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    public var fontParagraphSpacingMobileBodyLarge: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    public var fontParagraphSpacingMobileBodyMedium: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    public var fontParagraphSpacingMobileBodySmall: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Tablet

    public var fontParagraphSpacingTabletDislayLarge: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    public var fontParagraphSpacingTabletDisplayMedium: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    public var fontParagraphSpacingTabletDisplaySmall: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    public var fontParagraphSpacingTabletHeadingXLarge: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    public var fontParagraphSpacingTabletHeadingLarge: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    public var fontParagraphSpacingTabletHeadingMedium: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    public var fontParagraphSpacingTabletHeadingSmall: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    public var fontParagraphSpacingTabletBodyLarge: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    public var fontParagraphSpacingTabletBodyMedium: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    public var fontParagraphSpacingTabletBodySmall: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Others

    public var fontParagraphSpacingLabelXLarge: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    public var fontParagraphSpacingLabelLarge: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    public var fontParagraphSpacingLabelMedium: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    public var fontParagraphSpacingLabelSmall: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    public var fontParagraphSpacingCodeMedium: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    public var fontParagraphSpacingCodeSmall: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }

}

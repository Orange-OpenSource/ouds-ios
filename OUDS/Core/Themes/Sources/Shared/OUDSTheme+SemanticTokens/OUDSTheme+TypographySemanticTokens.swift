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

    @objc open var fontFamilyDisplay: TypographyFontFamilySemanticToken { get { TypographyPrimitiveTokens.fontFamilySystem } set { } }
    @objc open var fontFamilyHeading: TypographyFontFamilySemanticToken { get { TypographyPrimitiveTokens.fontFamilySystem } set { } }
    @objc open var fontFamilyBody: TypographyFontFamilySemanticToken { get { TypographyPrimitiveTokens.fontFamilySystem } set { } }
    @objc open var fontFamilyLabel: TypographyFontFamilySemanticToken { get { TypographyPrimitiveTokens.fontFamilySystem } set { } }
    @objc open var fontFamilyCode: TypographyFontFamilySemanticToken { get { TypographyPrimitiveTokens.fontFamilySystem } set { } }

    // MARK: Semantic token - Typography - Font - Weight

    @objc open var fontWeightDisplay: TypographyFontWeightSemanticToken { get { TypographyPrimitiveTokens.fontWeight700 } set { } }
    @objc open var fontWeightHeading: TypographyFontWeightSemanticToken { get { TypographyPrimitiveTokens.fontWeight700 } set { } }
    @objc open var fontWeightBodyDefault: TypographyFontWeightSemanticToken { get { TypographyPrimitiveTokens.fontWeight400 } set { } }
    @objc open var fontWeightBodyStrong: TypographyFontWeightSemanticToken { get { TypographyPrimitiveTokens.fontWeight700 } set { } }
    @objc open var fontWeightLabelDefault: TypographyFontWeightSemanticToken { get { TypographyPrimitiveTokens.fontWeight400 } set { } }
    @objc open var fontWeightLabelStrong: TypographyFontWeightSemanticToken { get { TypographyPrimitiveTokens.fontWeight700 } set { } }
    @objc open var fontWeightWeightCode: TypographyFontWeightSemanticToken { get { TypographyPrimitiveTokens.fontWeight400 } set { } }

    // MARK: Semantic token - Typography - Font - Size - Mobile

    @objc open var fontSizeMobileDislayLarge: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize850 } set { } }
    @objc open var fontSizeMobileDisplayMedium: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize750 } set { } }
    @objc open var fontSizeMobileDisplaySmall: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize650 } set { } }
    @objc open var fontSizeMobileHeadingXLarge: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize550 } set { } }
    @objc open var fontSizeMobileHeadingLarge: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize450 } set { } }
    @objc open var fontSizeMobileHeadingMedium: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize350 } set { } }
    @objc open var fontSizeMobileHeadingSmall: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize300 } set { } }
    @objc open var fontSizeMobileBodyLarge: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize250 } set { } }
    @objc open var fontSizeMobileBodyMedium: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize200 } set { } }
    @objc open var fontSizeMobileBodySmall: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize100 } set { } }

    // MARK: Semantic token - Typography - Font - Size - Tablet

    @objc open var fontSizeTabletDislayLarge: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize1450 } set { } }
    @objc open var fontSizeTabletDisplayMedium: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize1050 } set { } }
    @objc open var fontSizeTabletDisplaySmall: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize850 } set { } }
    @objc open var fontSizeTabletHeadingXLarge: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize750 } set { } }
    @objc open var fontSizeTabletHeadingLarge: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize550 } set { } }
    @objc open var fontSizeTabletHeadingMedium: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize450 } set { } }
    @objc open var fontSizeTabletHeadingSmall: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize350 } set { } }
    @objc open var fontSizeTabletBodyLarge: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize250 } set { } }
    @objc open var fontSizeTabletBodyMedium: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize200 } set { } }
    @objc open var fontSizeTabletBodySmall: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize150 } set { } }

    // MARK: Semantic token - Typography - Font - Size - Others

    @objc open var fontSizeLabelXLarge: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize300 } set { } }
    @objc open var fontSizeLabelLarge: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize250 } set { } }
    @objc open var fontSizeLabelMedium: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize200 } set { } }
    @objc open var fontSizeLabelSmall: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize100 } set { } }
    @objc open var fontSizeCodeMedium: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize200 } set { } }
    @objc open var fontSizeCodeSmall: TypographyFontSizeSemanticToken { get { TypographyPrimitiveTokens.fontSize150 } set { } }

    // MARK: Semantic token - Typography - Font - Light height - Mobile

    @objc open var fontLineHeightMobileDislayLarge: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight1050 } set { } }
    @objc open var fontLineHeightMobileDisplayMedium: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight950 } set { } }
    @objc open var fontLineHeightMobileDisplaySmall: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight850 } set { } }
    @objc open var fontLineHeightMobileHeadingXLarge: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight750 } set { } }
    @objc open var fontLineHeightMobileHeadingLarge: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight650 } set { } }
    @objc open var fontLineHeightMobileHeadingMedium: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight550 } set { } }
    @objc open var fontLineHeightMobileHeadingSmall: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight450 } set { } }
    @objc open var fontLineHeightMobileBodyLarge: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight450 } set { } }
    @objc open var fontLineHeightMobileBodyMedium: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight350 } set { } }
    @objc open var fontLineHeightMobileBodySmall: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight250 } set { } }

    // MARK: Semantic token - Typography - Font - Light height - Tablet

    @objc open var fontLineHeightTabletDislayLarge: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight1850 } set { } }
    @objc open var fontLineHeightTabletDisplayMedium: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight1250 } set { } }
    @objc open var fontLineHeightTabletDisplaySmall: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight1050 } set { } }
    @objc open var fontLineHeightTabletHeadingXLarge: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight950 } set { } }
    @objc open var fontLineHeightTabletHeadingLarge: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight750 } set { } }
    @objc open var fontLineHeightTabletHeadingMedium: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight650 } set { } }
    @objc open var fontLineHeightTabletHeadingSmall: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight550 } set { } }
    @objc open var fontLineHeightTabletBodyLarge: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight450 } set { } }
    @objc open var fontLineHeightTabletBodyMedium: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight350 } set { } }
    @objc open var fontLineHeightTabletBodySmall: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight250 } set { } }

    // MARK: Semantic token - Typography - Font - Light height - Others

    @objc open var fontLineHeightLabelXLarge: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight450 } set { } }
    @objc open var fontLineHeightLabelLarge: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight450 } set { } }
    @objc open var fontLineHeightLabelMedium: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight350 } set { } }
    @objc open var fontLineHeightLabelSmall: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight250 } set { } }
    @objc open var fontLineHeightCodeMedium: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight350 } set { } }
    @objc open var fontLineHeightCodeSmall: TypographyFontLineHeightSemanticToken { get { TypographyPrimitiveTokens.fontLineHeight250 } set { } }

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Mobile

    @objc open var fontParagraphSpacingMobileDislayLarge: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    @objc open var fontParagraphSpacingMobileDisplayMedium: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    @objc open var fontParagraphSpacingMobileDisplaySmall: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    @objc open var fontParagraphSpacingMobileHeadingXLarge: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    @objc open var fontParagraphSpacingMobileHeadingLarge: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    @objc open var fontParagraphSpacingMobileHeadingMedium: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    @objc open var fontParagraphSpacingMobileHeadingSmall: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    @objc open var fontParagraphSpacingMobileBodyLarge: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    @objc open var fontParagraphSpacingMobileBodyMedium: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    @objc open var fontParagraphSpacingMobileBodySmall: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Tablet

    @objc open var fontParagraphSpacingTabletDislayLarge: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    @objc open var fontParagraphSpacingTabletDisplayMedium: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    @objc open var fontParagraphSpacingTabletDisplaySmall: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    @objc open var fontParagraphSpacingTabletHeadingXLarge: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    @objc open var fontParagraphSpacingTabletHeadingLarge: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    @objc open var fontParagraphSpacingTabletHeadingMedium: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    @objc open var fontParagraphSpacingTabletHeadingSmall: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    @objc open var fontParagraphSpacingTabletBodyLarge: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    @objc open var fontParagraphSpacingTabletBodyMedium: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    @objc open var fontParagraphSpacingTabletBodySmall: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Others

    @objc open var fontParagraphSpacingLabelXLarge: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    @objc open var fontParagraphSpacingLabelLarge: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    @objc open var fontParagraphSpacingLabelMedium: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    @objc open var fontParagraphSpacingLabelSmall: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    @objc open var fontParagraphSpacingCodeMedium: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }
    @objc open var fontParagraphSpacingCodeSmall: TypographyFontParagraphSpacingPrimitiveToken { get { TypographyPrimitiveTokens.fontParagraphSpacing100 } set { } }

}

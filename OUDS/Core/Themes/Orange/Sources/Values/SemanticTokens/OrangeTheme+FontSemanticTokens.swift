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

extension OrangeThemeFontSemanticTokensProvider: FontSemanticTokens {
    @objc open var fontFamily: FontFamilySemanticToken { FontRawTokens.fontFamilySystemSfPro }
    @objc open var fontLetterSpacingBodyLargeMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing250 }
    @objc open var fontLetterSpacingBodyLargeTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing250 }
    @objc open var fontLetterSpacingBodyMediumMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing200 }
    @objc open var fontLetterSpacingBodyMediumTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing200 }
    @objc open var fontLetterSpacingBodySmallMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing150 }
    @objc open var fontLetterSpacingBodySmallTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing150 }
    @objc open var fontLetterSpacingCodeMedium: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing200 }
    @objc open var fontLetterSpacingDisplayLargeMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing850 }
    @objc open var fontLetterSpacingDisplayLargeTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing1450 }
    @objc open var fontLetterSpacingDisplayMediumMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing750 }
    @objc open var fontLetterSpacingDisplayMediumTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing1050 }
    @objc open var fontLetterSpacingDisplaySmallMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing650 }
    @objc open var fontLetterSpacingDisplaySmallTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing850 }
    @objc open var fontLetterSpacingHeadingLargeMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing450 }
    @objc open var fontLetterSpacingHeadingLargeTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing550 }
    @objc open var fontLetterSpacingHeadingMediumMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing350 }
    @objc open var fontLetterSpacingHeadingMediumTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing450 }
    @objc open var fontLetterSpacingHeadingSmallMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing300 }
    @objc open var fontLetterSpacingHeadingSmallTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing350 }
    @objc open var fontLetterSpacingHeadingXlargeMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing550 }
    @objc open var fontLetterSpacingHeadingXlargeTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing750 }
    @objc open var fontLetterSpacingLabelLarge: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing250 }
    @objc open var fontLetterSpacingLabelMedium: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing200 }
    @objc open var fontLetterSpacingLabelSmall: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing150 }
    @objc open var fontLetterSpacingLabelXlarge: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing300 }
    @objc open var fontLineHeightBodyLargeMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightBodyLargeTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightBodyMediumMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightBodyMediumTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightBodySmallMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight250 }
    @objc open var fontLineHeightBodySmallTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight250 }
    @objc open var fontLineHeightCodeMedium: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightDisplayLargeMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight1050 }
    @objc open var fontLineHeightDisplayLargeTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight1850 }
    @objc open var fontLineHeightDisplayMediumMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight950 }
    @objc open var fontLineHeightDisplayMediumTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight1250 }
    @objc open var fontLineHeightDisplaySmallMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight850 }
    @objc open var fontLineHeightDisplaySmallTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight1050 }
    @objc open var fontLineHeightHeadingLargeMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight650 }
    @objc open var fontLineHeightHeadingLargeTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight750 }
    @objc open var fontLineHeightHeadingMediumMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight550 }
    @objc open var fontLineHeightHeadingMediumTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight650 }
    @objc open var fontLineHeightHeadingSmallMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightHeadingSmallTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight550 }
    @objc open var fontLineHeightHeadingXlargeMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight750 }
    @objc open var fontLineHeightHeadingXlargeTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight950 }
    @objc open var fontLineHeightLabelLarge: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightLabelMedium: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightLabelSmall: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight250 }
    @objc open var fontLineHeightLabelXlarge: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight450 }
    @objc open var fontSizeBodyLargeMobile: FontSizeSemanticToken { FontRawTokens.fontSize250 }
    @objc open var fontSizeBodyLargeTablet: FontSizeSemanticToken { FontRawTokens.fontSize250 }
    @objc open var fontSizeBodyMediumMobile: FontSizeSemanticToken { FontRawTokens.fontSize200 }
    @objc open var fontSizeBodyMediumTablet: FontSizeSemanticToken { FontRawTokens.fontSize200 }
    @objc open var fontSizeBodySmallMobile: FontSizeSemanticToken { FontRawTokens.fontSize150 }
    @objc open var fontSizeBodySmallTablet: FontSizeSemanticToken { FontRawTokens.fontSize150 }
    @objc open var fontSizeCodeMedium: FontSizeSemanticToken { FontRawTokens.fontSize200 }
    @objc open var fontSizeDisplayLargeMobile: FontSizeSemanticToken { FontRawTokens.fontSize850 }
    @objc open var fontSizeDisplayLargeTablet: FontSizeSemanticToken { FontRawTokens.fontSize1450 }
    @objc open var fontSizeDisplayMediumMobile: FontSizeSemanticToken { FontRawTokens.fontSize750 }
    @objc open var fontSizeDisplayMediumTablet: FontSizeSemanticToken { FontRawTokens.fontSize1050 }
    @objc open var fontSizeDisplaySmallMobile: FontSizeSemanticToken { FontRawTokens.fontSize650 }
    @objc open var fontSizeDisplaySmallTablet: FontSizeSemanticToken { FontRawTokens.fontSize850 }
    @objc open var fontSizeHeadingLargeMobile: FontSizeSemanticToken { FontRawTokens.fontSize450 }
    @objc open var fontSizeHeadingLargeTablet: FontSizeSemanticToken { FontRawTokens.fontSize550 }
    @objc open var fontSizeHeadingMediumMobile: FontSizeSemanticToken { FontRawTokens.fontSize350 }
    @objc open var fontSizeHeadingMediumTablet: FontSizeSemanticToken { FontRawTokens.fontSize450 }
    @objc open var fontSizeHeadingSmallMobile: FontSizeSemanticToken { FontRawTokens.fontSize300 }
    @objc open var fontSizeHeadingSmallTablet: FontSizeSemanticToken { FontRawTokens.fontSize350 }
    @objc open var fontSizeHeadingXlargeMobile: FontSizeSemanticToken { FontRawTokens.fontSize550 }
    @objc open var fontSizeHeadingXlargeTablet: FontSizeSemanticToken { FontRawTokens.fontSize750 }
    @objc open var fontSizeLabelLarge: FontSizeSemanticToken { FontRawTokens.fontSize250 }
    @objc open var fontSizeLabelMedium: FontSizeSemanticToken { FontRawTokens.fontSize200 }
    @objc open var fontSizeLabelSmall: FontSizeSemanticToken { FontRawTokens.fontSize150 }
    @objc open var fontSizeLabelXlarge: FontSizeSemanticToken { FontRawTokens.fontSize300 }
    @objc open var fontWeightCode: FontWeightSemanticToken { FontRawTokens.fontWeight400 }
    @objc open var fontWeightDefault: FontWeightSemanticToken { FontRawTokens.fontWeight400 }
    @objc open var fontWeightStrong: FontWeightSemanticToken { FontRawTokens.fontWeight700 }
    @objc open var fontWeightBodyDefault: FontWeightSemanticToken { fontWeightDefault }
    @objc open var fontWeightBodyStrong: FontWeightSemanticToken { fontWeightStrong }
    @objc open var fontWeightDisplay: FontWeightSemanticToken { fontWeightStrong }
    @objc open var fontWeightHeading: FontWeightSemanticToken { fontWeightStrong }
    @objc open var fontWeightLabelDefault: FontWeightSemanticToken { fontWeightDefault }
    @objc open var fontWeightLabelStrong: FontWeightSemanticToken { fontWeightStrong }
}
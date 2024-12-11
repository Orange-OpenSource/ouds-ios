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

// ଘ( ･ω･)_/ﾟ･:*:･｡☆
// [File to generate by the tokenator]
// WARNING: Not synchronized anymore with the Figjam / Figma by developers team
// Create an issue for update https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=token_update.yml

/// Defines basic values common to all themes for `FontSemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension OUDSTheme: FontSemanticTokens {

    // MARK: Semantic token - Typography - Font - Family

    @objc open var fontFamily: FontFamilySemanticToken { FontRawTokens.fontFamilySystemSFPro }
    @objc open var fontFamilyDisplay: FontFamilySemanticToken { fontFamily }
    @objc open var fontFamilyHeading: FontFamilySemanticToken { fontFamily }
    @objc open var fontFamilyBody: FontFamilySemanticToken { fontFamily }
    @objc open var fontFamilyLabel: FontFamilySemanticToken { fontFamily }
    @objc open var fontFamilyCode: FontFamilySemanticToken { FontRawTokens.fontFamilyMonospaceMenlo }

    // MARK: Semantic token - Typography - Font - Weight

    @objc open var fontWeightDefault: FontWeightSemanticToken { FontRawTokens.fontWeight400 }
    @objc open var fontWeightCode: FontWeightSemanticToken { FontRawTokens.fontWeight400 }
    @objc open var fontWeightStrong: FontWeightSemanticToken { FontRawTokens.fontWeight700 }
    @objc open var fontWeightDisplay: FontWeightSemanticToken { fontWeightStrong }
    @objc open var fontWeightHeading: FontWeightSemanticToken { fontWeightStrong }
    @objc open var fontWeightBodyDefault: FontWeightSemanticToken { fontWeightDefault }
    @objc open var fontWeightBodyStrong: FontWeightSemanticToken { fontWeightStrong }
    @objc open var fontWeightLabelDefault: FontWeightSemanticToken { fontWeightDefault }
    @objc open var fontWeightLabelStrong: FontWeightSemanticToken { fontWeightStrong }

    // MARK: Semantic token - Typography - Font - Size

    @objc open var fontSizeDisplayLargeMobile: FontSizeSemanticToken { FontRawTokens.fontSize850 }
    @objc open var fontSizeDisplayLargeTablet: FontSizeSemanticToken { FontRawTokens.fontSize1450 }
    @objc open var fontSizeDisplayMediumMobile: FontSizeSemanticToken { FontRawTokens.fontSize750 }
    @objc open var fontSizeDisplayMediumTablet: FontSizeSemanticToken { FontRawTokens.fontSize1050 }
    @objc open var fontSizeDisplaySmallMobile: FontSizeSemanticToken { FontRawTokens.fontSize650 }
    @objc open var fontSizeDisplaySmallTablet: FontSizeSemanticToken { FontRawTokens.fontSize850 }
    @objc open var fontSizeHeadingXLargeMobile: FontSizeSemanticToken { FontRawTokens.fontSize550 }
    @objc open var fontSizeHeadingXLargeTablet: FontSizeSemanticToken { FontRawTokens.fontSize750 }
    @objc open var fontSizeHeadingLargeMobile: FontSizeSemanticToken { FontRawTokens.fontSize450 }
    @objc open var fontSizeHeadingLargeTablet: FontSizeSemanticToken { FontRawTokens.fontSize550 }
    @objc open var fontSizeHeadingMediumMobile: FontSizeSemanticToken { FontRawTokens.fontSize350 }
    @objc open var fontSizeHeadingMediumTablet: FontSizeSemanticToken { FontRawTokens.fontSize450 }
    @objc open var fontSizeHeadingSmallMobile: FontSizeSemanticToken { FontRawTokens.fontSize300 }
    @objc open var fontSizeHeadingSmallTablet: FontSizeSemanticToken { FontRawTokens.fontSize350 }
    @objc open var fontSizeBodyLargeMobile: FontSizeSemanticToken { FontRawTokens.fontSize250 }
    @objc open var fontSizeBodyLargeTablet: FontSizeSemanticToken { FontRawTokens.fontSize250 }
    @objc open var fontSizeBodyMediumMobile: FontSizeSemanticToken { FontRawTokens.fontSize200 }
    @objc open var fontSizeBodyMediumTablet: FontSizeSemanticToken { FontRawTokens.fontSize200 }
    @objc open var fontSizeBodySmallMobile: FontSizeSemanticToken { FontRawTokens.fontSize150 }
    @objc open var fontSizeBodySmallTablet: FontSizeSemanticToken { FontRawTokens.fontSize150 }
    @objc open var fontSizeLabelXLargeMobile: FontSizeSemanticToken { FontRawTokens.fontSize300 }
    @objc open var fontSizeLabelXLargeTablet: FontSizeSemanticToken { FontRawTokens.fontSize300 }
    @objc open var fontSizeLabelLargeMobile: FontSizeSemanticToken { FontRawTokens.fontSize250 }
    @objc open var fontSizeLabelLargeTablet: FontSizeSemanticToken { FontRawTokens.fontSize250 }
    @objc open var fontSizeLabelMediumMobile: FontSizeSemanticToken { FontRawTokens.fontSize200 }
    @objc open var fontSizeLabelMediumTablet: FontSizeSemanticToken { FontRawTokens.fontSize200 }
    @objc open var fontSizeLabelSmallMobile: FontSizeSemanticToken { FontRawTokens.fontSize150 }
    @objc open var fontSizeLabelSmallTablet: FontSizeSemanticToken { FontRawTokens.fontSize150 }
    @objc open var fontSizeCodeMediumMobile: FontSizeSemanticToken { FontRawTokens.fontSize200 }
    @objc open var fontSizeCodeMediumTablet: FontSizeSemanticToken { FontRawTokens.fontSize200 }
    @objc open var fontSizeCodeSmallMobile: FontSizeSemanticToken { FontRawTokens.fontSize150 }
    @objc open var fontSizeCodeSmallTablet: FontSizeSemanticToken { FontRawTokens.fontSize150 }

    // MARK: - Semantic token - Typography - Font - Line height

    @objc open var fontLineHeightDisplayLargeMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight1050 }
    @objc open var fontLineHeightDisplayLargeTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight1850 }
    @objc open var fontLineHeightDisplayMediumMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight950 }
    @objc open var fontLineHeightDisplayMediumTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight1250 }
    @objc open var fontLineHeightDisplaySmallMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight850 }
    @objc open var fontLineHeightDisplaySmallTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight1050 }
    @objc open var fontLineHeightHeadingXLargeMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight750 }
    @objc open var fontLineHeightHeadingXLargeTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight950 }
    @objc open var fontLineHeightHeadingLargeMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight650 }
    @objc open var fontLineHeightHeadingLargeTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight750 }
    @objc open var fontLineHeightHeadingMediumMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight550 }
    @objc open var fontLineHeightHeadingMediumTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight650 }
    @objc open var fontLineHeightHeadingSmallMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightHeadingSmallTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight550 }
    @objc open var fontLineHeightBodyLargeMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightBodyLargeTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightBodyMediumMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightBodyMediumTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightBodySmallMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight250 }
    @objc open var fontLineHeightBodySmallTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight250 }
    @objc open var fontLineHeightLabelXLargeMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightLabelXLargeTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightLabelLargeMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightLabelLargeTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightLabelMediumMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightLabelMediumTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightLabelSmallMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight250 }
    @objc open var fontLineHeightLabelSmallTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight250 }
    @objc open var fontLineHeightCodeMediumMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightCodeMediumTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightCodeSmallMobile: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight250 }
    @objc open var fontLineHeightCodeSmallTablet: FontLineHeightSemanticToken { FontRawTokens.fontLineHeight250 }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    @objc open var fontLetterSpacingDisplayLargeMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing850 }
    @objc open var fontLetterSpacingDisplayLargeTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing1450 }
    @objc open var fontLetterSpacingDisplayMediumMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing750 }
    @objc open var fontLetterSpacingDisplayMediumTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing1050 }
    @objc open var fontLetterSpacingDisplaySmallMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing650 }
    @objc open var fontLetterSpacingDisplaySmallTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing850 }
    @objc open var fontLetterSpacingHeadingXLargeMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing550 }
    @objc open var fontLetterSpacingHeadingXLargeTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing750 }
    @objc open var fontLetterSpacingHeadingLargeMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing450 }
    @objc open var fontLetterSpacingHeadingLargeTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing750 }
    @objc open var fontLetterSpacingHeadingMediumMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing350 }
    @objc open var fontLetterSpacingHeadingMediumTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing450 }
    @objc open var fontLetterSpacingHeadingSmallMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing300 }
    @objc open var fontLetterSpacingHeadingSmallTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing350 }
    @objc open var fontLetterSpacingBodyLargeMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing250 }
    @objc open var fontLetterSpacingBodyLargeTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing250 }
    @objc open var fontLetterSpacingBodyMediumMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing200 }
    @objc open var fontLetterSpacingBodyMediumTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing200 }
    @objc open var fontLetterSpacingBodySmallMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing150 }
    @objc open var fontLetterSpacingBodySmallTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing150 }
    @objc open var fontLetterSpacingLabelXLargeMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing300 }
    @objc open var fontLetterSpacingLabelXLargeTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing300 }
    @objc open var fontLetterSpacingLabelLargeMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing250 }
    @objc open var fontLetterSpacingLabelLargeTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing250 }
    @objc open var fontLetterSpacingLabelMediumMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing200 }
    @objc open var fontLetterSpacingLabelMediumTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing200 }
    @objc open var fontLetterSpacingLabelSmallMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing150 }
    @objc open var fontLetterSpacingLabelSmallTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing150 }
    @objc open var fontLetterSpacingCodeMediumMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing200 }
    @objc open var fontLetterSpacingCodeMediumTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing200 }
    @objc open var fontLetterSpacingCodeSmallMobile: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing150 }
    @objc open var fontLetterSpacingCodeSmallTablet: FontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing150 }
}

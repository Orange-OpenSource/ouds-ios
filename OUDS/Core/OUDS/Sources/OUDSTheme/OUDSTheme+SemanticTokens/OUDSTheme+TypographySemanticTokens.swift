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

/// Defines basic values common to all themes for `TypographySemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension OUDSTheme: TypographySemanticTokens {

    // MARK: Semantic token - Typography - Font - Family

    @objc open var fontFamily: TypographyFontFamilySemanticToken { FontRawTokens.fontFamilySystemSFPro }
    @objc open var fontFamilyDisplay: TypographyFontFamilySemanticToken { fontFamily }
    @objc open var fontFamilyHeading: TypographyFontFamilySemanticToken { fontFamily }
    @objc open var fontFamilyBody: TypographyFontFamilySemanticToken { fontFamily }
    @objc open var fontFamilyLabel: TypographyFontFamilySemanticToken { fontFamily }
    @objc open var fontFamilyCode: TypographyFontFamilySemanticToken { FontRawTokens.fontFamilyMonospaceMenlo }

    // MARK: Semantic token - Typography - Font - Weight

    @objc open var fontWeightDefault: TypographyFontWeightSemanticToken { FontRawTokens.fontWeight400 }
    @objc open var fontWeightCode: TypographyFontWeightSemanticToken { FontRawTokens.fontWeight400 }
    @objc open var fontWeightStrong: TypographyFontWeightSemanticToken { FontRawTokens.fontWeight700 }
    @objc open var fontWeightDisplay: TypographyFontWeightSemanticToken { fontWeightStrong }
    @objc open var fontWeightHeading: TypographyFontWeightSemanticToken { fontWeightStrong }
    @objc open var fontWeightBodyDefault: TypographyFontWeightSemanticToken { fontWeightDefault }
    @objc open var fontWeightBodyStrong: TypographyFontWeightSemanticToken { fontWeightStrong }
    @objc open var fontWeightLabelDefault: TypographyFontWeightSemanticToken { fontWeightDefault }
    @objc open var fontWeightLabelStrong: TypographyFontWeightSemanticToken { fontWeightStrong }

    // MARK: Semantic token - Typography - Font - Size

    @objc open var fontSizeDisplayLargeMobile: TypographyFontSizeSemanticToken { FontRawTokens.fontSize850 }
    @objc open var fontSizeDisplayLargeTablet: TypographyFontSizeSemanticToken { FontRawTokens.fontSize1450 }
    @objc open var fontSizeDisplayMediumMobile: TypographyFontSizeSemanticToken { FontRawTokens.fontSize750 }
    @objc open var fontSizeDisplayMediumTablet: TypographyFontSizeSemanticToken { FontRawTokens.fontSize1050 }
    @objc open var fontSizeDisplaySmallMobile: TypographyFontSizeSemanticToken { FontRawTokens.fontSize650 }
    @objc open var fontSizeDisplaySmallTablet: TypographyFontSizeSemanticToken { FontRawTokens.fontSize850 }
    @objc open var fontSizeHeadingXLargeMobile: TypographyFontSizeSemanticToken { FontRawTokens.fontSize550 }
    @objc open var fontSizeHeadingXLargeTablet: TypographyFontSizeSemanticToken { FontRawTokens.fontSize750 }
    @objc open var fontSizeHeadingLargeMobile: TypographyFontSizeSemanticToken { FontRawTokens.fontSize450 }
    @objc open var fontSizeHeadingLargeTablet: TypographyFontSizeSemanticToken { FontRawTokens.fontSize550 }
    @objc open var fontSizeHeadingMediumMobile: TypographyFontSizeSemanticToken { FontRawTokens.fontSize350 }
    @objc open var fontSizeHeadingMediumTablet: TypographyFontSizeSemanticToken { FontRawTokens.fontSize450 }
    @objc open var fontSizeHeadingSmallMobile: TypographyFontSizeSemanticToken { FontRawTokens.fontSize300 }
    @objc open var fontSizeHeadingSmallTablet: TypographyFontSizeSemanticToken { FontRawTokens.fontSize350 }
    @objc open var fontSizeBodyLargeMobile: TypographyFontSizeSemanticToken { FontRawTokens.fontSize250 }
    @objc open var fontSizeBodyLargeTablet: TypographyFontSizeSemanticToken { FontRawTokens.fontSize250 }
    @objc open var fontSizeBodyMediumMobile: TypographyFontSizeSemanticToken { FontRawTokens.fontSize200 }
    @objc open var fontSizeBodyMediumTablet: TypographyFontSizeSemanticToken { FontRawTokens.fontSize200 }
    @objc open var fontSizeBodySmallMobile: TypographyFontSizeSemanticToken { FontRawTokens.fontSize150 }
    @objc open var fontSizeBodySmallTablet: TypographyFontSizeSemanticToken { FontRawTokens.fontSize150 }
    @objc open var fontSizeLabelXLargeMobile: TypographyFontSizeSemanticToken { FontRawTokens.fontSize300 }
    @objc open var fontSizeLabelXLargeTablet: TypographyFontSizeSemanticToken { FontRawTokens.fontSize300 }
    @objc open var fontSizeLabelLargeMobile: TypographyFontSizeSemanticToken { FontRawTokens.fontSize250 }
    @objc open var fontSizeLabelLargeTablet: TypographyFontSizeSemanticToken { FontRawTokens.fontSize250 }
    @objc open var fontSizeLabelMediumMobile: TypographyFontSizeSemanticToken { FontRawTokens.fontSize200 }
    @objc open var fontSizeLabelMediumTablet: TypographyFontSizeSemanticToken { FontRawTokens.fontSize200 }
    @objc open var fontSizeLabelSmallMobile: TypographyFontSizeSemanticToken { FontRawTokens.fontSize150 }
    @objc open var fontSizeLabelSmallTablet: TypographyFontSizeSemanticToken { FontRawTokens.fontSize150 }
    @objc open var fontSizeCodeMediumMobile: TypographyFontSizeSemanticToken { FontRawTokens.fontSize200 }
    @objc open var fontSizeCodeMediumTablet: TypographyFontSizeSemanticToken { FontRawTokens.fontSize200 }
    @objc open var fontSizeCodeSmallMobile: TypographyFontSizeSemanticToken { FontRawTokens.fontSize150 }
    @objc open var fontSizeCodeSmallTablet: TypographyFontSizeSemanticToken { FontRawTokens.fontSize150 }

    // MARK: - Semantic token - Typography - Font - Line height

    @objc open var fontLineHeightDisplayLargeMobile: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight1050 }
    @objc open var fontLineHeightDisplayLargeTablet: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight1850 }
    @objc open var fontLineHeightDisplayMediumMobile: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight950 }
    @objc open var fontLineHeightDisplayMediumTablet: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight1250 }
    @objc open var fontLineHeightDisplaySmallMobile: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight850 }
    @objc open var fontLineHeightDisplaySmallTablet: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight1050 }
    @objc open var fontLineHeightHeadingXLargeMobile: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight750 }
    @objc open var fontLineHeightHeadingXLargeTablet: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight950 }
    @objc open var fontLineHeightHeadingLargeMobile: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight650 }
    @objc open var fontLineHeightHeadingLargeTablet: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight750 }
    @objc open var fontLineHeightHeadingMediumMobile: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight550 }
    @objc open var fontLineHeightHeadingMediumTablet: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight650 }
    @objc open var fontLineHeightHeadingSmallMobile: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightHeadingSmallTablet: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight550 }
    @objc open var fontLineHeightBodyLargeMobile: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightBodyLargeTablet: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightBodyMediumMobile: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightBodyMediumTablet: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightBodySmallMobile: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight250 }
    @objc open var fontLineHeightBodySmallTablet: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight250 }
    @objc open var fontLineHeightLabelXLargeMobile: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightLabelXLargeTablet: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightLabelLargeMobile: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightLabelLargeTablet: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightLabelMediumMobile: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightLabelMediumTablet: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightLabelSmallMobile: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight250 }
    @objc open var fontLineHeightLabelSmallTablet: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight250 }
    @objc open var fontLineHeightCodeMediumMobile: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightCodeMediumTablet: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightCodeSmallMobile: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight250 }
    @objc open var fontLineHeightCodeSmallTablet: TypographyFontLineHeightSemanticToken { FontRawTokens.fontLineHeight250 }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    @objc open var fontLetterSpacingDisplayLargeMobile: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing850 }
    @objc open var fontLetterSpacingDisplayLargeTablet: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing1450 }
    @objc open var fontLetterSpacingDisplayMediumMobile: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing750 }
    @objc open var fontLetterSpacingDisplayMediumTablet: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing1050 }
    @objc open var fontLetterSpacingDisplaySmallMobile: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing650 }
    @objc open var fontLetterSpacingDisplaySmallTablet: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing850 }
    @objc open var fontLetterSpacingHeadingXLargeMobile: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing550 }
    @objc open var fontLetterSpacingHeadingXLargeTablet: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing750 }
    @objc open var fontLetterSpacingHeadingLargeMobile: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing450 }
    @objc open var fontLetterSpacingHeadingLargeTablet: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing750 }
    @objc open var fontLetterSpacingHeadingMediumMobile: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing350 }
    @objc open var fontLetterSpacingHeadingMediumTablet: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing450 }
    @objc open var fontLetterSpacingHeadingSmallMobile: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing300 }
    @objc open var fontLetterSpacingHeadingSmallTablet: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing350 }
    @objc open var fontLetterSpacingBodyLargeMobile: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing250 }
    @objc open var fontLetterSpacingBodyLargeTablet: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing250 }
    @objc open var fontLetterSpacingBodyMediumMobile: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing200 }
    @objc open var fontLetterSpacingBodyMediumTablet: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing200 }
    @objc open var fontLetterSpacingBodySmallMobile: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing150 }
    @objc open var fontLetterSpacingBodySmallTablet: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing150 }
    @objc open var fontLetterSpacingLabelXLargeMobile: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing300 }
    @objc open var fontLetterSpacingLabelXLargeTablet: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing300 }
    @objc open var fontLetterSpacingLabelLargeMobile: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing250 }
    @objc open var fontLetterSpacingLabelLargeTablet: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing250 }
    @objc open var fontLetterSpacingLabelMediumMobile: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing200 }
    @objc open var fontLetterSpacingLabelMediumTablet: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing200 }
    @objc open var fontLetterSpacingLabelSmallMobile: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing150 }
    @objc open var fontLetterSpacingLabelSmallTablet: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing150 }
    @objc open var fontLetterSpacingCodeMediumMobile: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing200 }
    @objc open var fontLetterSpacingCodeMediumTablet: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing200 }
    @objc open var fontLetterSpacingCodeSmallMobile: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing150 }
    @objc open var fontLetterSpacingCodeSmallTablet: TypographyFontLetterSpacingSemanticToken { FontRawTokens.fontLetterSpacing150 }
}

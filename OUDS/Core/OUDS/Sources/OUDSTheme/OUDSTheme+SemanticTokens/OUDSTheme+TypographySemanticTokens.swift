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
// [File to generate with the tokenator]
// WARNING: Not synchronized anymore with the Figjam / Figma by developers team
// Create an issue for update https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=token_update.yml

/// Defines basic values common to all themes for `TypographySemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension OUDSTheme: TypographySemanticTokens {

    // MARK: Semantic token - Typography - Font - Family

    @objc open var fontFamily: TypographyFontFamilySemanticToken { TypographyRawTokens.fontFamilySystemSFPro }
    @objc open var fontFamilyDisplay: TypographyFontFamilySemanticToken { fontFamily }
    @objc open var fontFamilyHeading: TypographyFontFamilySemanticToken { fontFamily }
    @objc open var fontFamilyBody: TypographyFontFamilySemanticToken { fontFamily }
    @objc open var fontFamilyLabel: TypographyFontFamilySemanticToken { fontFamily }
    @objc open var fontFamilyCode: TypographyFontFamilySemanticToken { TypographyRawTokens.fontFamilyMonospaceMenlo }

    // MARK: Semantic token - Typography - Font - Weight

    @objc open var fontWeightDefault: TypographyFontWeightSemanticToken { TypographyRawTokens.fontWeight400 }
    @objc open var fontWeightCode: TypographyFontWeightSemanticToken { TypographyRawTokens.fontWeight400 }
    @objc open var fontWeightStrong: TypographyFontWeightSemanticToken { TypographyRawTokens.fontWeight700 }
    @objc open var fontWeightDisplay: TypographyFontWeightSemanticToken { fontWeightStrong }
    @objc open var fontWeightHeading: TypographyFontWeightSemanticToken { fontWeightStrong }
    @objc open var fontWeightBodyDefault: TypographyFontWeightSemanticToken { fontWeightDefault }
    @objc open var fontWeightBodyStrong: TypographyFontWeightSemanticToken { fontWeightStrong }
    @objc open var fontWeightLabelDefault: TypographyFontWeightSemanticToken { fontWeightDefault }
    @objc open var fontWeightLabelStrong: TypographyFontWeightSemanticToken { fontWeightStrong }

    // MARK: Semantic token - Typography - Font - Size

    @objc open var fontSizeDisplayLargeMobile: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize850 }
    @objc open var fontSizeDisplayLargeTablet: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize1450 }
    @objc open var fontSizeDisplayMediumMobile: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize750 }
    @objc open var fontSizeDisplayMediumTablet: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize1050 }
    @objc open var fontSizeDisplaySmallMobile: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize650 }
    @objc open var fontSizeDisplaySmallTablet: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize850 }
    @objc open var fontSizeHeadingXLargeMobile: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize550 }
    @objc open var fontSizeHeadingXLargeTablet: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize750 }
    @objc open var fontSizeHeadingLargeMobile: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize450 }
    @objc open var fontSizeHeadingLargeTablet: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize550 }
    @objc open var fontSizeHeadingMediumMobile: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize350 }
    @objc open var fontSizeHeadingMediumTablet: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize450 }
    @objc open var fontSizeHeadingSmallMobile: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize300 }
    @objc open var fontSizeHeadingSmallTablet: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize350 }
    @objc open var fontSizeBodyLargeMobile: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize250 }
    @objc open var fontSizeBodyLargeTablet: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize250 }
    @objc open var fontSizeBodyMediumMobile: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize200 }
    @objc open var fontSizeBodyMediumTablet: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize200 }
    @objc open var fontSizeBodySmallMobile: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize150 }
    @objc open var fontSizeBodySmallTablet: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize150 }
    @objc open var fontSizeLabelXLargeMobile: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize300 }
    @objc open var fontSizeLabelXLargeTablet: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize300 }
    @objc open var fontSizeLabelLargeMobile: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize250 }
    @objc open var fontSizeLabelLargeTablet: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize250 }
    @objc open var fontSizeLabelMediumMobile: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize200 }
    @objc open var fontSizeLabelMediumTablet: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize200 }
    @objc open var fontSizeLabelSmallMobile: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize150 }
    @objc open var fontSizeLabelSmallTablet: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize150 }
    @objc open var fontSizeCodeMediumMobile: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize200 }
    @objc open var fontSizeCodeMediumTablet: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize200 }
    @objc open var fontSizeCodeSmallMobile: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize150 }
    @objc open var fontSizeCodeSmallTablet: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize150 }

    // MARK: - Semantic token - Typography - Font - Line height

    @objc open var fontLineHeightDisplayLargeMobile: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight1050 }
    @objc open var fontLineHeightDisplayLargeTablet: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight1850 }
    @objc open var fontLineHeightDisplayMediumMobile: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight950 }
    @objc open var fontLineHeightDisplayMediumTablet: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight1250 }
    @objc open var fontLineHeightDisplaySmallMobile: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight850 }
    @objc open var fontLineHeightDisplaySmallTablet: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight1050 }
    @objc open var fontLineHeightHeadingXLargeMobile: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight750 }
    @objc open var fontLineHeightHeadingXLargeTablet: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight950 }
    @objc open var fontLineHeightHeadingLargeMobile: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight650 }
    @objc open var fontLineHeightHeadingLargeTablet: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight750 }
    @objc open var fontLineHeightHeadingMediumMobile: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight550 }
    @objc open var fontLineHeightHeadingMediumTablet: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight650 }
    @objc open var fontLineHeightHeadingSmallMobile: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightHeadingSmallTablet: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight550 }
    @objc open var fontLineHeightBodyLargeMobile: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightBodyLargeTablet: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightBodyMediumMobile: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightBodyMediumTablet: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightBodySmallMobile: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight250 }
    @objc open var fontLineHeightBodySmallTablet: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight250 }
    @objc open var fontLineHeightLabelXLargeMobile: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightLabelXLargeTablet: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightLabelLargeMobile: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightLabelLargeTablet: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightLabelMediumMobile: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightLabelMediumTablet: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightLabelSmallMobile: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight250 }
    @objc open var fontLineHeightLabelSmallTablet: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight250 }
    @objc open var fontLineHeightCodeMediumMobile: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightCodeMediumTablet: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightCodeSmallMobile: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight250 }
    @objc open var fontLineHeightCodeSmallTablet: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight250 }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    @objc open var fontLetterSpacingDisplayLargeMobile: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing850 }
    @objc open var fontLetterSpacingDisplayLargeTablet: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing1450 }
    @objc open var fontLetterSpacingDisplayMediumMobile: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing750 }
    @objc open var fontLetterSpacingDisplayMediumTablet: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing1050 }
    @objc open var fontLetterSpacingDisplaySmallMobile: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing650 }
    @objc open var fontLetterSpacingDisplaySmallTablet: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing850 }
    @objc open var fontLetterSpacingHeadingXLargeMobile: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing550 }
    @objc open var fontLetterSpacingHeadingXLargeTablet: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing750 }
    @objc open var fontLetterSpacingHeadingLargeMobile: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing450 }
    @objc open var fontLetterSpacingHeadingLargeTablet: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing750 }
    @objc open var fontLetterSpacingHeadingMediumMobile: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing350 }
    @objc open var fontLetterSpacingHeadingMediumTablet: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing450 }
    @objc open var fontLetterSpacingHeadingSmallMobile: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing300 }
    @objc open var fontLetterSpacingHeadingSmallTablet: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing350 }
    @objc open var fontLetterSpacingBodyLargeMobile: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing250 }
    @objc open var fontLetterSpacingBodyLargeTablet: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing250 }
    @objc open var fontLetterSpacingBodyMediumMobile: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing200 }
    @objc open var fontLetterSpacingBodyMediumTablet: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing200 }
    @objc open var fontLetterSpacingBodySmallMobile: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing150 }
    @objc open var fontLetterSpacingBodySmallTablet: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing150 }
    @objc open var fontLetterSpacingLabelXLargeMobile: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing300 }
    @objc open var fontLetterSpacingLabelXLargeTablet: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing300 }
    @objc open var fontLetterSpacingLabelLargeMobile: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing250 }
    @objc open var fontLetterSpacingLabelLargeTablet: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing250 }
    @objc open var fontLetterSpacingLabelMediumMobile: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing200 }
    @objc open var fontLetterSpacingLabelMediumTablet: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing200 }
    @objc open var fontLetterSpacingLabelSmallMobile: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing150 }
    @objc open var fontLetterSpacingLabelSmallTablet: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing150 }
    @objc open var fontLetterSpacingCodeMediumMobile: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing200 }
    @objc open var fontLetterSpacingCodeMediumTablet: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing200 }
    @objc open var fontLetterSpacingCodeSmallMobile: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing150 }
    @objc open var fontLetterSpacingCodeSmallTablet: TypographyFontLetterSpacingSemanticToken { TypographyRawTokens.fontLetterSpacing150 }
}

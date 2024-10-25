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

// swiftlint:disable line_length

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

    @objc open var fontSizeDisplayLarge: MultipleFontSizeTokens { MultipleFontSizeTokens(compact: TypographyRawTokens.fontSize850, regular: TypographyRawTokens.fontSize1450) }
    @objc open var fontSizeDisplayMedium: MultipleFontSizeTokens { MultipleFontSizeTokens(compact: TypographyRawTokens.fontSize750, regular: TypographyRawTokens.fontSize1050) }
    @objc open var fontSizeDisplaySmall: MultipleFontSizeTokens { MultipleFontSizeTokens(compact: TypographyRawTokens.fontSize650, regular: TypographyRawTokens.fontSize850) }
    @objc open var fontSizeHeadingXLarge: MultipleFontSizeTokens { MultipleFontSizeTokens(compact: TypographyRawTokens.fontSize550, regular: TypographyRawTokens.fontSize750) }
    @objc open var fontSizeHeadingLarge: MultipleFontSizeTokens { MultipleFontSizeTokens(compact: TypographyRawTokens.fontSize450, regular: TypographyRawTokens.fontSize550) }
    @objc open var fontSizeHeadingMedium: MultipleFontSizeTokens { MultipleFontSizeTokens(compact: TypographyRawTokens.fontSize350, regular: TypographyRawTokens.fontSize450) }
    @objc open var fontSizeHeadingSmall: MultipleFontSizeTokens { MultipleFontSizeTokens(compact: TypographyRawTokens.fontSize300, regular: TypographyRawTokens.fontSize350) }
    @objc open var fontSizeBodyLarge: MultipleFontSizeTokens { MultipleFontSizeTokens(TypographyRawTokens.fontSize250) }
    @objc open var fontSizeBodyMedium: MultipleFontSizeTokens { MultipleFontSizeTokens(TypographyRawTokens.fontSize200) }
    @objc open var fontSizeBodySmall: MultipleFontSizeTokens { MultipleFontSizeTokens(TypographyRawTokens.fontSize150) }

    // MARK: Semantic token - Typography - Font - Size - Others

    @objc open var fontSizeLabelXLarge: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize300 }
    @objc open var fontSizeLabelLarge: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize250 }
    @objc open var fontSizeLabelMedium: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize200 }
    @objc open var fontSizeLabelSmall: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize150 }
    @objc open var fontSizeCodeMedium: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize200 }
    @objc open var fontSizeCodeSmall: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize150 }

    // MARK: - Semantic token - Typography - Font - Line height

    @objc open var fontLineHeightDisplayLarge: MultipleFontLineHeightTokens { MultipleFontLineHeightTokens(compact: TypographyRawTokens.fontLineHeight1050, regular: TypographyRawTokens.fontLineHeight1850) }
    @objc open var fontLineHeightDisplayMedium: MultipleFontLineHeightTokens { MultipleFontLineHeightTokens(compact: TypographyRawTokens.fontLineHeight950, regular: TypographyRawTokens.fontLineHeight1250) }
    @objc open var fontLineHeightDisplaySmall: MultipleFontLineHeightTokens { MultipleFontLineHeightTokens(compact: TypographyRawTokens.fontLineHeight850, regular: TypographyRawTokens.fontLineHeight1050) }
    @objc open var fontLineHeightHeadingXLarge: MultipleFontLineHeightTokens { MultipleFontLineHeightTokens(compact: TypographyRawTokens.fontLineHeight750, regular: TypographyRawTokens.fontLineHeight950) }
    @objc open var fontLineHeightHeadingLarge: MultipleFontLineHeightTokens { MultipleFontLineHeightTokens(compact: TypographyRawTokens.fontLineHeight650, regular: TypographyRawTokens.fontLineHeight750) }
    @objc open var fontLineHeightHeadingMedium: MultipleFontLineHeightTokens { MultipleFontLineHeightTokens(compact: TypographyRawTokens.fontLineHeight550, regular: TypographyRawTokens.fontLineHeight650) }
    @objc open var fontLineHeightHeadingSmall: MultipleFontLineHeightTokens { MultipleFontLineHeightTokens(compact: TypographyRawTokens.fontLineHeight450, regular: TypographyRawTokens.fontLineHeight550) }
    @objc open var fontLineHeightBodyLarge: MultipleFontLineHeightTokens { MultipleFontLineHeightTokens(TypographyRawTokens.fontLineHeight450) }
    @objc open var fontLineHeightBodyMedium: MultipleFontLineHeightTokens { MultipleFontLineHeightTokens(TypographyRawTokens.fontLineHeight350) }
    @objc open var fontLineHeightBodySmall: MultipleFontLineHeightTokens { MultipleFontLineHeightTokens(TypographyRawTokens.fontLineHeight250) }
    @objc open var fontLineHeightLabelXLarge: MultipleFontLineHeightTokens { MultipleFontLineHeightTokens(TypographyRawTokens.fontLineHeight450) }
    @objc open var fontLineHeightLabelLarge: MultipleFontLineHeightTokens { MultipleFontLineHeightTokens(TypographyRawTokens.fontLineHeight450) }
    @objc open var fontLineHeightLabelMedium: MultipleFontLineHeightTokens { MultipleFontLineHeightTokens(TypographyRawTokens.fontLineHeight350) }
    @objc open var fontLineHeightLabelSmall: MultipleFontLineHeightTokens { MultipleFontLineHeightTokens(TypographyRawTokens.fontLineHeight250) }
    @objc open var fontLineHeightCodeMedium: MultipleFontLineHeightTokens { MultipleFontLineHeightTokens(TypographyRawTokens.fontLineHeight350) }
    @objc open var fontLineHeightCodeSmall: MultipleFontLineHeightTokens { MultipleFontLineHeightTokens(TypographyRawTokens.fontLineHeight250) }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    @objc open var fontLetterSpacingDisplayLarge: MultipleFontLetterSpacingTokens { MultipleFontLetterSpacingTokens(compact: TypographyRawTokens.fontLetterSpacing850, regular: TypographyRawTokens.fontLetterSpacing1450) }
    @objc open var fontLetterSpacingDisplayMedium: MultipleFontLetterSpacingTokens { MultipleFontLetterSpacingTokens(compact: TypographyRawTokens.fontLetterSpacing750, regular: TypographyRawTokens.fontLetterSpacing1050) }
    @objc open var fontLetterSpacingDisplaySmall: MultipleFontLetterSpacingTokens { MultipleFontLetterSpacingTokens(compact: TypographyRawTokens.fontLetterSpacing650, regular: TypographyRawTokens.fontLetterSpacing850 ) }
    @objc open var fontLetterSpacingHeadingXLarge: MultipleFontLetterSpacingTokens { MultipleFontLetterSpacingTokens(compact: TypographyRawTokens.fontLetterSpacing550, regular: TypographyRawTokens.fontLetterSpacing750) }
    @objc open var fontLetterSpacingHeadingLarge: MultipleFontLetterSpacingTokens { MultipleFontLetterSpacingTokens(compact: TypographyRawTokens.fontLetterSpacing450, regular: TypographyRawTokens.fontLetterSpacing750) }
    @objc open var fontLetterSpacingHeadingMedium: MultipleFontLetterSpacingTokens { MultipleFontLetterSpacingTokens(compact: TypographyRawTokens.fontLetterSpacing350, regular: TypographyRawTokens.fontLetterSpacing450) }
    @objc open var fontLetterSpacingHeadingSmall: MultipleFontLetterSpacingTokens { MultipleFontLetterSpacingTokens(compact: TypographyRawTokens.fontLetterSpacing300, regular: TypographyRawTokens.fontLetterSpacing350 ) }
    @objc open var fontLetterSpacingBodyLarge: MultipleFontLetterSpacingTokens { MultipleFontLetterSpacingTokens(TypographyRawTokens.fontLetterSpacing250) }
    @objc open var fontLetterSpacingBodyMedium: MultipleFontLetterSpacingTokens { MultipleFontLetterSpacingTokens(TypographyRawTokens.fontLetterSpacing200) }
    @objc open var fontLetterSpacingBodySmall: MultipleFontLetterSpacingTokens { MultipleFontLetterSpacingTokens(TypographyRawTokens.fontLetterSpacing150) }

    @objc open var fontLetterSpacingLabelXLarge: MultipleFontLetterSpacingTokens { MultipleFontLetterSpacingTokens(TypographyRawTokens.fontLetterSpacing300) }
    @objc open var fontLetterSpacingLabelLarge: MultipleFontLetterSpacingTokens { MultipleFontLetterSpacingTokens(TypographyRawTokens.fontLetterSpacing250) }
    @objc open var fontLetterSpacingLabelMedium: MultipleFontLetterSpacingTokens { MultipleFontLetterSpacingTokens(TypographyRawTokens.fontLetterSpacing200) }
    @objc open var fontLetterSpacingLabelSmall: MultipleFontLetterSpacingTokens { MultipleFontLetterSpacingTokens(TypographyRawTokens.fontLetterSpacing150) }
    @objc open var fontLetterSpacingCodeMedium: MultipleFontLetterSpacingTokens { MultipleFontLetterSpacingTokens(TypographyRawTokens.fontLetterSpacing200) }
    @objc open var fontLetterSpacingCodeSmall: MultipleFontLetterSpacingTokens { MultipleFontLetterSpacingTokens(TypographyRawTokens.fontLetterSpacing150) }
}

// swiftlint:enable line_length

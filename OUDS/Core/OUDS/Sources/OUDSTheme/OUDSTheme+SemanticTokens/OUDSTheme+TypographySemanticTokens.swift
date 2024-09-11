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

// swiftlint:disable line_length
/// Defines basic values common to all themes for `TypographySemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension OUDSTheme: TypographySemanticTokens {

    // MARK: Semantic token - Typography - Font - Family

    @objc open var fontFamily: TypographyFontFamilySemanticToken { TypographyRawTokens.fontFamilyBrandDefault }
    @objc open var fontFamilyDisplay: TypographyFontFamilySemanticToken { fontFamily }
    @objc open var fontFamilyHeading: TypographyFontFamilySemanticToken { fontFamily }
    @objc open var fontFamilyBody: TypographyFontFamilySemanticToken { fontFamily }
    @objc open var fontFamilyLabel: TypographyFontFamilySemanticToken { fontFamily }
    @objc open var fontFamilyCode: TypographyFontFamilySemanticToken { TypographyRawTokens.fontFamilyMonospaceMenlo }

    // MARK: Semantic token - Typography - Font - Weight

    @objc open var fontWeightDefault: TypographyFontWeightSemanticToken { TypographyRawTokens.fontWeight400 }
    @objc open var fontWeightStrong: TypographyFontWeightSemanticToken { TypographyRawTokens.fontWeight700 }
    @objc open var fontWeightDisplay: TypographyFontWeightSemanticToken { TypographyRawTokens.fontWeight700 }
    @objc open var fontWeightHeading: TypographyFontWeightSemanticToken { TypographyRawTokens.fontWeight700 }
    @objc open var fontWeightBodyDefault: TypographyFontWeightSemanticToken { TypographyRawTokens.fontWeight400 }
    @objc open var fontWeightBodyStrong: TypographyFontWeightSemanticToken { TypographyRawTokens.fontWeight700 }
    @objc open var fontWeightLabelDefault: TypographyFontWeightSemanticToken { TypographyRawTokens.fontWeight400 }
    @objc open var fontWeightLabelStrong: TypographyFontWeightSemanticToken { TypographyRawTokens.fontWeight700 }
    @objc open var fontWeightCode: TypographyFontWeightSemanticToken { TypographyRawTokens.fontWeight400 }

    // MARK: Semantic token - Typography - Font - Size - Mobile

    @objc open var fontSizeMobileDisplayLarge: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize850 }
    @objc open var fontSizeMobileDisplayMedium: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize750 }
    @objc open var fontSizeMobileDisplaySmall: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize650 }
    @objc open var fontSizeMobileHeadingXLarge: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize550 }
    @objc open var fontSizeMobileHeadingLarge: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize450 }
    @objc open var fontSizeMobileHeadingMedium: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize350 }
    @objc open var fontSizeMobileHeadingSmall: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize300 }
    @objc open var fontSizeMobileBodyLarge: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize250 }
    @objc open var fontSizeMobileBodyMedium: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize200 }
    @objc open var fontSizeMobileBodySmall: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize100 }
    @objc open var fontSizeMobileCodeMedium: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize200 }
    @objc open var fontSizeMobileCodeSmall: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize100 }

    // MARK: Semantic token - Typography - Font - Size - Tablet

    @objc open var fontSizeTabletDisplayLarge: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize1450 }
    @objc open var fontSizeTabletDisplayMedium: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize1050 }
    @objc open var fontSizeTabletDisplaySmall: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize850 }
    @objc open var fontSizeTabletHeadingXLarge: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize750 }
    @objc open var fontSizeTabletHeadingLarge: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize550 }
    @objc open var fontSizeTabletHeadingMedium: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize450 }
    @objc open var fontSizeTabletHeadingSmall: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize350 }
    @objc open var fontSizeTabletBodyLarge: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize250 }
    @objc open var fontSizeTabletBodyMedium: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize200 }
    @objc open var fontSizeTabletBodySmall: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize150 }
    @objc open var fontSizeTabletCodeMedium: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize200 }
    @objc open var fontSizeTabletCodeSmall: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize150 }

    // MARK: Semantic token - Typography - Font - Size - Others

    @objc open var fontSizeLabelXLarge: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize300 }
    @objc open var fontSizeLabelLarge: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize250 }
    @objc open var fontSizeLabelMedium: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize200 }
    @objc open var fontSizeLabelSmall: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize150 }
    @objc open var fontSizeCodeMedium: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize200 }
    @objc open var fontSizeCodeSmall: TypographyFontSizeSemanticToken { TypographyRawTokens.fontSize150 }

    // MARK: Semantic token - Typography - Font - Light height - Mobile

    @objc open var fontLineHeightMobileDisplayLarge: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight1050 }
    @objc open var fontLineHeightMobileDisplayMedium: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight950 }
    @objc open var fontLineHeightMobileDisplaySmall: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight850 }
    @objc open var fontLineHeightMobileHeadingXLarge: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight750 }
    @objc open var fontLineHeightMobileHeadingLarge: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight650 }
    @objc open var fontLineHeightMobileHeadingMedium: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight550 }
    @objc open var fontLineHeightMobileHeadingSmall: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightMobileBodyLarge: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightMobileBodyMedium: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightMobileBodySmall: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight250 }
    @objc open var fontLineHeightMobileCodeMedium: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightMobileCodeSmall: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight250 }

    // MARK: Semantic token - Typography - Font - Light height - Tablet

    @objc open var fontLineHeightTabletDisplayLarge: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight1850 }
    @objc open var fontLineHeightTabletDisplayMedium: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight1250 }
    @objc open var fontLineHeightTabletDisplaySmall: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight1050 }
    @objc open var fontLineHeightTabletHeadingXLarge: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight950 }
    @objc open var fontLineHeightTabletHeadingLarge: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight750 }
    @objc open var fontLineHeightTabletHeadingMedium: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight650 }
    @objc open var fontLineHeightTabletHeadingSmall: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight550 }
    @objc open var fontLineHeightTabletBodyLarge: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightTabletBodyMedium: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightTabletBodySmall: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight250 }
    @objc open var fontLineHeightTabletCodeMedium: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightTabletCodeSmall: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight250 }

    // MARK: Semantic token - Typography - Font - Light height - Others

    @objc open var fontLineHeightLabelXLarge: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightLabelLarge: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight450 }
    @objc open var fontLineHeightLabelMedium: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightLabelSmall: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight250 }
    @objc open var fontLineHeightCodeMedium: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight350 }
    @objc open var fontLineHeightCodeSmall: TypographyFontLineHeightSemanticToken { TypographyRawTokens.fontLineHeight250 }

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Mobile

    @objc open var fontParagraphSpacingMobileDisplayLarge: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingMobileDisplayMedium: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingMobileDisplaySmall: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingMobileHeadingXLarge: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingMobileHeadingLarge: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingMobileHeadingMedium: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingMobileHeadingSmall: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingMobileBodyLarge: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingMobileBodyMedium: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingMobileBodySmall: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingMobileCodeMedium: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingMobileCodeSmall: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Tablet

    @objc open var fontParagraphSpacingTabletDisplayLarge: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingTabletDisplayMedium: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingTabletDisplaySmall: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingTabletHeadingXLarge: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingTabletHeadingLarge: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingTabletHeadingMedium: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingTabletHeadingSmall: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingTabletBodyLarge: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingTabletBodyMedium: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingTabletBodySmall: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingTabletCodeMedium: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingTabletCodeSmall: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Others

    @objc open var fontParagraphSpacingLabelXLarge: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingLabelLarge: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingLabelMedium: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingLabelSmall: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingCodeMedium: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }
    @objc open var fontParagraphSpacingCodeSmall: TypographyFontParagraphSpacingRawToken { TypographyRawTokens.fontParagraphSpacing100 }

    // MARK: - Semantic tokens - Typography - Composites - Display

    @objc open var typeDisplayLarge: TypographyCompositeSemanticToken { TypographyCompositeSemanticToken(compact: TypographyRawTokens.typeBold850, regular: TypographyRawTokens.typeBold1450) }
    @objc open var typeDisplayMedium: TypographyCompositeSemanticToken { TypographyCompositeSemanticToken(compact: TypographyRawTokens.typeBold750, regular: TypographyRawTokens.typeBold1050) }
    @objc open var typeDisplaySmall: TypographyCompositeSemanticToken { TypographyCompositeSemanticToken(compact: TypographyRawTokens.typeBold650, regular: TypographyRawTokens.typeBold850) }

    // MARK: - Semantic tokens - Typography - Composites - Heading

    @objc open var typeHeadingXLarge: TypographyCompositeSemanticToken { TypographyCompositeSemanticToken(compact: TypographyRawTokens.typeBold550, regular: TypographyRawTokens.typeBold750) }
    @objc open var typeHeadingLarge: TypographyCompositeSemanticToken { TypographyCompositeSemanticToken(compact: TypographyRawTokens.typeBold450, regular: TypographyRawTokens.typeBold550) }
    @objc open var typeHeadingMedium: TypographyCompositeSemanticToken { TypographyCompositeSemanticToken(compact: TypographyRawTokens.typeBold350, regular: TypographyRawTokens.typeBold450) }
    @objc open var typeHeadingSmall: TypographyCompositeSemanticToken { TypographyCompositeSemanticToken(compact: TypographyRawTokens.typeBold300, regular: TypographyRawTokens.typeBold350) }

    // MARK: - Semantic tokens - Typography - Composites - Body

    @objc open var typeBodyDefaultLarge: TypographyCompositeSemanticToken { TypographyCompositeSemanticToken(compact: TypographyRawTokens.typeBold250, regular: TypographyRawTokens.typeBold250) }
    @objc open var typeBodyDefaultMedium: TypographyCompositeSemanticToken { TypographyCompositeSemanticToken(compact: TypographyRawTokens.typeBold200, regular: TypographyRawTokens.typeBold200) }
    @objc open var typeBodyDefaultSmall: TypographyCompositeSemanticToken { TypographyCompositeSemanticToken(compact: TypographyRawTokens.typeBold150, regular: TypographyRawTokens.typeBold150) }
    @objc open var typeBodyStrongLarge: TypographyCompositeSemanticToken { TypographyCompositeSemanticToken(compact: TypographyRawTokens.typeBold250, regular: TypographyRawTokens.typeBold250) }
    @objc open var typeBodyStrongMedium: TypographyCompositeSemanticToken { TypographyCompositeSemanticToken(compact: TypographyRawTokens.typeBold200, regular: TypographyRawTokens.typeBold200) }
    @objc open var typeBodyStrongSmall: TypographyCompositeSemanticToken { TypographyCompositeSemanticToken(compact: TypographyRawTokens.typeBold150, regular: TypographyRawTokens.typeBold150) }

    // MARK: - Semantic tokens - Typography - Composites - Label

    @objc open var typeLabelDefaultXLarge: TypographyCompositeSemanticToken { TypographyCompositeSemanticToken(compact: TypographyRawTokens.typeBold300, regular: TypographyRawTokens.typeBold300) }
    @objc open var typeLabelDefaultLarge: TypographyCompositeSemanticToken { TypographyCompositeSemanticToken(compact: TypographyRawTokens.typeBold250, regular: TypographyRawTokens.typeBold250) }
    @objc open var typeLabelDefaultMedium: TypographyCompositeSemanticToken { TypographyCompositeSemanticToken(compact: TypographyRawTokens.typeBold200, regular: TypographyRawTokens.typeBold200) }
    @objc open var typeLabelDefaultSmall: TypographyCompositeSemanticToken { TypographyCompositeSemanticToken(compact: TypographyRawTokens.typeBold150, regular: TypographyRawTokens.typeBold150) }
    @objc open var typeLabelStrongXLarge: TypographyCompositeSemanticToken { TypographyCompositeSemanticToken(compact: TypographyRawTokens.typeBold300, regular: TypographyRawTokens.typeBold300) }
    @objc open var typeLabelStrongLarge: TypographyCompositeSemanticToken { TypographyCompositeSemanticToken(compact: TypographyRawTokens.typeBold250, regular: TypographyRawTokens.typeBold250) }
    @objc open var typeLabelStrongMedium: TypographyCompositeSemanticToken { TypographyCompositeSemanticToken(compact: TypographyRawTokens.typeBold200, regular: TypographyRawTokens.typeBold200) }
    @objc open var typeLabelStrongSmall: TypographyCompositeSemanticToken { TypographyCompositeSemanticToken(compact: TypographyRawTokens.typeBold150, regular: TypographyRawTokens.typeBold150) }

    // MARK: - Semantic tokens - Typography - Composites - Code

    @objc open var typeCodeMedium: TypographyCompositeSemanticToken { TypographyCompositeSemanticToken(compact: TypographyRawTokens.typeBold200, regular: TypographyRawTokens.typeBold200) }
    @objc open var typeCodeSmall: TypographyCompositeSemanticToken { TypographyCompositeSemanticToken(compact: TypographyRawTokens.typeBold150, regular: TypographyRawTokens.typeBold150) }
}
// swiftlint:enable line_length

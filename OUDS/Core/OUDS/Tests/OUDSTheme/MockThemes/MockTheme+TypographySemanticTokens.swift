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

// swiftlint:disable identifier_name

extension MockTheme {

    static let mockThemeTypographyFontFamilyRawToken: TypographyFontFamilyRawToken = "o°xXSkyBl0GF0ntxXx°o"
    static let mockThemeTypographyFontWeightRawToken: TypographyFontWeightRawToken = 888
    static let mockThemeTypographyFontSizeRawToken: TypographyFontSizeRawToken = 666
    static let mockThemeTypographyFontLineHeightRawToken: TypographyFontLineHeightRawToken = 321
    static let mockThemeTypographyFontLetterSpacingRawToken: TypographyFontLetterSpacingRawToken = 21_092_024
    static let mockThemeMultipleTypographyTokens = MultipleTypographyTokens(TypographyRawTokens.typeBold1850)
    static let mockThemeMultipleTypographyFontSizeTokens = MultipleFontSizeTokens(mockThemeTypographyFontSizeRawToken)
    static let mockThemeMultipleTypographyLineHeightTokens = MultipleFontLineHeightTokens(mockThemeTypographyFontLineHeightRawToken)
    static let mockThemeMultipleTypographyLetterSpacingTokens = MultipleFontLetterSpacingTokens(mockThemeTypographyFontLetterSpacingRawToken)

    // MARK: Semantic token - Typography - Font - Family

    override open var fontFamily: TypographyFontFamilySemanticToken { Self.mockThemeTypographyFontFamilyRawToken }
    override open var fontFamilyDisplay: TypographyFontFamilySemanticToken { Self.mockThemeTypographyFontFamilyRawToken }
    override open var fontFamilyHeading: TypographyFontFamilySemanticToken { Self.mockThemeTypographyFontFamilyRawToken }
    override open var fontFamilyBody: TypographyFontFamilySemanticToken { Self.mockThemeTypographyFontFamilyRawToken }
    override open var fontFamilyLabel: TypographyFontFamilySemanticToken { Self.mockThemeTypographyFontFamilyRawToken }
    override open var fontFamilyCode: TypographyFontFamilySemanticToken { Self.mockThemeTypographyFontFamilyRawToken }

    // MARK: Semantic token - Typography - Font - Weight

    override open var fontWeightDisplay: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override open var fontWeightHeading: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override open var fontWeightBodyDefault: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override open var fontWeightBodyStrong: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override open var fontWeightLabelDefault: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override open var fontWeightLabelStrong: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }

    // MARK: Semantic token - Typography - Font - Size

    override open var fontSizeDisplayLarge: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeDisplayMedium: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeDisplaySmall: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeHeadingXLarge: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeHeadingLarge: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeHeadingMedium: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeHeadingSmall: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeBodyLarge: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeBodyMedium: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeBodySmall: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }

    // MARK: Semantic token - Typography - Font - Size - Others

    override open var fontSizeLabelXLarge: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeLabelLarge: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeLabelMedium: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeLabelSmall: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeCodeMedium: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeCodeSmall: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }

    // MARK: - Semantic token - Typography - Font - Line height

    override open var fontLineHeightDisplayLarge: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightDisplayMedium: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightDisplaySmall: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightHeadingXLarge: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightHeadingLarge: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightHeadingMedium: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightHeadingSmall: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightBodyLarge: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightBodyMedium: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightBodySmall: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightLabelXLarge: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightLabelLarge: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightLabelMedium: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightLabelSmall: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightCodeMedium: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightCodeSmall: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    override open var fontLetterSpacingDisplayLarge: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingDisplayMedium: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingDisplaySmall: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingHeadingXLarge: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingHeadingLarge: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingHeadingMedium: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingHeadingSmall: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingBodyLarge: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingBodyMedium: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingBodySmall: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }

    override open var fontLetterSpacingLabelXLarge: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingLabelLarge: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingLabelMedium: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingLabelSmall: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingCodeMedium: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingCodeSmall: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }

    // MARK: - Semantic tokens - Typography - Composites - Display

    override open var typeDisplayLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeDisplayMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeDisplaySmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }

    // MARK: - Semantic tokens - Typography - Composites - Heading

    override open var typeHeadingXLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeHeadingLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeHeadingMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeHeadingSmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }

    // MARK: - Semantic tokens - Typography - Composites - Body

    override open var typeBodyDefaultLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeBodyDefaultMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeBodyDefaultSmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeBodyStrongLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeBodyStrongMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeBodyStrongSmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }

    // MARK: - Semantic tokens - Typography - Composites - Label

    override open var typeLabelDefaultXLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeLabelDefaultLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeLabelDefaultMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeLabelDefaultSmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeLabelStrongXLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeLabelStrongLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeLabelStrongMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeLabelStrongSmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }

    // MARK: - Semantic tokens - Typography - Composites - Code

    override open var typeCodeMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override open var typeCodeSmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
}

// swiftlint:enable identifier_name

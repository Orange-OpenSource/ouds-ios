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

    override var fontFamily: TypographyFontFamilySemanticToken { Self.mockThemeTypographyFontFamilyRawToken }
    override var fontFamilyDisplay: TypographyFontFamilySemanticToken { Self.mockThemeTypographyFontFamilyRawToken }
    override var fontFamilyHeading: TypographyFontFamilySemanticToken { Self.mockThemeTypographyFontFamilyRawToken }
    override var fontFamilyBody: TypographyFontFamilySemanticToken { Self.mockThemeTypographyFontFamilyRawToken }
    override var fontFamilyLabel: TypographyFontFamilySemanticToken { Self.mockThemeTypographyFontFamilyRawToken }
    override var fontFamilyCode: TypographyFontFamilySemanticToken { Self.mockThemeTypographyFontFamilyRawToken }

    // MARK: Semantic token - Typography - Font - Weight

    override var fontWeightDisplay: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override var fontWeightHeading: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override var fontWeightBodyDefault: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override var fontWeightBodyStrong: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override var fontWeightLabelDefault: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override var fontWeightLabelStrong: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override var fontWeightCode: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }

    // MARK: Semantic token - Typography - Font - Size

    override var fontSizeDisplayLarge: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override var fontSizeDisplayMedium: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override var fontSizeDisplaySmall: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override var fontSizeHeadingXLarge: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override var fontSizeHeadingLarge: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override var fontSizeHeadingMedium: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override var fontSizeHeadingSmall: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override var fontSizeBodyLarge: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override var fontSizeBodyMedium: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override var fontSizeBodySmall: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }

    // MARK: Semantic token - Typography - Font - Size - Others

    override var fontSizeLabelXLarge: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeLabelLarge: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeLabelMedium: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeLabelSmall: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeCodeMedium: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeCodeSmall: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }

    // MARK: - Semantic token - Typography - Font - Line height

    override var fontLineHeightDisplayLarge: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override var fontLineHeightDisplayMedium: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override var fontLineHeightDisplaySmall: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override var fontLineHeightHeadingXLarge: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override var fontLineHeightHeadingLarge: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override var fontLineHeightHeadingMedium: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override var fontLineHeightHeadingSmall: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override var fontLineHeightBodyLarge: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override var fontLineHeightBodyMedium: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override var fontLineHeightBodySmall: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override var fontLineHeightLabelXLarge: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override var fontLineHeightLabelLarge: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override var fontLineHeightLabelMedium: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override var fontLineHeightLabelSmall: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override var fontLineHeightCodeMedium: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override var fontLineHeightCodeSmall: MultipleFontLineHeightTokens { Self.mockThemeMultipleTypographyLineHeightTokens }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    override var fontLetterSpacingDisplayLarge: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override var fontLetterSpacingDisplayMedium: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override var fontLetterSpacingDisplaySmall: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override var fontLetterSpacingHeadingXLarge: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override var fontLetterSpacingHeadingLarge: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override var fontLetterSpacingHeadingMedium: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override var fontLetterSpacingHeadingSmall: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override var fontLetterSpacingBodyLarge: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override var fontLetterSpacingBodyMedium: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override var fontLetterSpacingBodySmall: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }

    override var fontLetterSpacingLabelXLarge: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override var fontLetterSpacingLabelLarge: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override var fontLetterSpacingLabelMedium: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override var fontLetterSpacingLabelSmall: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override var fontLetterSpacingCodeMedium: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override var fontLetterSpacingCodeSmall: MultipleFontLetterSpacingTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }

    // MARK: - Semantic tokens - Typography - Composites - Display

    override var typeDisplayLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeDisplayMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeDisplaySmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }

    // MARK: - Semantic tokens - Typography - Composites - Heading

    override var typeHeadingXLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeHeadingLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeHeadingMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeHeadingSmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }

    // MARK: - Semantic tokens - Typography - Composites - Body

    override var typeBodyDefaultLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeBodyDefaultMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeBodyDefaultSmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeBodyStrongLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeBodyStrongMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeBodyStrongSmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }

    // MARK: - Semantic tokens - Typography - Composites - Label

    override var typeLabelDefaultXLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeLabelDefaultLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeLabelDefaultMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeLabelDefaultSmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeLabelStrongXLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeLabelStrongLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeLabelStrongMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeLabelStrongSmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }

    // MARK: - Semantic tokens - Typography - Composites - Code

    override var typeCodeMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeCodeSmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
}

// swiftlint:enable identifier_name

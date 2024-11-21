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

    override open var fontWeightDefault: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override open var fontWeightCode: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override open var fontWeightStrong: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override open var fontWeightDisplay: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override open var fontWeightHeading: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override open var fontWeightBodyDefault: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override open var fontWeightBodyStrong: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override open var fontWeightLabelDefault: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override open var fontWeightLabelStrong: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }

    // MARK: - Semantic token - Typography - Multiples

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
    override open var fontSizeLabelXLarge: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeLabelLarge: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeLabelMedium: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeLabelSmall: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeCodeMedium: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeCodeSmall: MultipleFontSizeTokens { Self.mockThemeMultipleTypographyFontSizeTokens }

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

    // MARK: - Semantic token - Typography - Pure semantic

    // MARK: Semantic token - Typography - Font - Size

    override open var fontSizeDisplayLargeMobile: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeDisplayLargeTablet: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeDisplayMediumMobile: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeDisplayMediumTablet: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeDisplaySmallMobile: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeDisplaySmallTablet: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeHeadingXLargeMobile: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeHeadingXLargeTablet: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeHeadingLargeMobile: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeHeadingLargeTablet: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeHeadingMediumMobile: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeHeadingMediumTablet: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeHeadingSmallMobile: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeHeadingSmallTablet: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeBodyLargeMobile: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeBodyLargeTablet: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeBodyMediumMobile: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeBodyMediumTablet: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeBodySmallMobile: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeBodySmallTablet: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeLabelXLargeMobile: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeLabelXLargeTablet: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeLabelLargeMobile: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeLabelLargeTablet: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeLabelMediumMobile: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeLabelMediumTablet: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeLabelSmallMobile: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeLabelSmallTablet: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeCodeMediumMobile: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeCodeMediumTablet: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeCodeSmallMobile: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }
    override open var fontSizeCodeSmallTablet: TypographyFontSizeRawToken { Self.mockThemeTypographyFontSizeRawToken }

    // MARK: - Semantic token - Typography - Font - Line height

    override open var fontLineHeightDisplayLargeMobile: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightDisplayLargeTablet: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightDisplayMediumMobile: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightDisplayMediumTablet: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightDisplaySmallMobile: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightDisplaySmallTablet: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightHeadingXLargeMobile: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightHeadingXLargeTablet: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightHeadingLargeMobile: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightHeadingLargeTablet: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightHeadingMediumMobile: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightHeadingMediumTablet: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightHeadingSmallMobile: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightHeadingSmallTablet: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightBodyLargeMobile: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightBodyLargeTablet: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightBodyMediumMobile: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightBodyMediumTablet: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightBodySmallMobile: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightBodySmallTablet: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightLabelXLargeMobile: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightLabelXLargeTablet: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightLabelLargeMobile: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightLabelLargeTablet: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightLabelMediumMobile: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightLabelMediumTablet: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightLabelSmallMobile: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightLabelSmallTablet: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightCodeMediumMobile: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightCodeMediumTablet: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightCodeSmallMobile: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override open var fontLineHeightCodeSmallTablet: TypographyFontLineHeightRawToken { Self.mockThemeTypographyFontLineHeightRawToken }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    override open var fontLetterSpacingDisplayLargeMobile: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingDisplayLargeTablet: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingDisplayMediumMobile: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingDisplayMediumTablet: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingDisplaySmallMobile: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingDisplaySmallTablet: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingHeadingXLargeMobile: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingHeadingXLargeTablet: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingHeadingLargeMobile: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingHeadingLargeTablet: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingHeadingMediumMobile: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingHeadingMediumTablet: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingHeadingSmallMobile: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingHeadingSmallTablet: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingBodyLargeMobile: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingBodyLargeTablet: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingBodyMediumMobile: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingBodyMediumTablet: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingBodySmallMobile: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingBodySmallTablet: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingLabelXLargeMobile: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingLabelXLargeTablet: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingLabelLargeMobile: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingLabelLargeTablet: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingLabelMediumMobile: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingLabelMediumTablet: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingLabelSmallMobile: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingLabelSmallTablet: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingCodeMediumMobile: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingCodeMediumTablet: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingCodeSmallMobile: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override open var fontLetterSpacingCodeSmallTablet: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
}

// swiftlint:enable identifier_name

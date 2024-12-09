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

/// Overrides **all** the typography semantic tokens (from its super class, i.e. `OUDSTheme` so as to test overriding of them (unit tests)
/// and to act like smoke tests with crashing tests if some tokens disappeared.
extension MockTheme {

    static let mockThemeTypographyFontFamilyRawToken: TypographyFontFamilyRawToken = "o°xXSkyBl0GF0ntxXx°o"
    static let mockThemeTypographyFontWeightRawToken: TypographyFontWeightRawToken = 888
    static let mockThemeTypographyFontSizeRawToken: TypographyFontSizeRawToken = 666
    static let mockThemeTypographyFontLineHeightRawToken: TypographyFontLineHeightRawToken = 321
    static let mockThemeTypographyFontLetterSpacingRawToken: TypographyFontLetterSpacingRawToken = 21_092_024
    static let mockThemeMultipleTypographyFontSizeTokens = MultipleFontSizeSemanticTokens(mockThemeTypographyFontSizeRawToken)
    static let mockThemeMultipleTypographyLineHeightTokens = MultipleFontLineHeightSemanticTokens(mockThemeTypographyFontLineHeightRawToken)
    static let mockThemeMultipleTypographyLetterSpacingTokens = MultipleFontLetterSpacingSemanticTokens(mockThemeTypographyFontLetterSpacingRawToken)

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

    override open var fontSizeDisplayLarge: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeDisplayMedium: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeDisplaySmall: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeHeadingXLarge: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeHeadingLarge: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeHeadingMedium: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeHeadingSmall: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeBodyLarge: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeBodyMedium: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeBodySmall: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeLabelXLarge: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeLabelLarge: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeLabelMedium: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeLabelSmall: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeCodeMedium: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleTypographyFontSizeTokens }
    override open var fontSizeCodeSmall: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleTypographyFontSizeTokens }

    // MARK: - Semantic token - Typography - Font - Line height

    override open var fontLineHeightDisplayLarge: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightDisplayMedium: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightDisplaySmall: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightHeadingXLarge: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightHeadingLarge: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightHeadingMedium: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightHeadingSmall: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightBodyLarge: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightBodyMedium: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightBodySmall: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightLabelXLarge: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightLabelLarge: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightLabelMedium: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightLabelSmall: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightCodeMedium: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleTypographyLineHeightTokens }
    override open var fontLineHeightCodeSmall: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleTypographyLineHeightTokens }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    override open var fontLetterSpacingDisplayLarge: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingDisplayMedium: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingDisplaySmall: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingHeadingXLarge: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingHeadingLarge: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingHeadingMedium: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingHeadingSmall: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingBodyLarge: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingBodyMedium: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingBodySmall: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingLabelXLarge: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingLabelLarge: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingLabelMedium: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingLabelSmall: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingCodeMedium: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }
    override open var fontLetterSpacingCodeSmall: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleTypographyLetterSpacingTokens }

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

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

    static let mockThemeFontFamilyRawToken: FontFamilyRawToken = "o°xXSkyBl0GF0ntxXx°o"
    static let mockThemeFontWeightRawToken: FontWeightRawToken = 888
    static let mockThemeFontSizeRawToken: FontSizeRawToken = 666
    static let mockThemeFontLineHeightRawToken: FontLineHeightRawToken = 321
    static let mockThemeFontLetterSpacingRawToken: FontLetterSpacingRawToken = 21_092_024
    static let mockThemeMultipleTypographyFontSizeTokens = MultipleFontSizeSemanticTokens(mockThemeFontSizeRawToken)
    static let mockThemeMultipleTypographyLineHeightTokens = MultipleFontLineHeightSemanticTokens(mockThemeFontLineHeightRawToken)
    static let mockThemeMultipleTypographyLetterSpacingTokens = MultipleFontLetterSpacingSemanticTokens(mockThemeFontLetterSpacingRawToken)

    // MARK: Semantic token - Typography - Font - Family

    override open var fontFamily: FontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }
    override open var fontFamilyDisplay: FontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }
    override open var fontFamilyHeading: FontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }
    override open var fontFamilyBody: FontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }
    override open var fontFamilyLabel: FontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }
    override open var fontFamilyCode: FontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }

    // MARK: Semantic token - Typography - Font - Weight

    override open var fontWeightDefault: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override open var fontWeightCode: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override open var fontWeightStrong: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override open var fontWeightDisplay: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override open var fontWeightHeading: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override open var fontWeightBodyDefault: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override open var fontWeightBodyStrong: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override open var fontWeightLabelDefault: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override open var fontWeightLabelStrong: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }

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

    override open var fontSizeDisplayLargeMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeDisplayLargeTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeDisplayMediumMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeDisplayMediumTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeDisplaySmallMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeDisplaySmallTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeHeadingXLargeMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeHeadingXLargeTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeHeadingLargeMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeHeadingLargeTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeHeadingMediumMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeHeadingMediumTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeHeadingSmallMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeHeadingSmallTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeBodyLargeMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeBodyLargeTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeBodyMediumMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeBodyMediumTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeBodySmallMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeBodySmallTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeLabelXLargeMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeLabelXLargeTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeLabelLargeMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeLabelLargeTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeLabelMediumMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeLabelMediumTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeLabelSmallMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeLabelSmallTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeCodeMediumMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeCodeMediumTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeCodeSmallMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeCodeSmallTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }

    // MARK: - Semantic token - Typography - Font - Line height

    override open var fontLineHeightDisplayLargeMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightDisplayLargeTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightDisplayMediumMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightDisplayMediumTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightDisplaySmallMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightDisplaySmallTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightHeadingXLargeMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightHeadingXLargeTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightHeadingLargeMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightHeadingLargeTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightHeadingMediumMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightHeadingMediumTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightHeadingSmallMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightHeadingSmallTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightBodyLargeMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightBodyLargeTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightBodyMediumMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightBodyMediumTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightBodySmallMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightBodySmallTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightLabelXLargeMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightLabelXLargeTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightLabelLargeMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightLabelLargeTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightLabelMediumMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightLabelMediumTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightLabelSmallMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightLabelSmallTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightCodeMediumMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightCodeMediumTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightCodeSmallMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightCodeSmallTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    override open var fontLetterSpacingDisplayLargeMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingDisplayLargeTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingDisplayMediumMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingDisplayMediumTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingDisplaySmallMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingDisplaySmallTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingHeadingXLargeMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingHeadingXLargeTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingHeadingLargeMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingHeadingLargeTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingHeadingMediumMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingHeadingMediumTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingHeadingSmallMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingHeadingSmallTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingBodyLargeMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingBodyLargeTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingBodyMediumMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingBodyMediumTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingBodySmallMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingBodySmallTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingLabelXLargeMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingLabelXLargeTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingLabelLargeMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingLabelLargeTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingLabelMediumMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingLabelMediumTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingLabelSmallMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingLabelSmallTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingCodeMediumMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingCodeMediumTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingCodeSmallMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingCodeSmallTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
}

// swiftlint:enable identifier_name

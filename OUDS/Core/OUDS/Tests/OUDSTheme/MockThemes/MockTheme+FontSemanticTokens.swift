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

/// Overrides **all** the font semantic tokens (from its super class, i.e. `OUDSTheme` so as to test overriding of them (unit tests)
/// and to act like smoke tests with crashing tests if some tokens disappeared.
extension MockTheme {

    static let mockThemeFontFamilyRawToken: FontFamilyRawToken = "o°xXSkyBl0GF0ntxXx°o"
    static let mockThemeFontWeightRawToken: FontWeightRawToken = 888
    static let mockThemeFontSizeRawToken: FontSizeRawToken = 666
    static let mockThemeFontLineHeightRawToken: FontLineHeightRawToken = 321
    static let mockThemeFontLetterSpacingRawToken: FontLetterSpacingRawToken = 21_092_024
    static let mockThemeMultipleFontSizeTokens = MultipleFontSizeSemanticTokens(mockThemeFontSizeRawToken)
    static let mockThemeMultipleFontLineHeightTokens = MultipleFontLineHeightSemanticTokens(mockThemeFontLineHeightRawToken)
    static let mockThemeMultipleFontLetterSpacingTokens = MultipleFontLetterSpacingSemanticTokens(mockThemeFontLetterSpacingRawToken)

    // MARK: Semantic token - Typography - Font - Family

    override open var fontFamily: FontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }

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

    override open var fontSizeDisplayLarge: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override open var fontSizeDisplayMedium: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override open var fontSizeDisplaySmall: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override open var fontSizeHeadingXlarge: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override open var fontSizeHeadingLarge: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override open var fontSizeHeadingMedium: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override open var fontSizeHeadingSmall: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override open var fontSizeBodyLarge: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override open var fontSizeBodyMedium: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override open var fontSizeBodySmall: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override open var fontSizeLabelXlarge: FontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeLabelLarge: FontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeLabelMedium: FontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeLabelSmall: FontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeCodeMedium: FontSizeSemanticToken { Self.mockThemeFontSizeRawToken }

    // MARK: - Semantic token - Typography - Font - Line height

    override open var fontLineHeightDisplayLarge: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override open var fontLineHeightDisplayMedium: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override open var fontLineHeightDisplaySmall: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override open var fontLineHeightHeadingXlarge: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override open var fontLineHeightHeadingLarge: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override open var fontLineHeightHeadingMedium: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override open var fontLineHeightHeadingSmall: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override open var fontLineHeightBodyLarge: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override open var fontLineHeightBodyMedium: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override open var fontLineHeightBodySmall: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override open var fontLineHeightLabelXlarge: FontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightLabelLarge: FontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightLabelMedium: FontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightLabelSmall: FontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightCodeMedium: FontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    override open var fontLetterSpacingDisplayLarge: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override open var fontLetterSpacingDisplayMedium: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override open var fontLetterSpacingDisplaySmall: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override open var fontLetterSpacingHeadingXlarge: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override open var fontLetterSpacingHeadingLarge: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override open var fontLetterSpacingHeadingMedium: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override open var fontLetterSpacingHeadingSmall: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override open var fontLetterSpacingBodyLarge: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override open var fontLetterSpacingBodyMedium: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override open var fontLetterSpacingBodySmall: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override open var fontLetterSpacingLabelXlarge: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingLabelLarge: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingLabelMedium: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingLabelSmall: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingCodeMedium: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }

    // MARK: - Semantic token - Typography - Pure semantic

    // MARK: Semantic token - Typography - Font - Size

    override open var fontSizeDisplayLargeMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeDisplayLargeTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeDisplayMediumMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeDisplayMediumTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeDisplaySmallMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeDisplaySmallTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeHeadingXlargeMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override open var fontSizeHeadingXlargeTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
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

    // MARK: - Semantic token - Typography - Font - Line height

    override open var fontLineHeightDisplayLargeMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightDisplayLargeTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightDisplayMediumMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightDisplayMediumTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightDisplaySmallMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightDisplaySmallTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightHeadingXlargeMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override open var fontLineHeightHeadingXlargeTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
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

    // MARK: - Semantic token - Typography - Font - Letter spacing

    override open var fontLetterSpacingDisplayLargeMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingDisplayLargeTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingDisplayMediumMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingDisplayMediumTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingDisplaySmallMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingDisplaySmallTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingHeadingXlargeMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override open var fontLetterSpacingHeadingXlargeTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
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
}

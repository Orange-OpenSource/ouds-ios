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

import OUDSThemesOrange
import OUDSTokensRaw
import OUDSTokensSemantic

// swiftlint:disable line_length
// swiftlint:disable required_deinit

/// Overrides **all** the font semantic tokens, both simple, multiple and composites (from its super class, i.e. ``OrangeThemeFontSemanticTokensProvider`` so as to test overriding of them (unit tests)
/// and to act like smoke tests with crashing tests if some tokens disappeared.
final class MockThemeFontSemanticTokensProvider: OrangeThemeFontSemanticTokensProvider {

    // MARK: Semantic tokens - Not composites

    static let mockThemeFontFamilyRawToken: FontFamilyRawToken = "o°xXSkyBl0GF0ntxXx°o"
    static let mockThemeFontWeightRawToken: FontWeightRawToken = 888
    static let mockThemeFontSizeRawToken: FontSizeRawToken = 666
    static let mockThemeFontLineHeightRawToken: FontLineHeightRawToken = 321
    static let mockThemeFontLetterSpacingRawToken: FontLetterSpacingRawToken = 21_092_024
    static let mockThemeMultipleFontSizeTokens = MultipleFontSizeSemanticTokens(mockThemeFontSizeRawToken)
    static let mockThemeMultipleFontLineHeightTokens = MultipleFontLineHeightSemanticTokens(mockThemeFontLineHeightRawToken)
    static let mockThemeMultipleFontLetterSpacingTokens = MultipleFontLetterSpacingSemanticTokens(mockThemeFontLetterSpacingRawToken)

    // MARK: Semantic token - Typography - Font - Family

    override public var fontFamily: FontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }

    // MARK: Semantic token - Typography - Font - Weight

    override public var fontWeightDefault: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override public var fontWeightCode: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override public var fontWeightStrong: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override public var fontWeightDisplay: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override public var fontWeightHeading: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override public var fontWeightBodyDefault: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override public var fontWeightBodyStrong: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override public var fontWeightLabelDefault: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override public var fontWeightLabelStrong: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }

    // MARK: - Semantic token - Typography - Multiples

    // MARK: Semantic token - Typography - Font - Size

    override public var fontSizeDisplayLarge: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override public var fontSizeDisplayMedium: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override public var fontSizeDisplaySmall: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override public var fontSizeHeadingXlarge: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override public var fontSizeHeadingLarge: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override public var fontSizeHeadingMedium: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override public var fontSizeHeadingSmall: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override public var fontSizeBodyLarge: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override public var fontSizeBodyMedium: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override public var fontSizeBodySmall: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override public var fontSizeLabelXlarge: FontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override public var fontSizeLabelLarge: FontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override public var fontSizeLabelMedium: FontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override public var fontSizeLabelSmall: FontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override public var fontSizeCodeMedium: FontSizeSemanticToken { Self.mockThemeFontSizeRawToken }

    // MARK: - Semantic token - Typography - Font - Line height

    override public var fontLineHeightDisplayLarge: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override public var fontLineHeightDisplayMedium: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override public var fontLineHeightDisplaySmall: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override public var fontLineHeightHeadingXlarge: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override public var fontLineHeightHeadingLarge: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override public var fontLineHeightHeadingMedium: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override public var fontLineHeightHeadingSmall: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override public var fontLineHeightBodyLarge: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override public var fontLineHeightBodyMedium: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override public var fontLineHeightBodySmall: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override public var fontLineHeightLabelXlarge: FontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override public var fontLineHeightLabelLarge: FontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override public var fontLineHeightLabelMedium: FontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override public var fontLineHeightLabelSmall: FontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override public var fontLineHeightCodeMedium: FontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    override public var fontLetterSpacingDisplayLarge: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override public var fontLetterSpacingDisplayMedium: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override public var fontLetterSpacingDisplaySmall: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override public var fontLetterSpacingHeadingXlarge: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override public var fontLetterSpacingHeadingLarge: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override public var fontLetterSpacingHeadingMedium: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override public var fontLetterSpacingHeadingSmall: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override public var fontLetterSpacingBodyLarge: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override public var fontLetterSpacingBodyMedium: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override public var fontLetterSpacingBodySmall: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override public var fontLetterSpacingLabelXlarge: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override public var fontLetterSpacingLabelLarge: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override public var fontLetterSpacingLabelMedium: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override public var fontLetterSpacingLabelSmall: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override public var fontLetterSpacingCodeMedium: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }

    // MARK: - Semantic token - Typography - Pure semantic

    // MARK: Semantic token - Typography - Font - Size

    override public var fontSizeDisplayLargeMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override public var fontSizeDisplayLargeTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override public var fontSizeDisplayMediumMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override public var fontSizeDisplayMediumTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override public var fontSizeDisplaySmallMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override public var fontSizeDisplaySmallTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override public var fontSizeHeadingXlargeMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override public var fontSizeHeadingXlargeTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override public var fontSizeHeadingLargeMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override public var fontSizeHeadingLargeTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override public var fontSizeHeadingMediumMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override public var fontSizeHeadingMediumTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override public var fontSizeHeadingSmallMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override public var fontSizeHeadingSmallTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override public var fontSizeBodyLargeMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override public var fontSizeBodyLargeTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override public var fontSizeBodyMediumMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override public var fontSizeBodyMediumTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override public var fontSizeBodySmallMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override public var fontSizeBodySmallTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }

    // MARK: - Semantic token - Typography - Font - Line height

    override public var fontLineHeightDisplayLargeMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override public var fontLineHeightDisplayLargeTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override public var fontLineHeightDisplayMediumMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override public var fontLineHeightDisplayMediumTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override public var fontLineHeightDisplaySmallMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override public var fontLineHeightDisplaySmallTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override public var fontLineHeightHeadingXlargeMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override public var fontLineHeightHeadingXlargeTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override public var fontLineHeightHeadingLargeMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override public var fontLineHeightHeadingLargeTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override public var fontLineHeightHeadingMediumMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override public var fontLineHeightHeadingMediumTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override public var fontLineHeightHeadingSmallMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override public var fontLineHeightHeadingSmallTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override public var fontLineHeightBodyLargeMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override public var fontLineHeightBodyLargeTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override public var fontLineHeightBodyMediumMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override public var fontLineHeightBodyMediumTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override public var fontLineHeightBodySmallMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override public var fontLineHeightBodySmallTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    override public var fontLetterSpacingDisplayLargeMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override public var fontLetterSpacingDisplayLargeTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override public var fontLetterSpacingDisplayMediumMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override public var fontLetterSpacingDisplayMediumTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override public var fontLetterSpacingDisplaySmallMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override public var fontLetterSpacingDisplaySmallTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override public var fontLetterSpacingHeadingXlargeMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override public var fontLetterSpacingHeadingXlargeTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override public var fontLetterSpacingHeadingLargeMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override public var fontLetterSpacingHeadingLargeTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override public var fontLetterSpacingHeadingMediumMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override public var fontLetterSpacingHeadingMediumTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override public var fontLetterSpacingHeadingSmallMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override public var fontLetterSpacingHeadingSmallTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override public var fontLetterSpacingBodyLargeMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override public var fontLetterSpacingBodyLargeTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override public var fontLetterSpacingBodyMediumMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override public var fontLetterSpacingBodyMediumTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override public var fontLetterSpacingBodySmallMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override public var fontLetterSpacingBodySmallTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }

    // MARK: Semantic tokens - Composites

    static let mockThemeMultipleFontCompositeRawTokens = MultipleFontCompositeRawTokens(FontRawTokens.typeBold1850)

    // MARK: - Semantic tokens - Typography - Composites - Display

    override public var typeDisplayLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override public var typeDisplayMedium: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override public var typeDisplaySmall: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }

    // MARK: - Semantic tokens - Typography - Composites - Heading

    override public var typeHeadingXLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override public var typeHeadingLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override public var typeHeadingMedium: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override public var typeHeadingSmall: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }

    // MARK: - Semantic tokens - Typography - Composites - Body

    override public var typeBodyDefaultLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override public var typeBodyDefaultMedium: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override public var typeBodyDefaultSmall: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override public var typeBodyStrongLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override public var typeBodyStrongMedium: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override public var typeBodyStrongSmall: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }

    // MARK: - Semantic tokens - Typography - Composites - Label

    override public var typeLabelDefaultXLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override public var typeLabelDefaultLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override public var typeLabelDefaultMedium: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override public var typeLabelDefaultSmall: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override public var typeLabelStrongXLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override public var typeLabelStrongLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override public var typeLabelStrongMedium: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override public var typeLabelStrongSmall: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }

    // MARK: - Semantic tokens - Typography - Composites - Code

    override public var typeCodeMedium: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override public var typeCodeSmall: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
}

// swiftlint:enable line_length
// swiftlint:enable required_deinit

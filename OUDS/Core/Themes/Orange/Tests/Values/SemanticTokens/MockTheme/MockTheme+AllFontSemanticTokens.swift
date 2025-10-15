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
    static let mockThemeFontLetterSpacingRawToken: FontLetterSpacingRawToken = 24_032_025
    static let mockThemeMultipleFontSizeTokens = MultipleFontSizeSemanticTokens(mockThemeFontSizeRawToken)
    static let mockThemeMultipleFontLineHeightTokens = MultipleFontLineHeightSemanticTokens(mockThemeFontLineHeightRawToken)
    static let mockThemeMultipleFontLetterSpacingTokens = MultipleFontLetterSpacingSemanticTokens(mockThemeFontLetterSpacingRawToken)

    // MARK: Semantic token - Typography - Font - Family

    override var fontFamilySystem: FontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }
    override var fontFamilyCode: FontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }
    override var fontFamilyBody: FontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }
    override var fontFamilyDisplay: FontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }
    override var fontFamilyHeading: FontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }
    override var fontFamilyLabel: FontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }

    // MARK: Semantic token - Typography - Font - Weight

    override var fontWeightCode: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var fontWeightDisplay: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var fontWeightHeading: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var fontWeightBodyDefault: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var fontWeightBodyModerate: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var fontWeightBodyStrong: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var fontWeightLabelDefault: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var fontWeightLabelModerate: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var fontWeightLabelStrong: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var fontWeightSystemDefault: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var fontWeightSystemStrong: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }

    // MARK: - Semantic token - Typography - Multiples

    // MARK: Semantic token - Typography - Font - Size

    override var fontSizeDisplayLarge: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override var fontSizeDisplayMedium: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override var fontSizeDisplaySmall: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override var fontSizeHeadingXlarge: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override var fontSizeHeadingLarge: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override var fontSizeHeadingMedium: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override var fontSizeHeadingSmall: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override var fontSizeBodyLarge: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override var fontSizeBodyMedium: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override var fontSizeBodySmall: MultipleFontSizeSemanticTokens { Self.mockThemeMultipleFontSizeTokens }
    override var fontSizeLabelXlarge: FontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeLabelLarge: FontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeLabelMedium: FontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeLabelSmall: FontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeCodeMedium: FontSizeSemanticToken { Self.mockThemeFontSizeRawToken }

    // MARK: - Semantic token - Typography - Font - Line height

    override var fontLineHeightDisplayLarge: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override var fontLineHeightDisplayMedium: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override var fontLineHeightDisplaySmall: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override var fontLineHeightHeadingXlarge: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override var fontLineHeightHeadingLarge: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override var fontLineHeightHeadingMedium: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override var fontLineHeightHeadingSmall: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override var fontLineHeightBodyLarge: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override var fontLineHeightBodyMedium: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override var fontLineHeightBodySmall: MultipleFontLineHeightSemanticTokens { Self.mockThemeMultipleFontLineHeightTokens }
    override var fontLineHeightLabelXlarge: FontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightLabelLarge: FontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightLabelMedium: FontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightLabelSmall: FontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightCodeMedium: FontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    override var fontLetterSpacingDisplayLarge: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override var fontLetterSpacingDisplayMedium: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override var fontLetterSpacingDisplaySmall: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override var fontLetterSpacingHeadingXlarge: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override var fontLetterSpacingHeadingLarge: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override var fontLetterSpacingHeadingMedium: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override var fontLetterSpacingHeadingSmall: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override var fontLetterSpacingBodyLarge: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override var fontLetterSpacingBodyMedium: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override var fontLetterSpacingBodySmall: MultipleFontLetterSpacingSemanticTokens { Self.mockThemeMultipleFontLetterSpacingTokens }
    override var fontLetterSpacingLabelXlarge: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var fontLetterSpacingLabelLarge: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var fontLetterSpacingLabelMedium: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var fontLetterSpacingLabelSmall: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var fontLetterSpacingCodeMedium: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }

    // MARK: - Semantic token - Typography - Pure semantic

    // MARK: Semantic token - Typography - Font - Size

    override var fontSizeDisplayLargeMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeDisplayLargeTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeDisplayMediumMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeDisplayMediumTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeDisplaySmallMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeDisplaySmallTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeHeadingXlargeMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeHeadingXlargeTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeHeadingLargeMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeHeadingLargeTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeHeadingMediumMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeHeadingMediumTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeHeadingSmallMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeHeadingSmallTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeBodyLargeMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeBodyLargeTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeBodyMediumMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeBodyMediumTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeBodySmallMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeBodySmallTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }

    // MARK: - Semantic token - Typography - Font - Line height

    override var fontLineHeightDisplayLargeMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightDisplayLargeTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightDisplayMediumMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightDisplayMediumTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightDisplaySmallMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightDisplaySmallTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightHeadingXlargeMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightHeadingXlargeTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightHeadingLargeMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightHeadingLargeTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightHeadingMediumMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightHeadingMediumTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightHeadingSmallMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightHeadingSmallTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightBodyLargeMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightBodyLargeTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightBodyMediumMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightBodyMediumTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightBodySmallMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightBodySmallTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    override var fontLetterSpacingDisplayLargeMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var fontLetterSpacingDisplayLargeTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var fontLetterSpacingDisplayMediumMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var fontLetterSpacingDisplayMediumTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var fontLetterSpacingDisplaySmallMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var fontLetterSpacingDisplaySmallTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var fontLetterSpacingHeadingXlargeMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var fontLetterSpacingHeadingXlargeTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var fontLetterSpacingHeadingLargeMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var fontLetterSpacingHeadingLargeTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var fontLetterSpacingHeadingMediumMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var fontLetterSpacingHeadingMediumTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var fontLetterSpacingHeadingSmallMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var fontLetterSpacingHeadingSmallTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var fontLetterSpacingBodyLargeMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var fontLetterSpacingBodyLargeTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var fontLetterSpacingBodyMediumMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var fontLetterSpacingBodyMediumTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var fontLetterSpacingBodySmallMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var fontLetterSpacingBodySmallTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }

    // MARK: Semantic tokens - Composites

    static let mockThemeMultipleFontCompositeRawTokens = MultipleFontCompositeRawTokens(FontRawTokens.typeBold1850)

    // MARK: - Semantic tokens - Typography - Composites - Display

    override var typeDisplayLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeDisplayMedium: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeDisplaySmall: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }

    // MARK: - Semantic tokens - Typography - Composites - Heading

    override var typeHeadingXLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeHeadingLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeHeadingMedium: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeHeadingSmall: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }

    // MARK: - Semantic tokens - Typography - Composites - Body

    override var typeBodyDefaultLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeBodyDefaultMedium: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeBodyDefaultSmall: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeBodyModerateLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeBodyModerateMedium: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeBodyModerateSmall: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeBodyStrongLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeBodyStrongMedium: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeBodyStrongSmall: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }

    // MARK: - Semantic tokens - Typography - Composites - Label

    override var typeLabelDefaultXLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeLabelDefaultLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeLabelDefaultMedium: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeLabelDefaultSmall: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeLabelModerateXLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeLabelModerateLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeLabelModerateMedium: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeLabelModerateSmall: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeLabelStrongXLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeLabelStrongLarge: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeLabelStrongMedium: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeLabelStrongSmall: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }

    // MARK: - Semantic tokens - Typography - Composites - Code

    override var typeCodeMedium: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
    override var typeCodeSmall: MultipleFontCompositeRawTokens { Self.mockThemeMultipleFontCompositeRawTokens }
}

// swiftlint:enable line_length
// swiftlint:enable required_deinit

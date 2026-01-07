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
// swiftlint:disable identifier_name

/// Overrides **all** the font semantic tokens, both simple, multiple and composites (from its super class, i.e. ``OrangeThemeFontSemanticTokensProvider`` so as to test overriding of them (unit tests)
/// and to act like smoke tests with crashing tests if some tokens disappeared.
final class MockThemeFontSemanticTokensProvider: OrangeThemeFontSemanticTokensProvider {

    // MARK: Semantic tokens - Not composites

    static let mockThemeFontFamilyRawToken: FontFamilyRawToken = "o°xXSkyBl0GF0ntxXx°o"
    static let mockThemeFontWeightRawToken: FontWeightRawToken = 888
    static let mockThemeFontSizeRawToken: FontSizeRawToken = 666
    static let mockThemeFontLineHeightRawToken: FontLineHeightRawToken = 321
    static let mockThemeFontLetterSpacingRawToken: FontLetterSpacingRawToken = 24_032_025
    static let mockThemeMultipleFontSizeTokens = MultipleFontSizeSemanticToken(mockThemeFontSizeRawToken)
    static let mockThemeMultipleFontLineHeightTokens = MultipleFontLineHeightSemanticToken(mockThemeFontLineHeightRawToken)
    static let mockThemeMultipleFontLetterSpacingTokens = MultipleFontLetterSpacingSemanticToken(mockThemeFontLetterSpacingRawToken)

    // MARK: Semantic token - Typography - Font - Family

    override var familySystem: FontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }
    override var familyCode: FontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }
    override var familyBody: FontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }
    override var familyDisplay: FontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }
    override var familyHeading: FontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }
    override var familyLabel: FontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }

    // MARK: Semantic token - Typography - Font - Weight

    override var weightCode: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var weightDisplay: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var weightHeading: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var weightBodyDefault: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var weightBodyModerate: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var weightBodyStrong: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var weightLabelDefault: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var weightLabelModerate: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var weightLabelStrong: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var weightSystemDefault: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var weightSystemStrong: FontWeightSemanticToken { Self.mockThemeFontWeightRawToken }

    // MARK: - Semantic token - Typography - Multiples

    // MARK: Semantic token - Typography - Font - Size

    override var sizeDisplayLarge: MultipleFontSizeSemanticToken { Self.mockThemeMultipleFontSizeTokens }
    override var sizeDisplayMedium: MultipleFontSizeSemanticToken { Self.mockThemeMultipleFontSizeTokens }
    override var sizeDisplaySmall: MultipleFontSizeSemanticToken { Self.mockThemeMultipleFontSizeTokens }
    override var sizeHeadingXlarge: MultipleFontSizeSemanticToken { Self.mockThemeMultipleFontSizeTokens }
    override var sizeHeadingLarge: MultipleFontSizeSemanticToken { Self.mockThemeMultipleFontSizeTokens }
    override var sizeHeadingMedium: MultipleFontSizeSemanticToken { Self.mockThemeMultipleFontSizeTokens }
    override var sizeHeadingSmall: MultipleFontSizeSemanticToken { Self.mockThemeMultipleFontSizeTokens }
    override var sizeBodyLarge: MultipleFontSizeSemanticToken { Self.mockThemeMultipleFontSizeTokens }
    override var sizeBodyMedium: MultipleFontSizeSemanticToken { Self.mockThemeMultipleFontSizeTokens }
    override var sizeBodySmall: MultipleFontSizeSemanticToken { Self.mockThemeMultipleFontSizeTokens }
    override var sizeLabelXlarge: FontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var sizeLabelLarge: FontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var sizeLabelMedium: FontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var sizeLabelSmall: FontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var sizeCodeMedium: FontSizeSemanticToken { Self.mockThemeFontSizeRawToken }

    // MARK: - Semantic token - Typography - Font - Line height

    override var lineHeightDisplayLarge: MultipleFontLineHeightSemanticToken { Self.mockThemeMultipleFontLineHeightTokens }
    override var lineHeightDisplayMedium: MultipleFontLineHeightSemanticToken { Self.mockThemeMultipleFontLineHeightTokens }
    override var lineHeightDisplaySmall: MultipleFontLineHeightSemanticToken { Self.mockThemeMultipleFontLineHeightTokens }
    override var lineHeightHeadingXlarge: MultipleFontLineHeightSemanticToken { Self.mockThemeMultipleFontLineHeightTokens }
    override var lineHeightHeadingLarge: MultipleFontLineHeightSemanticToken { Self.mockThemeMultipleFontLineHeightTokens }
    override var lineHeightHeadingMedium: MultipleFontLineHeightSemanticToken { Self.mockThemeMultipleFontLineHeightTokens }
    override var lineHeightHeadingSmall: MultipleFontLineHeightSemanticToken { Self.mockThemeMultipleFontLineHeightTokens }
    override var lineHeightBodyLarge: MultipleFontLineHeightSemanticToken { Self.mockThemeMultipleFontLineHeightTokens }
    override var lineHeightBodyMedium: MultipleFontLineHeightSemanticToken { Self.mockThemeMultipleFontLineHeightTokens }
    override var lineHeightBodySmall: MultipleFontLineHeightSemanticToken { Self.mockThemeMultipleFontLineHeightTokens }
    override var lineHeightLabelXlarge: FontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var lineHeightLabelLarge: FontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var lineHeightLabelMedium: FontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var lineHeightLabelSmall: FontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var lineHeightCodeMedium: FontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    override var letterSpacingDisplayLarge: MultipleFontLetterSpacingSemanticToken { Self.mockThemeMultipleFontLetterSpacingTokens }
    override var letterSpacingDisplayMedium: MultipleFontLetterSpacingSemanticToken { Self.mockThemeMultipleFontLetterSpacingTokens }
    override var letterSpacingDisplaySmall: MultipleFontLetterSpacingSemanticToken { Self.mockThemeMultipleFontLetterSpacingTokens }
    override var letterSpacingHeadingXlarge: MultipleFontLetterSpacingSemanticToken { Self.mockThemeMultipleFontLetterSpacingTokens }
    override var letterSpacingHeadingLarge: MultipleFontLetterSpacingSemanticToken { Self.mockThemeMultipleFontLetterSpacingTokens }
    override var letterSpacingHeadingMedium: MultipleFontLetterSpacingSemanticToken { Self.mockThemeMultipleFontLetterSpacingTokens }
    override var letterSpacingHeadingSmall: MultipleFontLetterSpacingSemanticToken { Self.mockThemeMultipleFontLetterSpacingTokens }
    override var letterSpacingBodyLarge: MultipleFontLetterSpacingSemanticToken { Self.mockThemeMultipleFontLetterSpacingTokens }
    override var letterSpacingBodyMedium: MultipleFontLetterSpacingSemanticToken { Self.mockThemeMultipleFontLetterSpacingTokens }
    override var letterSpacingBodySmall: MultipleFontLetterSpacingSemanticToken { Self.mockThemeMultipleFontLetterSpacingTokens }
    override var letterSpacingLabelXlarge: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var letterSpacingLabelLarge: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var letterSpacingLabelMedium: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var letterSpacingLabelSmall: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var letterSpacingCodeMedium: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }

    // MARK: - Semantic token - Typography - Pure semantic

    // MARK: Semantic token - Typography - Font - Size

    override var sizeDisplayLargeMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var sizeDisplayLargeTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var sizeDisplayMediumMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var sizeDisplayMediumTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var sizeDisplaySmallMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var sizeDisplaySmallTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var sizeHeadingXlargeMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var sizeHeadingXlargeTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var sizeHeadingLargeMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var sizeHeadingLargeTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var sizeHeadingMediumMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var sizeHeadingMediumTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var sizeHeadingSmallMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var sizeHeadingSmallTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var sizeBodyLargeMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var sizeBodyLargeTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var sizeBodyMediumMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var sizeBodyMediumTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var sizeBodySmallMobile: FontSizeRawToken { Self.mockThemeFontSizeRawToken }
    override var sizeBodySmallTablet: FontSizeRawToken { Self.mockThemeFontSizeRawToken }

    // MARK: - Semantic token - Typography - Font - Line height

    override var lineHeightDisplayLargeMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var lineHeightDisplayLargeTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var lineHeightDisplayMediumMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var lineHeightDisplayMediumTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var lineHeightDisplaySmallMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var lineHeightDisplaySmallTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var lineHeightHeadingXlargeMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var lineHeightHeadingXlargeTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var lineHeightHeadingLargeMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var lineHeightHeadingLargeTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var lineHeightHeadingMediumMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var lineHeightHeadingMediumTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var lineHeightHeadingSmallMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var lineHeightHeadingSmallTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var lineHeightBodyLargeMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var lineHeightBodyLargeTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var lineHeightBodyMediumMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var lineHeightBodyMediumTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var lineHeightBodySmallMobile: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }
    override var lineHeightBodySmallTablet: FontLineHeightRawToken { Self.mockThemeFontLineHeightRawToken }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    override var letterSpacingDisplayLargeMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var letterSpacingDisplayLargeTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var letterSpacingDisplayMediumMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var letterSpacingDisplayMediumTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var letterSpacingDisplaySmallMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var letterSpacingDisplaySmallTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var letterSpacingHeadingXlargeMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var letterSpacingHeadingXlargeTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var letterSpacingHeadingLargeMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var letterSpacingHeadingLargeTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var letterSpacingHeadingMediumMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var letterSpacingHeadingMediumTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var letterSpacingHeadingSmallMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var letterSpacingHeadingSmallTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var letterSpacingBodyLargeMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var letterSpacingBodyLargeTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var letterSpacingBodyMediumMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var letterSpacingBodyMediumTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var letterSpacingBodySmallMobile: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }
    override var letterSpacingBodySmallTablet: FontLetterSpacingSemanticToken { Self.mockThemeFontLetterSpacingRawToken }

    // MARK: Semantic tokens - Composites

    static let mockThemeMultipleFontCompositeSemanticToken = MultipleFontCompositeSemanticToken(FontCompositeSemanticToken(size: 123, lineHeight: 456, weight: 789, letterSpacing: 42))

    // MARK: - Semantic tokens - Typography - Composites - Display

    override var displayLarge: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
    override var displayMedium: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
    override var displaySmall: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }

    // MARK: - Semantic tokens - Typography - Composites - Heading

    override var headingXLarge: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
    override var headingLarge: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
    override var headingMedium: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
    override var headingSmall: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }

    // MARK: - Semantic tokens - Typography - Composites - Body

    override var bodyDefaultLarge: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
    override var bodyDefaultMedium: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
    override var bodyDefaultSmall: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
    override var bodyModerateLarge: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
    override var bodyModerateMedium: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
    override var bodyModerateSmall: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
    override var bodyStrongLarge: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
    override var bodyStrongMedium: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
    override var bodyStrongSmall: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }

    // MARK: - Semantic tokens - Typography - Composites - Label

    override var labelDefaultXLarge: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
    override var labelDefaultLarge: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
    override var labelDefaultMedium: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
    override var labelDefaultSmall: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
    override var labelModerateXLarge: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
    override var labelModerateLarge: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
    override var labelModerateMedium: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
    override var labelModerateSmall: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
    override var labelStrongXLarge: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
    override var labelStrongLarge: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
    override var labelStrongMedium: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
    override var labelStrongSmall: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }

    // MARK: - Semantic tokens - Typography - Composites - Code

    override var codeMedium: MultipleFontCompositeSemanticToken { Self.mockThemeMultipleFontCompositeSemanticToken }
}

// swiftlint:enable line_length
// swiftlint:enable required_deinit
// swiftlint:enable identifier_name

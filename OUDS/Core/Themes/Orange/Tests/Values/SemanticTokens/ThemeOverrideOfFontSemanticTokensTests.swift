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

import OUDS
import OUDSThemesOrange
import Testing

// swiftlint:disable type_body_length

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _font semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeFontSemanticTokensProvider``.
///
/// **These tests checks if any _font semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
struct ThemeOverrideOfFontSemanticTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Typography - Font - Family

    @Test func inheritedThemeCanOverrideSemanticTokenFontFamily() throws {
        #expect(inheritedTheme.fonts.fontFamily != abstractTheme.fonts.fontFamily)
        #expect(inheritedTheme.fonts.fontFamily == MockThemeFontSemanticTokensProvider.mockThemeFontFamilyRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Weight

    @Test func inheritedThemeCanOverrideSemanticTokenFontWeightDefault() throws {
        #expect(inheritedTheme.fonts.fontWeightDefault != abstractTheme.fonts.fontWeightDefault)
        #expect(inheritedTheme.fonts.fontWeightDefault == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontWeightCode() throws {
        #expect(inheritedTheme.fonts.fontWeightCode != abstractTheme.fonts.fontWeightCode)
        #expect(inheritedTheme.fonts.fontWeightCode == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontWeightStrong() throws {
        #expect(inheritedTheme.fonts.fontWeightStrong != abstractTheme.fonts.fontWeightStrong)
        #expect(inheritedTheme.fonts.fontWeightStrong == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontWeightDisplay() throws {
        #expect(inheritedTheme.fonts.fontWeightDisplay != abstractTheme.fonts.fontWeightDisplay)
        #expect(inheritedTheme.fonts.fontWeightDisplay == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontWeightHeading() throws {
        #expect(inheritedTheme.fonts.fontWeightHeading != abstractTheme.fonts.fontWeightHeading)
        #expect(inheritedTheme.fonts.fontWeightHeading == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontWeightBodyDefault() throws {
        #expect(inheritedTheme.fonts.fontWeightBodyDefault != abstractTheme.fonts.fontWeightBodyDefault)
        #expect(inheritedTheme.fonts.fontWeightBodyDefault == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontWeightBodyStrong() throws {
        #expect(inheritedTheme.fonts.fontWeightBodyStrong != abstractTheme.fonts.fontWeightBodyStrong)
        #expect(inheritedTheme.fonts.fontWeightBodyStrong == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontWeightLabelDefault() throws {
        #expect(inheritedTheme.fonts.fontWeightLabelDefault != abstractTheme.fonts.fontWeightLabelDefault)
        #expect(inheritedTheme.fonts.fontWeightLabelDefault == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontWeightLabelStrong() throws {
        #expect(inheritedTheme.fonts.fontWeightLabelStrong != abstractTheme.fonts.fontWeightLabelStrong)
        #expect(inheritedTheme.fonts.fontWeightLabelStrong == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Size

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeLabelXlarge() throws {
        #expect(inheritedTheme.fonts.fontSizeLabelXlarge != abstractTheme.fonts.fontSizeLabelXlarge)
        #expect(inheritedTheme.fonts.fontSizeLabelXlarge == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeLabelLarge() throws {
        #expect(inheritedTheme.fonts.fontSizeLabelLarge != abstractTheme.fonts.fontSizeLabelLarge)
        #expect(inheritedTheme.fonts.fontSizeLabelLarge == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeLabelMedium() throws {
        #expect(inheritedTheme.fonts.fontSizeLabelMedium != abstractTheme.fonts.fontSizeLabelMedium)
        #expect(inheritedTheme.fonts.fontSizeLabelMedium == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeLabelSmall() throws {
        #expect(inheritedTheme.fonts.fontSizeLabelSmall != abstractTheme.fonts.fontSizeLabelSmall)
        #expect(inheritedTheme.fonts.fontSizeLabelSmall == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeCodeMedium() throws {
        #expect(inheritedTheme.fonts.fontSizeCodeMedium != abstractTheme.fonts.fontSizeCodeMedium)
        #expect(inheritedTheme.fonts.fontSizeCodeMedium == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeDisplayLargeMobile() throws {
        #expect(inheritedTheme.fonts.fontSizeDisplayLargeMobile != abstractTheme.fonts.fontSizeDisplayLargeMobile)
        #expect(inheritedTheme.fonts.fontSizeDisplayLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeDisplayLargeTablet() throws {
        #expect(inheritedTheme.fonts.fontSizeDisplayLargeTablet != abstractTheme.fonts.fontSizeDisplayLargeTablet)
        #expect(inheritedTheme.fonts.fontSizeDisplayLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeDisplayMediumMobile() throws {
        #expect(inheritedTheme.fonts.fontSizeDisplayMediumMobile != abstractTheme.fonts.fontSizeDisplayMediumMobile)
        #expect(inheritedTheme.fonts.fontSizeDisplayMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeDisplayMediumTablet() throws {
        #expect(inheritedTheme.fonts.fontSizeDisplayMediumTablet != abstractTheme.fonts.fontSizeDisplayMediumTablet)
        #expect(inheritedTheme.fonts.fontSizeDisplayMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeDisplaySmallMobile() throws {
        #expect(inheritedTheme.fonts.fontSizeDisplaySmallMobile != abstractTheme.fonts.fontSizeDisplaySmallMobile)
        #expect(inheritedTheme.fonts.fontSizeDisplaySmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeDisplaySmallTablet() throws {
        #expect(inheritedTheme.fonts.fontSizeDisplaySmallTablet != abstractTheme.fonts.fontSizeDisplaySmallTablet)
        #expect(inheritedTheme.fonts.fontSizeDisplaySmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeHeadingLargeMobile() throws {
        #expect(inheritedTheme.fonts.fontSizeHeadingLargeMobile != abstractTheme.fonts.fontSizeHeadingLargeMobile)
        #expect(inheritedTheme.fonts.fontSizeHeadingLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeHeadingLargeTablet() throws {
        #expect(inheritedTheme.fonts.fontSizeHeadingLargeTablet != abstractTheme.fonts.fontSizeHeadingLargeTablet)
        #expect(inheritedTheme.fonts.fontSizeHeadingLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeHeadingMediumMobile() throws {
        #expect(inheritedTheme.fonts.fontSizeHeadingMediumMobile != abstractTheme.fonts.fontSizeHeadingMediumMobile)
        #expect(inheritedTheme.fonts.fontSizeHeadingMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeHeadingMediumTablet() throws {
        #expect(inheritedTheme.fonts.fontSizeHeadingMediumTablet != abstractTheme.fonts.fontSizeHeadingMediumTablet)
        #expect(inheritedTheme.fonts.fontSizeHeadingMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeHeadingSmallMobile() throws {
        #expect(inheritedTheme.fonts.fontSizeHeadingSmallMobile != abstractTheme.fonts.fontSizeHeadingSmallMobile)
        #expect(inheritedTheme.fonts.fontSizeHeadingSmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeHeadingSmallTablet() throws {
        #expect(inheritedTheme.fonts.fontSizeHeadingSmallTablet != abstractTheme.fonts.fontSizeHeadingSmallTablet)
        #expect(inheritedTheme.fonts.fontSizeHeadingSmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeBodyLargeMobile() throws {
        #expect(inheritedTheme.fonts.fontSizeBodyLargeMobile != abstractTheme.fonts.fontSizeBodyLargeMobile)
        #expect(inheritedTheme.fonts.fontSizeBodyLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeBodyLargeTablet() throws {
        #expect(inheritedTheme.fonts.fontSizeBodyLargeTablet != abstractTheme.fonts.fontSizeBodyLargeTablet)
        #expect(inheritedTheme.fonts.fontSizeBodyLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeBodyMediumMobile() throws {
        #expect(inheritedTheme.fonts.fontSizeBodyMediumMobile != abstractTheme.fonts.fontSizeBodyMediumMobile)
        #expect(inheritedTheme.fonts.fontSizeBodyMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeBodyMediumTablet() throws {
        #expect(inheritedTheme.fonts.fontSizeBodyMediumTablet != abstractTheme.fonts.fontSizeBodyMediumTablet)
        #expect(inheritedTheme.fonts.fontSizeBodyMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeBodySmallMobile() throws {
        #expect(inheritedTheme.fonts.fontSizeBodySmallMobile != abstractTheme.fonts.fontSizeBodySmallMobile)
        #expect(inheritedTheme.fonts.fontSizeBodySmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeBodySmallTablet() throws {
        #expect(inheritedTheme.fonts.fontSizeBodySmallTablet != abstractTheme.fonts.fontSizeBodySmallTablet)
        #expect(inheritedTheme.fonts.fontSizeBodySmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelLarge() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingLabelLarge != abstractTheme.fonts.fontLetterSpacingLabelLarge)
        #expect(inheritedTheme.fonts.fontLetterSpacingLabelLarge == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelXlarge() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingLabelXlarge != abstractTheme.fonts.fontLetterSpacingLabelXlarge)
        #expect(inheritedTheme.fonts.fontLetterSpacingLabelXlarge == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelMedium() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingLabelMedium != abstractTheme.fonts.fontLetterSpacingLabelMedium)
        #expect(inheritedTheme.fonts.fontLetterSpacingLabelMedium == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelSmall() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingLabelSmall != abstractTheme.fonts.fontLetterSpacingLabelSmall)
        #expect(inheritedTheme.fonts.fontLetterSpacingLabelSmall == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingCodeMedium() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingCodeMedium != abstractTheme.fonts.fontLetterSpacingCodeMedium)
        #expect(inheritedTheme.fonts.fontLetterSpacingCodeMedium == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayLargeMobile() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingDisplayLargeMobile != abstractTheme.fonts.fontLetterSpacingDisplayLargeMobile)
        #expect(inheritedTheme.fonts.fontLetterSpacingDisplayLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayLargeTablet() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingDisplayLargeTablet != abstractTheme.fonts.fontLetterSpacingDisplayLargeTablet)
        #expect(inheritedTheme.fonts.fontLetterSpacingDisplayLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayMediumMobile() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingDisplayMediumMobile != abstractTheme.fonts.fontLetterSpacingDisplayMediumMobile)
        #expect(inheritedTheme.fonts.fontLetterSpacingDisplayMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayMediumTablet() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingDisplayMediumTablet != abstractTheme.fonts.fontLetterSpacingDisplayMediumTablet)
        #expect(inheritedTheme.fonts.fontLetterSpacingDisplayMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplaySmallMobile() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingDisplaySmallMobile != abstractTheme.fonts.fontLetterSpacingDisplaySmallMobile)
        #expect(inheritedTheme.fonts.fontLetterSpacingDisplaySmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplaySmallTablet() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingDisplaySmallTablet != abstractTheme.fonts.fontLetterSpacingDisplaySmallTablet)
        #expect(inheritedTheme.fonts.fontLetterSpacingDisplaySmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingLargeMobile() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingHeadingLargeMobile != abstractTheme.fonts.fontLetterSpacingHeadingLargeMobile)
        #expect(inheritedTheme.fonts.fontLetterSpacingHeadingLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingLargeTablet() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingHeadingLargeTablet != abstractTheme.fonts.fontLetterSpacingHeadingLargeTablet)
        #expect(inheritedTheme.fonts.fontLetterSpacingHeadingLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingMediumMobile() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingHeadingMediumMobile != abstractTheme.fonts.fontLetterSpacingHeadingMediumMobile)
        #expect(inheritedTheme.fonts.fontLetterSpacingHeadingMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingMediumTablet() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingHeadingMediumTablet != abstractTheme.fonts.fontLetterSpacingHeadingMediumTablet)
        #expect(inheritedTheme.fonts.fontLetterSpacingHeadingMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingSmallMobile() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingHeadingSmallMobile != abstractTheme.fonts.fontLetterSpacingHeadingSmallMobile)
        #expect(inheritedTheme.fonts.fontLetterSpacingHeadingSmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingSmallTablet() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingHeadingSmallTablet != abstractTheme.fonts.fontLetterSpacingHeadingSmallTablet)
        #expect(inheritedTheme.fonts.fontLetterSpacingHeadingSmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyLargeMobile() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingBodyLargeMobile != abstractTheme.fonts.fontLetterSpacingBodyLargeMobile)
        #expect(inheritedTheme.fonts.fontLetterSpacingBodyLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyLargeTablet() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingBodyLargeTablet != abstractTheme.fonts.fontLetterSpacingBodyLargeTablet)
        #expect(inheritedTheme.fonts.fontLetterSpacingBodyLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyMediumMobile() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingBodyMediumMobile != abstractTheme.fonts.fontLetterSpacingBodyMediumMobile)
        #expect(inheritedTheme.fonts.fontLetterSpacingBodyMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyMediumTablet() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingBodyMediumTablet != abstractTheme.fonts.fontLetterSpacingBodyMediumTablet)
        #expect(inheritedTheme.fonts.fontLetterSpacingBodyMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodySmallMobile() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingBodySmallMobile != abstractTheme.fonts.fontLetterSpacingBodySmallMobile)
        #expect(inheritedTheme.fonts.fontLetterSpacingBodySmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodySmallTablet() throws {
        #expect(inheritedTheme.fonts.fontLetterSpacingBodySmallTablet != abstractTheme.fonts.fontLetterSpacingBodySmallTablet)
        #expect(inheritedTheme.fonts.fontLetterSpacingBodySmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Line height

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightLabelXlarge() throws {
        #expect(inheritedTheme.fonts.fontLineHeightLabelXlarge != abstractTheme.fonts.fontLineHeightLabelXlarge)
        #expect(inheritedTheme.fonts.fontLineHeightLabelXlarge == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightLabelLarge() throws {
        #expect(inheritedTheme.fonts.fontLineHeightLabelLarge != abstractTheme.fonts.fontLineHeightLabelLarge)
        #expect(inheritedTheme.fonts.fontLineHeightLabelLarge == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightLabelMedium() throws {
        #expect(inheritedTheme.fonts.fontLineHeightLabelMedium != abstractTheme.fonts.fontLineHeightLabelMedium)
        #expect(inheritedTheme.fonts.fontLineHeightLabelMedium == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightLabelSmall() throws {
        #expect(inheritedTheme.fonts.fontLineHeightLabelSmall != abstractTheme.fonts.fontLineHeightLabelSmall)
        #expect(inheritedTheme.fonts.fontLineHeightLabelSmall == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightCodeMedium() throws {
        #expect(inheritedTheme.fonts.fontLineHeightCodeMedium != abstractTheme.fonts.fontLineHeightCodeMedium)
        #expect(inheritedTheme.fonts.fontLineHeightCodeMedium == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayLargeMobile() throws {
        #expect(inheritedTheme.fonts.fontLineHeightDisplayLargeMobile != abstractTheme.fonts.fontLineHeightDisplayLargeMobile)
        #expect(inheritedTheme.fonts.fontLineHeightDisplayLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayLargeTablet() throws {
        #expect(inheritedTheme.fonts.fontLineHeightDisplayLargeTablet != abstractTheme.fonts.fontLineHeightDisplayLargeTablet)
        #expect(inheritedTheme.fonts.fontLineHeightDisplayLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayMediumMobile() throws {
        #expect(inheritedTheme.fonts.fontLineHeightDisplayMediumMobile != abstractTheme.fonts.fontLineHeightDisplayMediumMobile)
        #expect(inheritedTheme.fonts.fontLineHeightDisplayMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayMediumTablet() throws {
        #expect(inheritedTheme.fonts.fontLineHeightDisplayMediumTablet != abstractTheme.fonts.fontLineHeightDisplayMediumTablet)
        #expect(inheritedTheme.fonts.fontLineHeightDisplayMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightDisplaySmallMobile() throws {
        #expect(inheritedTheme.fonts.fontLineHeightDisplaySmallMobile != abstractTheme.fonts.fontLineHeightDisplaySmallMobile)
        #expect(inheritedTheme.fonts.fontLineHeightDisplaySmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightDisplaySmallTablet() throws {
        #expect(inheritedTheme.fonts.fontLineHeightDisplaySmallTablet != abstractTheme.fonts.fontLineHeightDisplaySmallTablet)
        #expect(inheritedTheme.fonts.fontLineHeightDisplaySmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingLargeMobile() throws {
        #expect(inheritedTheme.fonts.fontLineHeightHeadingLargeMobile != abstractTheme.fonts.fontLineHeightHeadingLargeMobile)
        #expect(inheritedTheme.fonts.fontLineHeightHeadingLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingLargeTablet() throws {
        #expect(inheritedTheme.fonts.fontLineHeightHeadingLargeTablet != abstractTheme.fonts.fontLineHeightHeadingLargeTablet)
        #expect(inheritedTheme.fonts.fontLineHeightHeadingLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingMediumMobile() throws {
        #expect(inheritedTheme.fonts.fontLineHeightHeadingMediumMobile != abstractTheme.fonts.fontLineHeightHeadingMediumMobile)
        #expect(inheritedTheme.fonts.fontLineHeightHeadingMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingMediumTablet() throws {
        #expect(inheritedTheme.fonts.fontLineHeightHeadingMediumTablet != abstractTheme.fonts.fontLineHeightHeadingMediumTablet)
        #expect(inheritedTheme.fonts.fontLineHeightHeadingMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingSmallMobile() throws {
        #expect(inheritedTheme.fonts.fontLineHeightHeadingSmallMobile != abstractTheme.fonts.fontLineHeightHeadingSmallMobile)
        #expect(inheritedTheme.fonts.fontLineHeightHeadingSmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingSmallTablet() throws {
        #expect(inheritedTheme.fonts.fontLineHeightHeadingSmallTablet != abstractTheme.fonts.fontLineHeightHeadingSmallTablet)
        #expect(inheritedTheme.fonts.fontLineHeightHeadingSmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightBodyLargeMobile() throws {
        #expect(inheritedTheme.fonts.fontLineHeightBodyLargeMobile != abstractTheme.fonts.fontLineHeightBodyLargeMobile)
        #expect(inheritedTheme.fonts.fontLineHeightBodyLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightBodyLargeTablet() throws {
        #expect(inheritedTheme.fonts.fontLineHeightBodyLargeTablet != abstractTheme.fonts.fontLineHeightBodyLargeTablet)
        #expect(inheritedTheme.fonts.fontLineHeightBodyLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightBodyMediumMobile() throws {
        #expect(inheritedTheme.fonts.fontLineHeightBodyMediumMobile != abstractTheme.fonts.fontLineHeightBodyMediumMobile)
        #expect(inheritedTheme.fonts.fontLineHeightBodyMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightBodyMediumTablet() throws {
        #expect(inheritedTheme.fonts.fontLineHeightBodyMediumTablet != abstractTheme.fonts.fontLineHeightBodyMediumTablet)
        #expect(inheritedTheme.fonts.fontLineHeightBodyMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightBodySmallMobile() throws {
        #expect(inheritedTheme.fonts.fontLineHeightBodySmallMobile != abstractTheme.fonts.fontLineHeightBodySmallMobile)
        #expect(inheritedTheme.fonts.fontLineHeightBodySmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightBodySmallTablet() throws {
        #expect(inheritedTheme.fonts.fontLineHeightBodySmallTablet != abstractTheme.fonts.fontLineHeightBodySmallTablet)
        #expect(inheritedTheme.fonts.fontLineHeightBodySmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }
}

// swiftlint:enable type_body_length

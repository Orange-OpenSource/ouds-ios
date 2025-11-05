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

import OUDSThemesContract
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

    @Test func inheritedThemeCanOverrideSemanticTokenFontFamilySystem() throws {
        #expect(inheritedTheme.fonts.familySystem != abstractTheme.fonts.familySystem)
        #expect(inheritedTheme.fonts.familySystem == MockThemeFontSemanticTokensProvider.mockThemeFontFamilyRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontFamilyCode() throws {
        #expect(inheritedTheme.fonts.familyCode != abstractTheme.fonts.familyCode)
        #expect(inheritedTheme.fonts.familyCode == MockThemeFontSemanticTokensProvider.mockThemeFontFamilyRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontFamilyBody() throws {
        #expect(inheritedTheme.fonts.familyBody != abstractTheme.fonts.familyBody)
        #expect(inheritedTheme.fonts.familyBody == MockThemeFontSemanticTokensProvider.mockThemeFontFamilyRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontFamilyDisplay() throws {
        #expect(inheritedTheme.fonts.familyDisplay != abstractTheme.fonts.familyDisplay)
        #expect(inheritedTheme.fonts.familyDisplay == MockThemeFontSemanticTokensProvider.mockThemeFontFamilyRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontFamilyHeading() throws {
        #expect(inheritedTheme.fonts.familyHeading != abstractTheme.fonts.familyHeading)
        #expect(inheritedTheme.fonts.familyHeading == MockThemeFontSemanticTokensProvider.mockThemeFontFamilyRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontFamilyLabel() throws {
        #expect(inheritedTheme.fonts.familyLabel != abstractTheme.fonts.familyLabel)
        #expect(inheritedTheme.fonts.familyLabel == MockThemeFontSemanticTokensProvider.mockThemeFontFamilyRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Weight

    @Test func inheritedThemeCanOverrideSemanticTokenFontWeightCode() throws {
        #expect(inheritedTheme.fonts.weightCode != abstractTheme.fonts.weightCode)
        #expect(inheritedTheme.fonts.weightCode == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontWeightDisplay() throws {
        #expect(inheritedTheme.fonts.weightDisplay != abstractTheme.fonts.weightDisplay)
        #expect(inheritedTheme.fonts.weightDisplay == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontWeightHeading() throws {
        #expect(inheritedTheme.fonts.weightHeading != abstractTheme.fonts.weightHeading)
        #expect(inheritedTheme.fonts.weightHeading == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontWeightBodyDefault() throws {
        #expect(inheritedTheme.fonts.weightBodyDefault != abstractTheme.fonts.weightBodyDefault)
        #expect(inheritedTheme.fonts.weightBodyDefault == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontWeightBodyModerate() throws {
        #expect(inheritedTheme.fonts.weightBodyModerate != abstractTheme.fonts.weightBodyModerate)
        #expect(inheritedTheme.fonts.weightBodyModerate == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontWeightBodyStrong() throws {
        #expect(inheritedTheme.fonts.weightBodyStrong != abstractTheme.fonts.weightBodyStrong)
        #expect(inheritedTheme.fonts.weightBodyStrong == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontWeightLabelDefault() throws {
        #expect(inheritedTheme.fonts.weightLabelDefault != abstractTheme.fonts.weightLabelDefault)
        #expect(inheritedTheme.fonts.weightLabelDefault == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontWeightLabelModerate() throws {
        #expect(inheritedTheme.fonts.weightLabelModerate != abstractTheme.fonts.weightLabelModerate)
        #expect(inheritedTheme.fonts.weightLabelModerate == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontWeightLabelStrong() throws {
        #expect(inheritedTheme.fonts.weightLabelStrong != abstractTheme.fonts.weightLabelStrong)
        #expect(inheritedTheme.fonts.weightLabelStrong == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontWeightSystemDefault() throws {
        #expect(inheritedTheme.fonts.weightSystemDefault != abstractTheme.fonts.weightSystemDefault)
        #expect(inheritedTheme.fonts.weightSystemDefault == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontWeightSystemStrong() throws {
        #expect(inheritedTheme.fonts.weightSystemStrong != abstractTheme.fonts.weightSystemStrong)
        #expect(inheritedTheme.fonts.weightSystemStrong == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Size

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeLabelXlarge() throws {
        #expect(inheritedTheme.fonts.sizeLabelXlarge != abstractTheme.fonts.sizeLabelXlarge)
        #expect(inheritedTheme.fonts.sizeLabelXlarge == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeLabelLarge() throws {
        #expect(inheritedTheme.fonts.sizeLabelLarge != abstractTheme.fonts.sizeLabelLarge)
        #expect(inheritedTheme.fonts.sizeLabelLarge == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeLabelMedium() throws {
        #expect(inheritedTheme.fonts.sizeLabelMedium != abstractTheme.fonts.sizeLabelMedium)
        #expect(inheritedTheme.fonts.sizeLabelMedium == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeLabelSmall() throws {
        #expect(inheritedTheme.fonts.sizeLabelSmall != abstractTheme.fonts.sizeLabelSmall)
        #expect(inheritedTheme.fonts.sizeLabelSmall == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeCodeMedium() throws {
        #expect(inheritedTheme.fonts.sizeCodeMedium != abstractTheme.fonts.sizeCodeMedium)
        #expect(inheritedTheme.fonts.sizeCodeMedium == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeDisplayLargeMobile() throws {
        #expect(inheritedTheme.fonts.sizeDisplayLargeMobile != abstractTheme.fonts.sizeDisplayLargeMobile)
        #expect(inheritedTheme.fonts.sizeDisplayLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeDisplayLargeTablet() throws {
        #expect(inheritedTheme.fonts.sizeDisplayLargeTablet != abstractTheme.fonts.sizeDisplayLargeTablet)
        #expect(inheritedTheme.fonts.sizeDisplayLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeDisplayMediumMobile() throws {
        #expect(inheritedTheme.fonts.sizeDisplayMediumMobile != abstractTheme.fonts.sizeDisplayMediumMobile)
        #expect(inheritedTheme.fonts.sizeDisplayMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeDisplayMediumTablet() throws {
        #expect(inheritedTheme.fonts.sizeDisplayMediumTablet != abstractTheme.fonts.sizeDisplayMediumTablet)
        #expect(inheritedTheme.fonts.sizeDisplayMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeDisplaySmallMobile() throws {
        #expect(inheritedTheme.fonts.sizeDisplaySmallMobile != abstractTheme.fonts.sizeDisplaySmallMobile)
        #expect(inheritedTheme.fonts.sizeDisplaySmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeDisplaySmallTablet() throws {
        #expect(inheritedTheme.fonts.sizeDisplaySmallTablet != abstractTheme.fonts.sizeDisplaySmallTablet)
        #expect(inheritedTheme.fonts.sizeDisplaySmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeHeadingLargeMobile() throws {
        #expect(inheritedTheme.fonts.sizeHeadingLargeMobile != abstractTheme.fonts.sizeHeadingLargeMobile)
        #expect(inheritedTheme.fonts.sizeHeadingLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeHeadingLargeTablet() throws {
        #expect(inheritedTheme.fonts.sizeHeadingLargeTablet != abstractTheme.fonts.sizeHeadingLargeTablet)
        #expect(inheritedTheme.fonts.sizeHeadingLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeHeadingMediumMobile() throws {
        #expect(inheritedTheme.fonts.sizeHeadingMediumMobile != abstractTheme.fonts.sizeHeadingMediumMobile)
        #expect(inheritedTheme.fonts.sizeHeadingMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeHeadingMediumTablet() throws {
        #expect(inheritedTheme.fonts.sizeHeadingMediumTablet != abstractTheme.fonts.sizeHeadingMediumTablet)
        #expect(inheritedTheme.fonts.sizeHeadingMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeHeadingSmallMobile() throws {
        #expect(inheritedTheme.fonts.sizeHeadingSmallMobile != abstractTheme.fonts.sizeHeadingSmallMobile)
        #expect(inheritedTheme.fonts.sizeHeadingSmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeHeadingSmallTablet() throws {
        #expect(inheritedTheme.fonts.sizeHeadingSmallTablet != abstractTheme.fonts.sizeHeadingSmallTablet)
        #expect(inheritedTheme.fonts.sizeHeadingSmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeBodyLargeMobile() throws {
        #expect(inheritedTheme.fonts.sizeBodyLargeMobile != abstractTheme.fonts.sizeBodyLargeMobile)
        #expect(inheritedTheme.fonts.sizeBodyLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeBodyLargeTablet() throws {
        #expect(inheritedTheme.fonts.sizeBodyLargeTablet != abstractTheme.fonts.sizeBodyLargeTablet)
        #expect(inheritedTheme.fonts.sizeBodyLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeBodyMediumMobile() throws {
        #expect(inheritedTheme.fonts.sizeBodyMediumMobile != abstractTheme.fonts.sizeBodyMediumMobile)
        #expect(inheritedTheme.fonts.sizeBodyMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeBodyMediumTablet() throws {
        #expect(inheritedTheme.fonts.sizeBodyMediumTablet != abstractTheme.fonts.sizeBodyMediumTablet)
        #expect(inheritedTheme.fonts.sizeBodyMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeBodySmallMobile() throws {
        #expect(inheritedTheme.fonts.sizeBodySmallMobile != abstractTheme.fonts.sizeBodySmallMobile)
        #expect(inheritedTheme.fonts.sizeBodySmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontSizeBodySmallTablet() throws {
        #expect(inheritedTheme.fonts.sizeBodySmallTablet != abstractTheme.fonts.sizeBodySmallTablet)
        #expect(inheritedTheme.fonts.sizeBodySmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelLarge() throws {
        #expect(inheritedTheme.fonts.letterSpacingLabelLarge != abstractTheme.fonts.letterSpacingLabelLarge)
        #expect(inheritedTheme.fonts.letterSpacingLabelLarge == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelXlarge() throws {
        #expect(inheritedTheme.fonts.letterSpacingLabelXlarge != abstractTheme.fonts.letterSpacingLabelXlarge)
        #expect(inheritedTheme.fonts.letterSpacingLabelXlarge == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelMedium() throws {
        #expect(inheritedTheme.fonts.letterSpacingLabelMedium != abstractTheme.fonts.letterSpacingLabelMedium)
        #expect(inheritedTheme.fonts.letterSpacingLabelMedium == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelSmall() throws {
        #expect(inheritedTheme.fonts.letterSpacingLabelSmall != abstractTheme.fonts.letterSpacingLabelSmall)
        #expect(inheritedTheme.fonts.letterSpacingLabelSmall == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingCodeMedium() throws {
        #expect(inheritedTheme.fonts.letterSpacingCodeMedium != abstractTheme.fonts.letterSpacingCodeMedium)
        #expect(inheritedTheme.fonts.letterSpacingCodeMedium == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayLargeMobile() throws {
        #expect(inheritedTheme.fonts.letterSpacingDisplayLargeMobile != abstractTheme.fonts.letterSpacingDisplayLargeMobile)
        #expect(inheritedTheme.fonts.letterSpacingDisplayLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayLargeTablet() throws {
        #expect(inheritedTheme.fonts.letterSpacingDisplayLargeTablet != abstractTheme.fonts.letterSpacingDisplayLargeTablet)
        #expect(inheritedTheme.fonts.letterSpacingDisplayLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayMediumMobile() throws {
        #expect(inheritedTheme.fonts.letterSpacingDisplayMediumMobile != abstractTheme.fonts.letterSpacingDisplayMediumMobile)
        #expect(inheritedTheme.fonts.letterSpacingDisplayMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayMediumTablet() throws {
        #expect(inheritedTheme.fonts.letterSpacingDisplayMediumTablet != abstractTheme.fonts.letterSpacingDisplayMediumTablet)
        #expect(inheritedTheme.fonts.letterSpacingDisplayMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplaySmallMobile() throws {
        #expect(inheritedTheme.fonts.letterSpacingDisplaySmallMobile != abstractTheme.fonts.letterSpacingDisplaySmallMobile)
        #expect(inheritedTheme.fonts.letterSpacingDisplaySmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplaySmallTablet() throws {
        #expect(inheritedTheme.fonts.letterSpacingDisplaySmallTablet != abstractTheme.fonts.letterSpacingDisplaySmallTablet)
        #expect(inheritedTheme.fonts.letterSpacingDisplaySmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingLargeMobile() throws {
        #expect(inheritedTheme.fonts.letterSpacingHeadingLargeMobile != abstractTheme.fonts.letterSpacingHeadingLargeMobile)
        #expect(inheritedTheme.fonts.letterSpacingHeadingLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingLargeTablet() throws {
        #expect(inheritedTheme.fonts.letterSpacingHeadingLargeTablet != abstractTheme.fonts.letterSpacingHeadingLargeTablet)
        #expect(inheritedTheme.fonts.letterSpacingHeadingLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingMediumMobile() throws {
        #expect(inheritedTheme.fonts.letterSpacingHeadingMediumMobile != abstractTheme.fonts.letterSpacingHeadingMediumMobile)
        #expect(inheritedTheme.fonts.letterSpacingHeadingMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingMediumTablet() throws {
        #expect(inheritedTheme.fonts.letterSpacingHeadingMediumTablet != abstractTheme.fonts.letterSpacingHeadingMediumTablet)
        #expect(inheritedTheme.fonts.letterSpacingHeadingMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingSmallMobile() throws {
        #expect(inheritedTheme.fonts.letterSpacingHeadingSmallMobile != abstractTheme.fonts.letterSpacingHeadingSmallMobile)
        #expect(inheritedTheme.fonts.letterSpacingHeadingSmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingSmallTablet() throws {
        #expect(inheritedTheme.fonts.letterSpacingHeadingSmallTablet != abstractTheme.fonts.letterSpacingHeadingSmallTablet)
        #expect(inheritedTheme.fonts.letterSpacingHeadingSmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyLargeMobile() throws {
        #expect(inheritedTheme.fonts.letterSpacingBodyLargeMobile != abstractTheme.fonts.letterSpacingBodyLargeMobile)
        #expect(inheritedTheme.fonts.letterSpacingBodyLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyLargeTablet() throws {
        #expect(inheritedTheme.fonts.letterSpacingBodyLargeTablet != abstractTheme.fonts.letterSpacingBodyLargeTablet)
        #expect(inheritedTheme.fonts.letterSpacingBodyLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyMediumMobile() throws {
        #expect(inheritedTheme.fonts.letterSpacingBodyMediumMobile != abstractTheme.fonts.letterSpacingBodyMediumMobile)
        #expect(inheritedTheme.fonts.letterSpacingBodyMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyMediumTablet() throws {
        #expect(inheritedTheme.fonts.letterSpacingBodyMediumTablet != abstractTheme.fonts.letterSpacingBodyMediumTablet)
        #expect(inheritedTheme.fonts.letterSpacingBodyMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodySmallMobile() throws {
        #expect(inheritedTheme.fonts.letterSpacingBodySmallMobile != abstractTheme.fonts.letterSpacingBodySmallMobile)
        #expect(inheritedTheme.fonts.letterSpacingBodySmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodySmallTablet() throws {
        #expect(inheritedTheme.fonts.letterSpacingBodySmallTablet != abstractTheme.fonts.letterSpacingBodySmallTablet)
        #expect(inheritedTheme.fonts.letterSpacingBodySmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Line height

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightLabelXlarge() throws {
        #expect(inheritedTheme.fonts.lineHeightLabelXlarge != abstractTheme.fonts.lineHeightLabelXlarge)
        #expect(inheritedTheme.fonts.lineHeightLabelXlarge == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightLabelLarge() throws {
        #expect(inheritedTheme.fonts.lineHeightLabelLarge != abstractTheme.fonts.lineHeightLabelLarge)
        #expect(inheritedTheme.fonts.lineHeightLabelLarge == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightLabelMedium() throws {
        #expect(inheritedTheme.fonts.lineHeightLabelMedium != abstractTheme.fonts.lineHeightLabelMedium)
        #expect(inheritedTheme.fonts.lineHeightLabelMedium == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightLabelSmall() throws {
        #expect(inheritedTheme.fonts.lineHeightLabelSmall != abstractTheme.fonts.lineHeightLabelSmall)
        #expect(inheritedTheme.fonts.lineHeightLabelSmall == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightCodeMedium() throws {
        #expect(inheritedTheme.fonts.lineHeightCodeMedium != abstractTheme.fonts.lineHeightCodeMedium)
        #expect(inheritedTheme.fonts.lineHeightCodeMedium == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayLargeMobile() throws {
        #expect(inheritedTheme.fonts.lineHeightDisplayLargeMobile != abstractTheme.fonts.lineHeightDisplayLargeMobile)
        #expect(inheritedTheme.fonts.lineHeightDisplayLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayLargeTablet() throws {
        #expect(inheritedTheme.fonts.lineHeightDisplayLargeTablet != abstractTheme.fonts.lineHeightDisplayLargeTablet)
        #expect(inheritedTheme.fonts.lineHeightDisplayLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayMediumMobile() throws {
        #expect(inheritedTheme.fonts.lineHeightDisplayMediumMobile != abstractTheme.fonts.lineHeightDisplayMediumMobile)
        #expect(inheritedTheme.fonts.lineHeightDisplayMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayMediumTablet() throws {
        #expect(inheritedTheme.fonts.lineHeightDisplayMediumTablet != abstractTheme.fonts.lineHeightDisplayMediumTablet)
        #expect(inheritedTheme.fonts.lineHeightDisplayMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightDisplaySmallMobile() throws {
        #expect(inheritedTheme.fonts.lineHeightDisplaySmallMobile != abstractTheme.fonts.lineHeightDisplaySmallMobile)
        #expect(inheritedTheme.fonts.lineHeightDisplaySmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightDisplaySmallTablet() throws {
        #expect(inheritedTheme.fonts.lineHeightDisplaySmallTablet != abstractTheme.fonts.lineHeightDisplaySmallTablet)
        #expect(inheritedTheme.fonts.lineHeightDisplaySmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingLargeMobile() throws {
        #expect(inheritedTheme.fonts.lineHeightHeadingLargeMobile != abstractTheme.fonts.lineHeightHeadingLargeMobile)
        #expect(inheritedTheme.fonts.lineHeightHeadingLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingLargeTablet() throws {
        #expect(inheritedTheme.fonts.lineHeightHeadingLargeTablet != abstractTheme.fonts.lineHeightHeadingLargeTablet)
        #expect(inheritedTheme.fonts.lineHeightHeadingLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingMediumMobile() throws {
        #expect(inheritedTheme.fonts.lineHeightHeadingMediumMobile != abstractTheme.fonts.lineHeightHeadingMediumMobile)
        #expect(inheritedTheme.fonts.lineHeightHeadingMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingMediumTablet() throws {
        #expect(inheritedTheme.fonts.lineHeightHeadingMediumTablet != abstractTheme.fonts.lineHeightHeadingMediumTablet)
        #expect(inheritedTheme.fonts.lineHeightHeadingMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingSmallMobile() throws {
        #expect(inheritedTheme.fonts.lineHeightHeadingSmallMobile != abstractTheme.fonts.lineHeightHeadingSmallMobile)
        #expect(inheritedTheme.fonts.lineHeightHeadingSmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingSmallTablet() throws {
        #expect(inheritedTheme.fonts.lineHeightHeadingSmallTablet != abstractTheme.fonts.lineHeightHeadingSmallTablet)
        #expect(inheritedTheme.fonts.lineHeightHeadingSmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightBodyLargeMobile() throws {
        #expect(inheritedTheme.fonts.lineHeightBodyLargeMobile != abstractTheme.fonts.lineHeightBodyLargeMobile)
        #expect(inheritedTheme.fonts.lineHeightBodyLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightBodyLargeTablet() throws {
        #expect(inheritedTheme.fonts.lineHeightBodyLargeTablet != abstractTheme.fonts.lineHeightBodyLargeTablet)
        #expect(inheritedTheme.fonts.lineHeightBodyLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightBodyMediumMobile() throws {
        #expect(inheritedTheme.fonts.lineHeightBodyMediumMobile != abstractTheme.fonts.lineHeightBodyMediumMobile)
        #expect(inheritedTheme.fonts.lineHeightBodyMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightBodyMediumTablet() throws {
        #expect(inheritedTheme.fonts.lineHeightBodyMediumTablet != abstractTheme.fonts.lineHeightBodyMediumTablet)
        #expect(inheritedTheme.fonts.lineHeightBodyMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightBodySmallMobile() throws {
        #expect(inheritedTheme.fonts.lineHeightBodySmallMobile != abstractTheme.fonts.lineHeightBodySmallMobile)
        #expect(inheritedTheme.fonts.lineHeightBodySmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenFontLineHeightBodySmallTablet() throws {
        #expect(inheritedTheme.fonts.lineHeightBodySmallTablet != abstractTheme.fonts.lineHeightBodySmallTablet)
        #expect(inheritedTheme.fonts.lineHeightBodySmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }
}

// swiftlint:enable type_body_length

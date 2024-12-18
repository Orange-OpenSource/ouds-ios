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
import XCTest

// swiftlint:disable type_body_length
// swiftlint:disable required_deinit
// swiftlint:disable implicitly_unwrapped_optional

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _font semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeFontSemanticTokensProvider``.
///
/// **These tests checks if any _font semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfFontSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Typography - Font - Family

    func testInheritedThemeCanOverrideSemanticTokenFontFamily() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontFamily, abstractTheme.fonts.fontFamily)
        XCTAssertTrue(inheritedTheme.fonts.fontFamily == MockThemeFontSemanticTokensProvider.mockThemeFontFamilyRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Weight

    func testInheritedThemeCanOverrideSemanticTokenFontWeightDefault() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontWeightDefault, abstractTheme.fonts.fontWeightDefault)
        XCTAssertTrue(inheritedTheme.fonts.fontWeightDefault == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontWeightCode() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontWeightCode, abstractTheme.fonts.fontWeightCode)
        XCTAssertTrue(inheritedTheme.fonts.fontWeightCode == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontWeightStrong() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontWeightStrong, abstractTheme.fonts.fontWeightStrong)
        XCTAssertTrue(inheritedTheme.fonts.fontWeightStrong == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontWeightDisplay() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontWeightDisplay, abstractTheme.fonts.fontWeightDisplay)
        XCTAssertTrue(inheritedTheme.fonts.fontWeightDisplay == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontWeightHeading() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontWeightHeading, abstractTheme.fonts.fontWeightHeading)
        XCTAssertTrue(inheritedTheme.fonts.fontWeightHeading == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontWeightBodyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontWeightBodyDefault, abstractTheme.fonts.fontWeightBodyDefault)
        XCTAssertTrue(inheritedTheme.fonts.fontWeightBodyDefault == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontWeightBodyStrong() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontWeightBodyStrong, abstractTheme.fonts.fontWeightBodyStrong)
        XCTAssertTrue(inheritedTheme.fonts.fontWeightBodyStrong == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontWeightLabelDefault() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontWeightLabelDefault, abstractTheme.fonts.fontWeightLabelDefault)
        XCTAssertTrue(inheritedTheme.fonts.fontWeightLabelDefault == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontWeightLabelStrong() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontWeightLabelStrong, abstractTheme.fonts.fontWeightLabelStrong)
        XCTAssertTrue(inheritedTheme.fonts.fontWeightLabelStrong == MockThemeFontSemanticTokensProvider.mockThemeFontWeightRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Size

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelXlarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeLabelXlarge, abstractTheme.fonts.fontSizeLabelXlarge)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeLabelXlarge == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeLabelLarge, abstractTheme.fonts.fontSizeLabelLarge)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeLabelLarge == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeLabelMedium, abstractTheme.fonts.fontSizeLabelMedium)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeLabelMedium == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeLabelSmall, abstractTheme.fonts.fontSizeLabelSmall)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeLabelSmall == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeCodeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeCodeMedium, abstractTheme.fonts.fontSizeCodeMedium)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeCodeMedium == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplayLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeDisplayLargeMobile, abstractTheme.fonts.fontSizeDisplayLargeMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeDisplayLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplayLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeDisplayLargeTablet, abstractTheme.fonts.fontSizeDisplayLargeTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeDisplayLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplayMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeDisplayMediumMobile, abstractTheme.fonts.fontSizeDisplayMediumMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeDisplayMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplayMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeDisplayMediumTablet, abstractTheme.fonts.fontSizeDisplayMediumTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeDisplayMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplaySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeDisplaySmallMobile, abstractTheme.fonts.fontSizeDisplaySmallMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeDisplaySmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplaySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeDisplaySmallTablet, abstractTheme.fonts.fontSizeDisplaySmallTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeDisplaySmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeHeadingLargeMobile, abstractTheme.fonts.fontSizeHeadingLargeMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeHeadingLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeHeadingLargeTablet, abstractTheme.fonts.fontSizeHeadingLargeTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeHeadingLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeHeadingMediumMobile, abstractTheme.fonts.fontSizeHeadingMediumMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeHeadingMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeHeadingMediumTablet, abstractTheme.fonts.fontSizeHeadingMediumTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeHeadingMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeHeadingSmallMobile, abstractTheme.fonts.fontSizeHeadingSmallMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeHeadingSmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeHeadingSmallTablet, abstractTheme.fonts.fontSizeHeadingSmallTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeHeadingSmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodyLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeBodyLargeMobile, abstractTheme.fonts.fontSizeBodyLargeMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeBodyLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodyLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeBodyLargeTablet, abstractTheme.fonts.fontSizeBodyLargeTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeBodyLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodyMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeBodyMediumMobile, abstractTheme.fonts.fontSizeBodyMediumMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeBodyMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodyMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeBodyMediumTablet, abstractTheme.fonts.fontSizeBodyMediumTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeBodyMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeBodySmallMobile, abstractTheme.fonts.fontSizeBodySmallMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeBodySmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontSizeBodySmallTablet, abstractTheme.fonts.fontSizeBodySmallTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontSizeBodySmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontSizeRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingLabelLarge, abstractTheme.fonts.fontLetterSpacingLabelLarge)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingLabelLarge == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelXlarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingLabelXlarge, abstractTheme.fonts.fontLetterSpacingLabelXlarge)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingLabelXlarge == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingLabelMedium, abstractTheme.fonts.fontLetterSpacingLabelMedium)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingLabelMedium == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingLabelSmall, abstractTheme.fonts.fontLetterSpacingLabelSmall)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingLabelSmall == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingCodeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingCodeMedium, abstractTheme.fonts.fontLetterSpacingCodeMedium)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingCodeMedium == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingDisplayLargeMobile, abstractTheme.fonts.fontLetterSpacingDisplayLargeMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingDisplayLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingDisplayLargeTablet, abstractTheme.fonts.fontLetterSpacingDisplayLargeTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingDisplayLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingDisplayMediumMobile, abstractTheme.fonts.fontLetterSpacingDisplayMediumMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingDisplayMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingDisplayMediumTablet, abstractTheme.fonts.fontLetterSpacingDisplayMediumTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingDisplayMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplaySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingDisplaySmallMobile, abstractTheme.fonts.fontLetterSpacingDisplaySmallMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingDisplaySmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplaySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingDisplaySmallTablet, abstractTheme.fonts.fontLetterSpacingDisplaySmallTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingDisplaySmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingHeadingLargeMobile, abstractTheme.fonts.fontLetterSpacingHeadingLargeMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingHeadingLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingHeadingLargeTablet, abstractTheme.fonts.fontLetterSpacingHeadingLargeTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingHeadingLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingHeadingMediumMobile, abstractTheme.fonts.fontLetterSpacingHeadingMediumMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingHeadingMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingHeadingMediumTablet, abstractTheme.fonts.fontLetterSpacingHeadingMediumTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingHeadingMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingHeadingSmallMobile, abstractTheme.fonts.fontLetterSpacingHeadingSmallMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingHeadingSmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingHeadingSmallTablet, abstractTheme.fonts.fontLetterSpacingHeadingSmallTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingHeadingSmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingBodyLargeMobile, abstractTheme.fonts.fontLetterSpacingBodyLargeMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingBodyLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingBodyLargeTablet, abstractTheme.fonts.fontLetterSpacingBodyLargeTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingBodyLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingBodyMediumMobile, abstractTheme.fonts.fontLetterSpacingBodyMediumMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingBodyMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingBodyMediumTablet, abstractTheme.fonts.fontLetterSpacingBodyMediumTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingBodyMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingBodySmallMobile, abstractTheme.fonts.fontLetterSpacingBodySmallMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingBodySmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLetterSpacingBodySmallTablet, abstractTheme.fonts.fontLetterSpacingBodySmallTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontLetterSpacingBodySmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLetterSpacingRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Line height

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelXlarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightLabelXlarge, abstractTheme.fonts.fontLineHeightLabelXlarge)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightLabelXlarge == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightLabelLarge, abstractTheme.fonts.fontLineHeightLabelLarge)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightLabelLarge == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightLabelMedium, abstractTheme.fonts.fontLineHeightLabelMedium)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightLabelMedium == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightLabelSmall, abstractTheme.fonts.fontLineHeightLabelSmall)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightLabelSmall == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightCodeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightCodeMedium, abstractTheme.fonts.fontLineHeightCodeMedium)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightCodeMedium == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightDisplayLargeMobile, abstractTheme.fonts.fontLineHeightDisplayLargeMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightDisplayLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightDisplayLargeTablet, abstractTheme.fonts.fontLineHeightDisplayLargeTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightDisplayLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightDisplayMediumMobile, abstractTheme.fonts.fontLineHeightDisplayMediumMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightDisplayMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightDisplayMediumTablet, abstractTheme.fonts.fontLineHeightDisplayMediumTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightDisplayMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplaySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightDisplaySmallMobile, abstractTheme.fonts.fontLineHeightDisplaySmallMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightDisplaySmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplaySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightDisplaySmallTablet, abstractTheme.fonts.fontLineHeightDisplaySmallTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightDisplaySmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightHeadingLargeMobile, abstractTheme.fonts.fontLineHeightHeadingLargeMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightHeadingLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightHeadingLargeTablet, abstractTheme.fonts.fontLineHeightHeadingLargeTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightHeadingLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightHeadingMediumMobile, abstractTheme.fonts.fontLineHeightHeadingMediumMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightHeadingMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightHeadingMediumTablet, abstractTheme.fonts.fontLineHeightHeadingMediumTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightHeadingMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightHeadingSmallMobile, abstractTheme.fonts.fontLineHeightHeadingSmallMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightHeadingSmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightHeadingSmallTablet, abstractTheme.fonts.fontLineHeightHeadingSmallTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightHeadingSmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodyLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightBodyLargeMobile, abstractTheme.fonts.fontLineHeightBodyLargeMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightBodyLargeMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodyLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightBodyLargeTablet, abstractTheme.fonts.fontLineHeightBodyLargeTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightBodyLargeTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodyMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightBodyMediumMobile, abstractTheme.fonts.fontLineHeightBodyMediumMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightBodyMediumMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodyMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightBodyMediumTablet, abstractTheme.fonts.fontLineHeightBodyMediumTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightBodyMediumTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightBodySmallMobile, abstractTheme.fonts.fontLineHeightBodySmallMobile)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightBodySmallMobile == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.fontLineHeightBodySmallTablet, abstractTheme.fonts.fontLineHeightBodySmallTablet)
        XCTAssertTrue(inheritedTheme.fonts.fontLineHeightBodySmallTablet == MockThemeFontSemanticTokensProvider.mockThemeFontLineHeightRawToken)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_body_length

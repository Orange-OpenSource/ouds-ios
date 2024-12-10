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
import XCTest

// swiftlint:disable type_body_length
// swiftlint:disable required_deinit
// swiftlint:disable implicitly_unwrapped_optional
// swiftlint:disable type_name
// swiftlint:disable file_length

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _font semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
///
/// **These tests checks if any _font semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfFontSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Typography - Font - Family

    func testInheritedThemeCanOverrideSemanticTokenFontFamily() throws {
        XCTAssertNotEqual(inheritedTheme.fontFamily, abstractTheme.fontFamily)
        XCTAssertTrue(inheritedTheme.fontFamily == MockTheme.mockThemeFontFamilyRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontFamilyDisplay() throws {
        XCTAssertNotEqual(inheritedTheme.fontFamilyDisplay, abstractTheme.fontFamilyDisplay)
        XCTAssertTrue(inheritedTheme.fontFamilyDisplay == MockTheme.mockThemeFontFamilyRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontFamilyHeading() throws {
        XCTAssertNotEqual(inheritedTheme.fontFamilyHeading, abstractTheme.fontFamilyHeading)
        XCTAssertTrue(inheritedTheme.fontFamilyHeading == MockTheme.mockThemeFontFamilyRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontFamilyBody() throws {
        XCTAssertNotEqual(inheritedTheme.fontFamilyBody, abstractTheme.fontFamilyBody)
        XCTAssertTrue(inheritedTheme.fontFamilyBody == MockTheme.mockThemeFontFamilyRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontFamilyLabel() throws {
        XCTAssertNotEqual(inheritedTheme.fontFamilyLabel, abstractTheme.fontFamilyLabel)
        XCTAssertTrue(inheritedTheme.fontFamilyLabel == MockTheme.mockThemeFontFamilyRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontFamilyCode() throws {
        XCTAssertNotEqual(inheritedTheme.fontFamilyCode, abstractTheme.fontFamilyCode)
        XCTAssertTrue(inheritedTheme.fontFamilyCode == MockTheme.mockThemeFontFamilyRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Weight

    func testInheritedThemeCanOverrideSemanticTokenFontWeightDefault() throws {
        XCTAssertNotEqual(inheritedTheme.fontWeightDefault, abstractTheme.fontWeightDefault)
        XCTAssertTrue(inheritedTheme.fontWeightDefault == MockTheme.mockThemeFontWeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontWeightCode() throws {
        XCTAssertNotEqual(inheritedTheme.fontWeightCode, abstractTheme.fontWeightCode)
        XCTAssertTrue(inheritedTheme.fontWeightCode == MockTheme.mockThemeFontWeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontWeightStrong() throws {
        XCTAssertNotEqual(inheritedTheme.fontWeightStrong, abstractTheme.fontWeightStrong)
        XCTAssertTrue(inheritedTheme.fontWeightStrong == MockTheme.mockThemeFontWeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontWeightDisplay() throws {
        XCTAssertNotEqual(inheritedTheme.fontWeightDisplay, abstractTheme.fontWeightDisplay)
        XCTAssertTrue(inheritedTheme.fontWeightDisplay == MockTheme.mockThemeFontWeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontWeightHeading() throws {
        XCTAssertNotEqual(inheritedTheme.fontWeightHeading, abstractTheme.fontWeightHeading)
        XCTAssertTrue(inheritedTheme.fontWeightHeading == MockTheme.mockThemeFontWeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontWeightBodyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.fontWeightBodyDefault, abstractTheme.fontWeightBodyDefault)
        XCTAssertTrue(inheritedTheme.fontWeightBodyDefault == MockTheme.mockThemeFontWeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontWeightBodyStrong() throws {
        XCTAssertNotEqual(inheritedTheme.fontWeightBodyStrong, abstractTheme.fontWeightBodyStrong)
        XCTAssertTrue(inheritedTheme.fontWeightBodyStrong == MockTheme.mockThemeFontWeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontWeightLabelDefault() throws {
        XCTAssertNotEqual(inheritedTheme.fontWeightLabelDefault, abstractTheme.fontWeightLabelDefault)
        XCTAssertTrue(inheritedTheme.fontWeightLabelDefault == MockTheme.mockThemeFontWeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontWeightLabelStrong() throws {
        XCTAssertNotEqual(inheritedTheme.fontWeightLabelStrong, abstractTheme.fontWeightLabelStrong)
        XCTAssertTrue(inheritedTheme.fontWeightLabelStrong == MockTheme.mockThemeFontWeightRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Size

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplayLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeDisplayLargeMobile, abstractTheme.fontSizeDisplayLargeMobile)
        XCTAssertTrue(inheritedTheme.fontSizeDisplayLargeMobile == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplayLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeDisplayLargeTablet, abstractTheme.fontSizeDisplayLargeTablet)
        XCTAssertTrue(inheritedTheme.fontSizeDisplayLargeTablet == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplayMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeDisplayMediumMobile, abstractTheme.fontSizeDisplayMediumMobile)
        XCTAssertTrue(inheritedTheme.fontSizeDisplayMediumMobile == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplayMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeDisplayMediumTablet, abstractTheme.fontSizeDisplayMediumTablet)
        XCTAssertTrue(inheritedTheme.fontSizeDisplayMediumTablet == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplaySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeDisplaySmallMobile, abstractTheme.fontSizeDisplaySmallMobile)
        XCTAssertTrue(inheritedTheme.fontSizeDisplaySmallMobile == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplaySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeDisplaySmallTablet, abstractTheme.fontSizeDisplaySmallTablet)
        XCTAssertTrue(inheritedTheme.fontSizeDisplaySmallTablet == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingXLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingXLargeMobile, abstractTheme.fontSizeHeadingXLargeMobile)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingXLargeMobile == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingXLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingXLargeTablet, abstractTheme.fontSizeHeadingXLargeTablet)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingXLargeTablet == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingLargeMobile, abstractTheme.fontSizeHeadingLargeMobile)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingLargeMobile == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingLargeTablet, abstractTheme.fontSizeHeadingLargeTablet)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingLargeTablet == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingMediumMobile, abstractTheme.fontSizeHeadingMediumMobile)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingMediumMobile == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingMediumTablet, abstractTheme.fontSizeHeadingMediumTablet)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingMediumTablet == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingSmallMobile, abstractTheme.fontSizeHeadingSmallMobile)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingSmallMobile == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingSmallTablet, abstractTheme.fontSizeHeadingSmallTablet)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingSmallTablet == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodyLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeBodyLargeMobile, abstractTheme.fontSizeBodyLargeMobile)
        XCTAssertTrue(inheritedTheme.fontSizeBodyLargeMobile == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodyLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeBodyLargeTablet, abstractTheme.fontSizeBodyLargeTablet)
        XCTAssertTrue(inheritedTheme.fontSizeBodyLargeTablet == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodyMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeBodyMediumMobile, abstractTheme.fontSizeBodyMediumMobile)
        XCTAssertTrue(inheritedTheme.fontSizeBodyMediumMobile == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodyMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeBodyMediumTablet, abstractTheme.fontSizeBodyMediumTablet)
        XCTAssertTrue(inheritedTheme.fontSizeBodyMediumTablet == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeBodySmallMobile, abstractTheme.fontSizeBodySmallMobile)
        XCTAssertTrue(inheritedTheme.fontSizeBodySmallMobile == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeBodySmallTablet, abstractTheme.fontSizeBodySmallTablet)
        XCTAssertTrue(inheritedTheme.fontSizeBodySmallTablet == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelXLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelXLargeMobile, abstractTheme.fontSizeLabelXLargeMobile)
        XCTAssertTrue(inheritedTheme.fontSizeLabelXLargeMobile == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelXLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelXLargeTablet, abstractTheme.fontSizeLabelXLargeTablet)
        XCTAssertTrue(inheritedTheme.fontSizeLabelXLargeTablet == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelLargeMobile, abstractTheme.fontSizeLabelLargeMobile)
        XCTAssertTrue(inheritedTheme.fontSizeLabelLargeMobile == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelLargeTablet, abstractTheme.fontSizeLabelLargeTablet)
        XCTAssertTrue(inheritedTheme.fontSizeLabelLargeTablet == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelMediumMobile, abstractTheme.fontSizeLabelMediumMobile)
        XCTAssertTrue(inheritedTheme.fontSizeLabelMediumMobile == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelMediumTablet, abstractTheme.fontSizeLabelMediumTablet)
        XCTAssertTrue(inheritedTheme.fontSizeLabelMediumTablet == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelSmallMobile, abstractTheme.fontSizeLabelSmallMobile)
        XCTAssertTrue(inheritedTheme.fontSizeLabelSmallMobile == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelSmallTablet, abstractTheme.fontSizeLabelSmallTablet)
        XCTAssertTrue(inheritedTheme.fontSizeLabelSmallTablet == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeCodeMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeCodeMediumMobile, abstractTheme.fontSizeCodeMediumMobile)
        XCTAssertTrue(inheritedTheme.fontSizeCodeMediumMobile == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeCodeMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeCodeMediumTablet, abstractTheme.fontSizeCodeMediumTablet)
        XCTAssertTrue(inheritedTheme.fontSizeCodeMediumTablet == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeCodeSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeCodeSmallMobile, abstractTheme.fontSizeCodeSmallMobile)
        XCTAssertTrue(inheritedTheme.fontSizeCodeSmallMobile == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeCodeSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeCodeSmallTablet, abstractTheme.fontSizeCodeSmallTablet)
        XCTAssertTrue(inheritedTheme.fontSizeCodeSmallTablet == MockTheme.mockThemeFontSizeRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingDisplayLargeMobile, abstractTheme.fontLetterSpacingDisplayLargeMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingDisplayLargeMobile == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingDisplayLargeTablet, abstractTheme.fontLetterSpacingDisplayLargeTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingDisplayLargeTablet == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingDisplayMediumMobile, abstractTheme.fontLetterSpacingDisplayMediumMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingDisplayMediumMobile == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingDisplayMediumTablet, abstractTheme.fontLetterSpacingDisplayMediumTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingDisplayMediumTablet == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplaySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingDisplaySmallMobile, abstractTheme.fontLetterSpacingDisplaySmallMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingDisplaySmallMobile == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplaySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingDisplaySmallTablet, abstractTheme.fontLetterSpacingDisplaySmallTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingDisplaySmallTablet == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingXLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingXLargeMobile, abstractTheme.fontLetterSpacingHeadingXLargeMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingXLargeMobile == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingXLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingXLargeTablet, abstractTheme.fontLetterSpacingHeadingXLargeTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingXLargeTablet == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingLargeMobile, abstractTheme.fontLetterSpacingHeadingLargeMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingLargeMobile == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingLargeTablet, abstractTheme.fontLetterSpacingHeadingLargeTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingLargeTablet == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingMediumMobile, abstractTheme.fontLetterSpacingHeadingMediumMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingMediumMobile == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingMediumTablet, abstractTheme.fontLetterSpacingHeadingMediumTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingMediumTablet == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingSmallMobile, abstractTheme.fontLetterSpacingHeadingSmallMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingSmallMobile == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingSmallTablet, abstractTheme.fontLetterSpacingHeadingSmallTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingSmallTablet == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingBodyLargeMobile, abstractTheme.fontLetterSpacingBodyLargeMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingBodyLargeMobile == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingBodyLargeTablet, abstractTheme.fontLetterSpacingBodyLargeTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingBodyLargeTablet == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingBodyMediumMobile, abstractTheme.fontLetterSpacingBodyMediumMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingBodyMediumMobile == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingBodyMediumTablet, abstractTheme.fontLetterSpacingBodyMediumTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingBodyMediumTablet == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingBodySmallMobile, abstractTheme.fontLetterSpacingBodySmallMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingBodySmallMobile == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingBodySmallTablet, abstractTheme.fontLetterSpacingBodySmallTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingBodySmallTablet == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelXLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelXLargeMobile, abstractTheme.fontLetterSpacingLabelXLargeMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelXLargeMobile == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelXLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelXLargeTablet, abstractTheme.fontLetterSpacingLabelXLargeTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelXLargeTablet == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelLargeMobile, abstractTheme.fontLetterSpacingLabelLargeMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelLargeMobile == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelLargeTablet, abstractTheme.fontLetterSpacingLabelLargeTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelLargeTablet == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelMediumMobile, abstractTheme.fontLetterSpacingLabelMediumMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelMediumMobile == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelMediumTablet, abstractTheme.fontLetterSpacingLabelMediumTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelMediumTablet == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelSmallMobile, abstractTheme.fontLetterSpacingLabelSmallMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelSmallMobile == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelSmallTablet, abstractTheme.fontLetterSpacingLabelSmallTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelSmallTablet == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingCodeMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingCodeMediumMobile, abstractTheme.fontLetterSpacingCodeMediumMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingCodeMediumMobile == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingCodeMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingCodeMediumTablet, abstractTheme.fontLetterSpacingCodeMediumTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingCodeMediumTablet == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingCodeSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingCodeSmallMobile, abstractTheme.fontLetterSpacingCodeSmallMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingCodeSmallMobile == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingCodeSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingCodeSmallTablet, abstractTheme.fontLetterSpacingCodeSmallTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingCodeSmallTablet == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Line height

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightDisplayLargeMobile, abstractTheme.fontLineHeightDisplayLargeMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightDisplayLargeMobile == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightDisplayLargeTablet, abstractTheme.fontLineHeightDisplayLargeTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightDisplayLargeTablet == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightDisplayMediumMobile, abstractTheme.fontLineHeightDisplayMediumMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightDisplayMediumMobile == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightDisplayMediumTablet, abstractTheme.fontLineHeightDisplayMediumTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightDisplayMediumTablet == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplaySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightDisplaySmallMobile, abstractTheme.fontLineHeightDisplaySmallMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightDisplaySmallMobile == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplaySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightDisplaySmallTablet, abstractTheme.fontLineHeightDisplaySmallTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightDisplaySmallTablet == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingXLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingXLargeMobile, abstractTheme.fontLineHeightHeadingXLargeMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingXLargeMobile == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingXLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingXLargeTablet, abstractTheme.fontLineHeightHeadingXLargeTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingXLargeTablet == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingLargeMobile, abstractTheme.fontLineHeightHeadingLargeMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingLargeMobile == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingLargeTablet, abstractTheme.fontLineHeightHeadingLargeTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingLargeTablet == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingMediumMobile, abstractTheme.fontLineHeightHeadingMediumMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingMediumMobile == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingMediumTablet, abstractTheme.fontLineHeightHeadingMediumTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingMediumTablet == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingSmallMobile, abstractTheme.fontLineHeightHeadingSmallMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingSmallMobile == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingSmallTablet, abstractTheme.fontLineHeightHeadingSmallTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingSmallTablet == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodyLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightBodyLargeMobile, abstractTheme.fontLineHeightBodyLargeMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightBodyLargeMobile == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodyLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightBodyLargeTablet, abstractTheme.fontLineHeightBodyLargeTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightBodyLargeTablet == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodyMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightBodyMediumMobile, abstractTheme.fontLineHeightBodyMediumMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightBodyMediumMobile == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodyMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightBodyMediumTablet, abstractTheme.fontLineHeightBodyMediumTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightBodyMediumTablet == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightBodySmallMobile, abstractTheme.fontLineHeightBodySmallMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightBodySmallMobile == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightBodySmallTablet, abstractTheme.fontLineHeightBodySmallTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightBodySmallTablet == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelXLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelXLargeMobile, abstractTheme.fontLineHeightLabelXLargeMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelXLargeMobile == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelXLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelXLargeTablet, abstractTheme.fontLineHeightLabelXLargeTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelXLargeTablet == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelLargeMobile, abstractTheme.fontLineHeightLabelLargeMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelLargeMobile == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelLargeTablet, abstractTheme.fontLineHeightLabelLargeTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelLargeTablet == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelMediumMobile, abstractTheme.fontLineHeightLabelMediumMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelMediumMobile == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelMediumTablet, abstractTheme.fontLineHeightLabelMediumTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelMediumTablet == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelSmallMobile, abstractTheme.fontLineHeightLabelSmallMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelSmallMobile == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelSmallTablet, abstractTheme.fontLineHeightLabelSmallTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelSmallTablet == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightCodeMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightCodeMediumMobile, abstractTheme.fontLineHeightCodeMediumMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightCodeMediumMobile == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightCodeMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightCodeMediumTablet, abstractTheme.fontLineHeightCodeMediumTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightCodeMediumTablet == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightCodeSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightCodeSmallMobile, abstractTheme.fontLineHeightCodeSmallMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightCodeSmallMobile == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightCodeSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightCodeSmallTablet, abstractTheme.fontLineHeightCodeSmallTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightCodeSmallTablet == MockTheme.mockThemeFontLineHeightRawToken)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_body_length
// swiftlint:enable type_name

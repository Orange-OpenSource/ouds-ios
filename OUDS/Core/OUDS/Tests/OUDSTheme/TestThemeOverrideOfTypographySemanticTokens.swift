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
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _typography semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
///
/// **These tests checks if any _typography semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfTypographySemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Typography - Font - Family

    func testInheritedThemeCanOverrideSemanticTokenFontFamily() throws {
        XCTAssertNotEqual(inheritedTheme.fontFamily, abstractTheme.fontFamily)
        XCTAssertTrue(inheritedTheme.fontFamily == MockTheme.mockThemeTypographyFontFamilyRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontFamilyDisplay() throws {
        XCTAssertNotEqual(inheritedTheme.fontFamilyDisplay, abstractTheme.fontFamilyDisplay)
        XCTAssertTrue(inheritedTheme.fontFamilyDisplay == MockTheme.mockThemeTypographyFontFamilyRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontFamilyHeading() throws {
        XCTAssertNotEqual(inheritedTheme.fontFamilyHeading, abstractTheme.fontFamilyHeading)
        XCTAssertTrue(inheritedTheme.fontFamilyHeading == MockTheme.mockThemeTypographyFontFamilyRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontFamilyBody() throws {
        XCTAssertNotEqual(inheritedTheme.fontFamilyBody, abstractTheme.fontFamilyBody)
        XCTAssertTrue(inheritedTheme.fontFamilyBody == MockTheme.mockThemeTypographyFontFamilyRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontFamilyLabel() throws {
        XCTAssertNotEqual(inheritedTheme.fontFamilyLabel, abstractTheme.fontFamilyLabel)
        XCTAssertTrue(inheritedTheme.fontFamilyLabel == MockTheme.mockThemeTypographyFontFamilyRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontFamilyCode() throws {
        XCTAssertNotEqual(inheritedTheme.fontFamilyCode, abstractTheme.fontFamilyCode)
        XCTAssertTrue(inheritedTheme.fontFamilyCode == MockTheme.mockThemeTypographyFontFamilyRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Weight

    func testInheritedThemeCanOverrideSemanticTokenFontWeightDefault() throws {
        XCTAssertNotEqual(inheritedTheme.fontWeightDefault, abstractTheme.fontWeightDefault)
        XCTAssertTrue(inheritedTheme.fontWeightDefault == MockTheme.mockThemeTypographyFontWeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontWeightCode() throws {
        XCTAssertNotEqual(inheritedTheme.fontWeightCode, abstractTheme.fontWeightCode)
        XCTAssertTrue(inheritedTheme.fontWeightCode == MockTheme.mockThemeTypographyFontWeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontWeightStrong() throws {
        XCTAssertNotEqual(inheritedTheme.fontWeightStrong, abstractTheme.fontWeightStrong)
        XCTAssertTrue(inheritedTheme.fontWeightStrong == MockTheme.mockThemeTypographyFontWeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontWeightDisplay() throws {
        XCTAssertNotEqual(inheritedTheme.fontWeightDisplay, abstractTheme.fontWeightDisplay)
        XCTAssertTrue(inheritedTheme.fontWeightDisplay == MockTheme.mockThemeTypographyFontWeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontWeightHeading() throws {
        XCTAssertNotEqual(inheritedTheme.fontWeightHeading, abstractTheme.fontWeightHeading)
        XCTAssertTrue(inheritedTheme.fontWeightHeading == MockTheme.mockThemeTypographyFontWeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontWeightBodyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.fontWeightBodyDefault, abstractTheme.fontWeightBodyDefault)
        XCTAssertTrue(inheritedTheme.fontWeightBodyDefault == MockTheme.mockThemeTypographyFontWeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontWeightBodyStrong() throws {
        XCTAssertNotEqual(inheritedTheme.fontWeightBodyStrong, abstractTheme.fontWeightBodyStrong)
        XCTAssertTrue(inheritedTheme.fontWeightBodyStrong == MockTheme.mockThemeTypographyFontWeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontWeightLabelDefault() throws {
        XCTAssertNotEqual(inheritedTheme.fontWeightLabelDefault, abstractTheme.fontWeightLabelDefault)
        XCTAssertTrue(inheritedTheme.fontWeightLabelDefault == MockTheme.mockThemeTypographyFontWeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontWeightLabelStrong() throws {
        XCTAssertNotEqual(inheritedTheme.fontWeightLabelStrong, abstractTheme.fontWeightLabelStrong)
        XCTAssertTrue(inheritedTheme.fontWeightLabelStrong == MockTheme.mockThemeTypographyFontWeightRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Size

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplayLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeDisplayLargeMobile, abstractTheme.fontSizeDisplayLargeMobile)
        XCTAssertTrue(inheritedTheme.fontSizeDisplayLargeMobile == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplayLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeDisplayLargeTablet, abstractTheme.fontSizeDisplayLargeTablet)
        XCTAssertTrue(inheritedTheme.fontSizeDisplayLargeTablet == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplayMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeDisplayMediumMobile, abstractTheme.fontSizeDisplayMediumMobile)
        XCTAssertTrue(inheritedTheme.fontSizeDisplayMediumMobile == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplayMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeDisplayMediumTablet, abstractTheme.fontSizeDisplayMediumTablet)
        XCTAssertTrue(inheritedTheme.fontSizeDisplayMediumTablet == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplaySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeDisplaySmallMobile, abstractTheme.fontSizeDisplaySmallMobile)
        XCTAssertTrue(inheritedTheme.fontSizeDisplaySmallMobile == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplaySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeDisplaySmallTablet, abstractTheme.fontSizeDisplaySmallTablet)
        XCTAssertTrue(inheritedTheme.fontSizeDisplaySmallTablet == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingXLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingXLargeMobile, abstractTheme.fontSizeHeadingXLargeMobile)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingXLargeMobile == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingXLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingXLargeTablet, abstractTheme.fontSizeHeadingXLargeTablet)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingXLargeTablet == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingLargeMobile, abstractTheme.fontSizeHeadingLargeMobile)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingLargeMobile == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingLargeTablet, abstractTheme.fontSizeHeadingLargeTablet)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingLargeTablet == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingMediumMobile, abstractTheme.fontSizeHeadingMediumMobile)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingMediumMobile == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingMediumTablet, abstractTheme.fontSizeHeadingMediumTablet)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingMediumTablet == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingSmallMobile, abstractTheme.fontSizeHeadingSmallMobile)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingSmallMobile == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingSmallTablet, abstractTheme.fontSizeHeadingSmallTablet)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingSmallTablet == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodyLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeBodyLargeMobile, abstractTheme.fontSizeBodyLargeMobile)
        XCTAssertTrue(inheritedTheme.fontSizeBodyLargeMobile == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodyLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeBodyLargeTablet, abstractTheme.fontSizeBodyLargeTablet)
        XCTAssertTrue(inheritedTheme.fontSizeBodyLargeTablet == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodyMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeBodyMediumMobile, abstractTheme.fontSizeBodyMediumMobile)
        XCTAssertTrue(inheritedTheme.fontSizeBodyMediumMobile == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodyMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeBodyMediumTablet, abstractTheme.fontSizeBodyMediumTablet)
        XCTAssertTrue(inheritedTheme.fontSizeBodyMediumTablet == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeBodySmallMobile, abstractTheme.fontSizeBodySmallMobile)
        XCTAssertTrue(inheritedTheme.fontSizeBodySmallMobile == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeBodySmallTablet, abstractTheme.fontSizeBodySmallTablet)
        XCTAssertTrue(inheritedTheme.fontSizeBodySmallTablet == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelXLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelXLargeMobile, abstractTheme.fontSizeLabelXLargeMobile)
        XCTAssertTrue(inheritedTheme.fontSizeLabelXLargeMobile == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelXLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelXLargeTablet, abstractTheme.fontSizeLabelXLargeTablet)
        XCTAssertTrue(inheritedTheme.fontSizeLabelXLargeTablet == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelLargeMobile, abstractTheme.fontSizeLabelLargeMobile)
        XCTAssertTrue(inheritedTheme.fontSizeLabelLargeMobile == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelLargeTablet, abstractTheme.fontSizeLabelLargeTablet)
        XCTAssertTrue(inheritedTheme.fontSizeLabelLargeTablet == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelMediumMobile, abstractTheme.fontSizeLabelMediumMobile)
        XCTAssertTrue(inheritedTheme.fontSizeLabelMediumMobile == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelMediumTablet, abstractTheme.fontSizeLabelMediumTablet)
        XCTAssertTrue(inheritedTheme.fontSizeLabelMediumTablet == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelSmallMobile, abstractTheme.fontSizeLabelSmallMobile)
        XCTAssertTrue(inheritedTheme.fontSizeLabelSmallMobile == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelSmallTablet, abstractTheme.fontSizeLabelSmallTablet)
        XCTAssertTrue(inheritedTheme.fontSizeLabelSmallTablet == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeCodeMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeCodeMediumMobile, abstractTheme.fontSizeCodeMediumMobile)
        XCTAssertTrue(inheritedTheme.fontSizeCodeMediumMobile == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeCodeMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeCodeMediumTablet, abstractTheme.fontSizeCodeMediumTablet)
        XCTAssertTrue(inheritedTheme.fontSizeCodeMediumTablet == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeCodeSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeCodeSmallMobile, abstractTheme.fontSizeCodeSmallMobile)
        XCTAssertTrue(inheritedTheme.fontSizeCodeSmallMobile == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeCodeSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeCodeSmallTablet, abstractTheme.fontSizeCodeSmallTablet)
        XCTAssertTrue(inheritedTheme.fontSizeCodeSmallTablet == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingDisplayLargeMobile, abstractTheme.fontLetterSpacingDisplayLargeMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingDisplayLargeMobile == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingDisplayLargeTablet, abstractTheme.fontLetterSpacingDisplayLargeTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingDisplayLargeTablet == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingDisplayMediumMobile, abstractTheme.fontLetterSpacingDisplayMediumMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingDisplayMediumMobile == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingDisplayMediumTablet, abstractTheme.fontLetterSpacingDisplayMediumTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingDisplayMediumTablet == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplaySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingDisplaySmallMobile, abstractTheme.fontLetterSpacingDisplaySmallMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingDisplaySmallMobile == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplaySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingDisplaySmallTablet, abstractTheme.fontLetterSpacingDisplaySmallTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingDisplaySmallTablet == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingXLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingXLargeMobile, abstractTheme.fontLetterSpacingHeadingXLargeMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingXLargeMobile == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingXLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingXLargeTablet, abstractTheme.fontLetterSpacingHeadingXLargeTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingXLargeTablet == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingLargeMobile, abstractTheme.fontLetterSpacingHeadingLargeMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingLargeMobile == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingLargeTablet, abstractTheme.fontLetterSpacingHeadingLargeTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingLargeTablet == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingMediumMobile, abstractTheme.fontLetterSpacingHeadingMediumMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingMediumMobile == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingMediumTablet, abstractTheme.fontLetterSpacingHeadingMediumTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingMediumTablet == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingSmallMobile, abstractTheme.fontLetterSpacingHeadingSmallMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingSmallMobile == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingSmallTablet, abstractTheme.fontLetterSpacingHeadingSmallTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingSmallTablet == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingBodyLargeMobile, abstractTheme.fontLetterSpacingBodyLargeMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingBodyLargeMobile == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingBodyLargeTablet, abstractTheme.fontLetterSpacingBodyLargeTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingBodyLargeTablet == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingBodyMediumMobile, abstractTheme.fontLetterSpacingBodyMediumMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingBodyMediumMobile == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingBodyMediumTablet, abstractTheme.fontLetterSpacingBodyMediumTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingBodyMediumTablet == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingBodySmallMobile, abstractTheme.fontLetterSpacingBodySmallMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingBodySmallMobile == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingBodySmallTablet, abstractTheme.fontLetterSpacingBodySmallTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingBodySmallTablet == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelXLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelXLargeMobile, abstractTheme.fontLetterSpacingLabelXLargeMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelXLargeMobile == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelXLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelXLargeTablet, abstractTheme.fontLetterSpacingLabelXLargeTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelXLargeTablet == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelLargeMobile, abstractTheme.fontLetterSpacingLabelLargeMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelLargeMobile == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelLargeTablet, abstractTheme.fontLetterSpacingLabelLargeTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelLargeTablet == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelMediumMobile, abstractTheme.fontLetterSpacingLabelMediumMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelMediumMobile == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelMediumTablet, abstractTheme.fontLetterSpacingLabelMediumTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelMediumTablet == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelSmallMobile, abstractTheme.fontLetterSpacingLabelSmallMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelSmallMobile == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelSmallTablet, abstractTheme.fontLetterSpacingLabelSmallTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelSmallTablet == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingCodeMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingCodeMediumMobile, abstractTheme.fontLetterSpacingCodeMediumMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingCodeMediumMobile == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingCodeMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingCodeMediumTablet, abstractTheme.fontLetterSpacingCodeMediumTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingCodeMediumTablet == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingCodeSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingCodeSmallMobile, abstractTheme.fontLetterSpacingCodeSmallMobile)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingCodeSmallMobile == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingCodeSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingCodeSmallTablet, abstractTheme.fontLetterSpacingCodeSmallTablet)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingCodeSmallTablet == MockTheme.mockThemeTypographyFontLetterSpacingRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Line height

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightDisplayLargeMobile, abstractTheme.fontLineHeightDisplayLargeMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightDisplayLargeMobile == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightDisplayLargeTablet, abstractTheme.fontLineHeightDisplayLargeTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightDisplayLargeTablet == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightDisplayMediumMobile, abstractTheme.fontLineHeightDisplayMediumMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightDisplayMediumMobile == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightDisplayMediumTablet, abstractTheme.fontLineHeightDisplayMediumTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightDisplayMediumTablet == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplaySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightDisplaySmallMobile, abstractTheme.fontLineHeightDisplaySmallMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightDisplaySmallMobile == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplaySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightDisplaySmallTablet, abstractTheme.fontLineHeightDisplaySmallTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightDisplaySmallTablet == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingXLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingXLargeMobile, abstractTheme.fontLineHeightHeadingXLargeMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingXLargeMobile == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingXLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingXLargeTablet, abstractTheme.fontLineHeightHeadingXLargeTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingXLargeTablet == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingLargeMobile, abstractTheme.fontLineHeightHeadingLargeMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingLargeMobile == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingLargeTablet, abstractTheme.fontLineHeightHeadingLargeTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingLargeTablet == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingMediumMobile, abstractTheme.fontLineHeightHeadingMediumMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingMediumMobile == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingMediumTablet, abstractTheme.fontLineHeightHeadingMediumTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingMediumTablet == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingSmallMobile, abstractTheme.fontLineHeightHeadingSmallMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingSmallMobile == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingSmallTablet, abstractTheme.fontLineHeightHeadingSmallTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingSmallTablet == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodyLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightBodyLargeMobile, abstractTheme.fontLineHeightBodyLargeMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightBodyLargeMobile == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodyLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightBodyLargeTablet, abstractTheme.fontLineHeightBodyLargeTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightBodyLargeTablet == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodyMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightBodyMediumMobile, abstractTheme.fontLineHeightBodyMediumMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightBodyMediumMobile == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodyMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightBodyMediumTablet, abstractTheme.fontLineHeightBodyMediumTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightBodyMediumTablet == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodySmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightBodySmallMobile, abstractTheme.fontLineHeightBodySmallMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightBodySmallMobile == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodySmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightBodySmallTablet, abstractTheme.fontLineHeightBodySmallTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightBodySmallTablet == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelXLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelXLargeMobile, abstractTheme.fontLineHeightLabelXLargeMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelXLargeMobile == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelXLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelXLargeTablet, abstractTheme.fontLineHeightLabelXLargeTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelXLargeTablet == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelLargeMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelLargeMobile, abstractTheme.fontLineHeightLabelLargeMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelLargeMobile == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelLargeTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelLargeTablet, abstractTheme.fontLineHeightLabelLargeTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelLargeTablet == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelMediumMobile, abstractTheme.fontLineHeightLabelMediumMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelMediumMobile == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelMediumTablet, abstractTheme.fontLineHeightLabelMediumTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelMediumTablet == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelSmallMobile, abstractTheme.fontLineHeightLabelSmallMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelSmallMobile == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelSmallTablet, abstractTheme.fontLineHeightLabelSmallTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelSmallTablet == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightCodeMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightCodeMediumMobile, abstractTheme.fontLineHeightCodeMediumMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightCodeMediumMobile == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightCodeMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightCodeMediumTablet, abstractTheme.fontLineHeightCodeMediumTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightCodeMediumTablet == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightCodeSmallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightCodeSmallMobile, abstractTheme.fontLineHeightCodeSmallMobile)
        XCTAssertTrue(inheritedTheme.fontLineHeightCodeSmallMobile == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightCodeSmallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightCodeSmallTablet, abstractTheme.fontLineHeightCodeSmallTablet)
        XCTAssertTrue(inheritedTheme.fontLineHeightCodeSmallTablet == MockTheme.mockThemeTypographyFontLineHeightRawToken)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_body_length
// swiftlint:enable type_name

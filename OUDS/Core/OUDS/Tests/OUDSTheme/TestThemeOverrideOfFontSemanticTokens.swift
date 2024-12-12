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

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelXlarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelXlarge, abstractTheme.fontSizeLabelXlarge)
        XCTAssertTrue(inheritedTheme.fontSizeLabelXlarge == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelLarge, abstractTheme.fontSizeLabelLarge)
        XCTAssertTrue(inheritedTheme.fontSizeLabelLarge == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelMedium, abstractTheme.fontSizeLabelMedium)
        XCTAssertTrue(inheritedTheme.fontSizeLabelMedium == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelSmall, abstractTheme.fontSizeLabelSmall)
        XCTAssertTrue(inheritedTheme.fontSizeLabelSmall == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeCodeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeCodeMedium, abstractTheme.fontSizeCodeMedium)
        XCTAssertTrue(inheritedTheme.fontSizeCodeMedium == MockTheme.mockThemeFontSizeRawToken)
    }

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

    // MARK: - Semantic token - Typography - Font - Letter spacing

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelLarge, abstractTheme.fontLetterSpacingLabelLarge)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelLarge == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelXlarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelXlarge, abstractTheme.fontLetterSpacingLabelXlarge)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelXlarge == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelMedium, abstractTheme.fontLetterSpacingLabelMedium)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelMedium == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelSmall, abstractTheme.fontLetterSpacingLabelSmall)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelSmall == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingCodeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingCodeMedium, abstractTheme.fontLetterSpacingCodeMedium)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingCodeMedium == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

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

    // MARK: - Semantic token - Typography - Font - Line height

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelXlarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelXlarge, abstractTheme.fontLineHeightLabelXlarge)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelXlarge == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelLarge, abstractTheme.fontLineHeightLabelLarge)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelLarge == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelMedium, abstractTheme.fontLineHeightLabelMedium)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelMedium == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelSmall, abstractTheme.fontLineHeightLabelSmall)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelSmall == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightCodeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightCodeMedium, abstractTheme.fontLineHeightCodeMedium)
        XCTAssertTrue(inheritedTheme.fontLineHeightCodeMedium == MockTheme.mockThemeFontLineHeightRawToken)
    }

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
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_body_length

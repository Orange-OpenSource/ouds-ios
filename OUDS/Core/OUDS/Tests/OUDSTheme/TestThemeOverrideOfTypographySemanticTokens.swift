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

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _typography semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// **These tests checks if any _typography semantic tokens_ can be surcharged by a child theme**
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

    func testInheritedThemeCanOverrideSemanticTokenFontWeightCode() throws {
        XCTAssertNotEqual(inheritedTheme.fontWeightCode, abstractTheme.fontWeightCode)
        XCTAssertTrue(inheritedTheme.fontWeightCode == MockTheme.mockThemeTypographyFontWeightRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Size

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeDisplayLarge, abstractTheme.fontSizeDisplayLarge)
        XCTAssertTrue(inheritedTheme.fontSizeDisplayLarge == MockTheme.mockThemeMultipleTypographyFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeDisplayMedium, abstractTheme.fontSizeDisplayMedium)
        XCTAssertTrue(inheritedTheme.fontSizeDisplayMedium == MockTheme.mockThemeMultipleTypographyFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplaySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeDisplaySmall, abstractTheme.fontSizeDisplaySmall)
        XCTAssertTrue(inheritedTheme.fontSizeDisplaySmall == MockTheme.mockThemeMultipleTypographyFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingXLarge, abstractTheme.fontSizeHeadingXLarge)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingXLarge == MockTheme.mockThemeMultipleTypographyFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingLarge, abstractTheme.fontSizeHeadingLarge)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingLarge == MockTheme.mockThemeMultipleTypographyFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingMedium, abstractTheme.fontSizeHeadingMedium)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingMedium == MockTheme.mockThemeMultipleTypographyFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingSmall, abstractTheme.fontSizeHeadingSmall)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingSmall == MockTheme.mockThemeMultipleTypographyFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodyLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeBodyLarge, abstractTheme.fontSizeBodyLarge)
        XCTAssertTrue(inheritedTheme.fontSizeBodyLarge == MockTheme.mockThemeMultipleTypographyFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodyMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeBodyMedium, abstractTheme.fontSizeBodyMedium)
        XCTAssertTrue(inheritedTheme.fontSizeBodyMedium == MockTheme.mockThemeMultipleTypographyFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeBodySmall, abstractTheme.fontSizeBodySmall)
        XCTAssertTrue(inheritedTheme.fontSizeBodySmall == MockTheme.mockThemeMultipleTypographyFontSizeTokens)
    }

    // MARK: - Semantic token - Typography - Font - Size - Others

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelXLarge, abstractTheme.fontSizeLabelXLarge)
        XCTAssertTrue(inheritedTheme.fontSizeLabelXLarge == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelLarge, abstractTheme.fontSizeLabelLarge)
        XCTAssertTrue(inheritedTheme.fontSizeLabelLarge == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelMedium, abstractTheme.fontSizeLabelMedium)
        XCTAssertTrue(inheritedTheme.fontSizeLabelMedium == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelSmall, abstractTheme.fontSizeLabelSmall)
        XCTAssertTrue(inheritedTheme.fontSizeLabelSmall == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeCodeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeCodeMedium, abstractTheme.fontSizeCodeMedium)
        XCTAssertTrue(inheritedTheme.fontSizeCodeMedium == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeCodeSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeCodeSmall, abstractTheme.fontSizeCodeSmall)
        XCTAssertTrue(inheritedTheme.fontSizeCodeSmall == MockTheme.mockThemeTypographyFontSizeRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    func testInheritedThemeCanOverrideSemanticTokenfontLetterSpacingDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingDisplayLarge, abstractTheme.fontLetterSpacingDisplayLarge)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingDisplayLarge == MockTheme.mockThemeMultipleTypographyLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingDisplayMedium, abstractTheme.fontLetterSpacingDisplayMedium)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingDisplayMedium == MockTheme.mockThemeMultipleTypographyLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplaySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingDisplaySmall, abstractTheme.fontLetterSpacingDisplaySmall)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingDisplaySmall == MockTheme.mockThemeMultipleTypographyLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingXLarge, abstractTheme.fontLetterSpacingHeadingXLarge)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingXLarge == MockTheme.mockThemeMultipleTypographyLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingLarge, abstractTheme.fontLetterSpacingHeadingLarge)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingLarge == MockTheme.mockThemeMultipleTypographyLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingMedium, abstractTheme.fontLetterSpacingHeadingMedium)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingMedium == MockTheme.mockThemeMultipleTypographyLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingSmall, abstractTheme.fontLetterSpacingHeadingSmall)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingSmall == MockTheme.mockThemeMultipleTypographyLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingBodyLarge, abstractTheme.fontLetterSpacingBodyLarge)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingBodyLarge == MockTheme.mockThemeMultipleTypographyLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingBodyMedium, abstractTheme.fontLetterSpacingBodyMedium)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingBodyMedium == MockTheme.mockThemeMultipleTypographyLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingBodySmall, abstractTheme.fontLetterSpacingBodySmall)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingBodySmall == MockTheme.mockThemeMultipleTypographyLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelXLarge, abstractTheme.fontLetterSpacingLabelXLarge)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelXLarge == MockTheme.mockThemeMultipleTypographyLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelLarge, abstractTheme.fontLetterSpacingLabelLarge)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelLarge == MockTheme.mockThemeMultipleTypographyLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelMedium, abstractTheme.fontLetterSpacingLabelMedium)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelMedium == MockTheme.mockThemeMultipleTypographyLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelSmall, abstractTheme.fontLetterSpacingLabelSmall)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelSmall == MockTheme.mockThemeMultipleTypographyLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingCodeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingCodeMedium, abstractTheme.fontLetterSpacingCodeMedium)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingCodeMedium == MockTheme.mockThemeMultipleTypographyLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingCodeSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingCodeSmall, abstractTheme.fontLetterSpacingCodeSmall)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingCodeSmall == MockTheme.mockThemeMultipleTypographyLetterSpacingTokens)
    }

    // MARK: - Semantic token - Typography - Font - Line height

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightDisplayLarge, abstractTheme.fontLineHeightDisplayLarge)
        XCTAssertTrue(inheritedTheme.fontLineHeightDisplayLarge == MockTheme.mockThemeMultipleTypographyLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightDisplayMedium, abstractTheme.fontLineHeightDisplayMedium)
        XCTAssertTrue(inheritedTheme.fontLineHeightDisplayMedium == MockTheme.mockThemeMultipleTypographyLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplaySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightDisplaySmall, abstractTheme.fontLineHeightDisplaySmall)
        XCTAssertTrue(inheritedTheme.fontLineHeightDisplaySmall == MockTheme.mockThemeMultipleTypographyLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingXLarge, abstractTheme.fontLineHeightHeadingXLarge)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingXLarge == MockTheme.mockThemeMultipleTypographyLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingLarge, abstractTheme.fontLineHeightHeadingLarge)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingLarge == MockTheme.mockThemeMultipleTypographyLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingMedium, abstractTheme.fontLineHeightHeadingMedium)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingMedium == MockTheme.mockThemeMultipleTypographyLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingSmall, abstractTheme.fontLineHeightHeadingSmall)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingSmall == MockTheme.mockThemeMultipleTypographyLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodyLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightBodyLarge, abstractTheme.fontLineHeightBodyLarge)
        XCTAssertTrue(inheritedTheme.fontLineHeightBodyLarge == MockTheme.mockThemeMultipleTypographyLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodyMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightBodyMedium, abstractTheme.fontLineHeightBodyMedium)
        XCTAssertTrue(inheritedTheme.fontLineHeightBodyMedium == MockTheme.mockThemeMultipleTypographyLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightBodySmall, abstractTheme.fontLineHeightBodySmall)
        XCTAssertTrue(inheritedTheme.fontLineHeightBodySmall == MockTheme.mockThemeMultipleTypographyLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelXLarge, abstractTheme.fontLineHeightLabelXLarge)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelXLarge == MockTheme.mockThemeMultipleTypographyLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelLarge, abstractTheme.fontLineHeightLabelLarge)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelLarge == MockTheme.mockThemeMultipleTypographyLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelMedium, abstractTheme.fontLineHeightLabelMedium)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelMedium == MockTheme.mockThemeMultipleTypographyLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelSmall, abstractTheme.fontLineHeightLabelSmall)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelSmall == MockTheme.mockThemeMultipleTypographyLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightCodeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightCodeMedium, abstractTheme.fontLineHeightCodeMedium)
        XCTAssertTrue(inheritedTheme.fontLineHeightCodeMedium == MockTheme.mockThemeMultipleTypographyLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightCodeSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightCodeSmall, abstractTheme.fontLineHeightCodeSmall)
        XCTAssertTrue(inheritedTheme.fontLineHeightCodeSmall == MockTheme.mockThemeMultipleTypographyLineHeightTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Display

    func testInheritedThemeCanOverrideSemanticTokenTypeDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeDisplayLarge, abstractTheme.typeDisplayLarge)
        XCTAssertTrue(inheritedTheme.typeDisplayLarge == MockTheme.mockThemeMultipleTypographyTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.typeDisplayMedium, abstractTheme.typeDisplayMedium)
        XCTAssertTrue(inheritedTheme.typeDisplayMedium == MockTheme.mockThemeMultipleTypographyTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeDisplaySmal() throws {
        XCTAssertNotEqual(inheritedTheme.typeDisplaySmall, abstractTheme.typeDisplaySmall)
        XCTAssertTrue(inheritedTheme.typeDisplaySmall == MockTheme.mockThemeMultipleTypographyTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Heading

    func testInheritedThemeCanOverrideSemanticTokenTypeHeadingXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeHeadingXLarge, abstractTheme.typeHeadingXLarge)
        XCTAssertTrue(inheritedTheme.typeHeadingXLarge == MockTheme.mockThemeMultipleTypographyTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeHeadingLarge, abstractTheme.typeHeadingLarge)
        XCTAssertTrue(inheritedTheme.typeHeadingLarge == MockTheme.mockThemeMultipleTypographyTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.typeHeadingMedium, abstractTheme.typeHeadingMedium)
        XCTAssertTrue(inheritedTheme.typeHeadingMedium == MockTheme.mockThemeMultipleTypographyTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.typeHeadingSmall, abstractTheme.typeHeadingSmall)
        XCTAssertTrue(inheritedTheme.typeHeadingSmall == MockTheme.mockThemeMultipleTypographyTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Body

    func testInheritedThemeCanOverrideSemanticTokenTypeDefaultLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeBodyDefaultLarge, abstractTheme.typeBodyDefaultLarge)
        XCTAssertTrue(inheritedTheme.typeBodyDefaultLarge == MockTheme.mockThemeMultipleTypographyTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeDefaultMedium() throws {
        XCTAssertNotEqual(inheritedTheme.typeBodyDefaultMedium, abstractTheme.typeBodyDefaultMedium)
        XCTAssertTrue(inheritedTheme.typeBodyDefaultMedium == MockTheme.mockThemeMultipleTypographyTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeDefaultSmall() throws {
        XCTAssertNotEqual(inheritedTheme.typeBodyDefaultSmall, abstractTheme.typeBodyDefaultSmall)
        XCTAssertTrue(inheritedTheme.typeBodyDefaultSmall == MockTheme.mockThemeMultipleTypographyTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeStrongLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeBodyStrongLarge, abstractTheme.typeBodyStrongLarge)
        XCTAssertTrue(inheritedTheme.typeBodyStrongLarge == MockTheme.mockThemeMultipleTypographyTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeStrongMedium() throws {
        XCTAssertNotEqual(inheritedTheme.typeBodyStrongMedium, abstractTheme.typeBodyStrongMedium)
        XCTAssertTrue(inheritedTheme.typeBodyStrongMedium == MockTheme.mockThemeMultipleTypographyTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeStrongSmall() throws {
        XCTAssertNotEqual(inheritedTheme.typeBodyStrongSmall, abstractTheme.typeBodyStrongSmall)
        XCTAssertTrue(inheritedTheme.typeBodyStrongSmall == MockTheme.mockThemeMultipleTypographyTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Label

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelDefaultXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeLabelDefaultXLarge, abstractTheme.typeLabelDefaultXLarge)
        XCTAssertTrue(inheritedTheme.typeLabelDefaultXLarge == MockTheme.mockThemeMultipleTypographyTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelDefaultLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeLabelDefaultLarge, abstractTheme.typeLabelDefaultLarge)
        XCTAssertTrue(inheritedTheme.typeLabelDefaultLarge == MockTheme.mockThemeMultipleTypographyTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelDefaultMedium() throws {
        XCTAssertNotEqual(inheritedTheme.typeLabelDefaultMedium, abstractTheme.typeLabelDefaultMedium)
        XCTAssertTrue(inheritedTheme.typeLabelDefaultMedium == MockTheme.mockThemeMultipleTypographyTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelDefaultSmall() throws {
        XCTAssertNotEqual(inheritedTheme.typeLabelDefaultSmall, abstractTheme.typeLabelDefaultSmall)
        XCTAssertTrue(inheritedTheme.typeLabelDefaultSmall == MockTheme.mockThemeMultipleTypographyTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelStrongXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeLabelStrongXLarge, abstractTheme.typeLabelStrongXLarge)
        XCTAssertTrue(inheritedTheme.typeLabelStrongXLarge == MockTheme.mockThemeMultipleTypographyTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelStrongLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeLabelStrongLarge, abstractTheme.typeLabelStrongLarge)
        XCTAssertTrue(inheritedTheme.typeLabelStrongLarge == MockTheme.mockThemeMultipleTypographyTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelStrongMedium() throws {
        XCTAssertNotEqual(inheritedTheme.typeLabelStrongMedium, abstractTheme.typeLabelStrongMedium)
        XCTAssertTrue(inheritedTheme.typeLabelStrongMedium == MockTheme.mockThemeMultipleTypographyTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelStrongSmall() throws {
        XCTAssertNotEqual(inheritedTheme.typeLabelStrongSmall, abstractTheme.typeLabelStrongSmall)
        XCTAssertTrue(inheritedTheme.typeLabelStrongSmall == MockTheme.mockThemeMultipleTypographyTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Code

    func testInheritedThemeCanOverrideSemanticTokenTypeCodeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.typeCodeMedium, abstractTheme.typeCodeMedium)
        XCTAssertTrue(inheritedTheme.typeCodeMedium == MockTheme.mockThemeMultipleTypographyTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeCodeSmall() throws {
        XCTAssertNotEqual(inheritedTheme.typeCodeSmall, abstractTheme.typeCodeSmall)
        XCTAssertTrue(inheritedTheme.typeCodeSmall == MockTheme.mockThemeMultipleTypographyTokens)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_body_length
// swiftlint:enable type_name

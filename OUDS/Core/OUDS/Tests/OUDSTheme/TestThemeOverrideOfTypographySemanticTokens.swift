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

import XCTest
import OUDS

// swiftlint:disable type_body_length

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

    func testInheritedThemeCanOverrideSemanticTokenFontWeightCode() throws {
        XCTAssertNotEqual(inheritedTheme.fontWeightCode, abstractTheme.fontWeightCode)
        XCTAssertTrue(inheritedTheme.fontWeightCode == MockTheme.mockThemeFontWeightRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Size - Mobile

    func testInheritedThemeCanOverrideSemanticTokenFontSizeMobileDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeMobileDisplayLarge, abstractTheme.fontSizeMobileDisplayLarge)
        XCTAssertTrue(inheritedTheme.fontSizeMobileDisplayLarge == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeMobileDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeMobileDisplayMedium, abstractTheme.fontSizeMobileDisplayMedium)
        XCTAssertTrue(inheritedTheme.fontSizeMobileDisplayMedium == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeMobileDisplaySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeMobileDisplaySmall, abstractTheme.fontSizeMobileDisplaySmall)
        XCTAssertTrue(inheritedTheme.fontSizeMobileDisplaySmall == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeMobileHeadingXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeMobileHeadingXLarge, abstractTheme.fontSizeMobileHeadingXLarge)
        XCTAssertTrue(inheritedTheme.fontSizeMobileHeadingXLarge == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeMobileHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeMobileHeadingLarge, abstractTheme.fontSizeMobileHeadingLarge)
        XCTAssertTrue(inheritedTheme.fontSizeMobileHeadingLarge == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeMobileHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeMobileHeadingMedium, abstractTheme.fontSizeMobileHeadingMedium)
        XCTAssertTrue(inheritedTheme.fontSizeMobileHeadingMedium == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeMobileHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeMobileHeadingSmall, abstractTheme.fontSizeMobileHeadingSmall)
        XCTAssertTrue(inheritedTheme.fontSizeMobileHeadingSmall == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeMobileBodyLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeMobileBodyLarge, abstractTheme.fontSizeMobileBodyLarge)
        XCTAssertTrue(inheritedTheme.fontSizeMobileBodyLarge == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeMobileBodyMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeMobileBodyMedium, abstractTheme.fontSizeMobileBodyMedium)
        XCTAssertTrue(inheritedTheme.fontSizeMobileBodyMedium == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeMobileBodySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeMobileBodySmall, abstractTheme.fontSizeMobileBodySmall)
        XCTAssertTrue(inheritedTheme.fontSizeMobileBodySmall == MockTheme.mockThemeFontSizeRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Size - Tablet

    func testInheritedThemeCanOverrideSemanticTokenFontSizeTabletDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeTabletDisplayLarge, abstractTheme.fontSizeTabletDisplayLarge)
        XCTAssertTrue(inheritedTheme.fontSizeTabletDisplayLarge == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeTabletDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeTabletDisplayMedium, abstractTheme.fontSizeTabletDisplayMedium)
        XCTAssertTrue(inheritedTheme.fontSizeTabletDisplayMedium == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeTabletDisplaySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeTabletDisplaySmall, abstractTheme.fontSizeTabletDisplaySmall)
        XCTAssertTrue(inheritedTheme.fontSizeTabletDisplaySmall == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeTabletHeadingXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeTabletHeadingXLarge, abstractTheme.fontSizeTabletHeadingXLarge)
        XCTAssertTrue(inheritedTheme.fontSizeTabletHeadingXLarge == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeTabletHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeTabletHeadingLarge, abstractTheme.fontSizeTabletHeadingLarge)
        XCTAssertTrue(inheritedTheme.fontSizeTabletHeadingLarge == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeTabletHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeTabletHeadingMedium, abstractTheme.fontSizeTabletHeadingMedium)
        XCTAssertTrue(inheritedTheme.fontSizeTabletHeadingMedium == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeTabletHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeTabletHeadingSmall, abstractTheme.fontSizeTabletHeadingSmall)
        XCTAssertTrue(inheritedTheme.fontSizeTabletHeadingSmall == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeTabletBodyLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeTabletBodyLarge, abstractTheme.fontSizeTabletBodyLarge)
        XCTAssertTrue(inheritedTheme.fontSizeTabletBodyLarge == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeTabletBodyMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeTabletBodyMedium, abstractTheme.fontSizeTabletBodyMedium)
        XCTAssertTrue(inheritedTheme.fontSizeTabletBodyMedium == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeTabletBodySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeTabletBodySmall, abstractTheme.fontSizeTabletBodySmall)
        XCTAssertTrue(inheritedTheme.fontSizeTabletBodySmall == MockTheme.mockThemeFontSizeRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Size - Others

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelXLarge, abstractTheme.fontSizeLabelXLarge)
        XCTAssertTrue(inheritedTheme.fontSizeLabelXLarge == MockTheme.mockThemeFontSizeRawToken)
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

    func testInheritedThemeCanOverrideSemanticTokenFontSizeCodeSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeCodeSmall, abstractTheme.fontSizeCodeSmall)
        XCTAssertTrue(inheritedTheme.fontSizeCodeSmall == MockTheme.mockThemeFontSizeRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Line height - Mobile

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightMobileDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightMobileDisplayLarge, abstractTheme.fontLineHeightMobileDisplayLarge)
        XCTAssertTrue(inheritedTheme.fontLineHeightMobileDisplayLarge == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightMobileDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightMobileDisplayMedium, abstractTheme.fontLineHeightMobileDisplayMedium)
        XCTAssertTrue(inheritedTheme.fontLineHeightMobileDisplayMedium == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightMobileDisplaySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightMobileDisplaySmall, abstractTheme.fontLineHeightMobileDisplaySmall)
        XCTAssertTrue(inheritedTheme.fontLineHeightMobileDisplaySmall == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightMobileHeadingXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightMobileHeadingXLarge, abstractTheme.fontLineHeightMobileHeadingXLarge)
        XCTAssertTrue(inheritedTheme.fontLineHeightMobileHeadingXLarge == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightMobileHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightMobileHeadingLarge, abstractTheme.fontLineHeightMobileHeadingLarge)
        XCTAssertTrue(inheritedTheme.fontLineHeightMobileHeadingLarge == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightMobileHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightMobileHeadingMedium, abstractTheme.fontLineHeightMobileHeadingMedium)
        XCTAssertTrue(inheritedTheme.fontLineHeightMobileHeadingMedium == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightMobileHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightMobileHeadingSmall, abstractTheme.fontLineHeightMobileHeadingSmall)
        XCTAssertTrue(inheritedTheme.fontLineHeightMobileHeadingSmall == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightMobileBodyLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightMobileBodyLarge, abstractTheme.fontLineHeightMobileBodyLarge)
        XCTAssertTrue(inheritedTheme.fontLineHeightMobileBodyLarge == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightMobileBodyMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightMobileBodyMedium, abstractTheme.fontLineHeightMobileBodyMedium)
        XCTAssertTrue(inheritedTheme.fontLineHeightMobileBodyMedium == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightMobileBodySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightMobileBodySmall, abstractTheme.fontLineHeightMobileBodySmall)
        XCTAssertTrue(inheritedTheme.fontLineHeightMobileBodySmall == MockTheme.mockThemeFontLineHeightRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Line height - Tablet

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightTabletDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightTabletDisplayLarge, abstractTheme.fontLineHeightTabletDisplayLarge)
        XCTAssertTrue(inheritedTheme.fontLineHeightTabletDisplayLarge == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightTabletDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightTabletDisplayMedium, abstractTheme.fontLineHeightTabletDisplayMedium)
        XCTAssertTrue(inheritedTheme.fontLineHeightTabletDisplayMedium == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightTabletDisplaySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightTabletDisplaySmall, abstractTheme.fontLineHeightTabletDisplaySmall)
        XCTAssertTrue(inheritedTheme.fontLineHeightTabletDisplaySmall == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightTabletHeadingXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightTabletHeadingXLarge, abstractTheme.fontLineHeightTabletHeadingXLarge)
        XCTAssertTrue(inheritedTheme.fontLineHeightTabletHeadingXLarge == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightTabletHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightTabletHeadingLarge, abstractTheme.fontLineHeightTabletHeadingLarge)
        XCTAssertTrue(inheritedTheme.fontLineHeightTabletHeadingLarge == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightTabletHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightTabletHeadingMedium, abstractTheme.fontLineHeightTabletHeadingMedium)
        XCTAssertTrue(inheritedTheme.fontLineHeightTabletHeadingMedium == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightTabletHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightTabletHeadingSmall, abstractTheme.fontLineHeightTabletHeadingSmall)
        XCTAssertTrue(inheritedTheme.fontLineHeightTabletHeadingSmall == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightTabletBodyLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightTabletBodyLarge, abstractTheme.fontLineHeightTabletBodyLarge)
        XCTAssertTrue(inheritedTheme.fontLineHeightTabletBodyLarge == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightTabletBodyMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightTabletBodyMedium, abstractTheme.fontLineHeightTabletBodyMedium)
        XCTAssertTrue(inheritedTheme.fontLineHeightTabletBodyMedium == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightTabletBodySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightTabletBodySmall, abstractTheme.fontLineHeightTabletBodySmall)
        XCTAssertTrue(inheritedTheme.fontLineHeightTabletBodySmall == MockTheme.mockThemeFontLineHeightRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Line height - Others

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelXLarge, abstractTheme.fontLineHeightLabelXLarge)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelXLarge == MockTheme.mockThemeFontLineHeightRawToken)
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

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightCodeSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightCodeSmall, abstractTheme.fontLineHeightCodeSmall)
        XCTAssertTrue(inheritedTheme.fontLineHeightCodeSmall == MockTheme.mockThemeFontLineHeightRawToken)
    }

    // MARK: - Semantic tokens - Typography - Composites - Display

    func testInheritedThemeCanOverrideSemanticTokenTypeDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeDisplayLarge, abstractTheme.typeDisplayLarge)
        XCTAssertTrue(inheritedTheme.typeDisplayLarge == MockTheme.mockThemeTypographyCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.typeDisplayMedium, abstractTheme.typeDisplayMedium)
        XCTAssertTrue(inheritedTheme.typeDisplayMedium == MockTheme.mockThemeTypographyCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeDisplaySmal() throws {
        XCTAssertNotEqual(inheritedTheme.typeDisplaySmall, abstractTheme.typeDisplaySmall)
        XCTAssertTrue(inheritedTheme.typeDisplaySmall == MockTheme.mockThemeTypographyCompositeSemanticToken)
    }

    // MARK: - Semantic tokens - Typography - Composites - Heading

    func testInheritedThemeCanOverrideSemanticTokenTypeHeadingXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeHeadingXLarge, abstractTheme.typeHeadingXLarge)
        XCTAssertTrue(inheritedTheme.typeHeadingXLarge == MockTheme.mockThemeTypographyCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeHeadingLarge, abstractTheme.typeHeadingLarge)
        XCTAssertTrue(inheritedTheme.typeHeadingLarge == MockTheme.mockThemeTypographyCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.typeHeadingMedium, abstractTheme.typeHeadingMedium)
        XCTAssertTrue(inheritedTheme.typeHeadingMedium == MockTheme.mockThemeTypographyCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.typeHeadingSmall, abstractTheme.typeHeadingSmall)
        XCTAssertTrue(inheritedTheme.typeHeadingSmall == MockTheme.mockThemeTypographyCompositeSemanticToken)
    }

    // MARK: - Semantic tokens - Typography - Composites - Body

    func testInheritedThemeCanOverrideSemanticTokenTypeDefaultLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeBodyDefaultLarge, abstractTheme.typeBodyDefaultLarge)
        XCTAssertTrue(inheritedTheme.typeBodyDefaultLarge == MockTheme.mockThemeTypographyCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeDefaultMedium() throws {
        XCTAssertNotEqual(inheritedTheme.typeBodyDefaultMedium, abstractTheme.typeBodyDefaultMedium)
        XCTAssertTrue(inheritedTheme.typeBodyDefaultMedium == MockTheme.mockThemeTypographyCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeDefaultSmall() throws {
        XCTAssertNotEqual(inheritedTheme.typeBodyDefaultSmall, abstractTheme.typeBodyDefaultSmall)
        XCTAssertTrue(inheritedTheme.typeBodyDefaultSmall == MockTheme.mockThemeTypographyCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeStrongLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeBodyStrongLarge, abstractTheme.typeBodyStrongLarge)
        XCTAssertTrue(inheritedTheme.typeBodyStrongLarge == MockTheme.mockThemeTypographyCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeStrongMedium() throws {
        XCTAssertNotEqual(inheritedTheme.typeBodyStrongMedium, abstractTheme.typeBodyStrongMedium)
        XCTAssertTrue(inheritedTheme.typeBodyStrongMedium == MockTheme.mockThemeTypographyCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeStrongSmall() throws {
        XCTAssertNotEqual(inheritedTheme.typeBodyStrongSmall, abstractTheme.typeBodyStrongSmall)
        XCTAssertTrue(inheritedTheme.typeBodyStrongSmall == MockTheme.mockThemeTypographyCompositeSemanticToken)
    }

    // MARK: - Semantic tokens - Typography - Composites - Label

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelDefaultXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeLabelDefaultXLarge, abstractTheme.typeLabelDefaultXLarge)
        XCTAssertTrue(inheritedTheme.typeLabelDefaultXLarge == MockTheme.mockThemeTypographyCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelDefaultLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeLabelDefaultLarge, abstractTheme.typeLabelDefaultLarge)
        XCTAssertTrue(inheritedTheme.typeLabelDefaultLarge == MockTheme.mockThemeTypographyCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelDefaultMedium() throws {
        XCTAssertNotEqual(inheritedTheme.typeLabelDefaultMedium, abstractTheme.typeLabelDefaultMedium)
        XCTAssertTrue(inheritedTheme.typeLabelDefaultMedium == MockTheme.mockThemeTypographyCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelDefaultSmall() throws {
        XCTAssertNotEqual(inheritedTheme.typeLabelDefaultSmall, abstractTheme.typeLabelDefaultSmall)
        XCTAssertTrue(inheritedTheme.typeLabelDefaultSmall == MockTheme.mockThemeTypographyCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelStrongXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeLabelStrongXLarge, abstractTheme.typeLabelStrongXLarge)
        XCTAssertTrue(inheritedTheme.typeLabelStrongXLarge == MockTheme.mockThemeTypographyCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelStrongLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeLabelStrongLarge, abstractTheme.typeLabelStrongLarge)
        XCTAssertTrue(inheritedTheme.typeLabelStrongLarge == MockTheme.mockThemeTypographyCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelStrongMedium() throws {
        XCTAssertNotEqual(inheritedTheme.typeLabelStrongMedium, abstractTheme.typeLabelStrongMedium)
        XCTAssertTrue(inheritedTheme.typeLabelStrongMedium == MockTheme.mockThemeTypographyCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelStrongSmall() throws {
        XCTAssertNotEqual(inheritedTheme.typeLabelStrongSmall, abstractTheme.typeLabelStrongSmall)
        XCTAssertTrue(inheritedTheme.typeLabelStrongSmall == MockTheme.mockThemeTypographyCompositeSemanticToken)
    }

    // MARK: - Semantic tokens - Typography - Composites - Code

    func testInheritedThemeCanOverrideSemanticTokenTypeCodeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.typeCodeMedium, abstractTheme.typeCodeMedium)
        XCTAssertTrue(inheritedTheme.typeCodeMedium == MockTheme.mockThemeTypographyCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeCodeSmall() throws {
        XCTAssertNotEqual(inheritedTheme.typeCodeSmall, abstractTheme.typeCodeSmall)
        XCTAssertTrue(inheritedTheme.typeCodeSmall == MockTheme.mockThemeTypographyCompositeSemanticToken)
    }
}

// swiftlint:enable type_body_length

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
import OUDSThemesShared

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

    func testInheritedThemeCanOverrideSemanticTokenFontSizeMobileCodeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeMobileCodeMedium, abstractTheme.fontSizeMobileCodeMedium)
        XCTAssertTrue(inheritedTheme.fontSizeMobileCodeMedium == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeMobileCodeSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeMobileCodeSmall, abstractTheme.fontSizeMobileCodeSmall)
        XCTAssertTrue(inheritedTheme.fontSizeMobileCodeSmall == MockTheme.mockThemeFontSizeRawToken)
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

    func testInheritedThemeCanOverrideSemanticTokenFontSizeTabletCodeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeTabletCodeMedium, abstractTheme.fontSizeTabletCodeMedium)
        XCTAssertTrue(inheritedTheme.fontSizeTabletCodeMedium == MockTheme.mockThemeFontSizeRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeTabletCodeSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeTabletCodeSmall, abstractTheme.fontSizeTabletCodeSmall)
        XCTAssertTrue(inheritedTheme.fontSizeTabletCodeSmall == MockTheme.mockThemeFontSizeRawToken)
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

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightMobileCodeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightMobileCodeMedium, abstractTheme.fontLineHeightMobileCodeMedium)
        XCTAssertTrue(inheritedTheme.fontLineHeightMobileCodeMedium == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightMobileCodeSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightMobileCodeSmall, abstractTheme.fontLineHeightMobileCodeSmall)
        XCTAssertTrue(inheritedTheme.fontLineHeightMobileCodeSmall == MockTheme.mockThemeFontLineHeightRawToken)
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

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightTabletCodeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightTabletCodeMedium, abstractTheme.fontLineHeightTabletCodeMedium)
        XCTAssertTrue(inheritedTheme.fontLineHeightTabletCodeMedium == MockTheme.mockThemeFontLineHeightRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightTabletCodeSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightTabletCodeSmall, abstractTheme.fontLineHeightTabletCodeSmall)
        XCTAssertTrue(inheritedTheme.fontLineHeightTabletCodeSmall == MockTheme.mockThemeFontLineHeightRawToken)
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

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Mobile

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingMobileDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingMobileDisplayLarge, abstractTheme.fontParagraphSpacingMobileDisplayLarge)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingMobileDisplayLarge == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingMobileDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingMobileDisplayMedium, abstractTheme.fontParagraphSpacingMobileDisplayMedium)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingMobileDisplayMedium == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingMobileDisplaySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingMobileDisplaySmall, abstractTheme.fontParagraphSpacingMobileDisplaySmall)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingMobileDisplaySmall == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingMobileHeadingXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingMobileHeadingXLarge, abstractTheme.fontParagraphSpacingMobileHeadingXLarge)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingMobileHeadingXLarge == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingMobileHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingMobileHeadingLarge, abstractTheme.fontParagraphSpacingMobileHeadingLarge)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingMobileHeadingLarge == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingMobileHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingMobileHeadingMedium, abstractTheme.fontParagraphSpacingMobileHeadingMedium)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingMobileHeadingMedium == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingMobileHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingMobileHeadingSmall, abstractTheme.fontParagraphSpacingMobileHeadingSmall)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingMobileHeadingSmall == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingMobileBodyLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingMobileBodyLarge, abstractTheme.fontParagraphSpacingMobileBodyLarge)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingMobileBodyLarge == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingMobileBodyMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingMobileBodyMedium, abstractTheme.fontParagraphSpacingMobileBodyMedium)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingMobileBodyMedium == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingMobileBodySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingMobileBodySmall, abstractTheme.fontParagraphSpacingMobileBodySmall)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingMobileBodySmall == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingMobileCodeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingMobileCodeMedium, abstractTheme.fontParagraphSpacingMobileCodeMedium)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingMobileCodeMedium == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingMobileCodeSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingMobileCodeSmall, abstractTheme.fontParagraphSpacingMobileCodeSmall)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingMobileCodeSmall == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Paragraph spacing - Tablet

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingTabletDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingTabletDisplayLarge, abstractTheme.fontParagraphSpacingTabletDisplayLarge)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingTabletDisplayLarge == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingTabletDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingTabletDisplayMedium, abstractTheme.fontParagraphSpacingTabletDisplayMedium)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingTabletDisplayMedium == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingTabletDisplaySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingTabletDisplaySmall, abstractTheme.fontParagraphSpacingTabletDisplaySmall)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingTabletDisplaySmall == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingTabletHeadingXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingTabletHeadingXLarge, abstractTheme.fontParagraphSpacingTabletHeadingXLarge)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingTabletHeadingXLarge == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingTabletHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingTabletHeadingLarge, abstractTheme.fontParagraphSpacingTabletHeadingLarge)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingTabletHeadingLarge == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingTabletHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingTabletHeadingMedium, abstractTheme.fontParagraphSpacingTabletHeadingMedium)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingTabletHeadingMedium == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingTabletHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingTabletHeadingSmall, abstractTheme.fontParagraphSpacingTabletHeadingSmall)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingTabletHeadingSmall == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingTabletBodyLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingTabletBodyLarge, abstractTheme.fontParagraphSpacingTabletBodyLarge)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingTabletBodyLarge == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingTabletBodyMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingTabletBodyMedium, abstractTheme.fontParagraphSpacingTabletBodyMedium)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingTabletBodyMedium == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingTabletBodySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingTabletBodySmall, abstractTheme.fontParagraphSpacingTabletBodySmall)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingTabletBodySmall == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingTabletCodeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingTabletCodeMedium, abstractTheme.fontParagraphSpacingTabletCodeMedium)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingTabletCodeMedium == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingTabletCodeSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingTabletCodeSmall, abstractTheme.fontParagraphSpacingTabletCodeSmall)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingTabletCodeSmall == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    // MARK: - Semantic token - Typography - Font - Paragraph spacing - Others

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingLabelXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingLabelXLarge, abstractTheme.fontParagraphSpacingLabelXLarge)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingLabelXLarge == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingLabelLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingLabelLarge, abstractTheme.fontParagraphSpacingLabelLarge)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingLabelLarge == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingLabelMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingLabelMedium, abstractTheme.fontParagraphSpacingLabelMedium)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingLabelMedium == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingLabelSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingLabelSmall, abstractTheme.fontParagraphSpacingLabelSmall)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingLabelSmall == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingCodeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingCodeMedium, abstractTheme.fontParagraphSpacingCodeMedium)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingCodeMedium == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontParagraphSpacingCodeSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontParagraphSpacingCodeSmall, abstractTheme.fontParagraphSpacingCodeSmall)
        XCTAssertTrue(inheritedTheme.fontParagraphSpacingCodeSmall == MockTheme.mockThemeFontParagraphSpacingRawToken)
    }
}

// swiftlint:enable type_body_length

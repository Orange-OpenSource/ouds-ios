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

// swiftlint:disable required_deinit
// swiftlint:disable implicitly_unwrapped_optional
// swiftlint:disable type_name

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _font semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
///
/// **These tests checks if any _font semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfFontMultipleSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Typography - Font - Size

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeDisplayLarge, abstractTheme.fontSizeDisplayLarge)
        XCTAssertTrue(inheritedTheme.fontSizeDisplayLarge == MockTheme.mockThemeMultipleFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeDisplayMedium, abstractTheme.fontSizeDisplayMedium)
        XCTAssertTrue(inheritedTheme.fontSizeDisplayMedium == MockTheme.mockThemeMultipleFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeDisplaySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeDisplaySmall, abstractTheme.fontSizeDisplaySmall)
        XCTAssertTrue(inheritedTheme.fontSizeDisplaySmall == MockTheme.mockThemeMultipleFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingXlarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingXlarge, abstractTheme.fontSizeHeadingXlarge)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingXlarge == MockTheme.mockThemeMultipleFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingLarge, abstractTheme.fontSizeHeadingLarge)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingLarge == MockTheme.mockThemeMultipleFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingMedium, abstractTheme.fontSizeHeadingMedium)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingMedium == MockTheme.mockThemeMultipleFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingSmall, abstractTheme.fontSizeHeadingSmall)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingSmall == MockTheme.mockThemeMultipleFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodyLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeBodyLarge, abstractTheme.fontSizeBodyLarge)
        XCTAssertTrue(inheritedTheme.fontSizeBodyLarge == MockTheme.mockThemeMultipleFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodyMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeBodyMedium, abstractTheme.fontSizeBodyMedium)
        XCTAssertTrue(inheritedTheme.fontSizeBodyMedium == MockTheme.mockThemeMultipleFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeBodySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeBodySmall, abstractTheme.fontSizeBodySmall)
        XCTAssertTrue(inheritedTheme.fontSizeBodySmall == MockTheme.mockThemeMultipleFontSizeTokens)
    }

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

    // MARK: - Semantic token - Typography - Font - Letter spacing

    func testInheritedThemeCanOverrideSemanticTokenfontLetterSpacingDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingDisplayLarge, abstractTheme.fontLetterSpacingDisplayLarge)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingDisplayLarge == MockTheme.mockThemeMultipleFontLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingDisplayMedium, abstractTheme.fontLetterSpacingDisplayMedium)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingDisplayMedium == MockTheme.mockThemeMultipleFontLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingDisplaySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingDisplaySmall, abstractTheme.fontLetterSpacingDisplaySmall)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingDisplaySmall == MockTheme.mockThemeMultipleFontLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingXlarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingXlarge, abstractTheme.fontLetterSpacingHeadingXlarge)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingXlarge == MockTheme.mockThemeMultipleFontLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingLarge, abstractTheme.fontLetterSpacingHeadingLarge)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingLarge == MockTheme.mockThemeMultipleFontLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingMedium, abstractTheme.fontLetterSpacingHeadingMedium)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingMedium == MockTheme.mockThemeMultipleFontLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingSmall, abstractTheme.fontLetterSpacingHeadingSmall)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingSmall == MockTheme.mockThemeMultipleFontLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingBodyLarge, abstractTheme.fontLetterSpacingBodyLarge)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingBodyLarge == MockTheme.mockThemeMultipleFontLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodyMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingBodyMedium, abstractTheme.fontLetterSpacingBodyMedium)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingBodyMedium == MockTheme.mockThemeMultipleFontLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingBodySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingBodySmall, abstractTheme.fontLetterSpacingBodySmall)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingBodySmall == MockTheme.mockThemeMultipleFontLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelXlarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelXlarge, abstractTheme.fontLetterSpacingLabelXlarge)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelXlarge == MockTheme.mockThemeFontLetterSpacingRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelLarge, abstractTheme.fontLetterSpacingLabelLarge)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelLarge == MockTheme.mockThemeFontLetterSpacingRawToken)
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

    // MARK: - Semantic token - Typography - Font - Line height

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightDisplayLarge, abstractTheme.fontLineHeightDisplayLarge)
        XCTAssertTrue(inheritedTheme.fontLineHeightDisplayLarge == MockTheme.mockThemeMultipleFontLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightDisplayMedium, abstractTheme.fontLineHeightDisplayMedium)
        XCTAssertTrue(inheritedTheme.fontLineHeightDisplayMedium == MockTheme.mockThemeMultipleFontLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightDisplaySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightDisplaySmall, abstractTheme.fontLineHeightDisplaySmall)
        XCTAssertTrue(inheritedTheme.fontLineHeightDisplaySmall == MockTheme.mockThemeMultipleFontLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingXlarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingXlarge, abstractTheme.fontLineHeightHeadingXlarge)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingXlarge == MockTheme.mockThemeMultipleFontLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingLarge, abstractTheme.fontLineHeightHeadingLarge)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingLarge == MockTheme.mockThemeMultipleFontLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingMedium, abstractTheme.fontLineHeightHeadingMedium)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingMedium == MockTheme.mockThemeMultipleFontLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingSmall, abstractTheme.fontLineHeightHeadingSmall)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingSmall == MockTheme.mockThemeMultipleFontLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodyLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightBodyLarge, abstractTheme.fontLineHeightBodyLarge)
        XCTAssertTrue(inheritedTheme.fontLineHeightBodyLarge == MockTheme.mockThemeMultipleFontLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodyMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightBodyMedium, abstractTheme.fontLineHeightBodyMedium)
        XCTAssertTrue(inheritedTheme.fontLineHeightBodyMedium == MockTheme.mockThemeMultipleFontLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightBodySmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightBodySmall, abstractTheme.fontLineHeightBodySmall)
        XCTAssertTrue(inheritedTheme.fontLineHeightBodySmall == MockTheme.mockThemeMultipleFontLineHeightTokens)
    }

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
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name

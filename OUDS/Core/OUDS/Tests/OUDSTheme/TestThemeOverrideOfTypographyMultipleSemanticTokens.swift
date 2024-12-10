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

    func testInheritedThemeCanOverrideSemanticTokenFontSizeHeadingXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeHeadingXLarge, abstractTheme.fontSizeHeadingXLarge)
        XCTAssertTrue(inheritedTheme.fontSizeHeadingXLarge == MockTheme.mockThemeMultipleFontSizeTokens)
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

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelXLarge, abstractTheme.fontSizeLabelXLarge)
        XCTAssertTrue(inheritedTheme.fontSizeLabelXLarge == MockTheme.mockThemeMultipleFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelLarge, abstractTheme.fontSizeLabelLarge)
        XCTAssertTrue(inheritedTheme.fontSizeLabelLarge == MockTheme.mockThemeMultipleFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelMedium, abstractTheme.fontSizeLabelMedium)
        XCTAssertTrue(inheritedTheme.fontSizeLabelMedium == MockTheme.mockThemeMultipleFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeLabelSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeLabelSmall, abstractTheme.fontSizeLabelSmall)
        XCTAssertTrue(inheritedTheme.fontSizeLabelSmall == MockTheme.mockThemeMultipleFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeCodeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeCodeMedium, abstractTheme.fontSizeCodeMedium)
        XCTAssertTrue(inheritedTheme.fontSizeCodeMedium == MockTheme.mockThemeMultipleFontSizeTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontSizeCodeSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontSizeCodeSmall, abstractTheme.fontSizeCodeSmall)
        XCTAssertTrue(inheritedTheme.fontSizeCodeSmall == MockTheme.mockThemeMultipleFontSizeTokens)
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

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingHeadingXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingHeadingXLarge, abstractTheme.fontLetterSpacingHeadingXLarge)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingHeadingXLarge == MockTheme.mockThemeMultipleFontLetterSpacingTokens)
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

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelXLarge, abstractTheme.fontLetterSpacingLabelXLarge)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelXLarge == MockTheme.mockThemeMultipleFontLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelLarge, abstractTheme.fontLetterSpacingLabelLarge)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelLarge == MockTheme.mockThemeMultipleFontLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelMedium, abstractTheme.fontLetterSpacingLabelMedium)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelMedium == MockTheme.mockThemeMultipleFontLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingLabelSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingLabelSmall, abstractTheme.fontLetterSpacingLabelSmall)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingLabelSmall == MockTheme.mockThemeMultipleFontLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingCodeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingCodeMedium, abstractTheme.fontLetterSpacingCodeMedium)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingCodeMedium == MockTheme.mockThemeMultipleFontLetterSpacingTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLetterSpacingCodeSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLetterSpacingCodeSmall, abstractTheme.fontLetterSpacingCodeSmall)
        XCTAssertTrue(inheritedTheme.fontLetterSpacingCodeSmall == MockTheme.mockThemeMultipleFontLetterSpacingTokens)
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

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightHeadingXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightHeadingXLarge, abstractTheme.fontLineHeightHeadingXLarge)
        XCTAssertTrue(inheritedTheme.fontLineHeightHeadingXLarge == MockTheme.mockThemeMultipleFontLineHeightTokens)
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

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelXLarge, abstractTheme.fontLineHeightLabelXLarge)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelXLarge == MockTheme.mockThemeMultipleFontLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelLarge, abstractTheme.fontLineHeightLabelLarge)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelLarge == MockTheme.mockThemeMultipleFontLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelMedium, abstractTheme.fontLineHeightLabelMedium)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelMedium == MockTheme.mockThemeMultipleFontLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightLabelSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightLabelSmall, abstractTheme.fontLineHeightLabelSmall)
        XCTAssertTrue(inheritedTheme.fontLineHeightLabelSmall == MockTheme.mockThemeMultipleFontLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightCodeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightCodeMedium, abstractTheme.fontLineHeightCodeMedium)
        XCTAssertTrue(inheritedTheme.fontLineHeightCodeMedium == MockTheme.mockThemeMultipleFontLineHeightTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenFontLineHeightCodeSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fontLineHeightCodeSmall, abstractTheme.fontLineHeightCodeSmall)
        XCTAssertTrue(inheritedTheme.fontLineHeightCodeSmall == MockTheme.mockThemeMultipleFontLineHeightTokens)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name

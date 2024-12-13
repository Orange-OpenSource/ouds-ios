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
/// **These tests checks if any _font composite semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfFontCompositeSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic tokens - Typography - Composites - Display

    func testInheritedThemeCanOverrideSemanticTokenTypeDisplayLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeDisplayLarge, abstractTheme.fonts.typeDisplayLarge)
        XCTAssertTrue(inheritedTheme.fonts.typeDisplayLarge == MockThemeFontSemanticTokensWrapper.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeDisplayMedium, abstractTheme.fonts.typeDisplayMedium)
        XCTAssertTrue(inheritedTheme.fonts.typeDisplayMedium == MockThemeFontSemanticTokensWrapper.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeDisplaySmal() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeDisplaySmall, abstractTheme.fonts.typeDisplaySmall)
        XCTAssertTrue(inheritedTheme.fonts.typeDisplaySmall == MockThemeFontSemanticTokensWrapper.mockThemeMultipleFontCompositeRawTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Heading

    func testInheritedThemeCanOverrideSemanticTokenTypeHeadingXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeHeadingXLarge, abstractTheme.fonts.typeHeadingXLarge)
        XCTAssertTrue(inheritedTheme.fonts.typeHeadingXLarge == MockThemeFontSemanticTokensWrapper.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeHeadingLarge, abstractTheme.fonts.typeHeadingLarge)
        XCTAssertTrue(inheritedTheme.fonts.typeHeadingLarge == MockThemeFontSemanticTokensWrapper.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeHeadingMedium, abstractTheme.fonts.typeHeadingMedium)
        XCTAssertTrue(inheritedTheme.fonts.typeHeadingMedium == MockThemeFontSemanticTokensWrapper.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeHeadingSmall, abstractTheme.fonts.typeHeadingSmall)
        XCTAssertTrue(inheritedTheme.fonts.typeHeadingSmall == MockThemeFontSemanticTokensWrapper.mockThemeMultipleFontCompositeRawTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Body

    func testInheritedThemeCanOverrideSemanticTokenTypeDefaultLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeBodyDefaultLarge, abstractTheme.fonts.typeBodyDefaultLarge)
        XCTAssertTrue(inheritedTheme.fonts.typeBodyDefaultLarge == MockThemeFontSemanticTokensWrapper.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeDefaultMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeBodyDefaultMedium, abstractTheme.fonts.typeBodyDefaultMedium)
        XCTAssertTrue(inheritedTheme.fonts.typeBodyDefaultMedium == MockThemeFontSemanticTokensWrapper.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeDefaultSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeBodyDefaultSmall, abstractTheme.fonts.typeBodyDefaultSmall)
        XCTAssertTrue(inheritedTheme.fonts.typeBodyDefaultSmall == MockThemeFontSemanticTokensWrapper.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeStrongLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeBodyStrongLarge, abstractTheme.fonts.typeBodyStrongLarge)
        XCTAssertTrue(inheritedTheme.fonts.typeBodyStrongLarge == MockThemeFontSemanticTokensWrapper.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeStrongMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeBodyStrongMedium, abstractTheme.fonts.typeBodyStrongMedium)
        XCTAssertTrue(inheritedTheme.fonts.typeBodyStrongMedium == MockThemeFontSemanticTokensWrapper.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeStrongSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeBodyStrongSmall, abstractTheme.fonts.typeBodyStrongSmall)
        XCTAssertTrue(inheritedTheme.fonts.typeBodyStrongSmall == MockThemeFontSemanticTokensWrapper.mockThemeMultipleFontCompositeRawTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Label

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelDefaultXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeLabelDefaultXLarge, abstractTheme.fonts.typeLabelDefaultXLarge)
        XCTAssertTrue(inheritedTheme.fonts.typeLabelDefaultXLarge == MockThemeFontSemanticTokensWrapper.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelDefaultLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeLabelDefaultLarge, abstractTheme.fonts.typeLabelDefaultLarge)
        XCTAssertTrue(inheritedTheme.fonts.typeLabelDefaultLarge == MockThemeFontSemanticTokensWrapper.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelDefaultMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeLabelDefaultMedium, abstractTheme.fonts.typeLabelDefaultMedium)
        XCTAssertTrue(inheritedTheme.fonts.typeLabelDefaultMedium == MockThemeFontSemanticTokensWrapper.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelDefaultSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeLabelDefaultSmall, abstractTheme.fonts.typeLabelDefaultSmall)
        XCTAssertTrue(inheritedTheme.fonts.typeLabelDefaultSmall == MockThemeFontSemanticTokensWrapper.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelStrongXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeLabelStrongXLarge, abstractTheme.fonts.typeLabelStrongXLarge)
        XCTAssertTrue(inheritedTheme.fonts.typeLabelStrongXLarge == MockThemeFontSemanticTokensWrapper.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelStrongLarge() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeLabelStrongLarge, abstractTheme.fonts.typeLabelStrongLarge)
        XCTAssertTrue(inheritedTheme.fonts.typeLabelStrongLarge == MockThemeFontSemanticTokensWrapper.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelStrongMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeLabelStrongMedium, abstractTheme.fonts.typeLabelStrongMedium)
        XCTAssertTrue(inheritedTheme.fonts.typeLabelStrongMedium == MockThemeFontSemanticTokensWrapper.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelStrongSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeLabelStrongSmall, abstractTheme.fonts.typeLabelStrongSmall)
        XCTAssertTrue(inheritedTheme.fonts.typeLabelStrongSmall == MockThemeFontSemanticTokensWrapper.mockThemeMultipleFontCompositeRawTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Code

    func testInheritedThemeCanOverrideSemanticTokenTypeCodeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeCodeMedium, abstractTheme.fonts.typeCodeMedium)
        XCTAssertTrue(inheritedTheme.fonts.typeCodeMedium == MockThemeFontSemanticTokensWrapper.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeCodeSmall() throws {
        XCTAssertNotEqual(inheritedTheme.fonts.typeCodeSmall, abstractTheme.fonts.typeCodeSmall)
        XCTAssertTrue(inheritedTheme.fonts.typeCodeSmall == MockThemeFontSemanticTokensWrapper.mockThemeMultipleFontCompositeRawTokens)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name

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
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _typography semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// 
/// **These tests checks if any _typography composite semantic tokens_ can be surcharged by a child theme**
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
        XCTAssertNotEqual(inheritedTheme.typeDisplayLarge, abstractTheme.typeDisplayLarge)
        XCTAssertTrue(inheritedTheme.typeDisplayLarge == MockTheme.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeDisplayMedium() throws {
        XCTAssertNotEqual(inheritedTheme.typeDisplayMedium, abstractTheme.typeDisplayMedium)
        XCTAssertTrue(inheritedTheme.typeDisplayMedium == MockTheme.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeDisplaySmal() throws {
        XCTAssertNotEqual(inheritedTheme.typeDisplaySmall, abstractTheme.typeDisplaySmall)
        XCTAssertTrue(inheritedTheme.typeDisplaySmall == MockTheme.mockThemeMultipleFontCompositeRawTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Heading

    func testInheritedThemeCanOverrideSemanticTokenTypeHeadingXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeHeadingXLarge, abstractTheme.typeHeadingXLarge)
        XCTAssertTrue(inheritedTheme.typeHeadingXLarge == MockTheme.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeHeadingLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeHeadingLarge, abstractTheme.typeHeadingLarge)
        XCTAssertTrue(inheritedTheme.typeHeadingLarge == MockTheme.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeHeadingMedium() throws {
        XCTAssertNotEqual(inheritedTheme.typeHeadingMedium, abstractTheme.typeHeadingMedium)
        XCTAssertTrue(inheritedTheme.typeHeadingMedium == MockTheme.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeHeadingSmall() throws {
        XCTAssertNotEqual(inheritedTheme.typeHeadingSmall, abstractTheme.typeHeadingSmall)
        XCTAssertTrue(inheritedTheme.typeHeadingSmall == MockTheme.mockThemeMultipleFontCompositeRawTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Body

    func testInheritedThemeCanOverrideSemanticTokenTypeDefaultLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeBodyDefaultLarge, abstractTheme.typeBodyDefaultLarge)
        XCTAssertTrue(inheritedTheme.typeBodyDefaultLarge == MockTheme.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeDefaultMedium() throws {
        XCTAssertNotEqual(inheritedTheme.typeBodyDefaultMedium, abstractTheme.typeBodyDefaultMedium)
        XCTAssertTrue(inheritedTheme.typeBodyDefaultMedium == MockTheme.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeDefaultSmall() throws {
        XCTAssertNotEqual(inheritedTheme.typeBodyDefaultSmall, abstractTheme.typeBodyDefaultSmall)
        XCTAssertTrue(inheritedTheme.typeBodyDefaultSmall == MockTheme.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeStrongLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeBodyStrongLarge, abstractTheme.typeBodyStrongLarge)
        XCTAssertTrue(inheritedTheme.typeBodyStrongLarge == MockTheme.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeStrongMedium() throws {
        XCTAssertNotEqual(inheritedTheme.typeBodyStrongMedium, abstractTheme.typeBodyStrongMedium)
        XCTAssertTrue(inheritedTheme.typeBodyStrongMedium == MockTheme.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeStrongSmall() throws {
        XCTAssertNotEqual(inheritedTheme.typeBodyStrongSmall, abstractTheme.typeBodyStrongSmall)
        XCTAssertTrue(inheritedTheme.typeBodyStrongSmall == MockTheme.mockThemeMultipleFontCompositeRawTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Label

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelDefaultXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeLabelDefaultXLarge, abstractTheme.typeLabelDefaultXLarge)
        XCTAssertTrue(inheritedTheme.typeLabelDefaultXLarge == MockTheme.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelDefaultLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeLabelDefaultLarge, abstractTheme.typeLabelDefaultLarge)
        XCTAssertTrue(inheritedTheme.typeLabelDefaultLarge == MockTheme.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelDefaultMedium() throws {
        XCTAssertNotEqual(inheritedTheme.typeLabelDefaultMedium, abstractTheme.typeLabelDefaultMedium)
        XCTAssertTrue(inheritedTheme.typeLabelDefaultMedium == MockTheme.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelDefaultSmall() throws {
        XCTAssertNotEqual(inheritedTheme.typeLabelDefaultSmall, abstractTheme.typeLabelDefaultSmall)
        XCTAssertTrue(inheritedTheme.typeLabelDefaultSmall == MockTheme.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelStrongXLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeLabelStrongXLarge, abstractTheme.typeLabelStrongXLarge)
        XCTAssertTrue(inheritedTheme.typeLabelStrongXLarge == MockTheme.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelStrongLarge() throws {
        XCTAssertNotEqual(inheritedTheme.typeLabelStrongLarge, abstractTheme.typeLabelStrongLarge)
        XCTAssertTrue(inheritedTheme.typeLabelStrongLarge == MockTheme.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelStrongMedium() throws {
        XCTAssertNotEqual(inheritedTheme.typeLabelStrongMedium, abstractTheme.typeLabelStrongMedium)
        XCTAssertTrue(inheritedTheme.typeLabelStrongMedium == MockTheme.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeLabelStrongSmall() throws {
        XCTAssertNotEqual(inheritedTheme.typeLabelStrongSmall, abstractTheme.typeLabelStrongSmall)
        XCTAssertTrue(inheritedTheme.typeLabelStrongSmall == MockTheme.mockThemeMultipleFontCompositeRawTokens)
    }

    // MARK: - Semantic tokens - Typography - Composites - Code

    func testInheritedThemeCanOverrideSemanticTokenTypeCodeMedium() throws {
        XCTAssertNotEqual(inheritedTheme.typeCodeMedium, abstractTheme.typeCodeMedium)
        XCTAssertTrue(inheritedTheme.typeCodeMedium == MockTheme.mockThemeMultipleFontCompositeRawTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenTypeCodeSmall() throws {
        XCTAssertNotEqual(inheritedTheme.typeCodeSmall, abstractTheme.typeCodeSmall)
        XCTAssertTrue(inheritedTheme.typeCodeSmall == MockTheme.mockThemeMultipleFontCompositeRawTokens)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name

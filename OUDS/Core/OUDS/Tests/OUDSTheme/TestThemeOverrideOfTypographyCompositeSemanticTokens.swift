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
/// **These tests checks if any _typography semantic tokens_ can be surcharged by a child theme**
final class TestThemeOverrideOfTypographyCompositeSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
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
// swiftlint:enable type_name
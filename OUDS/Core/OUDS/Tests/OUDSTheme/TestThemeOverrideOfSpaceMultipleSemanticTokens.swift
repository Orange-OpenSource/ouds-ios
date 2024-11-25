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
/// In factn the `OUDSTheme` object is a class, which can be seens as an _asbtract class_, exposing through its extensions and protocols _spacing semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.

/// **These tests checks if any _space multiple semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfSpaceMultipleSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Spacing - Layout fluid

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledNone, abstractTheme.spaceScaledNone)
        XCTAssertTrue(inheritedTheme.spaceScaledNone.isEqual(MockTheme.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledSmash() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledSmash, abstractTheme.spaceScaledSmash)
        XCTAssertTrue(inheritedTheme.spaceScaledSmash.isEqual(MockTheme.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShortest() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledShortest, abstractTheme.spaceScaledShortest)
        XCTAssertTrue(inheritedTheme.spaceScaledShortest.isEqual(MockTheme.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledShorter, abstractTheme.spaceScaledShorter)
        XCTAssertTrue(inheritedTheme.spaceScaledShorter.isEqual(MockTheme.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledShort, abstractTheme.spaceScaledShort)
        XCTAssertTrue(inheritedTheme.spaceScaledShort.isEqual(MockTheme.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledMedium, abstractTheme.spaceScaledMedium)
        XCTAssertTrue(inheritedTheme.spaceScaledMedium.isEqual(MockTheme.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledTall, abstractTheme.spaceScaledTall)
        XCTAssertTrue(inheritedTheme.spaceScaledTall.isEqual(MockTheme.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledTaller, abstractTheme.spaceScaledTaller)
        XCTAssertTrue(inheritedTheme.spaceScaledTaller.isEqual(MockTheme.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTallest() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledTallest, abstractTheme.spaceScaledTallest)
        XCTAssertTrue(inheritedTheme.spaceScaledTallest.isEqual(MockTheme.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledSpacious() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledSpacious, abstractTheme.spaceScaledSpacious)
        XCTAssertTrue(inheritedTheme.spaceScaledSpacious.isEqual(MockTheme.mockThemeSpaceSemanticToken))
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name

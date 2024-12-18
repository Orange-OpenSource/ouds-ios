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
import OUDSThemesOrange
import XCTest

// swiftlint:disable required_deinit
// swiftlint:disable implicitly_unwrapped_optional
// swiftlint:disable type_name

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In factn the `OUDSTheme` object is a class, which can be seens as an _asbtract class_, exposing through its extensions and protocols _spacing semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeSpaceSemanticTokensProvider``.

/// **These tests checks if any _space multiple semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfSpaceMultipleSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Spacing - Layout fluid

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledNone, abstractTheme.spaces.spaceScaledNone)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledNone.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledSmash() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledSmash, abstractTheme.spaces.spaceScaledSmash)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledSmash.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShortest() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledShortest, abstractTheme.spaces.spaceScaledShortest)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledShortest.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledShorter, abstractTheme.spaces.spaceScaledShorter)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledShorter.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledShort, abstractTheme.spaces.spaceScaledShort)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledShort.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledMedium, abstractTheme.spaces.spaceScaledMedium)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledMedium.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledTall, abstractTheme.spaces.spaceScaledTall)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledTall.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledTaller, abstractTheme.spaces.spaceScaledTaller)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledTaller.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTallest() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledTallest, abstractTheme.spaces.spaceScaledTallest)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledTallest.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledSpacious() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledSpacious, abstractTheme.spaces.spaceScaledSpacious)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledSpacious.isEqual(MockThemeSpaceSemanticTokensProvider.mockThemeSpaceSemanticToken))
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name

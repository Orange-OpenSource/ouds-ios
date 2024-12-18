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

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In factn the `OUDSTheme` object is a class, which can be seens as an _asbtract class_, exposing through its extensions and protocols _opacity semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeOpacitySemanticTokensProvider``.
///
/// **These tests checks if any _opacity semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfOpacitySemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    func testInheritedThemeCanOverrideSemanticTokenOpacityInvisible() throws {
        XCTAssertNotEqual(inheritedTheme.opacities.opacityInvisible, abstractTheme.opacities.opacityInvisible)
        XCTAssertTrue(inheritedTheme.opacities.opacityInvisible == MockThemeOpacitySemanticTokensProvider.mockThemeOpacityRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenOpacityWeaker() throws {
        XCTAssertNotEqual(inheritedTheme.opacities.opacityWeaker, abstractTheme.opacities.opacityWeaker)
        XCTAssertTrue(inheritedTheme.opacities.opacityWeaker == MockThemeOpacitySemanticTokensProvider.mockThemeOpacityRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenOpacityWeak() throws {
        XCTAssertNotEqual(inheritedTheme.opacities.opacityWeak, abstractTheme.opacities.opacityWeak)
        XCTAssertTrue(inheritedTheme.opacities.opacityWeak == MockThemeOpacitySemanticTokensProvider.mockThemeOpacityRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenOpacityMedium() throws {
        XCTAssertNotEqual(inheritedTheme.opacities.opacityMedium, abstractTheme.opacities.opacityMedium)
        XCTAssertTrue(inheritedTheme.opacities.opacityMedium == MockThemeOpacitySemanticTokensProvider.mockThemeOpacityRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenOpacityEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.opacities.opacityStrong, abstractTheme.opacities.opacityStrong)
        XCTAssertTrue(inheritedTheme.opacities.opacityStrong == MockThemeOpacitySemanticTokensProvider.mockThemeOpacityRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenOpacityOpaque() throws {
        XCTAssertNotEqual(inheritedTheme.opacities.opacityOpaque, abstractTheme.opacities.opacityOpaque)
        XCTAssertTrue(inheritedTheme.opacities.opacityOpaque == MockThemeOpacitySemanticTokensProvider.mockThemeOpacityRawToken)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional

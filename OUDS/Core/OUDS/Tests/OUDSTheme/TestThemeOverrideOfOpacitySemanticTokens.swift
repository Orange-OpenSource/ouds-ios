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

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In factn the `OUDSTheme` object is a class, which can be seens as an _asbtract class_, exposing through its extensions and protocols _opacity semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// **These tests checks if any _opacity semantic tokens_ can be surcharged by a child theme**
final class TestThemeOverrideOfOpacitySemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    func testInheritedThemeCanOverrideSemanticTokenOpacityTransparent() throws {
        XCTAssertNotEqual(inheritedTheme.opacityTransparent, abstractTheme.opacityTransparent)
        XCTAssertTrue(inheritedTheme.opacityTransparent == MockTheme.mockThemeOpacityRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenOpacityWeaker() throws {
        XCTAssertNotEqual(inheritedTheme.opacityWeaker, abstractTheme.opacityWeaker)
        XCTAssertTrue(inheritedTheme.opacityWeaker == MockTheme.mockThemeOpacityRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenOpacityWeak() throws {
        XCTAssertNotEqual(inheritedTheme.opacityWeak, abstractTheme.opacityWeak)
        XCTAssertTrue(inheritedTheme.opacityWeak == MockTheme.mockThemeOpacityRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenOpacityMedium() throws {
        XCTAssertNotEqual(inheritedTheme.opacityMedium, abstractTheme.opacityMedium)
        XCTAssertTrue(inheritedTheme.opacityMedium == MockTheme.mockThemeOpacityRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenOpacityEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.opacityStrong, abstractTheme.opacityStrong)
        XCTAssertTrue(inheritedTheme.opacityStrong == MockTheme.mockThemeOpacityRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenOpacityOpaque() throws {
        XCTAssertNotEqual(inheritedTheme.opacityOpaque, abstractTheme.opacityOpaque)
        XCTAssertTrue(inheritedTheme.opacityOpaque == MockTheme.mockThemeOpacityRawToken)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional

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
@testable import OUDSThemesShared

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In factn the `OUDSTheme` object is a class, which can be seens as an _asbtract class_, exposing through its extensions and protocols _opacity semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// **These tests checks if any _opacity semantic tokens_ can be surcharged by a child theme**
final class ThemeOverrideOfOpacitySemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    /// Test overriding of opacity width semantic tokens
    func testInheritedThemeCanOverrideOpacitySemanticTokens() throws {
        XCTAssertNotEqual(inheritedTheme.opacityTransparent, abstractTheme.opacityTransparent)
        XCTAssertTrue(inheritedTheme.opacityTransparent == MockTheme.mockThemeOpacityRawToken)

        XCTAssertNotEqual(inheritedTheme.opacityWeaker, abstractTheme.opacityWeaker)
        XCTAssertTrue(inheritedTheme.opacityWeaker == MockTheme.mockThemeOpacityRawToken)

        XCTAssertNotEqual(inheritedTheme.opacityWeak, abstractTheme.opacityWeak)
        XCTAssertTrue(inheritedTheme.opacityWeak == MockTheme.mockThemeOpacityRawToken)

        XCTAssertNotEqual(inheritedTheme.opacityMedum, abstractTheme.opacityMedum)
        XCTAssertTrue(inheritedTheme.opacityMedum == MockTheme.mockThemeOpacityRawToken)

        XCTAssertNotEqual(inheritedTheme.opacityEmphasis, abstractTheme.opacityEmphasis)
        XCTAssertTrue(inheritedTheme.opacityEmphasis == MockTheme.mockThemeOpacityRawToken)

        XCTAssertNotEqual(inheritedTheme.opacityOpaque, abstractTheme.opacityOpaque)
        XCTAssertTrue(inheritedTheme.opacityOpaque == MockTheme.mockThemeOpacityRawToken)
    }
}

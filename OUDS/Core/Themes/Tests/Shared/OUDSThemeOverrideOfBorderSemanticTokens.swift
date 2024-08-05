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
/// In factn the `OUDSTheme` object is a class, which can be seens as an _asbtract class_, exposing through its extensions and protocols _border semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// **These tests checks if any _border semantic tokens_ can be surcharged by a child theme**
final class OUDSThemeOverrideOfBorderSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!
    
    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }
    
    /// Test overriding of border width semantic tokens
    func testInheritedThemeCanOverrideBorderWidthSemanticTokens() throws {
        XCTAssertNotEqual(inheritedTheme.borderWidthNone, abstractTheme.borderWidthNone)
        XCTAssertTrue(inheritedTheme.borderWidthNone == MockTheme.mockThemeBorderWidthRawToken)
        
        XCTAssertNotEqual(inheritedTheme.borderWidthDefault, abstractTheme.borderWidthDefault)
        XCTAssertTrue(inheritedTheme.borderWidthDefault == MockTheme.mockThemeBorderWidthRawToken)
        
        XCTAssertNotEqual(inheritedTheme.borderWidthThin, abstractTheme.borderWidthThin)
        XCTAssertTrue(inheritedTheme.borderWidthThin == MockTheme.mockThemeBorderWidthRawToken)
        
        XCTAssertNotEqual(inheritedTheme.borderWidthThick, abstractTheme.borderWidthThick)
        XCTAssertTrue(inheritedTheme.borderWidthThick == MockTheme.mockThemeBorderWidthRawToken)
        
        XCTAssertNotEqual(inheritedTheme.borderWidthThicker, abstractTheme.borderWidthThicker)
        XCTAssertTrue(inheritedTheme.borderWidthThicker == MockTheme.mockThemeBorderWidthRawToken)
        
        XCTAssertNotEqual(inheritedTheme.borderWidthThickest, abstractTheme.borderWidthThickest)
        XCTAssertTrue(inheritedTheme.borderWidthThickest == MockTheme.mockThemeBorderWidthRawToken)
        
        XCTAssertNotEqual(inheritedTheme.borderWidthInterfactivePrimaryFocus, abstractTheme.borderWidthInterfactivePrimaryFocus)
        XCTAssertTrue(inheritedTheme.borderWidthInterfactivePrimaryFocus == MockTheme.mockThemeBorderWidthRawToken)
    }

    /// Tests overriding of border radius semantic tokens
    func testInheritedThemeCanOverrideBorderRadiusSemanticTokens() throws {
        XCTAssertNotEqual(inheritedTheme.borderRadiusNone, abstractTheme.borderRadiusNone)
        XCTAssertTrue(inheritedTheme.borderRadiusNone == MockTheme.mockThemeBorderRadiusRawToken)
        
        XCTAssertNotEqual(inheritedTheme.borderRadiusDefault, abstractTheme.borderRadiusDefault)
        XCTAssertTrue(inheritedTheme.borderRadiusDefault == MockTheme.mockThemeBorderRadiusRawToken)
        
        XCTAssertNotEqual(inheritedTheme.borderRadiusShort, abstractTheme.borderRadiusShort)
        XCTAssertTrue(inheritedTheme.borderRadiusDefault == MockTheme.mockThemeBorderRadiusRawToken)
        
        XCTAssertNotEqual(inheritedTheme.borderRadiusMedium, abstractTheme.borderRadiusMedium)
        XCTAssertTrue(inheritedTheme.borderRadiusMedium == MockTheme.mockThemeBorderRadiusRawToken)
        
        XCTAssertNotEqual(inheritedTheme.borderRadiusTall, abstractTheme.borderRadiusTall)
        XCTAssertTrue(inheritedTheme.borderRadiusTall == MockTheme.mockThemeBorderRadiusRawToken)
        
        XCTAssertNotEqual(inheritedTheme.borderRadiusPill, abstractTheme.borderRadiusTall)
        XCTAssertTrue(inheritedTheme.borderRadiusPill == MockTheme.mockThemeBorderRadiusRawToken)
    }
    
    /// Tests overriding of border style semantic tokens
    func testInheritedThemeCanOverrideBorderStyleSemanticTokens() throws {
        XCTAssertNotEqual(inheritedTheme.borderStyleDefault, abstractTheme.borderStyleDefault)
        XCTAssertTrue(inheritedTheme.borderStyleDefault == MockTheme.mockThemeBorderStyleRawToken)
        
        XCTAssertNotEqual(inheritedTheme.borderStyleDrag, abstractTheme.borderStyleDrag)
        XCTAssertTrue(inheritedTheme.borderStyleDrag == MockTheme.mockThemeBorderStyleRawToken)
    }
}

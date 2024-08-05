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
import OUDSTokensRaw

/// The aim of this tests class is to look for regressions in **border raw tokens**.
/// Because these values will be at least generated through an external tool, is it not necessariy to test each token values.
/// Indeed, each futur generation of Swift code may mreak theses tests because there are new values.
/// However, in the semantics of border raw tokens, there will be some unchaged things like relationships between tokens.
/// Thus this tests class just checks if such relationships are still here whatever the valuse at the end.
final class BorderRawTokensTests: XCTestCase {

    /// Wathever the values are, border width raw tokens must keep their order relationships
    func testOrderRelationshipForWidths() throws {
        XCTAssertLessThan(BorderRawTokens.borderWidth0, BorderRawTokens.borderWidth25)
        XCTAssertLessThan(BorderRawTokens.borderWidth25, BorderRawTokens.borderWidth50)
        XCTAssertLessThan(BorderRawTokens.borderWidth50, BorderRawTokens.borderWidth75)
        XCTAssertLessThan(BorderRawTokens.borderWidth75, BorderRawTokens.borderWidth100)
        XCTAssertLessThan(BorderRawTokens.borderWidth100, BorderRawTokens.borderWidth150)
        XCTAssertLessThan(BorderRawTokens.borderWidth150, BorderRawTokens.borderWidth200)
    }
    
    /// Wathever the values are, border radius raw tokens must keep their order relationships
    func testOrderRelationshipForRadius() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius0, BorderRawTokens.borderRadius25)
        XCTAssertLessThan(BorderRawTokens.borderRadius25, BorderRawTokens.borderRadius50)
        XCTAssertLessThan(BorderRawTokens.borderRadius50, BorderRawTokens.borderRadius75)
        XCTAssertLessThan(BorderRawTokens.borderRadius75, BorderRawTokens.borderRadius100)
        XCTAssertLessThan(BorderRawTokens.borderRadius100, BorderRawTokens.borderRadius150)
        XCTAssertLessThan(BorderRawTokens.borderRadius150, BorderRawTokens.borderRadius200)
        XCTAssertLessThan(BorderRawTokens.borderRadius200, BorderRawTokens.borderRadius300)
        XCTAssertLessThan(BorderRawTokens.borderRadius300, BorderRawTokens.borderRadius400)
        XCTAssertLessThan(BorderRawTokens.borderRadius400, BorderRawTokens.borderRadius500)
        XCTAssertLessThan(BorderRawTokens.borderRadius500, BorderRawTokens.borderRadius600)
        XCTAssertLessThan(BorderRawTokens.borderRadius600, BorderRawTokens.borderRadius800)
        XCTAssertLessThan(BorderRawTokens.borderRadius800, BorderRawTokens.borderRadius9999)
    }
    
    /// Border styles raw tokens should be different
    func testNonEqualityForStyles() throws {
        XCTAssertNotEqual(BorderRawTokens.borderStyleNone, BorderRawTokens.borderStyleSolid)
        XCTAssertNotEqual(BorderRawTokens.borderStyleNone, BorderRawTokens.borderStyleDashed)
        XCTAssertNotEqual(BorderRawTokens.borderStyleNone, BorderRawTokens.borderStyleDotted)
        XCTAssertNotEqual(BorderRawTokens.borderStyleSolid, BorderRawTokens.borderStyleDashed)
        XCTAssertNotEqual(BorderRawTokens.borderStyleSolid, BorderRawTokens.borderStyleDotted)
        XCTAssertNotEqual(BorderRawTokens.borderStyleDashed, BorderRawTokens.borderStyleDotted)        
    }
}

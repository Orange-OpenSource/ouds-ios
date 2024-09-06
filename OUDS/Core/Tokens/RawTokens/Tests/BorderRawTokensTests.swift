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
/// Because these values will be at least generated through an external tool, is it not relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **border raw tokens**, there will be some unchanged things like relationships between tokens.
/// Thus this tests class just checks if such relationships are still here whatever the values at the end.
final class BorderRawTokensTests: XCTestCase {

    // MARK: - Primitive token - Border - Width

    func testBorderWidthRawToken0LessThan25() throws {
        XCTAssertLessThan(BorderRawTokens.borderWidth0, BorderRawTokens.borderWidth25)
    }

    func testBorderWidthRawToken25LessThan50() throws {
        XCTAssertLessThan(BorderRawTokens.borderWidth25, BorderRawTokens.borderWidth50)
    }

    func testBorderWidthRawToken50LessThan75() throws {
        XCTAssertLessThan(BorderRawTokens.borderWidth50, BorderRawTokens.borderWidth75)
    }

    func testBorderWidthRawToken75LessThan100() throws {
        XCTAssertLessThan(BorderRawTokens.borderWidth75, BorderRawTokens.borderWidth100)
    }

    func testBorderWidthRawToken100LessThan150() throws {
        XCTAssertLessThan(BorderRawTokens.borderWidth100, BorderRawTokens.borderWidth150)
    }

    func testBorderWidthRawToken150LessThan200() throws {
        XCTAssertLessThan(BorderRawTokens.borderWidth150, BorderRawTokens.borderWidth200)
    }

    // MARK: - Primitive token - Border - Radius

    func testBorderRadiusRawToken0LessThan25() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius0, BorderRawTokens.borderRadius25)
    }

    func testBorderRadiusRawToken25LessThan50() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius25, BorderRawTokens.borderRadius50)
    }

    func testBorderRadiusRawToken50LessThan75() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius50, BorderRawTokens.borderRadius75)
    }

    func testBorderRadiusRawToken75LessThan100() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius75, BorderRawTokens.borderRadius100)
    }

    func testBorderRadiusRawToken100LessThan150() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius100, BorderRawTokens.borderRadius150)
    }

    func testBorderRadiusRawToken150LessThan200() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius150, BorderRawTokens.borderRadius200)
    }

    func testBorderRadiusRawToken200LessThan300() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius200, BorderRawTokens.borderRadius300)
    }

    func testBorderRadiusRawToken300LessThan400() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius300, BorderRawTokens.borderRadius400)
    }

    func testBorderRadiusRawToken400LessThan500() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius400, BorderRawTokens.borderRadius500)
    }

    func testBorderRadiusRawToken500LessThan600() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius500, BorderRawTokens.borderRadius600)
    }

    func testBorderRadiusRawToken600LessThan800() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius600, BorderRawTokens.borderRadius800)
    }

    // MARK: - Primitive token - Border - Style

    /// Border styles raw tokens must be different
    func testNonEqualityForStyles() throws {
        XCTAssertNotEqual(BorderRawTokens.borderStyleNone, BorderRawTokens.borderStyleSolid)
        XCTAssertNotEqual(BorderRawTokens.borderStyleNone, BorderRawTokens.borderStyleDashed)
        XCTAssertNotEqual(BorderRawTokens.borderStyleNone, BorderRawTokens.borderStyleDotted)
        XCTAssertNotEqual(BorderRawTokens.borderStyleSolid, BorderRawTokens.borderStyleDashed)
        XCTAssertNotEqual(BorderRawTokens.borderStyleSolid, BorderRawTokens.borderStyleDotted)
        XCTAssertNotEqual(BorderRawTokens.borderStyleDashed, BorderRawTokens.borderStyleDotted)
    }
}

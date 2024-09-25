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

    func testBorderWidthRawToken0MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderWidth0, factor: BorderRawTokens.borderBase)
    }

    func testBorderWidthRawToken25LessThan50() throws {
        XCTAssertLessThan(BorderRawTokens.borderWidth25, BorderRawTokens.borderWidth50)
    }

    func testBorderWidthRawToken25MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderWidth25, factor: BorderRawTokens.borderBase)
    }

    func testBorderWidthRawToken50LessThan75() throws {
        XCTAssertLessThan(BorderRawTokens.borderWidth50, BorderRawTokens.borderWidth75)
    }

    func testBorderWidthRawToken50MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderWidth50, factor: BorderRawTokens.borderBase)
    }

    func testBorderWidthRawToken75LessThan100() throws {
        XCTAssertLessThan(BorderRawTokens.borderWidth75, BorderRawTokens.borderWidth100)
    }

    func testBorderWidthRawToken75MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderWidth75, factor: BorderRawTokens.borderBase)
    }

    func testBorderWidthRawToken100LessThan150() throws {
        XCTAssertLessThan(BorderRawTokens.borderWidth100, BorderRawTokens.borderWidth150)
    }

    func testBorderWidthRawToken100MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderWidth100, factor: BorderRawTokens.borderBase)
    }

    func testBorderWidthRawToken150LessThan200() throws {
        XCTAssertLessThan(BorderRawTokens.borderWidth150, BorderRawTokens.borderWidth200)
    }

    func testBorderWidthRawToken150MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderWidth150, factor: BorderRawTokens.borderBase)
    }

    func testBorderWidthRawToken200MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderWidth200, factor: BorderRawTokens.borderBase)
    }

    // MARK: - Primitive token - Border - Radius

    func testBorderRadiusRawToken0LessThan25() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius0, BorderRawTokens.borderRadius25)
    }

    func testBorderRadiusRawToken0MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius0, factor: BorderRawTokens.borderBase)
    }

    func testBorderRadiusRawToken25LessThan50() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius25, BorderRawTokens.borderRadius50)
    }

    func testBorderRadiusRawToken25MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius25, factor: BorderRawTokens.borderBase)
    }

    func testBorderRadiusRawToken50LessThan75() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius50, BorderRawTokens.borderRadius75)
    }

    func testBorderRadiusRawToken50MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius50, factor: BorderRawTokens.borderBase)
    }

    func testBorderRadiusRawToken75LessThan100() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius75, BorderRawTokens.borderRadius100)
    }

    func testBorderRadiusRawToken75MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius75, factor: BorderRawTokens.borderBase)
    }

    func testBorderRadiusRawToken100LessThan150() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius100, BorderRawTokens.borderRadius150)
    }

    func testBorderRadiusRawToken100MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius100, factor: BorderRawTokens.borderBase)
    }

    func testBorderRadiusRawToken150LessThan200() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius150, BorderRawTokens.borderRadius200)
    }

    func testBorderRadiusRawToken150MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius150, factor: BorderRawTokens.borderBase)
    }

    func testBorderRadiusRawToken200LessThan300() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius200, BorderRawTokens.borderRadius300)
    }

    func testBorderRadiusRawToken200MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius200, factor: BorderRawTokens.borderBase)
    }

    func testBorderRadiusRawToken300LessThan400() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius300, BorderRawTokens.borderRadius400)
    }

    func testBorderRadiusRawToken300MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius300, factor: BorderRawTokens.borderBase)
    }

    func testBorderRadiusRawToken400LessThan500() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius400, BorderRawTokens.borderRadius500)
    }

    func testBorderRadiusRawToken400MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius400, factor: BorderRawTokens.borderBase)
    }

    func testBorderRadiusRawToken500LessThan600() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius500, BorderRawTokens.borderRadius600)
    }

    func testBorderRadiusRawToken500MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius500, factor: BorderRawTokens.borderBase)
    }

    func testBorderRadiusRawToken600LessThan800() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius600, BorderRawTokens.borderRadius800)
    }

    func testBorderRadiusRawToken600MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius600, factor: BorderRawTokens.borderBase)
    }

    func testBorderRadiusRawToken800MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius800, factor: BorderRawTokens.borderBase)
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

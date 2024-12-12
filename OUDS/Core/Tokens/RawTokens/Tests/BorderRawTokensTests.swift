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

import OUDSTokensRaw
import XCTest

// swiftlint:disable required_deinit
// swiftlint:disable function_body_length
// swiftlint:disable type_body_length

/// The aim of this tests class is to look for regressions in **border raw tokens**.
///
/// Because these values will be at least generated through an external tool, is it not relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **border raw tokens**, there will be some unchanged things like relationships between tokens.
/// Thus this tests class checks if such relationships are still here whatever the values at the end.
///
/// Here are some rules to follow:
/// - border radius must not be negative value
/// - border radius value must be a factor of `BorderRawTokens.borderBase`
/// - border radius values must be all different
/// - border width must not be negative value
/// - border width value must be a factor of `BorderRawTokens.borderBase`
/// - border with values must be all different
/// - border style must have some specific value
/// - border style values must have be all different
/// - the "bigger" the border width token is, the higher the value is
/// - the "bigger" the border radius token is, the higher the value is
final class BorderRawTokensTests: XCTestCase {

    // MARK: - Primitive token - Border - Width

    func testBorderWidthRawToken0NotNegativeValue() throws {
        XCTAssertTrue(BorderRawTokens.borderWidth0 >= 0)
    }

    func testBorderWidthRawToken0LessThan25() throws {
        XCTAssertLessThan(BorderRawTokens.borderWidth0, BorderRawTokens.borderWidth25)
    }

    func testBorderWidthRawToken0MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderWidth0, factor: BorderRawTokens.borderBase)
    }

    func testBorderWidthRawToken25NotNegativeValue() throws {
        XCTAssertTrue(BorderRawTokens.borderWidth25 >= 0)
    }

    func testBorderWidthRawToken25LessThan50() throws {
        XCTAssertLessThan(BorderRawTokens.borderWidth25, BorderRawTokens.borderWidth50)
    }

    func testBorderWidthRawToken25MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderWidth25, factor: BorderRawTokens.borderBase)
    }

    func testBorderWidthRawToken50NotNegativeValue() throws {
        XCTAssertTrue(BorderRawTokens.borderWidth50 >= 0)
    }

    func testBorderWidthRawToken50LessThan75() throws {
        XCTAssertLessThan(BorderRawTokens.borderWidth50, BorderRawTokens.borderWidth75)
    }

    func testBorderWidthRawToken50MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderWidth50, factor: BorderRawTokens.borderBase)
    }

    func testBorderWidthRawToken75NotNegativeValue() throws {
        XCTAssertTrue(BorderRawTokens.borderWidth75 >= 0)
    }

    func testBorderWidthRawToken75LessThan100() throws {
        XCTAssertLessThan(BorderRawTokens.borderWidth75, BorderRawTokens.borderWidth100)
    }

    func testBorderWidthRawToken75MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderWidth75, factor: BorderRawTokens.borderBase)
    }

    func testBorderWidthRawToken100NotNegativeValue() throws {
        XCTAssertTrue(BorderRawTokens.borderWidth100 >= 0)
    }

    func testBorderWidthRawToken100LessThan125() throws {
        XCTAssertLessThan(BorderRawTokens.borderWidth100, BorderRawTokens.borderWidth125)
    }

    func testBorderWidthRawToken100MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderWidth100, factor: BorderRawTokens.borderBase)
    }

    func testBorderWidthRawToken125NotNegativeValue() throws {
        XCTAssertTrue(BorderRawTokens.borderWidth125 >= 0)
    }

    func testBorderWidthRawToken125LessThan150() throws {
        XCTAssertLessThan(BorderRawTokens.borderWidth125, BorderRawTokens.borderWidth150)
    }

    func testBorderWidthRawToken125MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderWidth125, factor: BorderRawTokens.borderBase)
    }

    func testBorderWidthRawToken150NotNegativeValue() throws {
        XCTAssertTrue(BorderRawTokens.borderWidth150 >= 0)
    }

    func testBorderWidthRawToken150LessThan200() throws {
        XCTAssertLessThan(BorderRawTokens.borderWidth150, BorderRawTokens.borderWidth200)
    }

    func testBorderWidthRawToken150MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderWidth150, factor: BorderRawTokens.borderBase)
    }

    func testBorderWidthRawToken200NotNegativeValue() throws {
        XCTAssertTrue(BorderRawTokens.borderWidth200 >= 0)
    }

    func testBorderWidthRawToken200MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderWidth200, factor: BorderRawTokens.borderBase)
    }

    /// Border width raw tokens must be different
    func testNonEqualityForBorderWidths() throws {
        XCTAssertNotEqual(BorderRawTokens.borderWidth0, BorderRawTokens.borderWidth25)
        XCTAssertNotEqual(BorderRawTokens.borderWidth0, BorderRawTokens.borderWidth50)
        XCTAssertNotEqual(BorderRawTokens.borderWidth0, BorderRawTokens.borderWidth75)
        XCTAssertNotEqual(BorderRawTokens.borderWidth0, BorderRawTokens.borderWidth100)
        XCTAssertNotEqual(BorderRawTokens.borderWidth0, BorderRawTokens.borderWidth125)
        XCTAssertNotEqual(BorderRawTokens.borderWidth0, BorderRawTokens.borderWidth150)
        XCTAssertNotEqual(BorderRawTokens.borderWidth0, BorderRawTokens.borderWidth200)

        XCTAssertNotEqual(BorderRawTokens.borderWidth50, BorderRawTokens.borderWidth75)
        XCTAssertNotEqual(BorderRawTokens.borderWidth50, BorderRawTokens.borderWidth100)
        XCTAssertNotEqual(BorderRawTokens.borderWidth50, BorderRawTokens.borderWidth125)
        XCTAssertNotEqual(BorderRawTokens.borderWidth50, BorderRawTokens.borderWidth150)
        XCTAssertNotEqual(BorderRawTokens.borderWidth50, BorderRawTokens.borderWidth200)

        XCTAssertNotEqual(BorderRawTokens.borderWidth75, BorderRawTokens.borderWidth100)
        XCTAssertNotEqual(BorderRawTokens.borderWidth75, BorderRawTokens.borderWidth125)
        XCTAssertNotEqual(BorderRawTokens.borderWidth75, BorderRawTokens.borderWidth150)
        XCTAssertNotEqual(BorderRawTokens.borderWidth75, BorderRawTokens.borderWidth200)

        XCTAssertNotEqual(BorderRawTokens.borderWidth100, BorderRawTokens.borderWidth125)
        XCTAssertNotEqual(BorderRawTokens.borderWidth100, BorderRawTokens.borderWidth150)
        XCTAssertNotEqual(BorderRawTokens.borderWidth100, BorderRawTokens.borderWidth200)

        XCTAssertNotEqual(BorderRawTokens.borderWidth125, BorderRawTokens.borderWidth150)
        XCTAssertNotEqual(BorderRawTokens.borderWidth125, BorderRawTokens.borderWidth200)

        XCTAssertNotEqual(BorderRawTokens.borderWidth150, BorderRawTokens.borderWidth200)
    }

    // MARK: - Primitive token - Border - Radius

    func testBorderRadiusRawToken0NotNegativeValue() throws {
        XCTAssertTrue(BorderRawTokens.borderRadius0 >= 0)
    }

    func testBorderRadiusRawToken0LessThan25() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius0, BorderRawTokens.borderRadius25)
    }

    func testBorderRadiusRawToken0MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius0, factor: BorderRawTokens.borderBase)
    }

    func testBorderRadiusRawToken25NotNegativeValue() throws {
        XCTAssertTrue(BorderRawTokens.borderRadius25 >= 0)
    }

    func testBorderRadiusRawToken25LessThan50() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius25, BorderRawTokens.borderRadius50)
    }

    func testBorderRadiusRawToken25MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius25, factor: BorderRawTokens.borderBase)
    }

    func testBorderRadiusRawToken50NotNegativeValue() throws {
        XCTAssertTrue(BorderRawTokens.borderRadius50 >= 0)
    }

    func testBorderRadiusRawToken50LessThan75() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius50, BorderRawTokens.borderRadius75)
    }

    func testBorderRadiusRawToken50MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius50, factor: BorderRawTokens.borderBase)
    }

    func testBorderRadiusRawToken75NotNegativeValue() throws {
        XCTAssertTrue(BorderRawTokens.borderRadius75 >= 0)
    }

    func testBorderRadiusRawToken75LessThan100() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius75, BorderRawTokens.borderRadius100)
    }

    func testBorderRadiusRawToken75MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius75, factor: BorderRawTokens.borderBase)
    }

    func testBorderRadiusRawToken100NotNegativeValue() throws {
        XCTAssertTrue(BorderRawTokens.borderRadius100 >= 0)
    }

    func testBorderRadiusRawToken100LessThan150() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius100, BorderRawTokens.borderRadius150)
    }

    func testBorderRadiusRawToken100MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius100, factor: BorderRawTokens.borderBase)
    }

    func testBorderRadiusRawToken150NotNegativeValue() throws {
        XCTAssertTrue(BorderRawTokens.borderRadius150 >= 0)
    }

    func testBorderRadiusRawToken150LessThan200() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius150, BorderRawTokens.borderRadius200)
    }

    func testBorderRadiusRawToken150MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius150, factor: BorderRawTokens.borderBase)
    }

    func testBorderRadiusRawToken200NotNegativeValue() throws {
        XCTAssertTrue(BorderRawTokens.borderRadius200 >= 0)
    }

    func testBorderRadiusRawToken200LessThan300() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius200, BorderRawTokens.borderRadius300)
    }

    func testBorderRadiusRawToken200MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius200, factor: BorderRawTokens.borderBase)
    }

    func testBorderRadiusRawToken300NotNegativeValue() throws {
        XCTAssertTrue(BorderRawTokens.borderRadius300 >= 0)
    }

    func testBorderRadiusRawToken300LessThan400() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius300, BorderRawTokens.borderRadius400)
    }

    func testBorderRadiusRawToken300MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius300, factor: BorderRawTokens.borderBase)
    }

    func testBorderRadiusRawToken400NotNegativeValue() throws {
        XCTAssertTrue(BorderRawTokens.borderRadius400 >= 0)
    }

    func testBorderRadiusRawToken400LessThan500() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius400, BorderRawTokens.borderRadius500)
    }

    func testBorderRadiusRawToken400MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius400, factor: BorderRawTokens.borderBase)
    }

    func testBorderRadiusRawToken500NotNegativeValue() throws {
        XCTAssertTrue(BorderRawTokens.borderRadius500 >= 0)
    }

    func testBorderRadiusRawToken500LessThan600() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius500, BorderRawTokens.borderRadius600)
    }

    func testBorderRadiusRawToken500MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius500, factor: BorderRawTokens.borderBase)
    }

    func testBorderRadiusRawToken600NotNegativeValue() throws {
        XCTAssertTrue(BorderRawTokens.borderRadius600 >= 0)
    }

    func testBorderRadiusRawToken600LessThan800() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius600, BorderRawTokens.borderRadius800)
    }

    func testBorderRadiusRawToken600MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius600, factor: BorderRawTokens.borderBase)
    }

    func testBorderRadiusRawToken800NotNegativeValue() throws {
        XCTAssertTrue(BorderRawTokens.borderRadius800 >= 0)
    }

    func testBorderRadiusRawToken800MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius800, factor: BorderRawTokens.borderBase)
    }

    /// Border rzdius raw tokens must be different
    func testNonEqualityForBorderRadiuses() throws {
        XCTAssertNotEqual(BorderRawTokens.borderRadius0, BorderRawTokens.borderRadius25)
        XCTAssertNotEqual(BorderRawTokens.borderRadius0, BorderRawTokens.borderRadius50)
        XCTAssertNotEqual(BorderRawTokens.borderRadius0, BorderRawTokens.borderRadius75)
        XCTAssertNotEqual(BorderRawTokens.borderRadius0, BorderRawTokens.borderRadius100)
        XCTAssertNotEqual(BorderRawTokens.borderRadius0, BorderRawTokens.borderRadius150)
        XCTAssertNotEqual(BorderRawTokens.borderRadius0, BorderRawTokens.borderRadius200)
        XCTAssertNotEqual(BorderRawTokens.borderRadius0, BorderRawTokens.borderRadius300)
        XCTAssertNotEqual(BorderRawTokens.borderRadius0, BorderRawTokens.borderRadius400)
        XCTAssertNotEqual(BorderRawTokens.borderRadius0, BorderRawTokens.borderRadius500)
        XCTAssertNotEqual(BorderRawTokens.borderRadius0, BorderRawTokens.borderRadius600)
        XCTAssertNotEqual(BorderRawTokens.borderRadius0, BorderRawTokens.borderRadius800)

        XCTAssertNotEqual(BorderRawTokens.borderRadius25, BorderRawTokens.borderRadius50)
        XCTAssertNotEqual(BorderRawTokens.borderRadius25, BorderRawTokens.borderRadius75)
        XCTAssertNotEqual(BorderRawTokens.borderRadius25, BorderRawTokens.borderRadius100)
        XCTAssertNotEqual(BorderRawTokens.borderRadius25, BorderRawTokens.borderRadius150)
        XCTAssertNotEqual(BorderRawTokens.borderRadius25, BorderRawTokens.borderRadius200)
        XCTAssertNotEqual(BorderRawTokens.borderRadius25, BorderRawTokens.borderRadius300)
        XCTAssertNotEqual(BorderRawTokens.borderRadius25, BorderRawTokens.borderRadius400)
        XCTAssertNotEqual(BorderRawTokens.borderRadius25, BorderRawTokens.borderRadius500)
        XCTAssertNotEqual(BorderRawTokens.borderRadius25, BorderRawTokens.borderRadius600)
        XCTAssertNotEqual(BorderRawTokens.borderRadius25, BorderRawTokens.borderRadius800)

        XCTAssertNotEqual(BorderRawTokens.borderRadius50, BorderRawTokens.borderRadius75)
        XCTAssertNotEqual(BorderRawTokens.borderRadius50, BorderRawTokens.borderRadius100)
        XCTAssertNotEqual(BorderRawTokens.borderRadius50, BorderRawTokens.borderRadius150)
        XCTAssertNotEqual(BorderRawTokens.borderRadius50, BorderRawTokens.borderRadius200)
        XCTAssertNotEqual(BorderRawTokens.borderRadius50, BorderRawTokens.borderRadius300)
        XCTAssertNotEqual(BorderRawTokens.borderRadius50, BorderRawTokens.borderRadius400)
        XCTAssertNotEqual(BorderRawTokens.borderRadius50, BorderRawTokens.borderRadius500)
        XCTAssertNotEqual(BorderRawTokens.borderRadius50, BorderRawTokens.borderRadius600)
        XCTAssertNotEqual(BorderRawTokens.borderRadius50, BorderRawTokens.borderRadius800)

        XCTAssertNotEqual(BorderRawTokens.borderRadius75, BorderRawTokens.borderRadius100)
        XCTAssertNotEqual(BorderRawTokens.borderRadius75, BorderRawTokens.borderRadius150)
        XCTAssertNotEqual(BorderRawTokens.borderRadius75, BorderRawTokens.borderRadius200)
        XCTAssertNotEqual(BorderRawTokens.borderRadius75, BorderRawTokens.borderRadius300)
        XCTAssertNotEqual(BorderRawTokens.borderRadius75, BorderRawTokens.borderRadius400)
        XCTAssertNotEqual(BorderRawTokens.borderRadius75, BorderRawTokens.borderRadius500)
        XCTAssertNotEqual(BorderRawTokens.borderRadius75, BorderRawTokens.borderRadius600)
        XCTAssertNotEqual(BorderRawTokens.borderRadius75, BorderRawTokens.borderRadius800)

        XCTAssertNotEqual(BorderRawTokens.borderRadius100, BorderRawTokens.borderRadius150)
        XCTAssertNotEqual(BorderRawTokens.borderRadius100, BorderRawTokens.borderRadius200)
        XCTAssertNotEqual(BorderRawTokens.borderRadius100, BorderRawTokens.borderRadius300)
        XCTAssertNotEqual(BorderRawTokens.borderRadius100, BorderRawTokens.borderRadius400)
        XCTAssertNotEqual(BorderRawTokens.borderRadius100, BorderRawTokens.borderRadius500)
        XCTAssertNotEqual(BorderRawTokens.borderRadius100, BorderRawTokens.borderRadius600)
        XCTAssertNotEqual(BorderRawTokens.borderRadius100, BorderRawTokens.borderRadius800)

        XCTAssertNotEqual(BorderRawTokens.borderRadius150, BorderRawTokens.borderRadius200)
        XCTAssertNotEqual(BorderRawTokens.borderRadius150, BorderRawTokens.borderRadius300)
        XCTAssertNotEqual(BorderRawTokens.borderRadius150, BorderRawTokens.borderRadius400)
        XCTAssertNotEqual(BorderRawTokens.borderRadius150, BorderRawTokens.borderRadius500)
        XCTAssertNotEqual(BorderRawTokens.borderRadius150, BorderRawTokens.borderRadius600)
        XCTAssertNotEqual(BorderRawTokens.borderRadius150, BorderRawTokens.borderRadius800)

        XCTAssertNotEqual(BorderRawTokens.borderRadius200, BorderRawTokens.borderRadius300)
        XCTAssertNotEqual(BorderRawTokens.borderRadius200, BorderRawTokens.borderRadius400)
        XCTAssertNotEqual(BorderRawTokens.borderRadius200, BorderRawTokens.borderRadius500)
        XCTAssertNotEqual(BorderRawTokens.borderRadius200, BorderRawTokens.borderRadius600)
        XCTAssertNotEqual(BorderRawTokens.borderRadius200, BorderRawTokens.borderRadius800)

        XCTAssertNotEqual(BorderRawTokens.borderRadius300, BorderRawTokens.borderRadius400)
        XCTAssertNotEqual(BorderRawTokens.borderRadius300, BorderRawTokens.borderRadius500)
        XCTAssertNotEqual(BorderRawTokens.borderRadius300, BorderRawTokens.borderRadius600)
        XCTAssertNotEqual(BorderRawTokens.borderRadius300, BorderRawTokens.borderRadius800)

        XCTAssertNotEqual(BorderRawTokens.borderRadius400, BorderRawTokens.borderRadius500)
        XCTAssertNotEqual(BorderRawTokens.borderRadius400, BorderRawTokens.borderRadius600)
        XCTAssertNotEqual(BorderRawTokens.borderRadius400, BorderRawTokens.borderRadius800)

        XCTAssertNotEqual(BorderRawTokens.borderRadius500, BorderRawTokens.borderRadius600)
        XCTAssertNotEqual(BorderRawTokens.borderRadius500, BorderRawTokens.borderRadius800)

        XCTAssertNotEqual(BorderRawTokens.borderRadius600, BorderRawTokens.borderRadius800)
    }

    // MARK: - Primitive token - Border - Style

    func testBorderStyleDashed() throws {
        XCTAssertEqual(BorderRawTokens.borderStyleDashed, "dashed")
    }

    func testBorderStyleDotted() throws {
        XCTAssertEqual(BorderRawTokens.borderStyleDotted, "dotted")
    }

    func testBorderStyleNone() throws {
        XCTAssertEqual(BorderRawTokens.borderStyleNone, "none")
    }

    func testBorderStyleSolid() throws {
        XCTAssertEqual(BorderRawTokens.borderStyleSolid, "solid")
    }

    /// Border styles raw tokens must be different
    func testNonEqualityForBorderStyles() throws {
        XCTAssertNotEqual(BorderRawTokens.borderStyleNone, BorderRawTokens.borderStyleSolid)
        XCTAssertNotEqual(BorderRawTokens.borderStyleNone, BorderRawTokens.borderStyleDashed)
        XCTAssertNotEqual(BorderRawTokens.borderStyleNone, BorderRawTokens.borderStyleDotted)

        XCTAssertNotEqual(BorderRawTokens.borderStyleSolid, BorderRawTokens.borderStyleDashed)
        XCTAssertNotEqual(BorderRawTokens.borderStyleSolid, BorderRawTokens.borderStyleDotted)

        XCTAssertNotEqual(BorderRawTokens.borderStyleDashed, BorderRawTokens.borderStyleDotted)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable function_body_length
// swiftlint:enable type_body_length

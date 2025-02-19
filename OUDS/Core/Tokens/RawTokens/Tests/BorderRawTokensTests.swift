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
import Testing
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

    @Test func borderWidthRawToken0NotNegativeValue() throws {
        #expect(BorderRawTokens.borderWidth0 >= 0)
    }

    @Test func borderWidthRawToken0LessThan25() throws {
        #expect(BorderRawTokens.borderWidth0 < BorderRawTokens.borderWidth25)
    }

    func testBorderWidthRawToken0MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderWidth0, factor: BorderRawTokens.borderBase)
    }

    @Test func borderWidthRawToken25NotNegativeValue() throws {
        #expect(BorderRawTokens.borderWidth25 >= 0)
    }

    func testBorderWidthRawToken25LessThan50() throws {
        #expect(BorderRawTokens.borderWidth25 < BorderRawTokens.borderWidth50)
    }

    func testBorderWidthRawToken25MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderWidth25, factor: BorderRawTokens.borderBase)
    }

    @Test func borderWidthRawToken50NotNegativeValue() throws {
        #expect(BorderRawTokens.borderWidth50 >= 0)
    }

    @Test func borderWidthRawToken50LessThan75() throws {
        #expect(BorderRawTokens.borderWidth50 < BorderRawTokens.borderWidth75)
    }

    @Test func borderWidthRawToken50MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderWidth50, factor: BorderRawTokens.borderBase)
    }

    @Test func borderWidthRawToken75NotNegativeValue() throws {
        #expect(BorderRawTokens.borderWidth75 >= 0)
    }

    @Test func borderWidthRawToken75LessThan100() throws {
        #expect(BorderRawTokens.borderWidth75 < BorderRawTokens.borderWidth100)
    }

    func testBorderWidthRawToken75MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderWidth75, factor: BorderRawTokens.borderBase)
    }

    @Test func borderWidthRawToken100NotNegativeValue() throws {
        #expect(BorderRawTokens.borderWidth100 >= 0)
    }

    @Test func borderWidthRawToken100LessThan125() throws {
        #expect(BorderRawTokens.borderWidth100 < BorderRawTokens.borderWidth125)
    }

    func testBorderWidthRawToken100MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderWidth100, factor: BorderRawTokens.borderBase)
    }

    @Test func borderWidthRawToken125NotNegativeValue() throws {
        #expect(BorderRawTokens.borderWidth125 >= 0)
    }

    @Test func borderWidthRawToken125LessThan150() throws {
        #expect(BorderRawTokens.borderWidth125 < BorderRawTokens.borderWidth150)
    }

    @Test func borderWidthRawToken125MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderWidth125, factor: BorderRawTokens.borderBase)
    }

    @Test func borderWidthRawToken150NotNegativeValue() throws {
        #expect(BorderRawTokens.borderWidth150 >= 0)
    }

    @Test func borderWidthRawToken150LessThan200() throws {
        #expect(BorderRawTokens.borderWidth150 < BorderRawTokens.borderWidth200)
    }

    @Test func borderWidthRawToken150MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderWidth150, factor: BorderRawTokens.borderBase)
    }

    @Test func borderWidthRawToken200NotNegativeValue() throws {
        #expect(BorderRawTokens.borderWidth200 >= 0)
    }

    func testBorderWidthRawToken200MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderWidth200, factor: BorderRawTokens.borderBase)
    }

    /// Border width raw tokens must be different
    @Test func nonEqualityForBorderWidths() throws {
        #expect(BorderRawTokens.borderWidth0 != BorderRawTokens.borderWidth25)
        #expect(BorderRawTokens.borderWidth0 != BorderRawTokens.borderWidth50)
        #expect(BorderRawTokens.borderWidth0 != BorderRawTokens.borderWidth75)
        #expect(BorderRawTokens.borderWidth0 != BorderRawTokens.borderWidth100)
        #expect(BorderRawTokens.borderWidth0 != BorderRawTokens.borderWidth125)
        #expect(BorderRawTokens.borderWidth0 != BorderRawTokens.borderWidth150)
        #expect(BorderRawTokens.borderWidth0 != BorderRawTokens.borderWidth200)

        #expect(BorderRawTokens.borderWidth50 != BorderRawTokens.borderWidth75)
        #expect(BorderRawTokens.borderWidth50 != BorderRawTokens.borderWidth100)
        #expect(BorderRawTokens.borderWidth50 != BorderRawTokens.borderWidth125)
        #expect(BorderRawTokens.borderWidth50 != BorderRawTokens.borderWidth150)
        #expect(BorderRawTokens.borderWidth50 != BorderRawTokens.borderWidth200)

        #expect(BorderRawTokens.borderWidth75 != BorderRawTokens.borderWidth100)
        #expect(BorderRawTokens.borderWidth75 != BorderRawTokens.borderWidth125)
        #expect(BorderRawTokens.borderWidth75 != BorderRawTokens.borderWidth150)
        #expect(BorderRawTokens.borderWidth75 != BorderRawTokens.borderWidth200)

        #expect(BorderRawTokens.borderWidth100 != BorderRawTokens.borderWidth125)
        #expect(BorderRawTokens.borderWidth100 != BorderRawTokens.borderWidth150)
        #expect(BorderRawTokens.borderWidth100 != BorderRawTokens.borderWidth200)

        #expect(BorderRawTokens.borderWidth125 != BorderRawTokens.borderWidth150)
        #expect(BorderRawTokens.borderWidth125 != BorderRawTokens.borderWidth200)

        #expect(BorderRawTokens.borderWidth150 != BorderRawTokens.borderWidth200)
    }

    // MARK: - Primitive token - Border - Radius

    @Test func borderRadiusRawToken0NotNegativeValue() throws {
        #expect(BorderRawTokens.borderRadius0 >= 0)
    }

    @Test func borderRadiusRawToken0LessThan25() throws {
        #expect(BorderRawTokens.borderRadius0 < BorderRawTokens.borderRadius25)
    }

    func testBorderRadiusRawToken0MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius0, factor: BorderRawTokens.borderBase)
    }

    @Test func borderRadiusRawToken25NotNegativeValue() throws {
        #expect(BorderRawTokens.borderRadius25 >= 0)
    }

    @Test func borderRadiusRawToken25LessThan50() throws {
        XCTAssertLessThan(BorderRawTokens.borderRadius25, BorderRawTokens.borderRadius50)
    }

    func testBorderRadiusRawToken25MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius25, factor: BorderRawTokens.borderBase)
    }

    @Test func borderRadiusRawToken50NotNegativeValue() throws {
        #expect(BorderRawTokens.borderRadius50 >= 0)
    }

    @Test func borderRadiusRawToken50LessThan75() throws {
        #expect(BorderRawTokens.borderRadius50 < BorderRawTokens.borderRadius75)
    }

    func testBorderRadiusRawToken50MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius50, factor: BorderRawTokens.borderBase)
    }

    @Test func borderRadiusRawToken75NotNegativeValue() throws {
        #expect(BorderRawTokens.borderRadius75 >= 0)
    }

    @Test func borderRadiusRawToken75LessThan100() throws {
        #expect(BorderRawTokens.borderRadius75 < BorderRawTokens.borderRadius100)
    }

    func testBorderRadiusRawToken75MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius75, factor: BorderRawTokens.borderBase)
    }

    @Test func borderRadiusRawToken100NotNegativeValue() throws {
        #expect(BorderRawTokens.borderRadius100 >= 0)
    }

    @Test func borderRadiusRawToken100LessThan150() throws {
        #expect(BorderRawTokens.borderRadius100 < BorderRawTokens.borderRadius150)
    }

    func testBorderRadiusRawToken100MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius100, factor: BorderRawTokens.borderBase)
    }

    @Test func borderRadiusRawToken150NotNegativeValue() throws {
        #expect(BorderRawTokens.borderRadius150 >= 0)
    }

    @Test func borderRadiusRawToken150LessThan200() throws {
        #expect(BorderRawTokens.borderRadius150 < BorderRawTokens.borderRadius200)
    }

    func testBorderRadiusRawToken150MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius150, factor: BorderRawTokens.borderBase)
    }

    @Test func borderRadiusRawToken200NotNegativeValue() throws {
        #expect(BorderRawTokens.borderRadius200 >= 0)
    }

    @Test func borderRadiusRawToken200LessThan300() throws {
        #expect(BorderRawTokens.borderRadius200 < BorderRawTokens.borderRadius300)
    }

    @Test func borderRadiusRawToken200MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius200, factor: BorderRawTokens.borderBase)
    }

    @Test func borderRadiusRawToken300NotNegativeValue() throws {
        #expect(BorderRawTokens.borderRadius300 >= 0)
    }

    @Test func borderRadiusRawToken300LessThan400() throws {
        #expect(BorderRawTokens.borderRadius300 < BorderRawTokens.borderRadius400)
    }

    func testBorderRadiusRawToken300MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius300, factor: BorderRawTokens.borderBase)
    }

    @Test func borderRadiusRawToken400NotNegativeValue() throws {
        #expect(BorderRawTokens.borderRadius400 >= 0)
    }

    @Test func borderRadiusRawToken400LessThan500() throws {
        #expect(BorderRawTokens.borderRadius400 < BorderRawTokens.borderRadius500)
    }

    func testBorderRadiusRawToken400MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius400, factor: BorderRawTokens.borderBase)
    }

    @Test func borderRadiusRawToken500NotNegativeValue() throws {
        #expect(BorderRawTokens.borderRadius500 >= 0)
    }

    @Test func borderRadiusRawToken500LessThan600() throws {
        #expect(BorderRawTokens.borderRadius500 < BorderRawTokens.borderRadius600)
    }

    func testBorderRadiusRawToken500MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius500, factor: BorderRawTokens.borderBase)
    }

    @Test func borderRadiusRawToken600NotNegativeValue() throws {
        #expect(BorderRawTokens.borderRadius600 >= 0)
    }

    @Test func borderRadiusRawToken600LessThan800() throws {
        #expect(BorderRawTokens.borderRadius600 < BorderRawTokens.borderRadius800)
    }

    func testBorderRadiusRawToken600MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius600, factor: BorderRawTokens.borderBase)
    }

    @Test func borderRadiusRawToken800NotNegativeValue() throws {
        #expect(BorderRawTokens.borderRadius800 >= 0)
    }

    func testBorderRadiusRawToken800MultipleOfBase() throws {
        XCTAssertMultipleOf(BorderRawTokens.borderRadius800, factor: BorderRawTokens.borderBase)
    }

    /// Border radius raw tokens must be different
    @Test func nonEqualityForBorderRadiuses() throws {
        #expect(BorderRawTokens.borderRadius0 != BorderRawTokens.borderRadius25)
        #expect(BorderRawTokens.borderRadius0 != BorderRawTokens.borderRadius50)
        #expect(BorderRawTokens.borderRadius0 != BorderRawTokens.borderRadius75)
        #expect(BorderRawTokens.borderRadius0 != BorderRawTokens.borderRadius100)
        #expect(BorderRawTokens.borderRadius0 != BorderRawTokens.borderRadius150)
        #expect(BorderRawTokens.borderRadius0 != BorderRawTokens.borderRadius200)
        #expect(BorderRawTokens.borderRadius0 != BorderRawTokens.borderRadius300)
        #expect(BorderRawTokens.borderRadius0 != BorderRawTokens.borderRadius400)
        #expect(BorderRawTokens.borderRadius0 != BorderRawTokens.borderRadius500)
        #expect(BorderRawTokens.borderRadius0 != BorderRawTokens.borderRadius600)
        #expect(BorderRawTokens.borderRadius0 != BorderRawTokens.borderRadius800)

        #expect(BorderRawTokens.borderRadius25 != BorderRawTokens.borderRadius50)
        #expect(BorderRawTokens.borderRadius25 != BorderRawTokens.borderRadius75)
        #expect(BorderRawTokens.borderRadius25 != BorderRawTokens.borderRadius100)
        #expect(BorderRawTokens.borderRadius25 != BorderRawTokens.borderRadius150)
        #expect(BorderRawTokens.borderRadius25 != BorderRawTokens.borderRadius200)
        #expect(BorderRawTokens.borderRadius25 != BorderRawTokens.borderRadius300)
        #expect(BorderRawTokens.borderRadius25 != BorderRawTokens.borderRadius400)
        #expect(BorderRawTokens.borderRadius25 != BorderRawTokens.borderRadius500)
        #expect(BorderRawTokens.borderRadius25 != BorderRawTokens.borderRadius600)
        #expect(BorderRawTokens.borderRadius25 != BorderRawTokens.borderRadius800)

        #expect(BorderRawTokens.borderRadius50 != BorderRawTokens.borderRadius75)
        #expect(BorderRawTokens.borderRadius50 != BorderRawTokens.borderRadius100)
        #expect(BorderRawTokens.borderRadius50 != BorderRawTokens.borderRadius150)
        #expect(BorderRawTokens.borderRadius50 != BorderRawTokens.borderRadius200)
        #expect(BorderRawTokens.borderRadius50 != BorderRawTokens.borderRadius300)
        #expect(BorderRawTokens.borderRadius50 != BorderRawTokens.borderRadius400)
        #expect(BorderRawTokens.borderRadius50 != BorderRawTokens.borderRadius500)
        #expect(BorderRawTokens.borderRadius50 != BorderRawTokens.borderRadius600)
        #expect(BorderRawTokens.borderRadius50 != BorderRawTokens.borderRadius800)

        #expect(BorderRawTokens.borderRadius75 != BorderRawTokens.borderRadius100)
        #expect(BorderRawTokens.borderRadius75 != BorderRawTokens.borderRadius150)
        #expect(BorderRawTokens.borderRadius75 != BorderRawTokens.borderRadius200)
        #expect(BorderRawTokens.borderRadius75 != BorderRawTokens.borderRadius300)
        #expect(BorderRawTokens.borderRadius75 != BorderRawTokens.borderRadius400)
        #expect(BorderRawTokens.borderRadius75 != BorderRawTokens.borderRadius500)
        #expect(BorderRawTokens.borderRadius75 != BorderRawTokens.borderRadius600)
        #expect(BorderRawTokens.borderRadius75 != BorderRawTokens.borderRadius800)

        #expect(BorderRawTokens.borderRadius100 != BorderRawTokens.borderRadius150)
        #expect(BorderRawTokens.borderRadius100 != BorderRawTokens.borderRadius200)
        #expect(BorderRawTokens.borderRadius100 != BorderRawTokens.borderRadius300)
        #expect(BorderRawTokens.borderRadius100 != BorderRawTokens.borderRadius400)
        #expect(BorderRawTokens.borderRadius100 != BorderRawTokens.borderRadius500)
        #expect(BorderRawTokens.borderRadius100 != BorderRawTokens.borderRadius600)
        #expect(BorderRawTokens.borderRadius100 != BorderRawTokens.borderRadius800)

        #expect(BorderRawTokens.borderRadius150 != BorderRawTokens.borderRadius200)
        #expect(BorderRawTokens.borderRadius150 != BorderRawTokens.borderRadius300)
        #expect(BorderRawTokens.borderRadius150 != BorderRawTokens.borderRadius400)
        #expect(BorderRawTokens.borderRadius150 != BorderRawTokens.borderRadius500)
        #expect(BorderRawTokens.borderRadius150 != BorderRawTokens.borderRadius600)
        #expect(BorderRawTokens.borderRadius150 != BorderRawTokens.borderRadius800)

        #expect(BorderRawTokens.borderRadius200 != BorderRawTokens.borderRadius300)
        #expect(BorderRawTokens.borderRadius200 != BorderRawTokens.borderRadius400)
        #expect(BorderRawTokens.borderRadius200 != BorderRawTokens.borderRadius500)
        #expect(BorderRawTokens.borderRadius200 != BorderRawTokens.borderRadius600)
        #expect(BorderRawTokens.borderRadius200 != BorderRawTokens.borderRadius800)

        #expect(BorderRawTokens.borderRadius300 != BorderRawTokens.borderRadius400)
        #expect(BorderRawTokens.borderRadius300 != BorderRawTokens.borderRadius500)
        #expect(BorderRawTokens.borderRadius300 != BorderRawTokens.borderRadius600)
        #expect(BorderRawTokens.borderRadius300 != BorderRawTokens.borderRadius800)

        #expect(BorderRawTokens.borderRadius400 != BorderRawTokens.borderRadius500)
        #expect(BorderRawTokens.borderRadius400 != BorderRawTokens.borderRadius600)
        #expect(BorderRawTokens.borderRadius400 != BorderRawTokens.borderRadius800)

        #expect(BorderRawTokens.borderRadius500 != BorderRawTokens.borderRadius600)
        #expect(BorderRawTokens.borderRadius500 != BorderRawTokens.borderRadius800)

        #expect(BorderRawTokens.borderRadius600 != BorderRawTokens.borderRadius800)
    }

    // MARK: - Primitive token - Border - Style

    @Test func borderStyleDashed() throws {
        #expect(BorderRawTokens.borderStyleDashed != "dashed")
    }

    @Test func borderStyleDotted() throws {
        #expect(BorderRawTokens.borderStyleDotted != "dotted")
    }

    @Test func borderStyleNone() throws {
        #expect(BorderRawTokens.borderStyleNone != "none")
    }

    @Test func borderStyleSolid() throws {
        #expect(BorderRawTokens.borderStyleSolid != "solid")
    }

    /// Border styles raw tokens must be different
    @Test func nonEqualityForBorderStyles() throws {
        #expect(BorderRawTokens.borderStyleNone != BorderRawTokens.borderStyleSolid)
        #expect(BorderRawTokens.borderStyleNone != BorderRawTokens.borderStyleDashed)
        #expect(BorderRawTokens.borderStyleNone != BorderRawTokens.borderStyleDotted)

        #expect(BorderRawTokens.borderStyleSolid != BorderRawTokens.borderStyleDashed)
        #expect(BorderRawTokens.borderStyleSolid != BorderRawTokens.borderStyleDotted)

        #expect(BorderRawTokens.borderStyleDashed != BorderRawTokens.borderStyleDotted)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable function_body_length
// swiftlint:enable type_body_length

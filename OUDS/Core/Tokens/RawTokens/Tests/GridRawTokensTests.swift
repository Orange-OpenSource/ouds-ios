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
// swiftlint:disable type_body_length

/// The aim of this tests class is to look for regressions in **grid raw tokens**.
///
/// Because these values will be at least generated through an external tool, is it not mandatory and relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **grid raw tokens**, there will be some unchanged things like relationships between tokens.
///
/// Here are some rules to follow:
/// - the higher the grid margin token is, the higher its value is
/// - the higher the grid column count token is, the higher its value is
/// - the higher the grid column gap token is, the higher its value is
/// - grid column gap tokens must be factor of `DimensionRawTokens.dimensionBase`
/// - grid column count tokens must be all different
/// - grid column count tokens must be greater than 0
/// - grid column gap tokens must be all different
/// - grid column gap tokens must be greater than 0
/// - grid max width tokens must be all different
/// - grid max width otkens values must be the expected ones
/// - grid min width tokens must be all different
/// - grid min width otkens values must be the expected ones
final class GridRawTokensTests: XCTestCase {

    // MARK: - Primitive token - Grid - Min and max Width

    /*
     Values are defined using Apple guidelines in desig team side.
     See https://developer.apple.com/design/human-interface-guidelines/layout
     */

    func testGridRawTokenMaxWidthCompactValue() {
        XCTAssertEqual(GridRawTokens.gridMaxWidthCompact, 852)
    }

    func testGridRawTokenMaxWidthExtraCompactValue() {
        XCTAssertEqual(GridRawTokens.gridMaxWidthExtraCompact, 389)
    }

    func testGridRawTokenMaxWidthRegularValue() {
        XCTAssertEqual(GridRawTokens.gridMaxWidthRegular, 1_336)
    }

    func testGridRawTokenMinWidthCompactValue() {
        XCTAssertEqual(GridRawTokens.gridMinWidthCompact, 390)
    }

    func testGridRawTokenMinWidthExtraCompactValue() {
        XCTAssertEqual(GridRawTokens.gridMinWidthExtraCompact, 320)
    }

    func testGridRawTokenMinWidthRegularValue() {
        XCTAssertEqual(GridRawTokens.gridMinWidthRegular, 736)
    }

    // MARK: - Primitive token - Grid - Margin

    func testGridRawTokenGridMargin100GreaterThan0() throws {
        XCTAssertTrue(GridRawTokens.gridMargin100 > 0)
    }

    func testGridRawTokenGridMargin100LessThanGridMargin300() throws {
        XCTAssertLessThan(GridRawTokens.gridMargin100, GridRawTokens.gridMargin300)
    }

    func testGridRawTokenMargin100MultipleOfBase() throws {
        XCTAssertMultipleOf(GridRawTokens.gridMargin100, factor: DimensionRawTokens.dimensionBase)
    }

    func testGridRawTokenGridMargin300GreaterThan0() throws {
        XCTAssertTrue(GridRawTokens.gridMargin100 > 0)
    }

    func testGridRawTokenGridMargin300LessThanGridMargin400() throws {
        XCTAssertLessThan(GridRawTokens.gridMargin300, GridRawTokens.gridMargin400)
    }

    func testGridRawTokenMargin300MultipleOfBase() throws {
        XCTAssertMultipleOf(GridRawTokens.gridMargin300, factor: DimensionRawTokens.dimensionBase)
    }

    func testGridRawTokenGridMargin400GreaterThan0() throws {
        XCTAssertTrue(GridRawTokens.gridMargin400 > 0)
    }

    func testGridRawTokenGridMargin400LessThanGridMargin500() throws {
        XCTAssertLessThan(GridRawTokens.gridMargin400, GridRawTokens.gridMargin500)
    }

    func testGridRawTokenMargin400MultipleOfBase() throws {
        XCTAssertMultipleOf(GridRawTokens.gridMargin400, factor: DimensionRawTokens.dimensionBase)
    }

    func testGridRawTokenGridMargin500GreaterThan0() throws {
        XCTAssertTrue(GridRawTokens.gridMargin500 > 0)
    }

    func testGridRawTokenGridMargin500LessThanGridMargin600() throws {
        XCTAssertLessThan(GridRawTokens.gridMargin500, GridRawTokens.gridMargin600)
    }

    func testGridRawTokenMargin500MultipleOfBase() throws {
        XCTAssertMultipleOf(GridRawTokens.gridMargin500, factor: DimensionRawTokens.dimensionBase)
    }

    func testGridRawTokenGridMargin600GreaterThan0() throws {
        XCTAssertTrue(GridRawTokens.gridMargin600 > 0)
    }

    func testGridRawTokenGridMargin600LessThanGridMargin700() throws {
        XCTAssertLessThan(GridRawTokens.gridMargin600, GridRawTokens.gridMargin700)
    }

    func testGridRawTokenMargin600MultipleOfBase() throws {
        XCTAssertMultipleOf(GridRawTokens.gridMargin600, factor: DimensionRawTokens.dimensionBase)
    }

    func testGridRawTokenGridMargin700GreaterThan0() throws {
        XCTAssertTrue(GridRawTokens.gridMargin700 > 0)
    }

    func testGridRawTokenGridMargin700LessThanGridMargin1000() throws {
        XCTAssertLessThan(GridRawTokens.gridMargin700, GridRawTokens.gridMargin1000)
    }

    func testGridRawTokenMargin700MultipleOfBase() throws {
        XCTAssertMultipleOf(GridRawTokens.gridMargin700, factor: DimensionRawTokens.dimensionBase)
    }

    func testGridRawTokenGridMargin1000GreaterThan0() throws {
        XCTAssertTrue(GridRawTokens.gridMargin1000 > 0)
    }

    func testGridRawTokenGridMargin1000LessThanGridMargin1100() throws {
        XCTAssertLessThan(GridRawTokens.gridMargin1000, GridRawTokens.gridMargin1100)
    }

    func testGridRawTokenMargin1000MultipleOfBase() throws {
        XCTAssertMultipleOf(GridRawTokens.gridMargin1000, factor: DimensionRawTokens.dimensionBase)
    }

    func testGridRawTokenGridMargin1100GreaterThan0() throws {
        XCTAssertTrue(GridRawTokens.gridMargin1100 > 0)
    }

    func testGridRawTokenGridMargin1100LessThanGridMargin1700() throws {
        XCTAssertLessThan(GridRawTokens.gridMargin1100, GridRawTokens.gridMargin1700)
    }

    func testGridRawTokenMargin1100MultipleOfBase() throws {
        XCTAssertMultipleOf(GridRawTokens.gridMargin1000, factor: DimensionRawTokens.dimensionBase)
    }

    func testGridRawTokenGridMargin1700GreaterThan0() throws {
        XCTAssertTrue(GridRawTokens.gridMargin1700 > 0)
    }

    func testGridRawTokenGridMargin1700LessThanGridMargin2500() throws {
        XCTAssertLessThan(GridRawTokens.gridMargin1700, GridRawTokens.gridMargin2500)
    }

    func testGridRawTokenMargin1700MultipleOfBase() throws {
        XCTAssertMultipleOf(GridRawTokens.gridMargin1700, factor: DimensionRawTokens.dimensionBase)
    }

    func testGridRawTokenGridMargin250GreaterThan0() throws {
        XCTAssertTrue(GridRawTokens.gridMargin2500 > 0)
    }

    func testGridRawTokenMargin2500MultipleOfBase() throws {
        XCTAssertMultipleOf(GridRawTokens.gridMargin2500, factor: DimensionRawTokens.dimensionBase)
    }

    func testNonEqualityForGridMargins() throws {
        XCTAssertNotEqual(GridRawTokens.gridMargin100, GridRawTokens.gridMargin300)
        XCTAssertNotEqual(GridRawTokens.gridMargin100, GridRawTokens.gridMargin400)
        XCTAssertNotEqual(GridRawTokens.gridMargin100, GridRawTokens.gridMargin500)
        XCTAssertNotEqual(GridRawTokens.gridMargin100, GridRawTokens.gridMargin600)
        XCTAssertNotEqual(GridRawTokens.gridMargin100, GridRawTokens.gridMargin700)
        XCTAssertNotEqual(GridRawTokens.gridMargin100, GridRawTokens.gridMargin1000)
        XCTAssertNotEqual(GridRawTokens.gridMargin100, GridRawTokens.gridMargin1100)
        XCTAssertNotEqual(GridRawTokens.gridMargin100, GridRawTokens.gridMargin1700)
        XCTAssertNotEqual(GridRawTokens.gridMargin100, GridRawTokens.gridMargin2500)

        XCTAssertNotEqual(GridRawTokens.gridMargin300, GridRawTokens.gridMargin400)
        XCTAssertNotEqual(GridRawTokens.gridMargin300, GridRawTokens.gridMargin500)
        XCTAssertNotEqual(GridRawTokens.gridMargin300, GridRawTokens.gridMargin600)
        XCTAssertNotEqual(GridRawTokens.gridMargin300, GridRawTokens.gridMargin700)
        XCTAssertNotEqual(GridRawTokens.gridMargin300, GridRawTokens.gridMargin1000)
        XCTAssertNotEqual(GridRawTokens.gridMargin300, GridRawTokens.gridMargin1100)
        XCTAssertNotEqual(GridRawTokens.gridMargin300, GridRawTokens.gridMargin1700)
        XCTAssertNotEqual(GridRawTokens.gridMargin300, GridRawTokens.gridMargin2500)

        XCTAssertNotEqual(GridRawTokens.gridMargin400, GridRawTokens.gridMargin500)
        XCTAssertNotEqual(GridRawTokens.gridMargin400, GridRawTokens.gridMargin600)
        XCTAssertNotEqual(GridRawTokens.gridMargin400, GridRawTokens.gridMargin700)
        XCTAssertNotEqual(GridRawTokens.gridMargin400, GridRawTokens.gridMargin1000)
        XCTAssertNotEqual(GridRawTokens.gridMargin400, GridRawTokens.gridMargin1100)
        XCTAssertNotEqual(GridRawTokens.gridMargin400, GridRawTokens.gridMargin1700)
        XCTAssertNotEqual(GridRawTokens.gridMargin400, GridRawTokens.gridMargin2500)

        XCTAssertNotEqual(GridRawTokens.gridMargin500, GridRawTokens.gridMargin600)
        XCTAssertNotEqual(GridRawTokens.gridMargin500, GridRawTokens.gridMargin700)
        XCTAssertNotEqual(GridRawTokens.gridMargin500, GridRawTokens.gridMargin1000)
        XCTAssertNotEqual(GridRawTokens.gridMargin500, GridRawTokens.gridMargin1100)
        XCTAssertNotEqual(GridRawTokens.gridMargin500, GridRawTokens.gridMargin1700)
        XCTAssertNotEqual(GridRawTokens.gridMargin500, GridRawTokens.gridMargin2500)

        XCTAssertNotEqual(GridRawTokens.gridMargin600, GridRawTokens.gridMargin700)
        XCTAssertNotEqual(GridRawTokens.gridMargin600, GridRawTokens.gridMargin1000)
        XCTAssertNotEqual(GridRawTokens.gridMargin600, GridRawTokens.gridMargin1100)
        XCTAssertNotEqual(GridRawTokens.gridMargin600, GridRawTokens.gridMargin1700)
        XCTAssertNotEqual(GridRawTokens.gridMargin600, GridRawTokens.gridMargin2500)

        XCTAssertNotEqual(GridRawTokens.gridMargin700, GridRawTokens.gridMargin1000)
        XCTAssertNotEqual(GridRawTokens.gridMargin700, GridRawTokens.gridMargin1100)
        XCTAssertNotEqual(GridRawTokens.gridMargin700, GridRawTokens.gridMargin1700)
        XCTAssertNotEqual(GridRawTokens.gridMargin700, GridRawTokens.gridMargin2500)

        XCTAssertNotEqual(GridRawTokens.gridMargin1000, GridRawTokens.gridMargin1100)
        XCTAssertNotEqual(GridRawTokens.gridMargin1000, GridRawTokens.gridMargin1700)
        XCTAssertNotEqual(GridRawTokens.gridMargin1000, GridRawTokens.gridMargin2500)

        XCTAssertNotEqual(GridRawTokens.gridMargin1100, GridRawTokens.gridMargin1700)
        XCTAssertNotEqual(GridRawTokens.gridMargin1100, GridRawTokens.gridMargin2500)

        XCTAssertNotEqual(GridRawTokens.gridMargin1700, GridRawTokens.gridMargin2500)
    }

    // MARK: - Primitive token - Grid - Column gap

    func testGridRawTokenGridColumnGap10GreaterThan0() throws {
        XCTAssertTrue(GridRawTokens.gridColumnGap10 > 0)
    }

    func testGridRawTokenGridColumnGap10LessThanGridColumnGap100() throws {
        XCTAssertLessThan(GridRawTokens.gridColumnGap10, GridRawTokens.gridColumnGap100)
    }

    func testGridRawTokenColumnGap10MultipleOfBase() throws {
        XCTAssertMultipleOf(GridRawTokens.gridColumnGap10, factor: DimensionRawTokens.dimensionBase)
    }

    func testGridRawTokenGridColumnGap100GreaterThan0() throws {
        XCTAssertTrue(GridRawTokens.gridColumnGap100 > 0)
    }

    func testGridRawTokenGridColumnGap100LessThanGridColumnGap200() throws {
        XCTAssertLessThan(GridRawTokens.gridColumnGap100, GridRawTokens.gridColumnGap200)
    }

    func testGridRawTokenColumnGap100MultipleOfBase() throws {
        XCTAssertMultipleOf(GridRawTokens.gridColumnGap100, factor: DimensionRawTokens.dimensionBase)
    }

    func testGridRawTokenGridColumnGap200GreaterThan0() throws {
        XCTAssertTrue(GridRawTokens.gridColumnGap200 > 0)
    }

    func testGridRawTokenGridColumnGap200LessThanGridColumnGap300() throws {
        XCTAssertLessThan(GridRawTokens.gridColumnGap200, GridRawTokens.gridColumnGap300)
    }

    func testGridRawTokenColumnGap200MultipleOfBase() throws {
        XCTAssertMultipleOf(GridRawTokens.gridColumnGap200, factor: DimensionRawTokens.dimensionBase)
    }

    func testGridRawTokenGridColumnGap300GreaterThan0() throws {
        XCTAssertTrue(GridRawTokens.gridColumnGap300 > 0)
    }

    func testGridRawTokenGridColumnGap300LessThanGridColumnGap400() throws {
        XCTAssertLessThan(GridRawTokens.gridColumnGap300, GridRawTokens.gridColumnGap400)
    }

    func testGridRawTokenColumnGap300MultipleOfBase() throws {
        XCTAssertMultipleOf(GridRawTokens.gridColumnGap300, factor: DimensionRawTokens.dimensionBase)
    }

    func testGridRawTokenGridColumnGap400GreaterThan0() throws {
        XCTAssertTrue(GridRawTokens.gridColumnGap400 > 0)
    }

    func testGridRawTokenGridColumnGap400LessThanGridColumnGap600() throws {
        XCTAssertLessThan(GridRawTokens.gridColumnGap400, GridRawTokens.gridColumnGap600)
    }

    func testGridRawTokenColumnGap400MultipleOfBase() throws {
        XCTAssertMultipleOf(GridRawTokens.gridColumnGap400, factor: DimensionRawTokens.dimensionBase)
    }

    func testGridRawTokenGridColumnGap600GreaterThan0() throws {
        XCTAssertTrue(GridRawTokens.gridColumnGap600 > 0)
    }

    func testGridRawTokenGridColumnGap600LessThanGridColumnGap800() throws {
        XCTAssertLessThan(GridRawTokens.gridColumnGap600, GridRawTokens.gridColumnGap800)
    }

    func testGridRawTokenColumnGap600MultipleOfBase() throws {
        XCTAssertMultipleOf(GridRawTokens.gridColumnGap600, factor: DimensionRawTokens.dimensionBase)
    }

    func testGridRawTokenGridColumnGap800GreaterThan0() throws {
        XCTAssertTrue(GridRawTokens.gridColumnGap800 > 0)
    }

    func testGridRawTokenColumnGap800MultipleOfBase() throws {
        XCTAssertMultipleOf(GridRawTokens.gridColumnGap800, factor: DimensionRawTokens.dimensionBase)
    }

    func testNonEqualityForGridColumnGaps() throws {
        XCTAssertNotEqual(GridRawTokens.gridColumnGap10, GridRawTokens.gridColumnGap100)
        XCTAssertNotEqual(GridRawTokens.gridColumnGap10, GridRawTokens.gridColumnGap200)
        XCTAssertNotEqual(GridRawTokens.gridColumnGap10, GridRawTokens.gridColumnGap300)
        XCTAssertNotEqual(GridRawTokens.gridColumnGap10, GridRawTokens.gridColumnGap400)
        XCTAssertNotEqual(GridRawTokens.gridColumnGap10, GridRawTokens.gridColumnGap600)
        XCTAssertNotEqual(GridRawTokens.gridColumnGap10, GridRawTokens.gridColumnGap800)

        XCTAssertNotEqual(GridRawTokens.gridColumnGap100, GridRawTokens.gridColumnGap200)
        XCTAssertNotEqual(GridRawTokens.gridColumnGap100, GridRawTokens.gridColumnGap300)
        XCTAssertNotEqual(GridRawTokens.gridColumnGap100, GridRawTokens.gridColumnGap400)
        XCTAssertNotEqual(GridRawTokens.gridColumnGap100, GridRawTokens.gridColumnGap600)
        XCTAssertNotEqual(GridRawTokens.gridColumnGap100, GridRawTokens.gridColumnGap800)

        XCTAssertNotEqual(GridRawTokens.gridColumnGap200, GridRawTokens.gridColumnGap300)
        XCTAssertNotEqual(GridRawTokens.gridColumnGap200, GridRawTokens.gridColumnGap400)
        XCTAssertNotEqual(GridRawTokens.gridColumnGap200, GridRawTokens.gridColumnGap600)
        XCTAssertNotEqual(GridRawTokens.gridColumnGap200, GridRawTokens.gridColumnGap800)

        XCTAssertNotEqual(GridRawTokens.gridColumnGap300, GridRawTokens.gridColumnGap400)
        XCTAssertNotEqual(GridRawTokens.gridColumnGap300, GridRawTokens.gridColumnGap600)
        XCTAssertNotEqual(GridRawTokens.gridColumnGap300, GridRawTokens.gridColumnGap800)

        XCTAssertNotEqual(GridRawTokens.gridColumnGap400, GridRawTokens.gridColumnGap600)
        XCTAssertNotEqual(GridRawTokens.gridColumnGap400, GridRawTokens.gridColumnGap800)

        XCTAssertNotEqual(GridRawTokens.gridColumnGap600, GridRawTokens.gridColumnGap800)
    }

    // MARK: - Primitive token - Grid - Column count

    func testGridRawTokenGridColumnCount100GreaterThan0() throws {
        XCTAssertTrue(GridRawTokens.gridColumnCount100 > 0)
    }

    func testGridRawTokenGridColumnCount100LessThanGridColumnCount200() throws {
        XCTAssertLessThan(GridRawTokens.gridColumnCount100, GridRawTokens.gridColumnCount200)
    }

    func testGridRawTokenGridColumnCount200GreaterThan0() throws {
        XCTAssertTrue(GridRawTokens.gridColumnCount200 > 0)
    }

    func testGridRawTokenGridColumnCount200LessThanGridColumnCount400() throws {
        XCTAssertLessThan(GridRawTokens.gridColumnCount200, GridRawTokens.gridColumnCount400)
    }

    func testGridRawTokenGridColumnCount400GreaterThan0() throws {
        XCTAssertTrue(GridRawTokens.gridColumnCount400 > 0)
    }

    func testGridRawTokenGridColumnCount400LessThanGridColumnCount600() throws {
        XCTAssertLessThan(GridRawTokens.gridColumnCount400, GridRawTokens.gridColumnCount600)
    }

    func testGridRawTokenGridColumnCount600GreaterThan0() throws {
        XCTAssertTrue(GridRawTokens.gridColumnCount600 > 0)
    }

    func testGridRawTokenGridColumnCount600LessThanGridColumnCount800() throws {
        XCTAssertLessThan(GridRawTokens.gridColumnCount600, GridRawTokens.gridColumnCount800)
    }

    func testGridRawTokenGridColumnCount800GreaterThan0() throws {
        XCTAssertTrue(GridRawTokens.gridColumnCount800 > 0)
    }

    func testGridRawTokenGridColumnCount800LessThanGridColumnCount1000() throws {
        XCTAssertLessThan(GridRawTokens.gridColumnCount800, GridRawTokens.gridColumnCount1000)
    }

    func testGridRawTokenGridColumnCount1000GreaterThan0() throws {
        XCTAssertTrue(GridRawTokens.gridColumnCount1000 > 0)
    }

    func testGridRawTokenGridColumnCount1000LessThanGridColumnCount1200() throws {
        XCTAssertLessThan(GridRawTokens.gridColumnCount1000, GridRawTokens.gridColumnCount1200)
    }

    func testNonEqualityForGridColumnCounts() throws {
        XCTAssertNotEqual(GridRawTokens.gridColumnCount100, GridRawTokens.gridColumnCount200)
        XCTAssertNotEqual(GridRawTokens.gridColumnCount100, GridRawTokens.gridColumnCount400)
        XCTAssertNotEqual(GridRawTokens.gridColumnCount100, GridRawTokens.gridColumnCount600)
        XCTAssertNotEqual(GridRawTokens.gridColumnCount100, GridRawTokens.gridColumnCount800)
        XCTAssertNotEqual(GridRawTokens.gridColumnCount100, GridRawTokens.gridColumnCount1000)
        XCTAssertNotEqual(GridRawTokens.gridColumnCount100, GridRawTokens.gridColumnCount1200)

        XCTAssertNotEqual(GridRawTokens.gridColumnCount200, GridRawTokens.gridColumnCount400)
        XCTAssertNotEqual(GridRawTokens.gridColumnCount200, GridRawTokens.gridColumnCount600)
        XCTAssertNotEqual(GridRawTokens.gridColumnCount200, GridRawTokens.gridColumnCount800)
        XCTAssertNotEqual(GridRawTokens.gridColumnCount200, GridRawTokens.gridColumnCount1000)
        XCTAssertNotEqual(GridRawTokens.gridColumnCount200, GridRawTokens.gridColumnCount1200)

        XCTAssertNotEqual(GridRawTokens.gridColumnCount400, GridRawTokens.gridColumnCount600)
        XCTAssertNotEqual(GridRawTokens.gridColumnCount400, GridRawTokens.gridColumnCount800)
        XCTAssertNotEqual(GridRawTokens.gridColumnCount400, GridRawTokens.gridColumnCount1000)
        XCTAssertNotEqual(GridRawTokens.gridColumnCount400, GridRawTokens.gridColumnCount1200)

        XCTAssertNotEqual(GridRawTokens.gridColumnCount600, GridRawTokens.gridColumnCount800)
        XCTAssertNotEqual(GridRawTokens.gridColumnCount600, GridRawTokens.gridColumnCount1000)
        XCTAssertNotEqual(GridRawTokens.gridColumnCount600, GridRawTokens.gridColumnCount1200)

        XCTAssertNotEqual(GridRawTokens.gridColumnCount800, GridRawTokens.gridColumnCount1000)
        XCTAssertNotEqual(GridRawTokens.gridColumnCount800, GridRawTokens.gridColumnCount1200)

        XCTAssertNotEqual(GridRawTokens.gridColumnCount1000, GridRawTokens.gridColumnCount1200)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_body_length

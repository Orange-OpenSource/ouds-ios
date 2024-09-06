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
import OUDSFoundations
import OUDSTokensRaw

// swiftlint:disable type_body_length

/// The aim of this tests class is to look for regressions in **elevation raw tokens**.
/// Because these values will be at least generated through an external tool, is it not mandatory and relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **elevation raw tokens**, there will be some unchanged things like relationships between tokens.
/// Thus this tests class just checks if such relationships are still here whatever the values at the end.
final class ElevationRawTokensTests: XCTestCase {

    // MARK: - Primitive token - Elevation - Z Index

    func testElevationZIndexRawTokenMinus9999LessThanZIndex0() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationZIndexMinus9999, ElevationRawTokens.elevationZIndex0)
    }

    func testElevationZIndexRawToken0LessThanZIndex1000() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex0, ElevationRawTokens.elevationZIndex1000)
    }

    func testElevationZIndexRawToken1000LessThanZIndex1010() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex1000, ElevationRawTokens.elevationZIndex1010)
    }

    func testElevationZIndexRawToken1010LessThanZIndex1020() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex1010, ElevationRawTokens.elevationZIndex1020)
    }

    func testElevationZIndexRawToken1020LessThanZIndex1030() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex1020, ElevationRawTokens.elevationZIndex1030)
    }

    func testElevationZIndexRawToken1030LessThanZIndex1035() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex1030, ElevationRawTokens.elevationZIndex1035)
    }

    func testElevationZIndexRawToken1035LessThanZIndex1038() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex1035, ElevationRawTokens.elevationZIndex1038)
    }

    func testElevationZIndexRawToken1038LessThanZIndex1040() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex1038, ElevationRawTokens.elevationZIndex1040)
    }

    func testElevationZIndexRawToken1040LessThanZIndex1045() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex1040, ElevationRawTokens.elevationZIndex1045)
    }

    func testElevationZIndexRawToken1045LessThanZIndex1050() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex1045, ElevationRawTokens.elevationZIndex1050)
    }

    func testElevationZIndexRawToken1050LessThanZIndex1060() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex1050, ElevationRawTokens.elevationZIndex1060)
    }

    func testElevationZIndexRawToken1060LessThanZIndex1070() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex1060, ElevationRawTokens.elevationZIndex1070)
    }

    func testElevationZIndexRawToken1070LessThanZIndex1080() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex1070, ElevationRawTokens.elevationZIndex1080)
    }

    func testElevationZIndexRawToken1080LessThanZIndex1090() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex1080, ElevationRawTokens.elevationZIndex1090)
    }

    // MARK: - Primitive token - Elevation - Y

    func testElevationYRawToken0LessThanY100() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationY0, ElevationRawTokens.elevationY100)
    }

    func testElevationYRawToken100LessThanY200() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationY100, ElevationRawTokens.elevationY200)
    }

    func testElevationYRawToken200LessThanY300() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationY200, ElevationRawTokens.elevationY300)
    }

    func testElevationYRawToken300LessThanY400() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationY300, ElevationRawTokens.elevationY400)
    }

    func testElevationYRawToken400LessThanY500() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationY400, ElevationRawTokens.elevationY500)
    }

    func testElevationYRawToken500LessThanY600() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationY500, ElevationRawTokens.elevationY600)
    }

    // MARK: - Primitive token - Elevation - Blur

    func testElevationBlurRawToken0LessThanBlur100() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationBlur0, ElevationRawTokens.elevationBlur100)
    }

    func testElevationBlurRawToken100LessThanBlur200() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationBlur100, ElevationRawTokens.elevationBlur200)
    }

    func testElevationBlurRawToken200LessThanBlur300() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationBlur200, ElevationRawTokens.elevationBlur300)
    }

    func testElevationBlurRawToken300LessThanBlur400() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationBlur300, ElevationRawTokens.elevationBlur400)
    }

    func testElevationBlurRawToken400LessThanBlur500() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationBlur400, ElevationRawTokens.elevationBlur500)
    }

    func testElevationBlurRawToken500LessThanBlur600() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationBlur500, ElevationRawTokens.elevationBlur600)
    }

    func testElevationBlurRawToken600LessThanBlur700() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationBlur600, ElevationRawTokens.elevationBlur700)
    }

    // MARK: - Primitive token - Elevation - Spread

    func testElevationSpreadMinus400LessThanMinus300() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationSpreadN400, ElevationRawTokens.elevationSpreadN300)
    }

    func testElevationSpreadMinus300LessThanMinus200() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationSpreadN300, ElevationRawTokens.elevationSpreadN200)
    }

    func testElevationSpreadMinus200LessThanMinus100() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationSpreadN200, ElevationRawTokens.elevationSpreadN100)
    }

    func testElevationSpreadMinus100LessThan0() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationSpreadN100, ElevationRawTokens.elevationSpread0)
    }

    func testElevationSpread0LessThan300() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationSpread0, ElevationRawTokens.elevationSpread300)
    }

    // MARK: - Primitive token - Elevation - Box Shadow

    func testElevationBoxShadowBottom_1_100ColorDarkerThan_1_200() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_1_100.color, ElevationRawTokens.elevationBoxShadowBottom_1_200.color)
    }

    func testElevationBoxShadowBottom_1_200ColorDarkerThan_1_300() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_1_200.color, ElevationRawTokens.elevationBoxShadowBottom_1_300.color)
    }

    func testElevationBoxShadowBottom_1_300ColorDarkerThan_1_400() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_1_300.color, ElevationRawTokens.elevationBoxShadowBottom_1_400.color)
    }

    func testElevationBoxShadowBottom_1_400ColorDarkerThan_1_500() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_1_400.color, ElevationRawTokens.elevationBoxShadowBottom_1_500.color)
    }

    func testElevationBoxShadowBottom_1_500ColorDarkerThan_1_600() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_1_500.color, ElevationRawTokens.elevationBoxShadowBottom_1_600.color)
    }

    func testElevationBoxShadowBottom_2_100ColorDarkerThan_2_200() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_2_100.color, ElevationRawTokens.elevationBoxShadowBottom_2_200.color)
    }

    func testElevationBoxShadowBottom_2_200ColorDarkerThan_2_300() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_2_200.color, ElevationRawTokens.elevationBoxShadowBottom_2_300.color)
    }

    func testElevationBoxShadowBottom_2_300ColorDarkerThan_2_400() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_2_300.color, ElevationRawTokens.elevationBoxShadowBottom_2_400.color)
    }

    func testElevationBoxShadowBottom_2_400ColorDarkerThan_2_500() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_2_400.color, ElevationRawTokens.elevationBoxShadowBottom_2_500.color)
    }

    func testElevationBoxShadowBottom_2_500ColorDarkerThan_2_600() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_2_500.color, ElevationRawTokens.elevationBoxShadowBottom_2_600.color)
    }

    func testElevationBoxShadowBottom_3_100ColorDarkerThan_3_200() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_3_100.color, ElevationRawTokens.elevationBoxShadowBottom_3_200.color)
    }

    func testElevationBoxShadowBottom_3_200ColorDarkerThan_3_300() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_3_200.color, ElevationRawTokens.elevationBoxShadowBottom_3_300.color)
    }

    func testElevationBoxShadowBottom_3_300ColorDarkerThan_3_400() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_3_300.color, ElevationRawTokens.elevationBoxShadowBottom_3_400.color)
    }

    func testElevationBoxShadowBottom_3_400ColorDarkerThan_3_500() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_3_400.color, ElevationRawTokens.elevationBoxShadowBottom_3_500.color)
    }

    func testElevationBoxShadowBottom_3_500ColorDarkerThan_3_600() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_3_500.color, ElevationRawTokens.elevationBoxShadowBottom_3_600.color)
    }

    func testElevationBoxShadowBottom_4_100ColorDarkerThan_4_200() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_4_100.color, ElevationRawTokens.elevationBoxShadowBottom_4_200.color)
    }

    func testElevationBoxShadowBottom_4_200ColorDarkerThan_4_300() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_4_200.color, ElevationRawTokens.elevationBoxShadowBottom_4_300.color)
    }

    func testElevationBoxShadowBottom_4_300ColorDarkerThan_4_400() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_4_300.color, ElevationRawTokens.elevationBoxShadowBottom_4_400.color)
    }

    func testElevationBoxShadowBottom_4_400ColorDarkerThan_4_500() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_4_400.color, ElevationRawTokens.elevationBoxShadowBottom_4_500.color)
    }

    func testElevationBoxShadowBottom_4_500ColorDarkerThan_4_600() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_4_500.color, ElevationRawTokens.elevationBoxShadowBottom_4_600.color)
    }

    func testElevationBoxShadowBottom_5_100ColorDarkerThan_5_200() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_5_100.color, ElevationRawTokens.elevationBoxShadowBottom_5_200.color)
    }

    func testElevationBoxShadowBottom_5_200ColorDarkerThan_5_300() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_5_200.color, ElevationRawTokens.elevationBoxShadowBottom_5_300.color)
    }

    func testElevationBoxShadowBottom_5_300ColorDarkerThan_5_400() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_5_300.color, ElevationRawTokens.elevationBoxShadowBottom_5_400.color)
    }

    func testElevationBoxShadowBottom_5_400ColorDarkerThan_5_500() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_5_400.color, ElevationRawTokens.elevationBoxShadowBottom_5_500.color)
    }

    func testElevationBoxShadowBottom_5_500ColorDarkerThan_5_600() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_5_500.color, ElevationRawTokens.elevationBoxShadowBottom_5_600.color)
    }

    func testElevationBoxShadowBottom_5_100ColorDarkerThan_6_200() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_5_100.color, ElevationRawTokens.elevationBoxShadowBottom_6_200.color)
    }

    func testElevationBoxShadowBottom_5_200ColorDarkerThan_6_300() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_5_200.color, ElevationRawTokens.elevationBoxShadowBottom_6_300.color)
    }

    func testElevationBoxShadowBottom_5_300ColorDarkerThan_6_400() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_5_300.color, ElevationRawTokens.elevationBoxShadowBottom_6_400.color)
    }

    func testElevationBoxShadowBottom_5_400ColorDarkerThan_6_500() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_5_400.color, ElevationRawTokens.elevationBoxShadowBottom_6_500.color)
    }

    func testElevationBoxShadowBottom_5_500ColorDarkerThan_6_600() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBoxShadowBottom_5_500.color, ElevationRawTokens.elevationBoxShadowBottom_6_600.color)
    }

    func testBoxShadowBottom_1_100_LowerThan_2_100() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_1_100, ElevationRawTokens.elevationBoxShadowBottom_2_100)
    }

    func testBoxShadowBottom_2_100_LowerThan_3_100() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_2_100, ElevationRawTokens.elevationBoxShadowBottom_3_100)
    }

    func testBoxShadowBottom_3_100_LowerThan_4_100() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_3_100, ElevationRawTokens.elevationBoxShadowBottom_4_100)
    }

    func testBoxShadowBottom_4_100_LowerThan_5_100() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_4_100, ElevationRawTokens.elevationBoxShadowBottom_5_100)
    }

    func testBoxShadowBottom_5_100_LowerThan_6_100() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_5_100, ElevationRawTokens.elevationBoxShadowBottom_6_100)
    }

    func testBoxShadowBottom_1_200_LowerThan_2_200() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_1_200, ElevationRawTokens.elevationBoxShadowBottom_2_200)
    }

    func testBoxShadowBottom_2_200_LowerThan_3_200() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_2_200, ElevationRawTokens.elevationBoxShadowBottom_3_200)
    }

    func testBoxShadowBottom_3_200_LowerThan_4_200() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_3_200, ElevationRawTokens.elevationBoxShadowBottom_4_200)
    }

    func testBoxShadowBottom_4_200_LowerThan_5_200() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_4_200, ElevationRawTokens.elevationBoxShadowBottom_5_200)
    }

    func testBoxShadowBottom_5_200_LowerThan_6_200() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_5_200, ElevationRawTokens.elevationBoxShadowBottom_6_200)
    }

    func testBoxShadowBottom_1_300_LowerThan_2_300() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_1_300, ElevationRawTokens.elevationBoxShadowBottom_2_300)
    }

    func testBoxShadowBottom_2_300_LowerThan_3_300() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_2_300, ElevationRawTokens.elevationBoxShadowBottom_3_300)
    }

    func testBoxShadowBottom_3_300_LowerThan_4_300() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_3_300, ElevationRawTokens.elevationBoxShadowBottom_4_300)
    }

    func testBoxShadowBottom_4_300_LowerThan_5_300() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_4_300, ElevationRawTokens.elevationBoxShadowBottom_5_300)
    }

    func testBoxShadowBottom_5_300_LowerThan_6_300() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_5_300, ElevationRawTokens.elevationBoxShadowBottom_6_300)
    }

    func testBoxShadowBottom_1_400_LowerThan_2_400() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_1_400, ElevationRawTokens.elevationBoxShadowBottom_2_400)
    }

    func testBoxShadowBottom_2_400_LowerThan_3_400() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_2_400, ElevationRawTokens.elevationBoxShadowBottom_3_400)
    }

    func testBoxShadowBottom_3_400_LowerThan_4_400() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_3_400, ElevationRawTokens.elevationBoxShadowBottom_4_400)
    }

    func testBoxShadowBottom_4_400_LowerThan_5_400() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_4_400, ElevationRawTokens.elevationBoxShadowBottom_5_400)
    }

    func testBoxShadowBottom_5_400_LowerThan_6_400() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_5_400, ElevationRawTokens.elevationBoxShadowBottom_6_400)
    }

    func testBoxShadowBottom_1_500_LowerThan_2_500() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_1_500, ElevationRawTokens.elevationBoxShadowBottom_2_500)
    }

    func testBoxShadowBottom_2_500_LowerThan_3_500() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_2_500, ElevationRawTokens.elevationBoxShadowBottom_3_500)
    }

    func testBoxShadowBottom_3_500_LowerThan_4_500() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_3_500, ElevationRawTokens.elevationBoxShadowBottom_4_500)
    }

    func testBoxShadowBottom_4_500_LowerThan_5_500() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_4_500, ElevationRawTokens.elevationBoxShadowBottom_5_500)
    }

    func testBoxShadowBottom_5_500_LowerThan_6_500() throws {
        assertBoxShadowLowerThan(ElevationRawTokens.elevationBoxShadowBottom_5_500, ElevationRawTokens.elevationBoxShadowBottom_6_500)
    }

    // MARK: - Helpers

    func assertBoxShadowLowerThan(_ left: ElevationBoxShadowRawToken, _ right: ElevationBoxShadowRawToken) {
        XCTAssertLessThanOrEqual(left.y, right.y)
        XCTAssertLessThanOrEqual(left.blur, right.blur)
        XCTAssertGreaterThanOrEqual(left.spread, right.spread)
    }
}

// swiftlint:enable type_body_length

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

import OUDSFoundations
import OUDSTokensRaw
import SwiftUI
import XCTest

// swiftlint:disable required_deinit

/// The aim of this tests class is to look for regressions in **elevation raw tokens**.
/// Because these values will be at least generated through an external tool, is it not mandatory and relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **elevation raw tokens**, there will be some unchanged things like relationships between tokens.
/// Thus this tests class just checks if such relationships are still here whatever the values at the end.
final class ElevationRawTokensTests: XCTestCase {

    // MARK: - Computed properties

    func testRadiusComputation() throws {
        // Given
        var token = ElevationCompositeRawToken(x: 0, y: 0, blur: 0, color: ColorRawTokens.colorTransparentBlack500)
        // When
        var radius = token.radius
        // Then
        XCTAssertTrue(radius == 0)

        // Given
        token = ElevationCompositeRawToken(x: 0, y: 2, blur: 1, color: ColorRawTokens.colorTransparentBlack400)
        // When
        radius = token.radius
        // Then
        XCTAssertTrue(radius == 0.5)

        // Given
        token = ElevationCompositeRawToken(x: 0, y: 3, blur: 2, color: ColorRawTokens.colorTransparentBlack300)
        // When
        radius = token.radius
        // Then
        XCTAssertTrue(radius == 1)

        // Given
        token = ElevationCompositeRawToken(x: 0, y: 4, blur: 4, color: ColorRawTokens.colorTransparentBlack500)
        // When
        radius = token.radius
        // Then
        XCTAssertTrue(radius == 2)

        // Given
        token = ElevationCompositeRawToken(x: 0, y: 12, blur: 12, color: ColorRawTokens.colorTransparentBlack300)
        // When
        radius = token.radius
        // Then
        XCTAssertTrue(radius == 6)
    }

    // MARK: - Primitive token - Elevation - X

    func testElevationXRawToken0LessThanX200() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationX0, ElevationRawTokens.elevationX200)
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

    // MARK: - Primitive token - Elevation - Box Shadow

    func testElevationBottom_1_100ColorDarkerThan_1_200() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_1_100.color, ElevationRawTokens.elevationBottom_1_200.color)
    }

    func testElevationBottom_1_200ColorDarkerThan_1_300() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_1_200.color, ElevationRawTokens.elevationBottom_1_300.color)
    }

    func testElevationBottom_1_300ColorDarkerThan_1_400() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_1_300.color, ElevationRawTokens.elevationBottom_1_400.color)
    }

    func testElevationBottom_1_400ColorDarkerThan_1_500() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_1_400.color, ElevationRawTokens.elevationBottom_1_500.color)
    }

    func testElevationBottom_1_500ColorDarkerThan_1_600() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_1_500.color, ElevationRawTokens.elevationBottom_1_600.color)
    }

    func testElevationBottom_2_100ColorDarkerThan_2_200() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_2_100.color, ElevationRawTokens.elevationBottom_2_200.color)
    }

    func testElevationBottom_2_200ColorDarkerThan_2_300() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_2_200.color, ElevationRawTokens.elevationBottom_2_300.color)
    }

    func testElevationBottom_2_300ColorDarkerThan_2_400() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_2_300.color, ElevationRawTokens.elevationBottom_2_400.color)
    }

    func testElevationBottom_2_400ColorDarkerThan_2_500() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_2_400.color, ElevationRawTokens.elevationBottom_2_500.color)
    }

    func testElevationBottom_2_500ColorDarkerThan_2_600() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_2_500.color, ElevationRawTokens.elevationBottom_2_600.color)
    }

    func testElevationBottom_3_100ColorDarkerThan_3_200() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_3_100.color, ElevationRawTokens.elevationBottom_3_200.color)
    }

    func testElevationBottom_3_200ColorDarkerThan_3_300() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_3_200.color, ElevationRawTokens.elevationBottom_3_300.color)
    }

    func testElevationBottom_3_300ColorDarkerThan_3_400() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_3_300.color, ElevationRawTokens.elevationBottom_3_400.color)
    }

    func testElevationBottom_3_400ColorDarkerThan_3_500() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_3_400.color, ElevationRawTokens.elevationBottom_3_500.color)
    }

    func testElevationBottom_3_500ColorDarkerThan_3_600() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_3_500.color, ElevationRawTokens.elevationBottom_3_600.color)
    }

    func testElevationBottom_4_100ColorDarkerThan_4_200() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_4_100.color, ElevationRawTokens.elevationBottom_4_200.color)
    }

    func testElevationBottom_4_200ColorDarkerThan_4_300() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_4_200.color, ElevationRawTokens.elevationBottom_4_300.color)
    }

    func testElevationBottom_4_300ColorDarkerThan_4_400() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_4_300.color, ElevationRawTokens.elevationBottom_4_400.color)
    }

    func testElevationBottom_4_400ColorDarkerThan_4_500() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_4_400.color, ElevationRawTokens.elevationBottom_4_500.color)
    }

    func testElevationBottom_4_500ColorDarkerThan_4_600() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_4_500.color, ElevationRawTokens.elevationBottom_4_600.color)
    }

    func testElevationBottom_5_100ColorDarkerThan_5_200() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_5_100.color, ElevationRawTokens.elevationBottom_5_200.color)
    }

    func testElevationBottom_5_200ColorDarkerThan_5_300() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_5_200.color, ElevationRawTokens.elevationBottom_5_300.color)
    }

    func testElevationBottom_5_300ColorDarkerThan_5_400() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_5_300.color, ElevationRawTokens.elevationBottom_5_400.color)
    }

    func testElevationBottom_5_400ColorDarkerThan_5_500() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_5_400.color, ElevationRawTokens.elevationBottom_5_500.color)
    }

    func testElevationBottom_5_500ColorDarkerThan_5_600() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_5_500.color, ElevationRawTokens.elevationBottom_5_600.color)
    }

    func testElevationBottom_5_100ColorDarkerThan_6_200() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_5_100.color, ElevationRawTokens.elevationBottom_6_200.color)
    }

    func testElevationBottom_5_200ColorDarkerThan_6_300() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_5_200.color, ElevationRawTokens.elevationBottom_6_300.color)
    }

    func testElevationBottom_5_300ColorDarkerThan_6_400() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_5_300.color, ElevationRawTokens.elevationBottom_6_400.color)
    }

    func testElevationBottom_5_400ColorDarkerThan_6_500() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_5_400.color, ElevationRawTokens.elevationBottom_6_500.color)
    }

    func testElevationBottom_5_500ColorDarkerThan_6_600() throws {
        XCTAssertColorDarkerThan(ElevationRawTokens.elevationBottom_5_500.color, ElevationRawTokens.elevationBottom_6_600.color)
    }

    func testCompositeBottom_1_100_LowerThan_2_100() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_1_100, ElevationRawTokens.elevationBottom_2_100)
    }

    func testCompositeBottom_2_100_LowerThan_3_100() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_2_100, ElevationRawTokens.elevationBottom_3_100)
    }

    func testCompositeBottom_3_100_LowerThan_4_100() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_3_100, ElevationRawTokens.elevationBottom_4_100)
    }

    func testCompositeBottom_4_100_LowerThan_5_100() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_4_100, ElevationRawTokens.elevationBottom_5_100)
    }

    func testCompositeBottom_5_100_LowerThan_6_100() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_5_100, ElevationRawTokens.elevationBottom_6_100)
    }

    func testCompositeBottom_1_200_LowerThan_2_200() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_1_200, ElevationRawTokens.elevationBottom_2_200)
    }

    func testCompositeBottom_2_200_LowerThan_3_200() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_2_200, ElevationRawTokens.elevationBottom_3_200)
    }

    func testCompositeBottom_3_200_LowerThan_4_200() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_3_200, ElevationRawTokens.elevationBottom_4_200)
    }

    func testCompositeBottom_4_200_LowerThan_5_200() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_4_200, ElevationRawTokens.elevationBottom_5_200)
    }

    func testCompositeBottom_5_200_LowerThan_6_200() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_5_200, ElevationRawTokens.elevationBottom_6_200)
    }

    func testCompositeBottom_1_300_LowerThan_2_300() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_1_300, ElevationRawTokens.elevationBottom_2_300)
    }

    func testCompositeBottom_2_300_LowerThan_3_300() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_2_300, ElevationRawTokens.elevationBottom_3_300)
    }

    func testCompositeBottom_3_300_LowerThan_4_300() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_3_300, ElevationRawTokens.elevationBottom_4_300)
    }

    func testCompositeBottom_4_300_LowerThan_5_300() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_4_300, ElevationRawTokens.elevationBottom_5_300)
    }

    func testCompositeBottom_5_300_LowerThan_6_300() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_5_300, ElevationRawTokens.elevationBottom_6_300)
    }

    func testCompositeBottom_1_400_LowerThan_2_400() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_1_400, ElevationRawTokens.elevationBottom_2_400)
    }

    func testCompositeBottom_2_400_LowerThan_3_400() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_2_400, ElevationRawTokens.elevationBottom_3_400)
    }

    func testCompositeBottom_3_400_LowerThan_4_400() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_3_400, ElevationRawTokens.elevationBottom_4_400)
    }

    func testCompositeBottom_4_400_LowerThan_5_400() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_4_400, ElevationRawTokens.elevationBottom_5_400)
    }

    func testCompositeBottom_5_400_LowerThan_6_400() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_5_400, ElevationRawTokens.elevationBottom_6_400)
    }

    func testCompositeBottom_1_500_LowerThan_2_500() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_1_500, ElevationRawTokens.elevationBottom_2_500)
    }

    func testCompositeBottom_2_500_LowerThan_3_500() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_2_500, ElevationRawTokens.elevationBottom_3_500)
    }

    func testCompositeBottom_3_500_LowerThan_4_500() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_3_500, ElevationRawTokens.elevationBottom_4_500)
    }

    func testCompositeBottom_4_500_LowerThan_5_500() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_4_500, ElevationRawTokens.elevationBottom_5_500)
    }

    func testCompositeBottom_5_500_LowerThan_6_500() throws {
        assertCompositeLowerThan(ElevationRawTokens.elevationBottom_5_500, ElevationRawTokens.elevationBottom_6_500)
    }

    // MARK: - Helpers

    func assertCompositeLowerThan(_ left: ElevationCompositeRawToken, _ right: ElevationCompositeRawToken) {
        XCTAssertLessThanOrEqual(left.y, right.y)
        XCTAssertLessThanOrEqual(left.radius, right.radius)
    }
}

// swiftlint:enable required_deinit

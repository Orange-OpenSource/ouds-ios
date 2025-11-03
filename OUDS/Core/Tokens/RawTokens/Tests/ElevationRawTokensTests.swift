//
// Software Name: OUDSThemesContract iOS
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
import SwiftUI
import Testing
import TestsUtils

// swiftlint:disable type_body_length
// swiftlint:disable function_body_length
// swiftlint:disable file_length

/// The aim of this tests class is to look for regressions in **elevation raw tokens**.
///
/// Because these values will be at least generated through an external tool, is it not mandatory and relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **elevation raw tokens**, there will be some unchanged things like relationships between tokens.
/// Thus this tests class just checks if such relationships are still here whatever the values at the end.
///
/// Here are some rules to follow:
/// - elevation blur must not be negative value
/// - elevation Y must not be negative value
/// - blur values must be all different
/// - Y values must be all different
/// - the "bigger" the blur token is, the higher the value is
/// - the "bigger" the Y token is, the higher the value is
/// - all composites must be different
/// - elevations in a same "category" must have darker and darker colors
struct ElevationRawTokensTests {

    // MARK: - Computed properties

    @Test func radiusComputation() throws {
        // Given
        var token = ElevationCompositeRawToken(x: 0, y: 0, blur: 0, color: ColorRawTokens.opacityBlack200)
        // When
        var radius = token.radius
        // Then
        #expect(radius == 0)

        // Given
        token = ElevationCompositeRawToken(x: 0, y: 2, blur: 1, color: ColorRawTokens.opacityBlack400)
        // When
        radius = token.radius
        // Then
        #expect(radius == 0.5)

        // Given
        token = ElevationCompositeRawToken(x: 0, y: 3, blur: 2, color: ColorRawTokens.opacityBlack160)
        // When
        radius = token.radius
        // Then
        #expect(radius == 1)

        // Given
        token = ElevationCompositeRawToken(x: 0, y: 4, blur: 4, color: ColorRawTokens.opacityBlack200)
        // When
        radius = token.radius
        // Then
        #expect(radius == 2)

        // Given
        token = ElevationCompositeRawToken(x: 0, y: 12, blur: 12, color: ColorRawTokens.opacityBlack160)
        // When
        radius = token.radius
        // Then
        #expect(radius == 6)
    }

    // MARK: - Primitive token - Elevation - Y

    @Test func elevationYRawToken100NotNegativeValue() throws {
        #expect(ElevationRawTokens.y100 >= 0)
    }

    @Test func elevationYRawToken0LessThanY100() throws {
        #expect(ElevationRawTokens.y0 < ElevationRawTokens.y100)
    }

    @Test func elevationYRawToken200NotNegativeValue() throws {
        #expect(ElevationRawTokens.y200 >= 0)
    }

    @Test func elevationYRawToken100LessThanY200() throws {
        #expect(ElevationRawTokens.y100 < ElevationRawTokens.y200)
    }

    @Test func elevationYRawToken200LessThanY300() throws {
        #expect(ElevationRawTokens.y200 < ElevationRawTokens.y300)
    }

    @Test func elevationYRawToken300NotNegativeValue() throws {
        #expect(ElevationRawTokens.y300 >= 0)
    }

    @Test func elevationYRawToken300LessThanY400() throws {
        #expect(ElevationRawTokens.y300 < ElevationRawTokens.y400)
    }

    @Test func elevationYRawToken400NotNegativeValue() throws {
        #expect(ElevationRawTokens.y400 >= 0)
    }

    @Test func elevationYRawToken400LessThanY500() throws {
        #expect(ElevationRawTokens.y400 < ElevationRawTokens.y500)
    }

    @Test func elevationYRawToken500NotNegativeValue() throws {
        #expect(ElevationRawTokens.y500 >= 0)
    }

    @Test func elevationYRawToken500LessThanY600() throws {
        #expect(ElevationRawTokens.y500 < ElevationRawTokens.y600)
    }

    @Test func elevationYRawToken600NotNegativeValue() throws {
        #expect(ElevationRawTokens.y600 >= 0)
    }

    @Test func nonEqualityForElevationY() throws {
        #expect(ElevationRawTokens.y100 != ElevationRawTokens.y200)
        #expect(ElevationRawTokens.y100 != ElevationRawTokens.y300)
        #expect(ElevationRawTokens.y100 != ElevationRawTokens.y400)
        #expect(ElevationRawTokens.y100 != ElevationRawTokens.y500)
        #expect(ElevationRawTokens.y100 != ElevationRawTokens.y600)

        #expect(ElevationRawTokens.y200 != ElevationRawTokens.y300)
        #expect(ElevationRawTokens.y200 != ElevationRawTokens.y400)
        #expect(ElevationRawTokens.y200 != ElevationRawTokens.y500)
        #expect(ElevationRawTokens.y200 != ElevationRawTokens.y600)

        #expect(ElevationRawTokens.y300 != ElevationRawTokens.y400)
        #expect(ElevationRawTokens.y300 != ElevationRawTokens.y500)
        #expect(ElevationRawTokens.y300 != ElevationRawTokens.y600)

        #expect(ElevationRawTokens.y400 != ElevationRawTokens.y500)
        #expect(ElevationRawTokens.y400 != ElevationRawTokens.y600)

        #expect(ElevationRawTokens.y500 != ElevationRawTokens.y600)
    }

    // MARK: - Primitive token - Elevation - Blur

    @Test func elevationBlurRawToken0NotNegativeValue() throws {
        #expect(ElevationRawTokens.blur0 >= 0)
    }

    @Test func elevationBlurRawToken0LessThanBlur100() throws {
        #expect(ElevationRawTokens.blur0 < ElevationRawTokens.blur100)
    }

    @Test func elevationBlurRawToken100NotNegativeValue() throws {
        #expect(ElevationRawTokens.blur100 >= 0)
    }

    @Test func elevationBlurRawToken100LessThanBlur200() throws {
        #expect(ElevationRawTokens.blur100 < ElevationRawTokens.blur200)
    }

    @Test func elevationBlurRawToken200NotNegativeValue() throws {
        #expect(ElevationRawTokens.blur200 >= 0)
    }

    @Test func elevationBlurRawToken200LessThanBlur300() throws {
        #expect(ElevationRawTokens.blur200 < ElevationRawTokens.blur300)
    }

    @Test func elevationBlurRawToken300NotNegativeValue() throws {
        #expect(ElevationRawTokens.blur300 >= 0)
    }

    @Test func elevationBlurRawToken300LessThanBlur400() throws {
        #expect(ElevationRawTokens.blur300 < ElevationRawTokens.blur400)
    }

    @Test func elevationBlurRawToken400NotNegativeValue() throws {
        #expect(ElevationRawTokens.blur400 >= 0)
    }

    @Test func elevationBlurRawToken400LessThanBlur500() throws {
        #expect(ElevationRawTokens.blur400 < ElevationRawTokens.blur500)
    }

    @Test func elevationBlurRawToken500NotNegativeValue() throws {
        #expect(ElevationRawTokens.blur500 >= 0)
    }

    @Test func elevationBlurRawToken500LessThanBlur600() throws {
        #expect(ElevationRawTokens.blur500 < ElevationRawTokens.blur600)
    }

    @Test func elevationBlurRawToken600NotNegativeValue() throws {
        #expect(ElevationRawTokens.blur600 >= 0)
    }

    @Test func elevationBlurRawToken600LessThanBlur700() throws {
        #expect(ElevationRawTokens.blur600 < ElevationRawTokens.blur700)
    }

    @Test func elevationBlurRawToken700NotNegativeValue() throws {
        #expect(ElevationRawTokens.blur700 >= 0)
    }

    @Test func nonEqualityForElevationBlurs() throws {
        #expect(ElevationRawTokens.blur0 != ElevationRawTokens.blur100)
        #expect(ElevationRawTokens.blur0 != ElevationRawTokens.blur200)
        #expect(ElevationRawTokens.blur0 != ElevationRawTokens.blur300)
        #expect(ElevationRawTokens.blur0 != ElevationRawTokens.blur400)
        #expect(ElevationRawTokens.blur0 != ElevationRawTokens.blur500)
        #expect(ElevationRawTokens.blur0 != ElevationRawTokens.blur600)
        #expect(ElevationRawTokens.blur0 != ElevationRawTokens.blur700)

        #expect(ElevationRawTokens.blur100 != ElevationRawTokens.blur200)
        #expect(ElevationRawTokens.blur100 != ElevationRawTokens.blur300)
        #expect(ElevationRawTokens.blur100 != ElevationRawTokens.blur400)
        #expect(ElevationRawTokens.blur100 != ElevationRawTokens.blur500)
        #expect(ElevationRawTokens.blur100 != ElevationRawTokens.blur600)
        #expect(ElevationRawTokens.blur100 != ElevationRawTokens.blur700)

        #expect(ElevationRawTokens.blur200 != ElevationRawTokens.blur300)
        #expect(ElevationRawTokens.blur200 != ElevationRawTokens.blur400)
        #expect(ElevationRawTokens.blur200 != ElevationRawTokens.blur500)
        #expect(ElevationRawTokens.blur200 != ElevationRawTokens.blur600)
        #expect(ElevationRawTokens.blur200 != ElevationRawTokens.blur700)

        #expect(ElevationRawTokens.blur300 != ElevationRawTokens.blur400)
        #expect(ElevationRawTokens.blur300 != ElevationRawTokens.blur500)
        #expect(ElevationRawTokens.blur300 != ElevationRawTokens.blur600)
        #expect(ElevationRawTokens.blur300 != ElevationRawTokens.blur700)

        #expect(ElevationRawTokens.blur400 != ElevationRawTokens.blur500)
        #expect(ElevationRawTokens.blur400 != ElevationRawTokens.blur600)
        #expect(ElevationRawTokens.blur400 != ElevationRawTokens.blur700)

        #expect(ElevationRawTokens.blur500 != ElevationRawTokens.blur600)
        #expect(ElevationRawTokens.blur500 != ElevationRawTokens.blur700)

        #expect(ElevationRawTokens.blur600 != ElevationRawTokens.blur700)
    }

    // MARK: - Primitive token - Elevation - Box Shadow

    @Test func elevationBottom_1_100ColorDarkerThan_1_200() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_1_100.color, ElevationRawTokens.bottom_1_200.color)
    }

    @Test func elevationBottom_1_200ColorDarkerThan_1_300() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_1_200.color, ElevationRawTokens.bottom_1_300.color)
    }

    @Test func elevationBottom_1_300ColorDarkerThan_1_400() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_1_300.color, ElevationRawTokens.bottom_1_400.color)
    }

    @Test func elevationBottom_1_400ColorDarkerThan_1_500() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_1_400.color, ElevationRawTokens.bottom_1_500.color)
    }

    @Test func elevationBottom_1_500ColorDarkerThan_1_600() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_1_500.color, ElevationRawTokens.bottom_1_600.color)
    }

    @Test func elevationBottom_2_100ColorDarkerThan_2_200() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_2_100.color, ElevationRawTokens.bottom_2_200.color)
    }

    @Test func elevationBottom_2_200ColorDarkerThan_2_300() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_2_200.color, ElevationRawTokens.bottom_2_300.color)
    }

    @Test func elevationBottom_2_300ColorDarkerThan_2_400() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_2_300.color, ElevationRawTokens.bottom_2_400.color)
    }

    @Test func elevationBottom_2_400ColorDarkerThan_2_500() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_2_400.color, ElevationRawTokens.bottom_2_500.color)
    }

    @Test func elevationBottom_2_500ColorDarkerThan_2_600() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_2_500.color, ElevationRawTokens.bottom_2_600.color)
    }

    @Test func elevationBottom_3_100ColorDarkerThan_3_200() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_3_100.color, ElevationRawTokens.bottom_3_200.color)
    }

    @Test func elevationBottom_3_200ColorDarkerThan_3_300() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_3_200.color, ElevationRawTokens.bottom_3_300.color)
    }

    @Test func elevationBottom_3_300ColorDarkerThan_3_400() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_3_300.color, ElevationRawTokens.bottom_3_400.color)
    }

    @Test func elevationBottom_3_400ColorDarkerThan_3_500() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_3_400.color, ElevationRawTokens.bottom_3_500.color)
    }

    @Test func elevationBottom_3_500ColorDarkerThan_3_600() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_3_500.color, ElevationRawTokens.bottom_3_600.color)
    }

    @Test func elevationBottom_4_100ColorDarkerThan_4_200() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_4_100.color, ElevationRawTokens.bottom_4_200.color)
    }

    @Test func elevationBottom_4_200ColorDarkerThan_4_300() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_4_200.color, ElevationRawTokens.bottom_4_300.color)
    }

    @Test func elevationBottom_4_300ColorDarkerThan_4_400() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_4_300.color, ElevationRawTokens.bottom_4_400.color)
    }

    @Test func elevationBottom_4_400ColorDarkerThan_4_500() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_4_400.color, ElevationRawTokens.bottom_4_500.color)
    }

    @Test func elevationBottom_4_500ColorDarkerThan_4_600() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_4_500.color, ElevationRawTokens.bottom_4_600.color)
    }

    @Test func elevationBottom_5_100ColorDarkerThan_5_200() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_5_100.color, ElevationRawTokens.bottom_5_200.color)
    }

    @Test func elevationBottom_5_200ColorDarkerThan_5_300() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_5_200.color, ElevationRawTokens.bottom_5_300.color)
    }

    @Test func elevationBottom_5_300ColorDarkerThan_5_400() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_5_300.color, ElevationRawTokens.bottom_5_400.color)
    }

    @Test func elevationBottom_5_400ColorDarkerThan_5_500() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_5_400.color, ElevationRawTokens.bottom_5_500.color)
    }

    @Test func elevationBottom_5_500ColorDarkerThan_5_600() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_5_500.color, ElevationRawTokens.bottom_5_600.color)
    }

    @Test func elevationBottom_5_100ColorDarkerThan_6_200() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_5_100.color, ElevationRawTokens.bottom_6_200.color)
    }

    @Test func elevationBottom_5_200ColorDarkerThan_6_300() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_5_200.color, ElevationRawTokens.bottom_6_300.color)
    }

    @Test func elevationBottom_5_300ColorDarkerThan_6_400() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_5_300.color, ElevationRawTokens.bottom_6_400.color)
    }

    @Test func elevationBottom_5_400ColorDarkerThan_6_500() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_5_400.color, ElevationRawTokens.bottom_6_500.color)
    }

    @Test func elevationBottom_5_500ColorDarkerThan_6_600() throws {
        TestsUtils.assertColorDarkerThan(ElevationRawTokens.bottom_5_500.color, ElevationRawTokens.bottom_6_600.color)
    }

    @Test func compositeBottom_1_100_LowerThan_2_100() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_1_100, ElevationRawTokens.bottom_2_100)
    }

    @Test func compositeBottom_2_100_LowerThan_3_100() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_2_100, ElevationRawTokens.bottom_3_100)
    }

    @Test func compositeBottom_3_100_LowerThan_4_100() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_3_100, ElevationRawTokens.bottom_4_100)
    }

    @Test func compositeBottom_4_100_LowerThan_5_100() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_4_100, ElevationRawTokens.bottom_5_100)
    }

    @Test func compositeBottom_5_100_LowerThan_6_100() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_5_100, ElevationRawTokens.bottom_6_100)
    }

    @Test func compositeBottom_1_200_LowerThan_2_200() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_1_200, ElevationRawTokens.bottom_2_200)
    }

    @Test func compositeBottom_2_200_LowerThan_3_200() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_2_200, ElevationRawTokens.bottom_3_200)
    }

    @Test func compositeBottom_3_200_LowerThan_4_200() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_3_200, ElevationRawTokens.bottom_4_200)
    }

    @Test func compositeBottom_4_200_LowerThan_5_200() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_4_200, ElevationRawTokens.bottom_5_200)
    }

    @Test func compositeBottom_5_200_LowerThan_6_200() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_5_200, ElevationRawTokens.bottom_6_200)
    }

    @Test func compositeBottom_1_300_LowerThan_2_300() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_1_300, ElevationRawTokens.bottom_2_300)
    }

    @Test func compositeBottom_2_300_LowerThan_3_300() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_2_300, ElevationRawTokens.bottom_3_300)
    }

    @Test func compositeBottom_3_300_LowerThan_4_300() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_3_300, ElevationRawTokens.bottom_4_300)
    }

    @Test func compositeBottom_4_300_LowerThan_5_300() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_4_300, ElevationRawTokens.bottom_5_300)
    }

    @Test func compositeBottom_5_300_LowerThan_6_300() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_5_300, ElevationRawTokens.bottom_6_300)
    }

    @Test func compositeBottom_1_400_LowerThan_2_400() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_1_400, ElevationRawTokens.bottom_2_400)
    }

    @Test func compositeBottom_2_400_LowerThan_3_400() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_2_400, ElevationRawTokens.bottom_3_400)
    }

    @Test func compositeBottom_3_400_LowerThan_4_400() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_3_400, ElevationRawTokens.bottom_4_400)
    }

    @Test func compositeBottom_4_400_LowerThan_5_400() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_4_400, ElevationRawTokens.bottom_5_400)
    }

    @Test func compositeBottom_5_400_LowerThan_6_400() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_5_400, ElevationRawTokens.bottom_6_400)
    }

    @Test func compositeBottom_1_500_LowerThan_2_500() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_1_500, ElevationRawTokens.bottom_2_500)
    }

    @Test func compositeBottom_2_500_LowerThan_3_500() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_2_500, ElevationRawTokens.bottom_3_500)
    }

    @Test func compositeBottom_3_500_LowerThan_4_500() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_3_500, ElevationRawTokens.bottom_4_500)
    }

    @Test func compositeBottom_4_500_LowerThan_5_500() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_4_500, ElevationRawTokens.bottom_5_500)
    }

    @Test func compositeBottom_5_500_LowerThan_6_500() throws {
        assertCompositeLowerThan(ElevationRawTokens.bottom_5_500, ElevationRawTokens.bottom_6_500)
    }

    @Test func nonEqualityForElevationComposites() throws {
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_1_100)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_1_200)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_1_300)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_1_400)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_1_500)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_1_600)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_2_100)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_2_200)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_2_300)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_2_400)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_2_500)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_2_600)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_3_100)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_3_200)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_3_300)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_3_400)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_3_500)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_3_600)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_4_100)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_4_200)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_4_300)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_4_400)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_4_500)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_4_600)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_0 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_1_200)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_1_300)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_1_400)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_1_500)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_1_600)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_2_100)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_2_200)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_2_300)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_2_400)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_2_500)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_2_600)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_3_100)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_3_200)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_3_300)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_3_400)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_3_500)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_3_600)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_4_100)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_4_200)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_4_300)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_4_400)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_4_500)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_4_600)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_1_100 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_1_300)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_1_400)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_1_500)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_1_600)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_2_100)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_2_200)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_2_300)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_2_400)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_2_500)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_2_600)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_3_100)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_3_200)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_3_300)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_3_400)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_3_500)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_3_600)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_4_100)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_4_200)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_4_300)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_4_400)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_4_500)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_4_600)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_1_200 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_1_400)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_1_500)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_1_600)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_2_100)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_2_200)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_2_300)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_2_400)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_2_500)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_2_600)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_3_100)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_3_200)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_3_300)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_3_400)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_3_500)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_3_600)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_4_100)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_4_200)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_4_300)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_4_400)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_4_500)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_4_600)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_1_300 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_1_500)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_1_600)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_2_100)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_2_200)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_2_300)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_2_400)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_2_500)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_2_600)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_3_100)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_3_200)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_3_300)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_3_400)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_3_500)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_3_600)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_4_100)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_4_200)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_4_300)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_4_400)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_4_500)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_4_600)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_1_400 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_1_600)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_2_100)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_2_200)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_2_300)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_2_400)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_2_500)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_2_600)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_3_100)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_3_200)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_3_300)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_3_400)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_3_500)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_3_600)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_4_100)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_4_200)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_4_300)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_4_400)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_4_500)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_4_600)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_1_500 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_1_600 != ElevationRawTokens.bottom_2_100)
        #expect(ElevationRawTokens.bottom_1_600 != ElevationRawTokens.bottom_2_200)
        #expect(ElevationRawTokens.bottom_1_600 != ElevationRawTokens.bottom_2_300)
        #expect(ElevationRawTokens.bottom_1_600 != ElevationRawTokens.bottom_2_400)
        #expect(ElevationRawTokens.bottom_1_600 != ElevationRawTokens.bottom_2_500)
        #expect(ElevationRawTokens.bottom_1_600 != ElevationRawTokens.bottom_2_600)
        #expect(ElevationRawTokens.bottom_1_600 != ElevationRawTokens.bottom_3_100)
        #expect(ElevationRawTokens.bottom_1_600 != ElevationRawTokens.bottom_3_200)
        #expect(ElevationRawTokens.bottom_1_600 != ElevationRawTokens.bottom_3_300)
        #expect(ElevationRawTokens.bottom_1_600 != ElevationRawTokens.bottom_3_400)
        #expect(ElevationRawTokens.bottom_1_600 != ElevationRawTokens.bottom_3_500)
        #expect(ElevationRawTokens.bottom_1_600 != ElevationRawTokens.bottom_3_600)
        #expect(ElevationRawTokens.bottom_1_600 != ElevationRawTokens.bottom_4_100)
        #expect(ElevationRawTokens.bottom_1_600 != ElevationRawTokens.bottom_4_200)
        #expect(ElevationRawTokens.bottom_1_600 != ElevationRawTokens.bottom_4_300)
        #expect(ElevationRawTokens.bottom_1_600 != ElevationRawTokens.bottom_4_400)
        #expect(ElevationRawTokens.bottom_1_600 != ElevationRawTokens.bottom_4_500)
        #expect(ElevationRawTokens.bottom_1_600 != ElevationRawTokens.bottom_4_600)
        #expect(ElevationRawTokens.bottom_1_600 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_1_600 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_1_600 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_1_600 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_1_600 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_1_600 != ElevationRawTokens.bottom_5_600)

        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_2_200)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_2_300)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_2_400)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_2_500)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_2_600)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_3_100)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_3_200)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_3_300)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_3_400)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_3_500)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_3_600)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_4_100)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_4_200)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_4_300)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_4_400)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_4_500)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_4_600)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_2_100 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_2_300)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_2_400)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_2_500)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_2_600)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_3_100)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_3_200)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_3_300)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_3_400)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_3_500)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_3_600)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_4_100)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_4_200)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_4_300)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_4_400)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_4_500)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_4_600)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_2_200 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_2_400)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_2_500)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_2_600)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_3_100)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_3_200)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_3_300)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_3_400)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_3_500)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_3_600)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_4_100)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_4_200)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_4_300)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_4_400)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_4_500)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_4_600)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_2_300 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_2_500)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_2_600)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_3_100)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_3_200)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_3_300)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_3_400)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_3_500)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_3_600)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_4_100)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_4_200)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_4_300)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_4_400)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_4_500)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_4_600)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_2_400 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_2_600)
        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_3_100)
        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_3_200)
        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_3_300)
        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_3_400)
        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_3_500)
        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_3_600)
        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_4_100)
        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_4_200)
        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_4_300)
        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_4_400)
        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_4_500)
        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_4_600)
        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_2_500 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_2_600 != ElevationRawTokens.bottom_3_100)
        #expect(ElevationRawTokens.bottom_2_600 != ElevationRawTokens.bottom_3_200)
        #expect(ElevationRawTokens.bottom_2_600 != ElevationRawTokens.bottom_3_300)
        #expect(ElevationRawTokens.bottom_2_600 != ElevationRawTokens.bottom_3_400)
        #expect(ElevationRawTokens.bottom_2_600 != ElevationRawTokens.bottom_3_500)
        #expect(ElevationRawTokens.bottom_2_600 != ElevationRawTokens.bottom_3_600)
        #expect(ElevationRawTokens.bottom_2_600 != ElevationRawTokens.bottom_4_100)
        #expect(ElevationRawTokens.bottom_2_600 != ElevationRawTokens.bottom_4_200)
        #expect(ElevationRawTokens.bottom_2_600 != ElevationRawTokens.bottom_4_300)
        #expect(ElevationRawTokens.bottom_2_600 != ElevationRawTokens.bottom_4_400)
        #expect(ElevationRawTokens.bottom_2_600 != ElevationRawTokens.bottom_4_500)
        #expect(ElevationRawTokens.bottom_2_600 != ElevationRawTokens.bottom_4_600)
        #expect(ElevationRawTokens.bottom_2_600 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_2_600 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_2_600 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_2_600 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_2_600 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_2_600 != ElevationRawTokens.bottom_5_600)

        #expect(ElevationRawTokens.bottom_3_100 != ElevationRawTokens.bottom_3_200)
        #expect(ElevationRawTokens.bottom_3_100 != ElevationRawTokens.bottom_3_300)
        #expect(ElevationRawTokens.bottom_3_100 != ElevationRawTokens.bottom_3_400)
        #expect(ElevationRawTokens.bottom_3_100 != ElevationRawTokens.bottom_3_500)
        #expect(ElevationRawTokens.bottom_3_100 != ElevationRawTokens.bottom_3_600)
        #expect(ElevationRawTokens.bottom_3_100 != ElevationRawTokens.bottom_4_100)
        #expect(ElevationRawTokens.bottom_3_100 != ElevationRawTokens.bottom_4_200)
        #expect(ElevationRawTokens.bottom_3_100 != ElevationRawTokens.bottom_4_300)
        #expect(ElevationRawTokens.bottom_3_100 != ElevationRawTokens.bottom_4_400)
        #expect(ElevationRawTokens.bottom_3_100 != ElevationRawTokens.bottom_4_500)
        #expect(ElevationRawTokens.bottom_3_100 != ElevationRawTokens.bottom_4_600)
        #expect(ElevationRawTokens.bottom_3_100 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_3_100 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_3_100 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_3_100 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_3_100 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_3_100 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_3_100 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_3_100 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_3_100 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_3_100 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_3_100 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_3_100 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_3_200 != ElevationRawTokens.bottom_3_300)
        #expect(ElevationRawTokens.bottom_3_200 != ElevationRawTokens.bottom_3_400)
        #expect(ElevationRawTokens.bottom_3_200 != ElevationRawTokens.bottom_3_500)
        #expect(ElevationRawTokens.bottom_3_200 != ElevationRawTokens.bottom_3_600)
        #expect(ElevationRawTokens.bottom_3_200 != ElevationRawTokens.bottom_4_100)
        #expect(ElevationRawTokens.bottom_3_200 != ElevationRawTokens.bottom_4_200)
        #expect(ElevationRawTokens.bottom_3_200 != ElevationRawTokens.bottom_4_300)
        #expect(ElevationRawTokens.bottom_3_200 != ElevationRawTokens.bottom_4_400)
        #expect(ElevationRawTokens.bottom_3_200 != ElevationRawTokens.bottom_4_500)
        #expect(ElevationRawTokens.bottom_3_200 != ElevationRawTokens.bottom_4_600)
        #expect(ElevationRawTokens.bottom_3_200 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_3_200 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_3_200 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_3_200 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_3_200 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_3_200 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_3_200 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_3_200 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_3_200 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_3_200 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_3_200 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_3_200 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_3_300 != ElevationRawTokens.bottom_3_400)
        #expect(ElevationRawTokens.bottom_3_300 != ElevationRawTokens.bottom_3_500)
        #expect(ElevationRawTokens.bottom_3_300 != ElevationRawTokens.bottom_3_600)
        #expect(ElevationRawTokens.bottom_3_300 != ElevationRawTokens.bottom_4_100)
        #expect(ElevationRawTokens.bottom_3_300 != ElevationRawTokens.bottom_4_200)
        #expect(ElevationRawTokens.bottom_3_300 != ElevationRawTokens.bottom_4_300)
        #expect(ElevationRawTokens.bottom_3_300 != ElevationRawTokens.bottom_4_400)
        #expect(ElevationRawTokens.bottom_3_300 != ElevationRawTokens.bottom_4_500)
        #expect(ElevationRawTokens.bottom_3_300 != ElevationRawTokens.bottom_4_600)
        #expect(ElevationRawTokens.bottom_3_300 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_3_300 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_3_300 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_3_300 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_3_300 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_3_300 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_3_300 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_3_300 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_3_300 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_3_300 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_3_300 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_3_300 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_3_400 != ElevationRawTokens.bottom_3_500)
        #expect(ElevationRawTokens.bottom_3_400 != ElevationRawTokens.bottom_3_600)
        #expect(ElevationRawTokens.bottom_3_400 != ElevationRawTokens.bottom_4_100)
        #expect(ElevationRawTokens.bottom_3_400 != ElevationRawTokens.bottom_4_200)
        #expect(ElevationRawTokens.bottom_3_400 != ElevationRawTokens.bottom_4_300)
        #expect(ElevationRawTokens.bottom_3_400 != ElevationRawTokens.bottom_4_400)
        #expect(ElevationRawTokens.bottom_3_400 != ElevationRawTokens.bottom_4_500)
        #expect(ElevationRawTokens.bottom_3_400 != ElevationRawTokens.bottom_4_600)
        #expect(ElevationRawTokens.bottom_3_400 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_3_400 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_3_400 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_3_400 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_3_400 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_3_400 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_3_400 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_3_400 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_3_400 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_3_400 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_3_400 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_3_400 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_3_500 != ElevationRawTokens.bottom_3_600)
        #expect(ElevationRawTokens.bottom_3_500 != ElevationRawTokens.bottom_4_100)
        #expect(ElevationRawTokens.bottom_3_500 != ElevationRawTokens.bottom_4_200)
        #expect(ElevationRawTokens.bottom_3_500 != ElevationRawTokens.bottom_4_300)
        #expect(ElevationRawTokens.bottom_3_500 != ElevationRawTokens.bottom_4_400)
        #expect(ElevationRawTokens.bottom_3_500 != ElevationRawTokens.bottom_4_500)
        #expect(ElevationRawTokens.bottom_3_500 != ElevationRawTokens.bottom_4_600)
        #expect(ElevationRawTokens.bottom_3_500 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_3_500 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_3_500 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_3_500 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_3_500 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_3_500 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_3_500 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_3_500 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_3_500 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_3_500 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_3_500 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_3_500 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_3_600 != ElevationRawTokens.bottom_4_100)
        #expect(ElevationRawTokens.bottom_3_600 != ElevationRawTokens.bottom_4_200)
        #expect(ElevationRawTokens.bottom_3_600 != ElevationRawTokens.bottom_4_300)
        #expect(ElevationRawTokens.bottom_3_600 != ElevationRawTokens.bottom_4_400)
        #expect(ElevationRawTokens.bottom_3_600 != ElevationRawTokens.bottom_4_500)
        #expect(ElevationRawTokens.bottom_3_600 != ElevationRawTokens.bottom_4_600)
        #expect(ElevationRawTokens.bottom_3_600 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_3_600 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_3_600 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_3_600 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_3_600 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_3_600 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_3_600 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_3_600 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_3_600 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_3_600 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_3_600 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_3_600 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_4_100 != ElevationRawTokens.bottom_4_200)
        #expect(ElevationRawTokens.bottom_4_100 != ElevationRawTokens.bottom_4_300)
        #expect(ElevationRawTokens.bottom_4_100 != ElevationRawTokens.bottom_4_400)
        #expect(ElevationRawTokens.bottom_4_100 != ElevationRawTokens.bottom_4_500)
        #expect(ElevationRawTokens.bottom_4_100 != ElevationRawTokens.bottom_4_600)
        #expect(ElevationRawTokens.bottom_4_100 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_4_100 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_4_100 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_4_100 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_4_100 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_4_100 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_4_100 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_4_100 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_4_100 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_4_100 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_4_100 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_4_100 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_4_200 != ElevationRawTokens.bottom_4_300)
        #expect(ElevationRawTokens.bottom_4_200 != ElevationRawTokens.bottom_4_400)
        #expect(ElevationRawTokens.bottom_4_200 != ElevationRawTokens.bottom_4_500)
        #expect(ElevationRawTokens.bottom_4_200 != ElevationRawTokens.bottom_4_600)
        #expect(ElevationRawTokens.bottom_4_200 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_4_200 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_4_200 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_4_200 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_4_200 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_4_200 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_4_200 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_4_200 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_4_200 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_4_200 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_4_200 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_4_200 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_4_300 != ElevationRawTokens.bottom_4_400)
        #expect(ElevationRawTokens.bottom_4_300 != ElevationRawTokens.bottom_4_500)
        #expect(ElevationRawTokens.bottom_4_300 != ElevationRawTokens.bottom_4_600)
        #expect(ElevationRawTokens.bottom_4_300 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_4_300 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_4_300 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_4_300 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_4_300 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_4_300 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_4_300 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_4_300 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_4_300 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_4_300 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_4_300 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_4_300 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_4_400 != ElevationRawTokens.bottom_4_500)
        #expect(ElevationRawTokens.bottom_4_400 != ElevationRawTokens.bottom_4_600)
        #expect(ElevationRawTokens.bottom_4_400 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_4_400 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_4_400 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_4_400 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_4_400 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_4_400 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_4_400 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_4_400 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_4_400 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_4_400 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_4_400 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_4_400 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_4_500 != ElevationRawTokens.bottom_4_600)
        #expect(ElevationRawTokens.bottom_4_500 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_4_500 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_4_500 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_4_500 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_4_500 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_4_500 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_4_500 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_4_500 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_4_500 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_4_500 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_4_500 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_4_500 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_4_600 != ElevationRawTokens.bottom_5_100)
        #expect(ElevationRawTokens.bottom_4_600 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_4_600 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_4_600 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_4_600 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_4_600 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_4_600 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_4_600 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_4_600 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_4_600 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_4_600 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_4_600 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_5_100 != ElevationRawTokens.bottom_5_200)
        #expect(ElevationRawTokens.bottom_5_100 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_5_100 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_5_100 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_5_100 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_5_100 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_5_100 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_5_100 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_5_100 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_5_100 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_5_100 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_5_200 != ElevationRawTokens.bottom_5_300)
        #expect(ElevationRawTokens.bottom_5_200 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_5_200 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_5_200 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_5_200 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_5_200 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_5_200 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_5_200 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_5_200 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_5_200 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_5_300 != ElevationRawTokens.bottom_5_400)
        #expect(ElevationRawTokens.bottom_5_300 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_5_300 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_5_300 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_5_300 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_5_300 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_5_300 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_5_300 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_5_300 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_5_400 != ElevationRawTokens.bottom_5_500)
        #expect(ElevationRawTokens.bottom_5_400 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_5_400 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_5_400 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_5_400 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_5_400 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_5_400 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_5_400 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_5_500 != ElevationRawTokens.bottom_5_600)
        #expect(ElevationRawTokens.bottom_5_500 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_5_500 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_5_500 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_5_500 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_5_500 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_5_500 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_5_600 != ElevationRawTokens.bottom_6_100)
        #expect(ElevationRawTokens.bottom_5_600 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_5_600 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_5_600 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_5_600 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_5_600 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_6_100 != ElevationRawTokens.bottom_6_200)
        #expect(ElevationRawTokens.bottom_6_100 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_6_100 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_6_100 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_6_100 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_6_200 != ElevationRawTokens.bottom_6_300)
        #expect(ElevationRawTokens.bottom_6_200 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_6_200 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_6_200 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_6_300 != ElevationRawTokens.bottom_6_400)
        #expect(ElevationRawTokens.bottom_6_300 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_6_300 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_6_400 != ElevationRawTokens.bottom_6_500)
        #expect(ElevationRawTokens.bottom_6_400 != ElevationRawTokens.bottom_6_600)

        #expect(ElevationRawTokens.bottom_6_500 != ElevationRawTokens.bottom_6_600)
    }

    // MARK: - Helpers

    private func assertCompositeLowerThan(_ left: ElevationCompositeRawToken, _ right: ElevationCompositeRawToken) {
        #expect(left.y <= right.y)
        #expect(left.radius <= right.radius)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable function_body_length

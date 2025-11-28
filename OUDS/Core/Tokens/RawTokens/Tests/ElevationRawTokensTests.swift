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
import SwiftUI
import Testing

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
}

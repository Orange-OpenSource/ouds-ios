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
import OUDSTokensSemantic

/// To ensure the `MultipleElevationTokens` is tested as a wrapper of semantic tokens for light and dark color schemes.
final class MultipleElevationTokensTests: XCTestCase {

    /// Tests if the unique value is applied for light and dark modes
    func testInitWithOneValue() {
        let unique: ElevationCompositeRawToken = ElevationRawTokens.elevationBottom_4_100
        let token = MultipleElevationTokens(unique)

        XCTAssertTrue(token.light == unique)
        XCTAssertTrue(token.dark == unique)
    }

    /// Tests if light and dark values are preserved when defined with two assigned non nil values
    func testInitWithTwoValues() {
        let light: ElevationCompositeRawToken = ElevationRawTokens.elevationBottom_1_200
        let dark: ElevationCompositeRawToken = ElevationRawTokens.elevationBottom_1_300
        let token = MultipleElevationTokens(light: light, dark: dark)

        XCTAssertTrue(token.light == light)
        XCTAssertTrue(token.dark == dark)
    }

    /// Tests comparisons between two `MultipleElevationTokens` to ensure tokens are considered as equal
    /// if an only if they have the same light and dark values and have the same types.
    func testIsEqual() {
        let first = MultipleElevationTokens(light: ElevationRawTokens.elevationBottom_4_100, dark: ElevationRawTokens.elevationBottom_2_500)
        let second = MultipleElevationTokens(light: ElevationRawTokens.elevationBottom_3_300, dark: ElevationRawTokens.elevationBottom_3_500)
        let third = MultipleElevationTokens(light: ElevationRawTokens.elevationBottom_4_100, dark: ElevationRawTokens.elevationBottom_3_500)
        let fourth = MultipleElevationTokens(light: ElevationRawTokens.elevationBottom_3_300, dark: ElevationRawTokens.elevationBottom_2_500)
        let fifth = MultipleElevationTokens(light: ElevationRawTokens.elevationBottom_4_100, dark: ElevationRawTokens.elevationBottom_2_500)
        let sixth = MultipleSizingTokens(compact: 12, regular: 12)

        XCTAssertTrue(first.isEqual(first))
        XCTAssertFalse(first.isEqual(second))
        XCTAssertFalse(first.isEqual(third))
        XCTAssertFalse(first.isEqual(fourth))
        XCTAssertTrue(first.isEqual(fifth))
        XCTAssertFalse(first.isEqual(sixth))
    }
}

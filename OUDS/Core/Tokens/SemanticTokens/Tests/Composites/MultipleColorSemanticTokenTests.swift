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

/// To ensure the `MultipleColorRawToken` is tested as a wrapper of semantic tokens for light and dark color schemes.
final class MultipleColorRawTokenTests: XCTestCase {

    /// Tests if light and dark values are preserved when defined with two assigned non nil values
    func testInitTwoNonNilValues() {
        let light: ColorRawToken = ColorRawTokens.colorFunctionalMalachite300
        let dark: ColorRawToken = ColorRawTokens.colorFunctionalScarlet900
        let token = MultipleColorTokens(light: light, dark: dark)

        XCTAssertTrue(token.light == light)
        XCTAssertTrue(token.dark == dark)
    }

    /// Tests init of `MultipleColorRawToken` with nil values in parameters
    func testInitNilValues() {
        let light: ColorRawToken = ColorRawTokens.colorFunctionalMalachite300
        let dark: ColorRawToken = ColorRawTokens.colorFunctionalScarlet900

        XCTAssertNil(MultipleColorTokens(light: light, dark: nil))
        XCTAssertNil(MultipleColorTokens(light: nil, dark: dark))
        XCTAssertNil(MultipleColorTokens(light: nil, dark: nil))
    }

    /// Tests init of `MultipleColorRawToken` with nil value in parameter
    func testInitNilValue() {
        XCTAssertNil(MultipleColorTokens(nil))
    }

    /// Tests comparisons between two `MultipleColorRawToken` to ensure tokens are considered as equal
    /// if an only if they have the same compact and regular values and have the same types.
    func testIsEqual() {
        let first = MultipleColorTokens(light: ColorRawTokens.colorFunctionalMalachite300, dark: ColorRawTokens.colorFunctionalScarlet900)
        let second = MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray80, dark: ColorRawTokens.colorFunctionalSun100)
        let third = MultipleColorTokens(light: ColorRawTokens.colorFunctionalMalachite300, dark: ColorRawTokens.colorFunctionalSun100)
        let fourth = MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray80, dark: ColorRawTokens.colorFunctionalScarlet900)
        let fifth = MultipleColorTokens(light: ColorRawTokens.colorFunctionalMalachite300, dark: ColorRawTokens.colorFunctionalScarlet900)
        let sixth = MultipleSizingTokens(compact: 12, regular: 12)

        XCTAssertTrue(first.isEqual(first))
        XCTAssertFalse(first.isEqual(second))
        XCTAssertFalse(first.isEqual(third))
        XCTAssertFalse(first.isEqual(fourth))
        XCTAssertTrue(first.isEqual(fifth))
        XCTAssertFalse(first.isEqual(sixth))
    }
}

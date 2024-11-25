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
import OUDSTokensSemantic
import XCTest

// swiftlint:disable required_deinit

/// To ensure the `MultipleColorRawToken` is tested as a wrapper of semantic tokens for light and dark color schemes.
final class MultipleColorRawTokenTests: XCTestCase {

    /// Tests if the unique value is applied for light and dark modes
    func testInitWithOneValue() {
        let unique: ColorRawToken = ColorRawTokens.colorFunctionalMalachite300
        let token = MultipleColorSemanticTokens(unique)

        XCTAssertTrue(token.light == unique)
        XCTAssertTrue(token.dark == unique)
    }

    /// Tests if light and dark values are preserved when defined with two assigned non nil values
    func testInitTwoNonNilValues() {
        let light: ColorRawToken = ColorRawTokens.colorFunctionalMalachite300
        let dark: ColorRawToken = ColorRawTokens.colorFunctionalScarlet900
        let token = MultipleColorSemanticTokens(light: light, dark: dark)

        XCTAssertTrue(token.light == light)
        XCTAssertTrue(token.dark == dark)
    }

    /// Tests comparisons between two `MultipleColorRawToken` to ensure tokens are considered as equal
    /// if an only if they have the same compact and regular values and have the same types.
    func testIsEqual() {
        let first = MultipleColorSemanticTokens(light: ColorRawTokens.colorFunctionalMalachite300, dark: ColorRawTokens.colorFunctionalScarlet900)
        let second = MultipleColorSemanticTokens(light: ColorRawTokens.colorFunctionalDarkGray80, dark: ColorRawTokens.colorFunctionalSun100)
        let third = MultipleColorSemanticTokens(light: ColorRawTokens.colorFunctionalMalachite300, dark: ColorRawTokens.colorFunctionalSun100)
        let fourth = MultipleColorSemanticTokens(light: ColorRawTokens.colorFunctionalDarkGray80, dark: ColorRawTokens.colorFunctionalScarlet900)
        let fifth = MultipleColorSemanticTokens(light: ColorRawTokens.colorFunctionalMalachite300, dark: ColorRawTokens.colorFunctionalScarlet900)
        let sixth = MultipleSizeSemanticTokens(compact: 12, regular: 12)

        XCTAssertTrue(first.isEqual(first))
        XCTAssertFalse(first.isEqual(second))
        XCTAssertFalse(first.isEqual(third))
        XCTAssertFalse(first.isEqual(fourth))
        XCTAssertTrue(first.isEqual(fifth))
        XCTAssertFalse(first.isEqual(sixth))
    }
}

// swiftlint:enable required_deinit

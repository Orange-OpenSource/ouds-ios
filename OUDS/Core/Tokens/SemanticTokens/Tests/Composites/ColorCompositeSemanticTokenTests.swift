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

/// To ensure the `ColorCompositeSemanticToken` is tested as a wrapper of semantic tokens for light and dark color schemes.
final class ColorCompositeSemanticTokenTests: XCTestCase {

    /// Tests if light and dark values are preserved when defined with two assigned non nil values
    func testInitTwoNonNilValues() {
        let light: ColorRawToken = ColorRawTokens.colorFunctionalMalachite300
        let dark: ColorRawToken = ColorRawTokens.colorFunctionalScarlet900
        let token = ColorCompositeSemanticToken(light: light, dark: dark)

        XCTAssertTrue(token.light == light)
        XCTAssertTrue(token.dark == dark)
    }

    /// Tests init of `ColorCompositeSemanticToken` with nil values in parameters
    func testInitNilValues() {
        let light: ColorRawToken = ColorRawTokens.colorFunctionalMalachite300
        let dark: ColorRawToken = ColorRawTokens.colorFunctionalScarlet900

        XCTAssertNil(ColorCompositeSemanticToken(light: light, dark: nil))
        XCTAssertNil(ColorCompositeSemanticToken(light: nil, dark: dark))
        XCTAssertNil(ColorCompositeSemanticToken(light: nil, dark: nil))
    }

    /// Tests init of `ColorCompositeSemanticToken` with nil value in parameter
    func testInitNilValue() {
        XCTAssertNil(ColorCompositeSemanticToken(nil))
    }

    /// Tests comparisons between two `ColorCompositeSemanticToken` to ensure tokens are considered as equal
    /// if an only if they have the same compact and regular values and have the same types.
    func testIsEqual() {
        let first = ColorCompositeSemanticToken(light: ColorRawTokens.colorFunctionalMalachite300, dark: ColorRawTokens.colorFunctionalScarlet900)
        let second = ColorCompositeSemanticToken(light: ColorRawTokens.colorFunctionalDarkGray80, dark: ColorRawTokens.colorFunctionalSun100)
        let third = ColorCompositeSemanticToken(light: ColorRawTokens.colorFunctionalMalachite300, dark: ColorRawTokens.colorFunctionalSun100)
        let fourth = ColorCompositeSemanticToken(light: ColorRawTokens.colorFunctionalDarkGray80, dark: ColorRawTokens.colorFunctionalScarlet900)
        let fifth = ColorCompositeSemanticToken(light: ColorRawTokens.colorFunctionalMalachite300, dark: ColorRawTokens.colorFunctionalScarlet900)
        let sixth = SizingCompositeSemanticToken(compact: 12, regular: 12)

        XCTAssertTrue(first.isEqual(first))
        XCTAssertFalse(first.isEqual(second))
        XCTAssertFalse(first.isEqual(third))
        XCTAssertFalse(first.isEqual(fourth))
        XCTAssertTrue(first.isEqual(fifth))
        XCTAssertFalse(first.isEqual(sixth))
    }
}

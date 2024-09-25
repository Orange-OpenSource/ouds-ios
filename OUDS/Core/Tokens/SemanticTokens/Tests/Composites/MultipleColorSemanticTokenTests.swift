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

<<<<<<< HEAD
/// To ensure the `MultipleColorRawToken` is tested as a wrapper of semantic tokens for light and dark color schemes.
final class MultipleColorRawTokenTests: XCTestCase {

    /// Tests if the unique value is applied for light and dark modes
    func testInitWithOneValue() {
        let unique: ColorRawToken = ColorRawTokens.colorFunctionalMalachite300
        let token = MultipleColorTokens(unique)

        XCTAssertTrue(token.light == unique)
        XCTAssertTrue(token.dark == unique)
    }
=======
/// To ensure the `MultipleColorSemanticToken` is tested as a wrapper of semantic tokens for light and dark color schemes.
final class MultipleColorSemanticTokenTests: XCTestCase {
>>>>>>> 3e552ea8 (refactor: use of composite colors for elevations)

    /// Tests if light and dark values are preserved when defined with two assigned non nil values
    func testInitTwoNonNilValues() {
        let light: ColorRawToken = ColorRawTokens.colorFunctionalMalachite300
        let dark: ColorRawToken = ColorRawTokens.colorFunctionalScarlet900
<<<<<<< HEAD
        let token = MultipleColorTokens(light: light, dark: dark)
=======
        let token = MultipleColorSemanticToken(light: light, dark: dark)
>>>>>>> 3e552ea8 (refactor: use of composite colors for elevations)

        XCTAssertTrue(token.light == light)
        XCTAssertTrue(token.dark == dark)
    }

<<<<<<< HEAD
    /// Tests init of `MultipleColorRawToken` with nil values in parameters
=======
    /// Tests init of `MultipleColorSemanticToken` with nil values in parameters
>>>>>>> 3e552ea8 (refactor: use of composite colors for elevations)
    func testInitNilValues() {
        let light: ColorRawToken = ColorRawTokens.colorFunctionalMalachite300
        let dark: ColorRawToken = ColorRawTokens.colorFunctionalScarlet900

<<<<<<< HEAD
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
=======
        XCTAssertNil(MultipleColorSemanticToken(light: light, dark: nil))
        XCTAssertNil(MultipleColorSemanticToken(light: nil, dark: dark))
        XCTAssertNil(MultipleColorSemanticToken(light: nil, dark: nil))
    }

    /// Tests init of `MultipleColorSemanticToken` with nil value in parameter
    func testInitNilValue() {
        XCTAssertNil(MultipleColorSemanticToken(nil))
    }

    /// Tests comparisons between two `MultipleColorSemanticToken` to ensure tokens are considered as equal
    /// if an only if they have the same compact and regular values and have the same types.
    func testIsEqual() {
        let first = MultipleColorSemanticToken(light: ColorRawTokens.colorFunctionalMalachite300, dark: ColorRawTokens.colorFunctionalScarlet900)
        let second = MultipleColorSemanticToken(light: ColorRawTokens.colorFunctionalDarkGray80, dark: ColorRawTokens.colorFunctionalSun100)
        let third = MultipleColorSemanticToken(light: ColorRawTokens.colorFunctionalMalachite300, dark: ColorRawTokens.colorFunctionalSun100)
        let fourth = MultipleColorSemanticToken(light: ColorRawTokens.colorFunctionalDarkGray80, dark: ColorRawTokens.colorFunctionalScarlet900)
        let fifth = MultipleColorSemanticToken(light: ColorRawTokens.colorFunctionalMalachite300, dark: ColorRawTokens.colorFunctionalScarlet900)
        let sixth = MultipleSizingSemanticToken(compact: 12, regular: 12)
>>>>>>> 3e552ea8 (refactor: use of composite colors for elevations)

        XCTAssertTrue(first.isEqual(first))
        XCTAssertFalse(first.isEqual(second))
        XCTAssertFalse(first.isEqual(third))
        XCTAssertFalse(first.isEqual(fourth))
        XCTAssertTrue(first.isEqual(fifth))
        XCTAssertFalse(first.isEqual(sixth))
    }
}

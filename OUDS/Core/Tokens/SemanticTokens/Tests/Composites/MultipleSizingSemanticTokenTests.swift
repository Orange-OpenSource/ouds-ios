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
import OUDSTokensSemantic

<<<<<<< HEAD
/// To ensure the `MultipleSizingTokens` is tested as a wrapper of semantic tokens for compact and regular size classes.
final class MultipleSizingTokensTests: XCTestCase {
=======
/// To ensure the `MultipleSizingSemanticToken` is tested as a wrapper of semantic tokens for compact and regular size classes.
final class MultipleSizingSemanticTokenTests: XCTestCase {
>>>>>>> 3e552ea8 (refactor: use of composite colors for elevations)

    /// Tests if compact and regular values are preserved when defined
    func testInit() {
        let compact: SizingSemanticToken = 123
        let regular: SizingSemanticToken = 456
<<<<<<< HEAD
        let token = MultipleSizingTokens(compact: compact, regular: regular)
=======
        let token = MultipleSizingSemanticToken(compact: compact, regular: regular)
>>>>>>> 3e552ea8 (refactor: use of composite colors for elevations)

        XCTAssertTrue(token.compact == compact)
        XCTAssertTrue(token.regular == regular)
    }

<<<<<<< HEAD
    /// Tests comparisons between two `MultipleSizingTokens` to ensure tokens are considered as equal
    /// if an only if they have the same compact and regular values and have the same types.
    func testIsEqual() {
        let first = MultipleSizingTokens(compact: 12, regular: 34)
        let second = MultipleSizingTokens(compact: 56, regular: 78)
        let third = MultipleSizingTokens(compact: 12, regular: 78)
        let fourth = MultipleSizingTokens(compact: 56, regular: 34)
        let fifth = MultipleSizingTokens(compact: 12, regular: 34)
        let sixth = MultipleColorTokens("#000000")
=======
    /// Tests comparisons between two `MultipleSizingSemanticToken` to ensure tokens are considered as equal
    /// if an only if they have the same compact and regular values and have the same types.
    func testIsEqual() {
        let first = MultipleSizingSemanticToken(compact: 12, regular: 34)
        let second = MultipleSizingSemanticToken(compact: 56, regular: 78)
        let third = MultipleSizingSemanticToken(compact: 12, regular: 78)
        let fourth = MultipleSizingSemanticToken(compact: 56, regular: 34)
        let fifth = MultipleSizingSemanticToken(compact: 12, regular: 34)
        let sixth = MultipleColorSemanticToken("#000000")
>>>>>>> 3e552ea8 (refactor: use of composite colors for elevations)

        XCTAssertTrue(first.isEqual(first))
        XCTAssertFalse(first.isEqual(second))
        XCTAssertFalse(first.isEqual(third))
        XCTAssertFalse(first.isEqual(fourth))
        XCTAssertTrue(first.isEqual(fifth))
        XCTAssertFalse(first.isEqual(sixth))
    }
}

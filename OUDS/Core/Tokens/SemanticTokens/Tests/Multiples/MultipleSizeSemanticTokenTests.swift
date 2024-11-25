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

import OUDSTokensSemantic
import XCTest

// swiftlint:disable required_deinit

/// To ensure the `MultipleSizeSemanticTokens` is tested as a wrapper of semantic tokens for compact and regular size classes.
final class MultipleSizeSemanticTokensTests: XCTestCase {

    /// Tests if compact and regular values are preserved when defined
    func testInitWithOneValues() {
        let unique: SizeSemanticToken = 888
        let token = MultipleSizeSemanticTokens(unique)

        XCTAssertTrue(token.compact == unique)
        XCTAssertTrue(token.regular == unique)
    }

    /// Tests if compact and regular values are preserved when defined
    func testInitTwoValues() {
        let compact: SizeSemanticToken = 123
        let regular: SizeSemanticToken = 456
        let token = MultipleSizeSemanticTokens(compact: compact, regular: regular)

        XCTAssertTrue(token.compact == compact)
        XCTAssertTrue(token.regular == regular)
    }

    /// Tests comparisons between two `MultipleSizeSemanticTokens` to ensure tokens are considered as equal
    /// if an only if they have the same compact and regular values and have the same types.
    func testIsEqual() {
        let first = MultipleSizeSemanticTokens(compact: 12, regular: 34)
        let second = MultipleSizeSemanticTokens(compact: 56, regular: 78)
        let third = MultipleSizeSemanticTokens(compact: 12, regular: 78)
        let fourth = MultipleSizeSemanticTokens(compact: 56, regular: 34)
        let fifth = MultipleSizeSemanticTokens(compact: 12, regular: 34)
        let sixth = MultipleColorSemanticTokens("#000000")

        XCTAssertTrue(first.isEqual(first))
        XCTAssertFalse(first.isEqual(second))
        XCTAssertFalse(first.isEqual(third))
        XCTAssertFalse(first.isEqual(fourth))
        XCTAssertTrue(first.isEqual(fifth))
        XCTAssertFalse(first.isEqual(sixth))
    }
}

// swiftlint:enable required_deinit

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

/// To ensure the `MultipleFontSizeSemanticTokens` is tested as a provider of semantic tokens for compact and regular size classes.
final class MultipleFontSizeSemanticTokensTests: XCTestCase {

    /// Tests if the unique value is applied for light and dark modes
    func testInitWithOneValue() {
        let unique: FontSizeSemanticToken = FontRawTokens.fontSize150
        let token = MultipleFontSizeSemanticTokens(unique)

        XCTAssertTrue(token.compact == unique)
        XCTAssertTrue(token.regular == unique)
    }

    /// Tests if compact and regular values are preserved when defined with two assigned non nil values
    func testInitWithTwoValues() {
        let compact: FontSizeSemanticToken = FontRawTokens.fontSize150
        let regular: FontSizeSemanticToken = FontRawTokens.fontSize550
        let token = MultipleFontSizeSemanticTokens(compact: compact, regular: regular)

        XCTAssertTrue(token.compact == compact)
        XCTAssertTrue(token.regular == regular)
    }

    /// Tests comparisons between two `MultipleFontSizeSemanticTokens` to ensure tokens are considered as equal
    /// if an only if they have the same compact and regular values and have the same types.
    func testIsEqual() {
        let first = MultipleFontSizeSemanticTokens(compact: FontRawTokens.fontSize200, regular: FontRawTokens.fontSize450)
        let second = MultipleFontSizeSemanticTokens(compact: FontRawTokens.fontSize550, regular: FontRawTokens.fontSize950)
        let third = MultipleFontSizeSemanticTokens(compact: FontRawTokens.fontSize200, regular: FontRawTokens.fontSize950)
        let fourth = MultipleFontSizeSemanticTokens(compact: FontRawTokens.fontSize550, regular: FontRawTokens.fontSize450)
        let fifth = MultipleFontSizeSemanticTokens(compact: FontRawTokens.fontSize200, regular: FontRawTokens.fontSize450)
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

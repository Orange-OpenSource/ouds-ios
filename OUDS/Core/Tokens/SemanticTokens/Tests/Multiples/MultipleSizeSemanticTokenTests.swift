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
import Testing

/// To ensure the `MultipleSizeSemanticToken` is tested as a provider of semantic tokens for compact and regular size classes.
struct MultipleSizeSemanticTokenTests {

    /// Tests if compact and regular values are preserved when defined
    @Test func initWithOneValues() {
        let unique: SizeSemanticToken = 888
        let token = MultipleSizeSemanticToken(unique)

        #expect(token.compact == unique)
        #expect(token.regular == unique)
    }

    /// Tests if compact and regular values are preserved when defined
    @Test func initTwoValues() {
        let compact: SizeSemanticToken = 123
        let regular: SizeSemanticToken = 456
        let token = MultipleSizeSemanticToken(compact: compact, regular: regular)

        #expect(token.compact == compact)
        #expect(token.regular == regular)
    }

    /// Tests comparisons between two `MultipleSizeSemanticToken` to ensure tokens are considered as equal
    /// if an only if they have the same compact and regular values and have the same types.
    @Test func isEqual() {
        let first = MultipleSizeSemanticToken(compact: 12, regular: 34)
        let second = MultipleSizeSemanticToken(compact: 56, regular: 78)
        let third = MultipleSizeSemanticToken(compact: 12, regular: 78)
        let fourth = MultipleSizeSemanticToken(compact: 56, regular: 34)
        let fifth = MultipleSizeSemanticToken(compact: 12, regular: 34)
        let sixth = MultipleColorSemanticToken("#000000")

        #expect(first.isEqual(first))
        #expect(!first.isEqual(second))
        #expect(!first.isEqual(third))
        #expect(!first.isEqual(fourth))
        #expect(first.isEqual(fifth))
        #expect(!first.isEqual(sixth))
    }
}

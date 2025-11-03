//
// Software Name: OUDSThemesContract iOS
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

/// To ensure the `MultipleSizeSemanticTokens` is tested as a provider of semantic tokens for compact and regular size classes.
struct MultipleSizeSemanticTokensTests {

    /// Tests if compact and regular values are preserved when defined
    @Test func initWithOneValues() {
        let unique: SizeSemanticToken = 888
        let token = MultipleSizeSemanticTokens(unique)

        #expect(token.compact == unique)
        #expect(token.regular == unique)
    }

    /// Tests if compact and regular values are preserved when defined
    @Test func initTwoValues() {
        let compact: SizeSemanticToken = 123
        let regular: SizeSemanticToken = 456
        let token = MultipleSizeSemanticTokens(compact: compact, regular: regular)

        #expect(token.compact == compact)
        #expect(token.regular == regular)
    }

    /// Tests comparisons between two `MultipleSizeSemanticTokens` to ensure tokens are considered as equal
    /// if an only if they have the same compact and regular values and have the same types.
    @Test func isEqual() {
        let first = MultipleSizeSemanticTokens(compact: 12, regular: 34)
        let second = MultipleSizeSemanticTokens(compact: 56, regular: 78)
        let third = MultipleSizeSemanticTokens(compact: 12, regular: 78)
        let fourth = MultipleSizeSemanticTokens(compact: 56, regular: 34)
        let fifth = MultipleSizeSemanticTokens(compact: 12, regular: 34)
        let sixth = MultipleColorSemanticTokens("#000000")

        #expect(first.isEqual(first))
        #expect(!first.isEqual(second))
        #expect(!first.isEqual(third))
        #expect(!first.isEqual(fourth))
        #expect(first.isEqual(fifth))
        #expect(!first.isEqual(sixth))
    }
}

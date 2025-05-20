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
import Testing

/// To ensure the `MultipleSpaceSemanticTokens` is tested as a provider of semantic tokens for compact and regular size classes.
struct MultipleSpaceSemanticTokensTests {

    /// Tests if compact and regular values are preserved when defined
    @Test func initToken() {
        let compact: DimensionRawToken = 123
        let regular: DimensionRawToken = 456
        let token = MultipleSpaceSemanticTokens(compact: compact, regular: regular)

        #expect(token.compact == compact)
        #expect(token.regular == regular)
    }

    /// Tests comparisons between two `MultipleSpaceSemanticTokens` to ensure tokens are considered as equal
    /// if an only if they have the same compact and regular values and have the same types.
    @Test func isEqual() {
        let first = MultipleSpaceSemanticTokens(compact: 12, regular: 34)
        let second = MultipleSpaceSemanticTokens(compact: 56, regular: 78)
        let third = MultipleSpaceSemanticTokens(compact: 12, regular: 78)
        let fourth = MultipleSpaceSemanticTokens(compact: 56, regular: 34)
        let fifth = MultipleSpaceSemanticTokens(compact: 12, regular: 34)
        let sixth = MultipleSizeSemanticTokens(compact: 0, regular: 00)

        #expect(first.isEqual(first))
        #expect(!first.isEqual(second))
        #expect(!first.isEqual(third))
        #expect(!first.isEqual(fourth))
        #expect(first.isEqual(fifth))
        #expect(!first.isEqual(sixth))
    }
}

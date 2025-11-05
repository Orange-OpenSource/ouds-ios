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

/// To ensure the `MultipleFontSizeSemanticTokens` is tested as a provider of semantic tokens for compact and regular size classes.
struct MultipleFontSizeSemanticTokensTests {

    /// Tests if the unique value is applied for light and dark modes
    @Test func initWithOneValue() {
        let unique: FontSizeSemanticToken = FontRawTokens.size150
        let token = MultipleFontSizeSemanticTokens(unique)

        #expect(token.compact == unique)
        #expect(token.regular == unique)
    }

    /// Tests if compact and regular values are preserved when defined with two assigned non nil values
    @Test func initWithTwoValues() {
        let compact: FontSizeSemanticToken = FontRawTokens.size150
        let regular: FontSizeSemanticToken = FontRawTokens.size550
        let token = MultipleFontSizeSemanticTokens(compact: compact, regular: regular)

        #expect(token.compact == compact)
        #expect(token.regular == regular)
    }

    /// Tests comparisons between two `MultipleFontSizeSemanticTokens` to ensure tokens are considered as equal
    /// if an only if they have the same compact and regular values and have the same types.
    @Test func isEqual() {
        let first = MultipleFontSizeSemanticTokens(compact: FontRawTokens.size200, regular: FontRawTokens.size450)
        let second = MultipleFontSizeSemanticTokens(compact: FontRawTokens.size550, regular: FontRawTokens.size950)
        let third = MultipleFontSizeSemanticTokens(compact: FontRawTokens.size200, regular: FontRawTokens.size950)
        let fourth = MultipleFontSizeSemanticTokens(compact: FontRawTokens.size550, regular: FontRawTokens.size450)
        let fifth = MultipleFontSizeSemanticTokens(compact: FontRawTokens.size200, regular: FontRawTokens.size450)
        let sixth = MultipleSizeSemanticTokens(compact: 12, regular: 12)

        #expect(first.isEqual(first))
        #expect(!first.isEqual(second))
        #expect(!first.isEqual(third))
        #expect(!first.isEqual(fourth))
        #expect(first.isEqual(fifth))
        #expect(!first.isEqual(sixth))
    }
}

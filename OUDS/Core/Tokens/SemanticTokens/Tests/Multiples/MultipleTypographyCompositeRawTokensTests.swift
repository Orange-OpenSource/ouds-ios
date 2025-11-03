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

import OUDSTokensRaw
import OUDSTokensSemantic
import Testing

/// To ensure the `MultipleFontCompositeRawTokens` is tested as a provider of semantic tokens for compact and regular size classes.
struct MultipleFontCompositeRawTokensTests {

    /// Tests if the unique value is applied for compact and regular size classes
    @Test func initWithOneValue() {
        let unique = FontRawTokens.bold550
        let token = MultipleFontCompositeRawTokens(unique)

        #expect(token.compact == unique)
        #expect(token.regular == unique)
    }

    /// Tests if compact and regular values are preserved when defined
    @Test func initWithTwoValues() {
        let compact = FontRawTokens.regular150
        let regular = FontRawTokens.bold550
        let token = MultipleFontCompositeRawTokens(compact: compact, regular: regular)

        #expect(token.compact == compact)
        #expect(token.regular == regular)
    }

    /// Tests comparisons between two `MultipleFontCompositeRawTokens` to ensure tokens are considered as equal
    /// if an only if they have the same compact and regular values and have the same types.
    @Test func isEqual() {
        let first = MultipleFontCompositeRawTokens(compact: FontRawTokens.regular150, regular: FontRawTokens.bold550)
        let second = MultipleFontCompositeRawTokens(compact: FontRawTokens.bold850, regular: FontRawTokens.bold750)
        let third = MultipleFontCompositeRawTokens(compact: FontRawTokens.regular150, regular: FontRawTokens.bold750)
        let fourth = MultipleFontCompositeRawTokens(compact: FontRawTokens.bold850, regular: FontRawTokens.bold550)
        let fifth = MultipleFontCompositeRawTokens(compact: FontRawTokens.regular150, regular: FontRawTokens.bold550)
        let sixth = MultipleSizeSemanticTokens(compact: 0, regular: 0)

        #expect(first.isEqual(first))
        #expect(!first.isEqual(second))
        #expect(!first.isEqual(third))
        #expect(!first.isEqual(fourth))
        #expect(first.isEqual(fifth))
        #expect(!first.isEqual(sixth))
    }
}

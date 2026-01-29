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

/// To ensure the `MultipleFontLineHeightSemanticToken` is tested as a provider of semantic tokens for compact and regular size classes.
struct MultipleFontLineHeightSemanticTokenTests {

    /// Tests if the unique value is applied for light and dark modes
    @Test func initWithOneValue() {
        let unique: FontLineHeightSemanticToken = FontRawTokens.lineHeight250
        let token = MultipleFontLineHeightSemanticToken(unique)

        #expect(token.compact == unique)
        #expect(token.regular == unique)
    }

    /// Tests if compact and regular values are preserved when defined with two assigned non nil values
    @Test func initWithTwoValues() {
        let compact: FontLineHeightSemanticToken = FontRawTokens.lineHeight450
        let regular: FontLineHeightSemanticToken = FontRawTokens.lineHeight550
        let token = MultipleFontLineHeightSemanticToken(compact: compact, regular: regular)

        #expect(token.compact == compact)
        #expect(token.regular == regular)
    }

    /// Tests comparisons between two `MultipleFontLineHeightSemanticToken` to ensure tokens are considered as equal
    /// if an only if they have the same compact and regular values and have the same types.
    @Test func isEqual() {
        let first = MultipleFontLineHeightSemanticToken(compact: FontRawTokens.lineHeight450, regular: FontRawTokens.lineHeight450)
        let second = MultipleFontLineHeightSemanticToken(compact: FontRawTokens.lineHeight650, regular: FontRawTokens.lineHeight550)
        let third = MultipleFontLineHeightSemanticToken(compact: FontRawTokens.lineHeight450, regular: FontRawTokens.lineHeight550)
        let fourth = MultipleFontLineHeightSemanticToken(compact: FontRawTokens.lineHeight650, regular: FontRawTokens.lineHeight750)
        let fifth = MultipleFontLineHeightSemanticToken(compact: FontRawTokens.lineHeight450, regular: FontRawTokens.lineHeight450)
        let sixth = MultipleSizeSemanticToken(compact: 12, regular: 12)

        #expect(first.isEqual(first))
        #expect(!first.isEqual(second))
        #expect(!first.isEqual(third))
        #expect(!first.isEqual(fourth))
        #expect(first.isEqual(fifth))
        #expect(!first.isEqual(sixth))
    }

    /// Tests the returned value depending to the suer interfce size class
    @Test func lineHeightForUserInterfaceSizeClass() {
        let compactValue = FontRawTokens.lineHeight250
        let regularValue = FontRawTokens.lineHeight2050
        let token = MultipleFontLineHeightSemanticToken(compact: compactValue, regular: regularValue)

        #expect(token.lineHeight(for: .compact) == compactValue)
        #expect(token.lineHeight(for: .regular) == regularValue)
    }
}

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

// swiftlint:disable type_name

/// To ensure the `MultipleFontLetterSpacingSemanticToken` is tested as a provider of semantic tokens for compact and regular size classes.
struct MultipleFontLetterSpacingSemanticTokenTests {

    /// Tests if the unique value is applied for light and dark modes
    @Test func initWithOneValue() {
        let unique: FontLetterSpacingSemanticToken = FontRawTokens.letterSpacing250
        let token = MultipleFontLetterSpacingSemanticToken(unique)

        #expect(token.compact == unique)
        #expect(token.regular == unique)
    }

    /// Tests if compact and regular values are preserved when defined with two assigned non nil values
    @Test func initWithTwoValues() {
        let compact: FontLetterSpacingSemanticToken = FontRawTokens.letterSpacing300
        let regular: FontLetterSpacingSemanticToken = FontRawTokens.letterSpacing650
        let token = MultipleFontLetterSpacingSemanticToken(compact: compact, regular: regular)

        #expect(token.compact == compact)
        #expect(token.regular == regular)
    }

    /// Tests comparisons between two `MultipleFontLetterSpacingSemanticToken` to ensure tokens are considered as equal
    /// if an only if they have the same compact and regular values and have the same types.
    @Test func isEqual() {
        let first = MultipleFontLetterSpacingSemanticToken(compact: FontRawTokens.letterSpacing300, regular: FontRawTokens.letterSpacing300)
        let second = MultipleFontLetterSpacingSemanticToken(compact: FontRawTokens.letterSpacing650, regular: FontRawTokens.lineHeight250)
        let third = MultipleFontLetterSpacingSemanticToken(compact: FontRawTokens.letterSpacing300, regular: FontRawTokens.lineHeight250)
        let fourth = MultipleFontLetterSpacingSemanticToken(compact: FontRawTokens.letterSpacing650, regular: FontRawTokens.lineHeight850)
        let fifth = MultipleFontLetterSpacingSemanticToken(compact: FontRawTokens.letterSpacing300, regular: FontRawTokens.letterSpacing300)
        let sixth = MultipleSizeSemanticToken(compact: 12, regular: 12)

        #expect(first.isEqual(first))
        #expect(!first.isEqual(second))
        #expect(!first.isEqual(third))
        #expect(!first.isEqual(fourth))
        #expect(first.isEqual(fifth))
        #expect(!first.isEqual(sixth))
    }
}

// swiftlint:enable type_name

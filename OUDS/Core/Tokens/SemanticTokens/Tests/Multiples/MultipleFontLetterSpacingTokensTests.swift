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
import OUDSTokensRaw
import OUDSTokensSemantic

/// To ensure the `MultipleFontLetterSpacingTokens` is tested as a wrapper of semantic tokens for compact and regular size classes.
final class MultipleFontLetterSpacingTokensTests: XCTestCase {

    /// Tests if the unique value is applied for light and dark modes
    func testInitWithOneValue() {
        let unique: TypographyFontLetterSpacingSemanticToken = TypographyRawTokens.fontLetterSpacing250
        let token = MultipleFontLetterSpacingTokens(unique)

        XCTAssertTrue(token.compact == unique)
        XCTAssertTrue(token.regular == unique)
    }

    /// Tests if compact and regular values are preserved when defined with two assigned non nil values
    func testInitWithTwoValues() {
        let compact: TypographyFontLetterSpacingSemanticToken = TypographyRawTokens.fontLetterSpacing300
        let regular: TypographyFontLetterSpacingSemanticToken = TypographyRawTokens.fontLetterSpacing650
        let token = MultipleFontLetterSpacingTokens(compact: compact, regular: regular)

        XCTAssertTrue(token.compact == compact)
        XCTAssertTrue(token.regular == regular)
    }

    /// Tests comparisons between two `MultipleFontLetterSpacingTokens` to ensure tokens are considered as equal
    /// if an only if they have the same compact and regular values and have the same types.
    func testIsEqual() {
        let first = MultipleFontLetterSpacingTokens(compact: TypographyRawTokens.fontLetterSpacing300, regular: TypographyRawTokens.fontLetterSpacing300)
        let second = MultipleFontLetterSpacingTokens(compact: TypographyRawTokens.fontLetterSpacing650, regular: TypographyRawTokens.fontLineHeight250)
        let third = MultipleFontLetterSpacingTokens(compact: TypographyRawTokens.fontLetterSpacing300, regular: TypographyRawTokens.fontLineHeight250)
        let fourth = MultipleFontLetterSpacingTokens(compact: TypographyRawTokens.fontLetterSpacing650, regular: TypographyRawTokens.fontLineHeight850)
        let fifth = MultipleFontLetterSpacingTokens(compact: TypographyRawTokens.fontLetterSpacing300, regular: TypographyRawTokens.fontLetterSpacing300)
        let sixth = MultipleSizingTokens(compact: 12, regular: 12)

        XCTAssertTrue(first.isEqual(first))
        XCTAssertFalse(first.isEqual(second))
        XCTAssertFalse(first.isEqual(third))
        XCTAssertFalse(first.isEqual(fourth))
        XCTAssertTrue(first.isEqual(fifth))
        XCTAssertFalse(first.isEqual(sixth))
    }
}

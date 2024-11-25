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

/// To ensure the `MultipleFontLetterSpacingSemanticTokens` is tested as a wrapper of semantic tokens for compact and regular size classes.
final class MultipleFontLetterSpacingSemanticTokensTests: XCTestCase {

    /// Tests if the unique value is applied for light and dark modes
    func testInitWithOneValue() {
        let unique: TypographyFontLetterSpacingSemanticToken = TypographyRawTokens.fontLetterSpacing250
        let token = MultipleFontLetterSpacingSemanticTokens(unique)

        XCTAssertTrue(token.compact == unique)
        XCTAssertTrue(token.regular == unique)
    }

    /// Tests if compact and regular values are preserved when defined with two assigned non nil values
    func testInitWithTwoValues() {
        let compact: TypographyFontLetterSpacingSemanticToken = TypographyRawTokens.fontLetterSpacing300
        let regular: TypographyFontLetterSpacingSemanticToken = TypographyRawTokens.fontLetterSpacing650
        let token = MultipleFontLetterSpacingSemanticTokens(compact: compact, regular: regular)

        XCTAssertTrue(token.compact == compact)
        XCTAssertTrue(token.regular == regular)
    }

    /// Tests comparisons between two `MultipleFontLetterSpacingSemanticTokens` to ensure tokens are considered as equal
    /// if an only if they have the same compact and regular values and have the same types.
    func testIsEqual() {
        let first = MultipleFontLetterSpacingSemanticTokens(compact: TypographyRawTokens.fontLetterSpacing300, regular: TypographyRawTokens.fontLetterSpacing300)
        let second = MultipleFontLetterSpacingSemanticTokens(compact: TypographyRawTokens.fontLetterSpacing650, regular: TypographyRawTokens.fontLineHeight250)
        let third = MultipleFontLetterSpacingSemanticTokens(compact: TypographyRawTokens.fontLetterSpacing300, regular: TypographyRawTokens.fontLineHeight250)
        let fourth = MultipleFontLetterSpacingSemanticTokens(compact: TypographyRawTokens.fontLetterSpacing650, regular: TypographyRawTokens.fontLineHeight850)
        let fifth = MultipleFontLetterSpacingSemanticTokens(compact: TypographyRawTokens.fontLetterSpacing300, regular: TypographyRawTokens.fontLetterSpacing300)
        let sixth = MultipleSizeTokens(compact: 12, regular: 12)

        XCTAssertTrue(first.isEqual(first))
        XCTAssertFalse(first.isEqual(second))
        XCTAssertFalse(first.isEqual(third))
        XCTAssertFalse(first.isEqual(fourth))
        XCTAssertTrue(first.isEqual(fifth))
        XCTAssertFalse(first.isEqual(sixth))
    }
}
// swiftlint:enable required_deinit

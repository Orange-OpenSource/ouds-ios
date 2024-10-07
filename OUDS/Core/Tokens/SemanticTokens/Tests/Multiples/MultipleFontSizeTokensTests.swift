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

/// To ensure the `MultipleFontSizeTokens` is tested as a wrapper of semantic tokens for compact and regular size classes.
final class MultipleFontSizeTokensTests: XCTestCase {

    /// Tests if the unique value is applied for light and dark modes
    func testInitWithOneValue() {
        let unique: TypographyFontSizeSemanticToken = TypographyRawTokens.fontSize100
        let token = MultipleFontSizeTokens(unique)

        XCTAssertTrue(token.compact == unique)
        XCTAssertTrue(token.regular == unique)
    }

    /// Tests if compact and regular values are preserved when defined with two assigned non nil values
    func testInitWithTwoValues() {
        let compact: TypographyFontSizeSemanticToken = TypographyRawTokens.fontSize100
        let regular: TypographyFontSizeSemanticToken = TypographyRawTokens.fontSize550
        let token = MultipleFontSizeTokens(compact: compact, regular: regular)

        XCTAssertTrue(token.compact == compact)
        XCTAssertTrue(token.regular == regular)
    }

    /// Tests comparisons between two `MultipleFontSizeTokens` to ensure tokens are considered as equal
    /// if an only if they have the same compact and regular values and have the same types.
    func testIsEqual() {
        let first = MultipleFontSizeTokens(compact: TypographyRawTokens.fontSize100, regular: TypographyRawTokens.fontSize450)
        let second = MultipleFontSizeTokens(compact: TypographyRawTokens.fontSize550, regular: TypographyRawTokens.fontSize950)
        let third = MultipleFontSizeTokens(compact: TypographyRawTokens.fontSize100, regular: TypographyRawTokens.fontSize950)
        let fourth = MultipleFontSizeTokens(compact: TypographyRawTokens.fontSize550, regular: TypographyRawTokens.fontSize450)
        let fifth = MultipleFontSizeTokens(compact: TypographyRawTokens.fontSize100, regular: TypographyRawTokens.fontSize450)
        let sixth = MultipleSizingTokens(compact: 12, regular: 12)

        XCTAssertTrue(first.isEqual(first))
        XCTAssertFalse(first.isEqual(second))
        XCTAssertFalse(first.isEqual(third))
        XCTAssertFalse(first.isEqual(fourth))
        XCTAssertTrue(first.isEqual(fifth))
        XCTAssertFalse(first.isEqual(sixth))
    }
}

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
// swiftlint:disable type_name

/// To ensure the `MultipleFontLineHeightSemanticTokens` is tested as a wrapper of semantic tokens for compact and regular size classes.
final class MultipleFontLineHeightSemanticTokensTests: XCTestCase {

    /// Tests if the unique value is applied for light and dark modes
    func testInitWithOneValue() {
        let unique: TypographyFontLineHeightSemanticToken = TypographyRawTokens.fontLineHeight250
        let token = MultipleFontLineHeightSemanticTokens(unique)

        XCTAssertTrue(token.compact == unique)
        XCTAssertTrue(token.regular == unique)
    }

    /// Tests if compact and regular values are preserved when defined with two assigned non nil values
    func testInitWithTwoValues() {
        let compact: TypographyFontLineHeightSemanticToken = TypographyRawTokens.fontLineHeight450
        let regular: TypographyFontLineHeightSemanticToken = TypographyRawTokens.fontLineHeight550
        let token = MultipleFontLineHeightSemanticTokens(compact: compact, regular: regular)

        XCTAssertTrue(token.compact == compact)
        XCTAssertTrue(token.regular == regular)
    }

    /// Tests comparisons between two `MultipleFontLineHeightSemanticTokens` to ensure tokens are considered as equal
    /// if an only if they have the same compact and regular values and have the same types.
    func testIsEqual() {
        let first = MultipleFontLineHeightSemanticTokens(compact: TypographyRawTokens.fontLineHeight450, regular: TypographyRawTokens.fontLineHeight450)
        let second = MultipleFontLineHeightSemanticTokens(compact: TypographyRawTokens.fontLineHeight650, regular: TypographyRawTokens.fontLineHeight550)
        let third = MultipleFontLineHeightSemanticTokens(compact: TypographyRawTokens.fontLineHeight450, regular: TypographyRawTokens.fontLineHeight550)
        let fourth = MultipleFontLineHeightSemanticTokens(compact: TypographyRawTokens.fontLineHeight650, regular: TypographyRawTokens.fontLineHeight750)
        let fifth = MultipleFontLineHeightSemanticTokens(compact: TypographyRawTokens.fontLineHeight450, regular: TypographyRawTokens.fontLineHeight450)
        let sixth = MultipleSizeSemanticTokens(compact: 12, regular: 12)

        XCTAssertTrue(first.isEqual(first))
        XCTAssertFalse(first.isEqual(second))
        XCTAssertFalse(first.isEqual(third))
        XCTAssertFalse(first.isEqual(fourth))
        XCTAssertTrue(first.isEqual(fifth))
        XCTAssertFalse(first.isEqual(sixth))
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_name

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

/// To ensure the `MultipleSpacingTokens` is tested as a wrapper of semantic tokens for compact and regular size classes.
final class MultipleSpacingTokensTests: XCTestCase {

    /// Tests if compact and regular values are preserved when defined
    func testInit() {
        let compact: DimensionRawToken = 123
        let regular: DimensionRawToken = 456
        let token = MultipleSpaceTokens(compact: compact, regular: regular)

        XCTAssertTrue(token.compact == compact)
        XCTAssertTrue(token.regular == regular)
    }

    /// Tests comparisons between two `MultipleSpacingTokens` to ensure tokens are considered as equal
    /// if an only if they have the same compact and regular values and have the same types.
    func testIsEqual() {
        let first = MultipleSpaceTokens(compact: 12, regular: 34)
        let second = MultipleSpaceTokens(compact: 56, regular: 78)
        let third = MultipleSpaceTokens(compact: 12, regular: 78)
        let fourth = MultipleSpaceTokens(compact: 56, regular: 34)
        let fifth = MultipleSpaceTokens(compact: 12, regular: 34)
        let sixth = MultipleSizeTokens(compact: 0, regular: 00)

        XCTAssertTrue(first.isEqual(first))
        XCTAssertFalse(first.isEqual(second))
        XCTAssertFalse(first.isEqual(third))
        XCTAssertFalse(first.isEqual(fourth))
        XCTAssertTrue(first.isEqual(fifth))
        XCTAssertFalse(first.isEqual(sixth))
    }
}
// swiftlint:enable required_deinit

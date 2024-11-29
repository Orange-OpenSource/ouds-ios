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

/// To ensure the `MultipleTypographyCompositeRawTokens` is tested as a wrapper of semantic tokens for compact and regular size classes.
final class MultipleTypographyCompositeRawTokensTests: XCTestCase {

    /// Tests if the unique value is applied for compact and regular size classes
    func testInitWithOneValue() {
        let unique = TypographyRawTokens.typeBold550
        let token = MultipleTypographyCompositeRawTokens(unique)

        XCTAssertTrue(token.compact == unique)
        XCTAssertTrue(token.regular == unique)
    }

    /// Tests if compact and regular values are preserved when defined
    func testInitWithTwoValues() {
        let compact = TypographyRawTokens.typeRegular150
        let regular = TypographyRawTokens.typeBold550
        let token = MultipleTypographyCompositeRawTokens(compact: compact, regular: regular)

        XCTAssertTrue(token.compact == compact)
        XCTAssertTrue(token.regular == regular)
    }

    /// Tests comparisons between two `MultipleTypographyCompositeRawTokens` to ensure tokens are considered as equal
    /// if an only if they have the same compact and regular values and have the same types.
    func testIsEqual() {
        let first = MultipleTypographyCompositeRawTokens(compact: TypographyRawTokens.typeRegular150, regular: TypographyRawTokens.typeBold550)
        let second = MultipleTypographyCompositeRawTokens(compact: TypographyRawTokens.typeBold850, regular: TypographyRawTokens.typeBold750)
        let third = MultipleTypographyCompositeRawTokens(compact: TypographyRawTokens.typeRegular150, regular: TypographyRawTokens.typeBold750)
        let fourth = MultipleTypographyCompositeRawTokens(compact: TypographyRawTokens.typeBold850, regular: TypographyRawTokens.typeBold550)
        let fifth = MultipleTypographyCompositeRawTokens(compact: TypographyRawTokens.typeRegular150, regular: TypographyRawTokens.typeBold550)
        let sixth = MultipleSizeSemanticTokens(compact: 0, regular: 0)

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

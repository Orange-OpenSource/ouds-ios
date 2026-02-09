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

@testable import OUDSComponents
import Testing

struct BulletListItemTests {

    // MARK: - Latin alphabet, without prior label

    @MainActor @Test func `prefix computations check in latin alphabet without prior label on level zero depth`() {
        let label = ""
        let level = OUDSBulletList.NestedLevel.zero

        var index = 0
        var result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "1.")

        index = 1
        result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "2.")

        index = 2
        result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "3.")

        index = 26
        result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "27.")

        index = 27
        result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "28.")
    }

    @MainActor @Test func `prefix computations check in latin alphabet without prior label on level one depth`() {
        let label = ""
        let level = OUDSBulletList.NestedLevel.one

        var index = 0
        var result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "A.")

        index = 1
        result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "B.")

        index = 2
        result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "C.")

        index = 26
        result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "AA.")

        index = 27
        result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "AB.")
    }

    @MainActor @Test func `prefix computations check in latin alphabet without prior label on level two depth`() {
        let label = ""
        let level = OUDSBulletList.NestedLevel.two

        var index = 0
        var result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "a.")

        index = 1
        result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "b.")

        index = 2
        result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "c.")

        index = 26
        result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "aa.")

        index = 27
        result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "ab.")
    }

    // MARK: - Latin alphabet, with prior label

    @MainActor @Test func `prefix computations check in latin alphabet on level one depth`() {
        let label = "1."
        let level = OUDSBulletList.NestedLevel.one

        var index = 0
        var result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "1.A.")

        index = 1
        result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "1.B.")

        index = 2
        result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "1.C.")

        index = 26
        result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "1.AA.")

        index = 27
        result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "1.AB.")
    }

    @MainActor @Test func `prefix computations check in latin alphabet on level two depth`() {
        let label = "1.A."
        let level = OUDSBulletList.NestedLevel.two

        var index = 0
        var result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "1.A.a.")

        index = 1
        result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "1.A.b.")

        index = 2
        result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "1.A.c.")

        index = 26
        result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "1.A.aa.")

        index = 27
        result = BulletListItem.prefixAfter(label, for: level, at: index)
        #expect(result == "1.A.ab.")
    }
}

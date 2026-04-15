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

struct OUDSBulletListItemTests {

    // MARK: - Tests

    @MainActor @Test func `accessibility label flat list unordered leaf has no level or sub-items suffix`() {
        // Flat list (level .zero) without children → only the item text, no level/sub-items suffix.
        let label = BulletListItem.buildAccessibilityLabel(
            orderedPrefix: nil,
            text: "Banana",
            level: .zero,
            subItemsCount: 0)
        #expect(label == "Banana")
    }

    @MainActor @Test func `accessibility label nested unordered item at level zero with children has 3 components`() {
        // Item at level .zero WITH children → text + level string + sub-items string (3 components).
        let label = BulletListItem.buildAccessibilityLabel(
            orderedPrefix: nil,
            text: "Fruits",
            level: .zero,
            subItemsCount: 3)
        let parts = components(of: label)
        #expect(parts.count == 3)
        #expect(parts[0] == "Fruits")
        // parts[1] is the localised "level 1" string (key falls back to raw key in test runner)
        // parts[2] is the localised "3 sub-items" string
        #expect(!parts[1].isEmpty)
        #expect(!parts[2].isEmpty)
    }

    @MainActor @Test func `accessibility label nested unordered leaf at level one has 2 components`() {
        // Item at level .one without children → text + level string (2 components).
        let label = BulletListItem.buildAccessibilityLabel(
            orderedPrefix: nil,
            text: "Banana",
            level: .one,
            subItemsCount: 0)
        let parts = components(of: label)
        #expect(parts.count == 2)
        #expect(parts[0] == "Banana")
        #expect(!parts[1].isEmpty)
    }

    @MainActor @Test func `accessibility label nested unordered item at level one with children has 3 components`() {
        let label = BulletListItem.buildAccessibilityLabel(
            orderedPrefix: nil,
            text: "Citrus",
            level: .one,
            subItemsCount: 2)
        let parts = components(of: label)
        #expect(parts.count == 3)
        #expect(parts[0] == "Citrus")
    }

    @MainActor @Test func `accessibility label nested unordered item with single child has 3 components`() {
        let label = BulletListItem.buildAccessibilityLabel(
            orderedPrefix: nil,
            text: "Fruits",
            level: .zero,
            subItemsCount: 1)
        let parts = components(of: label)
        #expect(parts.count == 3)
        #expect(parts[0] == "Fruits")
    }

    @MainActor @Test func `accessibility label flat ordered leaf has 2 components`() {
        // Flat ordered list, item without children → ordered prefix + text (2 components, no level).
        let label = BulletListItem.buildAccessibilityLabel(
            orderedPrefix: "1.",
            text: "First",
            level: .zero,
            subItemsCount: 0)
        #expect(label == "1., First")
    }

    @MainActor @Test func `accessibility label nested ordered item at level zero with children has 3 components`() {
        // Ordered list: the hierarchical prefix already encodes depth, so no level string is added.
        // prefix + text + sub-items = 3 components.
        let label = BulletListItem.buildAccessibilityLabel(
            orderedPrefix: "1.",
            text: "Fruits",
            level: .zero,
            subItemsCount: 3)
        let parts = components(of: label)
        #expect(parts.count == 3)
        #expect(parts[0] == "1.")
        #expect(parts[1] == "Fruits")
        #expect(!parts[2].isEmpty) // localised sub-items count
    }

    @MainActor @Test func `accessibility label nested ordered leaf at level one has 2 components`() {
        // Ordered list, no children: prefix encodes depth, no extra level or sub-items suffix.
        // prefix + text = 2 components.
        let label = BulletListItem.buildAccessibilityLabel(
            orderedPrefix: "1.A.",
            text: "Banana",
            level: .one,
            subItemsCount: 0)
        #expect(label == "1.A., Banana")
    }

    @MainActor @Test func `accessibility label nested ordered item at level two with children has 3 components`() {
        // Ordered list: prefix encodes depth, sub-items count is still announced.
        // prefix + text + sub-items = 3 components.
        let label = BulletListItem.buildAccessibilityLabel(
            orderedPrefix: "1.A.a.",
            text: "Sub",
            level: .two,
            subItemsCount: 4)
        let parts = components(of: label)
        #expect(parts.count == 3)
        #expect(parts[0] == "1.A.a.")
        #expect(parts[1] == "Sub")
        #expect(!parts[2].isEmpty) // localised sub-items count
    }

    @MainActor @Test func `accessibility label bare flat list leaf has no level suffix`() {
        // Bare list, level zero, no children → only the text (1 component).
        let label = BulletListItem.buildAccessibilityLabel(
            orderedPrefix: nil,
            text: "Item",
            level: .zero,
            subItemsCount: 0)
        #expect(label == "Item")
    }

    @MainActor @Test func `accessibility label bare nested leaf has level suffix`() {
        // Bare list, level one, no children → text + level string (2 components).
        let label = BulletListItem.buildAccessibilityLabel(
            orderedPrefix: nil,
            text: "Sub Item",
            level: .one,
            subItemsCount: 0)
        let parts = components(of: label)
        #expect(parts.count == 2)
        #expect(parts[0] == "Sub Item")
    }

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

    // MARK: - Helpers

    // Note: localised strings (level / sub-items) are looked up from the OUDSComponents bundle at
    // runtime. In the Swift Package test runner the resource bundle is not bundled the same way,
    // so `String(localized:bundle:)` falls back to the raw key. The tests below therefore verify
    // the *structural* correctness (which components are present, in which order) by splitting on
    // ", " rather than comparing fully-localised sentences.

    /// Returns the components of an accessibility label by splitting on ", ".
    private func components(of label: String) -> [String] {
        label.components(separatedBy: ", ")
    }
}

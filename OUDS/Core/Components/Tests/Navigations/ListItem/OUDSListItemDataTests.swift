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
import SwiftUI
import Testing

/// Tests the textual content behavior of `OUDSListItemData`. Since v3.2.0 every optional textual
/// field (`description`, `overline`, `extraLabel`, `helperText`) is normalized internally as a
/// `TextualContent?` so that each one can carry either a plain `String` (`.raw`) or a styled
/// `AttributedString` (`.attributed`).
struct OUDSListItemDataTests {

    // MARK: - overline (String)

    @Test func `overline as String resolves to a raw overlineContent`() {
        let data = OUDSListItemData(label: .text("Label"), overline: "Overline")

        guard case let .raw(text) = data.overlineContent else {
            Issue.record("Expected .raw overlineContent")
            return
        }
        #expect(text == "Overline")
    }

    @Test func `overline as a string literal resolves to a raw overlineContent, not an attributed one`() {
        // Ensures no ambiguity at the call site: string literals convert to `.raw` through
        // `ExpressibleByStringLiteral`, never to `.attributed`.
        let data = OUDSListItemData(label: .text("Label"), overline: "Overline")

        guard case .raw = data.overlineContent else {
            Issue.record("Expected .raw overlineContent")
            return
        }
    }

    // MARK: - overline (AttributedString)

    @Test func `overline as AttributedString resolves to an attributed overlineContent`() {
        let attributed = AttributedString.from(text: "Overline", foregroundColor: Color.red, font: .body)
        let data = OUDSListItemData(label: .text("Label"), overline: .attributed(attributed))

        guard case let .attributed(text) = data.overlineContent else {
            Issue.record("Expected .attributed overlineContent")
            return
        }
        #expect(text == attributed)
    }

    @Test func `overline as AttributedString with custom view label resolves to an attributed overlineContent`() {
        let attributed = AttributedString.from(text: "Overline", foregroundColor: Color.red, font: .body)
        let data = OUDSListItemData(label: Text("Label"), accessibilityLabel: "Label", overline: .attributed(attributed))

        guard case let .attributed(text) = data.overlineContent else {
            Issue.record("Expected .attributed overlineContent")
            return
        }
        #expect(text == attributed)
    }

    @Test func `overline as AttributedString with localized key label resolves to an attributed overlineContent`() {
        let attributed = AttributedString.from(text: "Overline", foregroundColor: Color.red, font: .body)
        let data = OUDSListItemData(key: "Label", overline: .attributed(attributed))

        guard case let .attributed(text) = data.overlineContent else {
            Issue.record("Expected .attributed overlineContent")
            return
        }
        #expect(text == attributed)
    }

    // MARK: - Neither overline nor attributedOverline

    @Test func `no overline exposes a nil overlineContent`() {
        let data = OUDSListItemData(label: .text("Label"))

        #expect(data.overlineContent == nil)
    }

    // MARK: - description, extraLabel, helperText as TextualContent

    @Test func `description accepts a raw String through TextualContent`() {
        let data = OUDSListItemData(label: .text("Label"), description: "Hello")

        guard case let .raw(text) = data.descriptionContent else {
            Issue.record("Expected .raw descriptionContent")
            return
        }
        #expect(text == "Hello")
    }

    @Test func `description accepts an AttributedString through TextualContent`() {
        let attributed = AttributedString.from(text: "Hello", foregroundColor: Color.red, font: .body)
        let data = OUDSListItemData(label: .text("Label"), description: .attributed(attributed))

        guard case let .attributed(text) = data.descriptionContent else {
            Issue.record("Expected .attributed descriptionContent")
            return
        }
        #expect(text == attributed)
    }

    @Test func `extraLabel accepts an AttributedString through TextualContent`() {
        let attributed = AttributedString.from(text: "Extra", foregroundColor: Color.red, font: .body)
        let data = OUDSListItemData(label: .text("Label"), extraLabel: .attributed(attributed))

        guard case let .attributed(text) = data.extraLabelContent else {
            Issue.record("Expected .attributed extraLabelContent")
            return
        }
        #expect(text == attributed)
    }

    @Test func `helperText accepts an AttributedString through TextualContent`() {
        let attributed = AttributedString.from(text: "Helper", foregroundColor: Color.red, font: .body)
        let data = OUDSListItemData(label: .text("Label"), helperText: .attributed(attributed))

        guard case let .attributed(text) = data.helperTextContent else {
            Issue.record("Expected .attributed helperTextContent")
            return
        }
        #expect(text == attributed)
    }

    // MARK: - Label

    @Test func `label as rich AttributedString stores a rich labelContent`() {
        let attributed = AttributedString.from(text: "Rich label", foregroundColor: Color.red, font: .body)
        let data = OUDSListItemData(label: .rich(attributed))

        guard case let .rich(text) = data.labelContent else {
            Issue.record("Expected .rich labelContent")
            return
        }
        #expect(text == attributed)
    }

    @Test func `label from string literal resolves to a text label with isBold false`() {
        // Uses the ExpressibleByStringLiteral conformance of OUDSListItemData.Label through the
        // unified initializer taking a Label parameter.
        let label: OUDSListItemData.Label = "Hello"

        guard case let .text(text, isBold) = label else {
            Issue.record("Expected .text label from string literal")
            return
        }
        #expect(text == "Hello")
        #expect(isBold == false)
    }

    @Test func `rich label stringValue returns the plain-string projection of the AttributedString`() {
        let attributed = AttributedString("Rich")
        let label: OUDSListItemData.Label = .rich(attributed)

        #expect(label.stringValue == "Rich")
    }
}

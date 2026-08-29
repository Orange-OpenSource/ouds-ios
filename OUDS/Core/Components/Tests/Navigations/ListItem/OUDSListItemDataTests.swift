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

/// Tests the `overline` behavior of `OUDSListItemData`: same parameter name at init for both the
/// `String` and `AttributedString` variants, disambiguated internally through `overline` /
/// `attributedOverline` storage and the `overlineContent` computed property.
struct OUDSListItemDataTests {

    // MARK: - overline (String)

    @Test func `overline only exposes a raw overlineContent`() {
        let data = OUDSListItemData(label: "Label", overline: "Overline")

        #expect(data.overline == "Overline")
        #expect(data.attributedOverline == nil)

        guard case let .raw(text) = data.overlineContent else {
            Issue.record("Expected .raw overlineContent")
            return
        }
        #expect(text == "Overline")
    }

    @Test func `overline as a string literal resolves to the String overload, not the AttributedString one`() {
        // Ensures no ambiguity at the call site between the two `overline` overloads,
        // since `AttributedString` also conforms to `ExpressibleByStringLiteral`.
        let data = OUDSListItemData(label: "Label", overline: "Overline")

        #expect(data.overline == "Overline")
        #expect(data.attributedOverline == nil)
    }

    // MARK: - overline (AttributedString)

    @Test func `overline as AttributedString only exposes an attributed overlineContent`() {
        let attributed = AttributedString.from(text: "Overline", foregroundColor: Color.red, font: .body)
        let data = OUDSListItemData(label: "Label", overline: attributed)

        #expect(data.overline == nil)
        #expect(data.attributedOverline == attributed)

        guard case let .attributed(text) = data.overlineContent else {
            Issue.record("Expected .attributed overlineContent")
            return
        }
        #expect(text == attributed)
    }

    @Test func `overline as AttributedString with custom view label exposes an attributed overlineContent`() {
        let attributed = AttributedString.from(text: "Overline", foregroundColor: Color.red, font: .body)
        let data = OUDSListItemData(label: Text("Label"), accessibilityLabel: "Label", overline: attributed)

        #expect(data.overline == nil)
        #expect(data.attributedOverline == attributed)
    }

    @Test func `overline as AttributedString with localized key label exposes an attributed overlineContent`() {
        let attributed = AttributedString.from(text: "Overline", foregroundColor: Color.red, font: .body)
        let data = OUDSListItemData(key: "Label", overline: attributed)

        #expect(data.overline == nil)
        #expect(data.attributedOverline == attributed)
    }

    // MARK: - Neither overline nor attributedOverline

    @Test func `no overline exposes a nil overlineContent`() {
        let data = OUDSListItemData(label: "Label")

        #expect(data.overline == nil)
        #expect(data.attributedOverline == nil)
        #expect(data.overlineContent?.rawValue == nil)
    }
}

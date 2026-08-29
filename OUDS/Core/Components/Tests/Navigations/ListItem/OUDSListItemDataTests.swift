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

/// Tests the `overline` / `richTextOverline` behavior of `OUDSListItemData`.
struct OUDSListItemDataTests {

    // MARK: - overline (String)

    @Test func `overline only exposes a raw overlineContent`() {
        let data = OUDSListItemData(label: "Label", overline: "Overline")

        #expect(data.overline == "Overline")
        #expect(data.richTextOverline == nil)

        guard case let .raw(text) = data.overlineContent else {
            Issue.record("Expected .raw overlineContent")
            return
        }
        #expect(text == "Overline")
    }

    // MARK: - richTextOverline (AttributedString)

    @Test func `richTextOverline only exposes an attributed overlineContent`() {
        let attributed = AttributedString.from(text: "Overline", foregroundColor: Color.red, font: .body)
        let data = OUDSListItemData(label: "Label", richTextOverline: attributed)

        #expect(data.overline == nil)
        #expect(data.richTextOverline == attributed)

        guard case let .attributed(text) = data.overlineContent else {
            Issue.record("Expected .attributed overlineContent")
            return
        }
        #expect(text == attributed)
    }

    @Test func `richTextOverline with custom view label exposes an attributed overlineContent`() {
        let attributed = AttributedString.from(text: "Overline", foregroundColor: Color.red, font: .body)
        let data = OUDSListItemData(label: Text("Label"), accessibilityLabel: "Label", richTextOverline: attributed)

        #expect(data.overline == nil)
        #expect(data.richTextOverline == attributed)
    }

    @Test func `richTextOverline with localized key label exposes an attributed overlineContent`() {
        let attributed = AttributedString.from(text: "Overline", foregroundColor: Color.red, font: .body)
        let data = OUDSListItemData(key: "Label", richTextOverline: attributed)

        #expect(data.overline == nil)
        #expect(data.richTextOverline == attributed)
    }

    // MARK: - Neither overline nor richTextOverline

    @Test func `no overline exposes a nil overlineContent`() {
        let data = OUDSListItemData(label: "Label")

        #expect(data.overline == nil)
        #expect(data.richTextOverline == nil)
        #expect(data.overlineContent?.rawValue == nil)
    }
}

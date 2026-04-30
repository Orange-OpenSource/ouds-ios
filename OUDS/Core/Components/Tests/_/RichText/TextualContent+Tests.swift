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

import Foundation
@testable import OUDSComponents
import Testing

// MARK: - TextualContent Tests

struct TextualContentTests {

    // MARK: - rawValue — .raw case

    @Test func `rawValue of raw case returns the underlying string`() {
        let content = TextualContent.raw("hello")
        #expect(content.rawValue == "hello")
    }

    @Test func `rawValue of raw case with empty string returns empty string`() {
        let content = TextualContent.raw("")
        #expect(content.rawValue.isEmpty)
    }

    @Test func `rawValue of raw case preserves whitespace-only string`() {
        // A string made of spaces is not empty — rawValue must return it as is.
        let content = TextualContent.raw("   ")
        #expect(content.rawValue == "   ")
    }

    @Test func `rawValue of raw case preserves unicode characters`() {
        let content = TextualContent.raw("éàü 日本語 🍊")
        #expect(content.rawValue == "éàü 日本語 🍊")
    }

    // MARK: - rawValue — .attributed case

    @Test func `rawValue of attributed case returns plain characters`() {
        let content = TextualContent.attributed(AttributedString("world"))
        #expect(content.rawValue == "world")
    }

    @Test func `rawValue of attributed case with empty attributed string returns empty string`() {
        let content = TextualContent.attributed(AttributedString(""))
        #expect(content.rawValue.isEmpty)
    }

    @Test func `rawValue of attributed case from valid markdown returns text without markup`() {
        // AttributedString(markdown:) strips Markdown syntax; only the visible text remains.
        // swiftlint:disable:next force_try
        let attributed = try! AttributedString(markdown: "**bold** and _italic_")
        let content = TextualContent.attributed(attributed)
        #expect(content.rawValue == "bold and italic")
    }

    @Test func `rawValue of attributed case preserves unicode characters`() {
        let content = TextualContent.attributed(AttributedString("éàü 日本語 🍊"))
        #expect(content.rawValue == "éàü 日本語 🍊")
    }

    // MARK: - isEmpty — .raw case

    @Test func `isEmpty of raw case is true for empty string`() {
        let content = TextualContent.raw("")
        #expect(content.isEmpty)
    }

    @Test func `isEmpty of raw case is false for non-empty string`() {
        let content = TextualContent.raw("x")
        #expect(!content.isEmpty)
    }

    @Test func `isEmpty of raw case is false for whitespace-only string`() {
        // A string of spaces has characters, so isEmpty must be false.
        let content = TextualContent.raw("   ")
        #expect(!content.isEmpty)
    }

    // MARK: - isEmpty — .attributed case

    @Test func `isEmpty of attributed case is true for empty attributed string`() {
        let content = TextualContent.attributed(AttributedString(""))
        #expect(content.isEmpty)
    }

    @Test func `isEmpty of attributed case is false for non-empty attributed string`() {
        let content = TextualContent.attributed(AttributedString("x"))
        #expect(!content.isEmpty)
    }

    // MARK: - AttributedString.isEmpty extension

    // swiftlint:disable identifier_name
    @Test func `AttributedString isEmpty is true for empty attributed string`() {
        let attributed = AttributedString("")
        #expect(attributed.isEmpty)
    }

    @Test func `AttributedString isEmpty is false for non-empty attributed string`() {
        let attributed = AttributedString("a")
        #expect(!attributed.isEmpty)
    }
    // swiftlint:enable identifier_name
}

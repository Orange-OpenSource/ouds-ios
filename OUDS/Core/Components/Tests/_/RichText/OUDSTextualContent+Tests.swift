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

// MARK: - OUDSTextualContent Tests

struct OUDSTextualContentTests {

    // MARK: - rawValue — .raw case

    @Test func `rawValue of raw case returns the underlying string`() {
        let content = OUDSTextualContent.raw("hello")
        #expect(content.rawValue == "hello")
    }

    @Test func `rawValue of raw case with empty string returns empty string`() {
        let content = OUDSTextualContent.raw("")
        #expect(content.rawValue.isEmpty)
    }

    @Test func `rawValue of raw case preserves whitespace-only string`() {
        let content = OUDSTextualContent.raw("   ")
        #expect(content.rawValue == "   ")
    }

    @Test func `rawValue of raw case preserves unicode characters`() {
        let content = OUDSTextualContent.raw("éàü 日本語 🍊")
        #expect(content.rawValue == "éàü 日本語 🍊")
    }

    // MARK: - rawValue — .attributed case

    @Test func `rawValue of attributed case returns plain characters`() {
        let content = OUDSTextualContent.rich(AttributedString("world"))
        #expect(content.rawValue == "world")
    }

    @Test func `rawValue of attributed case with empty attributed string returns empty string`() {
        let content = OUDSTextualContent.rich(AttributedString(""))
        #expect(content.rawValue.isEmpty)
    }

    @Test func `rawValue of attributed case from valid markdown returns text without markup`() {
        // AttributedString(markdown:) strips Markdown syntax; only the visible text remains.
        // swiftlint:disable:next force_try
        let attributed = try! AttributedString(markdown: "**bold** and _italic_")
        let content = OUDSTextualContent.rich(attributed)
        #expect(content.rawValue == "bold and italic")
    }

    @Test func `rawValue of attributed case preserves unicode characters`() {
        let content = OUDSTextualContent.rich(AttributedString("éàü 日本語 🍊"))
        #expect(content.rawValue == "éàü 日本語 🍊")
    }

    // MARK: - isEmpty — .raw case

    @Test func `isEmpty of raw case is true for empty string`() {
        let content = OUDSTextualContent.raw("")
        #expect(content.isEmpty)
    }

    @Test func `isEmpty of raw case is false for non-empty string`() {
        let content = OUDSTextualContent.raw("x")
        #expect(!content.isEmpty)
    }

    @Test func `isEmpty of raw case is false for whitespace-only string`() {
        // A string of spaces has characters, so isEmpty must be false.
        let content = OUDSTextualContent.raw("   ")
        #expect(!content.isEmpty)
    }

    // MARK: - isEmpty — .attributed case

    @Test func `isEmpty of attributed case is true for empty attributed string`() {
        let content = OUDSTextualContent.rich(AttributedString(""))
        #expect(content.isEmpty)
    }

    @Test func `isEmpty of attributed case is false for non-empty attributed string`() {
        let content = OUDSTextualContent.rich(AttributedString("x"))
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

    // MARK: - ExpressibleByStringLiteral (string literal → .raw)

    @Test func `string literal converts to raw case`() {
        let content: OUDSTextualContent = "hello"
        var isRawCase = false
        var extractedValue = ""
        if case let .raw(value) = content {
            isRawCase = true
            extractedValue = value
        }
        #expect(isRawCase)
        #expect(extractedValue == "hello")
    }

    @Test func `string literal rawValue equals explicit raw case rawValue`() {
        let fromLiteral: OUDSTextualContent = "test"
        let fromExplicit = OUDSTextualContent.raw("test")
        #expect(fromLiteral.rawValue == fromExplicit.rawValue)
    }

    @Test func `empty string literal converts to raw case`() {
        let content: OUDSTextualContent = ""
        var isRawCase = false
        if case let .raw(value) = content {
            isRawCase = value.isEmpty
        }
        #expect(isRawCase)
    }

    // MARK: - Switch pattern matching

    @Test func `switch extracts raw text`() {
        let content = OUDSTextualContent.raw("extracted")
        var extractedText = ""
        switch content {
        case let .raw(text):
            extractedText = text
        case .rich:
            extractedText = "wrong"
        }
        #expect(extractedText == "extracted")
    }

    @Test func `switch extracts attributed text`() {
        let content = OUDSTextualContent.rich(AttributedString("extracted"))
        var extractedText = ""
        switch content {
        case .raw:
            extractedText = "wrong"
        case let .rich(text):
            extractedText = String(text.characters)
        }
        #expect(extractedText == "extracted")
    }
}

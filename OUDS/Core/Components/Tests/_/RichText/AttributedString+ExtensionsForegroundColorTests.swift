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
import OUDSComponents
import OUDSTokensSemantic
import SwiftUI
import Testing

// MARK: - AttributedString Extensions Tests (foreground color only, tokens, and LocalizedStringKey overloads)

struct AttributedStringColorExtensionsTests {

    // MARK: - from(text:) - Foreground color only

    @Test func `from text with only foreground color applies color to whole text`() {
        let text = "Hello world"
        let color = Color.blue

        let result = AttributedString.from(text: text, foregroundColor: color)

        #expect(String(result.characters) == text)
        for run in result.runs {
            #expect(run.foregroundColor == color)
        }
    }

    @Test func `from text with nil foreground color applies no color`() {
        let text = "Hello world"

        let result = AttributedString.from(text: text, foregroundColor: Color?.none)

        for run in result.runs {
            #expect(run.foregroundColor == nil)
        }
    }

    @Test func `from text with foreground color token applies resolved color`() {
        let text = "Hello world"
        let token: ColorSemanticToken = "#FF0000FF"

        let result = AttributedString.from(text: text, foregroundColor: token)

        #expect(String(result.characters) == text)
        for run in result.runs {
            #expect(run.foregroundColor == Color(hexadecimalCode: token))
        }
    }

    // MARK: - from(_:) - LocalizedStringKey, foreground color only

    @Test func `from localized key with foreground color applies color`() {
        let key: LocalizedStringKey = "Hello world"
        let color = Color.green

        let result = AttributedString.from(key, foregroundColor: color)

        for run in result.runs {
            #expect(run.foregroundColor == color)
        }
    }

    @Test func `from localized key with foreground color token applies resolved color`() {
        let key: LocalizedStringKey = "Hello world"
        let token: ColorSemanticToken = "#00FF00FF"

        let result = AttributedString.from(key, foregroundColor: token)

        for run in result.runs {
            #expect(run.foregroundColor == Color(hexadecimalCode: token))
        }
    }

    // MARK: - from(_:) - LocalizedStringKey, foreground color, font and URL configurations

    @Test func `from localized key with font and URL configurations applies link style`() throws {
        let key: LocalizedStringKey = "Check the privacy policy"
        let urlColor = Color.red
        let urlFont = Font.system(size: 14, weight: .bold)
        let textColor = Color.black
        let textFont = Font.system(size: 12)

        let configurations: [AttributedStringUrlConfiguration] = try [
            AttributedStringUrlConfiguration(
                text: "privacy policy",
                urlToOpen: #require(URL(string: "https://example.com/privacy")),
                color: urlColor,
                font: urlFont),
        ]

        let result = AttributedString.from(
            key,
            foregroundColor: textColor,
            font: textFont,
            urlConfigurations: configurations)

        if let range = result.range(of: "privacy policy") {
            #expect(result[range].foregroundColor == urlColor)
            #expect(result[range].font == urlFont)
            #expect(result[range].link == URL(string: "https://example.com/privacy"))
        }
    }

    @Test func `from localized key with foreground color token, font and URL configurations applies link style`() throws {
        let key: LocalizedStringKey = "Check the privacy policy"
        let token: ColorSemanticToken = "#000000FF"
        let urlColor = Color.red
        let urlFont = Font.system(size: 14, weight: .bold)
        let textFont = Font.system(size: 12)

        let configurations: [AttributedStringUrlConfiguration] = try [
            AttributedStringUrlConfiguration(
                text: "privacy policy",
                urlToOpen: #require(URL(string: "https://example.com/privacy")),
                color: urlColor,
                font: urlFont),
        ]

        let result = AttributedString.from(
            key,
            foregroundColor: token,
            font: textFont,
            urlConfigurations: configurations)

        if let range = result.range(of: "privacy policy") {
            #expect(result[range].foregroundColor == urlColor)
            #expect(result[range].font == urlFont)
        }
    }

    // MARK: - from(text:) - Foreground color token, font and URL configurations

    @Test func `from text with foreground color token, font and URL configurations applies link style`() throws {
        let text = "Check the privacy policy"
        let token: ColorSemanticToken = "#123456FF"
        let urlColor = Color.purple
        let urlFont = Font.system(size: 14)
        let textFont = Font.system(size: 12)

        let configurations: [AttributedStringUrlConfiguration] = try [
            AttributedStringUrlConfiguration(
                text: "privacy policy",
                urlToOpen: #require(URL(string: "https://example.com/privacy")),
                color: urlColor,
                font: urlFont),
        ]

        let result = AttributedString.from(
            text: text,
            foregroundColor: token,
            font: textFont,
            urlConfigurations: configurations)

        if let range = result.range(of: "privacy policy") {
            #expect(result[range].foregroundColor == urlColor)
            #expect(result[range].font == urlFont)
        }
    }

    // MARK: - from(markdown:) - Foreground color only

    @Test func `from markdown with only foreground color applies color to whole text`() {
        let markdown = "Simple text without hyperlinks"
        let color = Color.orange

        let result = AttributedString.from(markdown: markdown, foregroundColor: color)

        #expect(String(result.characters) == markdown)
        for run in result.runs {
            #expect(run.foregroundColor == color)
        }
    }

    @Test func `from markdown with foreground color token applies resolved color`() {
        let markdown = "Simple text without hyperlinks"
        let token: ColorSemanticToken = "#ABCDEFFF"

        let result = AttributedString.from(markdown: markdown, foregroundColor: token)

        for run in result.runs {
            #expect(run.foregroundColor == Color(hexadecimalCode: token))
        }
    }

    // MARK: - from(markdown:) - Foreground color token, font and URL configurations

    @Test func `from markdown with foreground color token, font and URL configurations applies link style`() throws {
        let markdown = "Check our [privacy policy](https://example.com/privacy)"
        let token: ColorSemanticToken = "#654321FF"
        let urlColor = Color.red
        let urlFont = Font.system(size: 14, weight: .bold)
        let textFont = Font.system(size: 12)

        let configurations: [AttributedStringUrlConfiguration] = try [
            AttributedStringUrlConfiguration(
                text: "privacy policy",
                urlToOpen: #require(URL(string: "https://example.com/privacy")),
                color: urlColor,
                font: urlFont),
        ]

        let result = AttributedString.from(
            markdown: markdown,
            foregroundColor: token,
            font: textFont,
            urlConfigurations: configurations)

        for run in result.runs where run.link != nil {
            #expect(run.foregroundColor == urlColor)
            #expect(run.font == urlFont)
            #expect(run.underlineStyle == .single)
        }
    }

    // MARK: - AttributedStringUrlConfiguration - LocalizedStringKey initializer

    @Test func `configuration from localized key resolves text and stores url`() throws {
        let key: LocalizedStringKey = "privacy policy"
        let url = try #require(URL(string: "https://example.com/privacy"))
        let color = Color.red
        let font = Font.system(size: 14)

        let configuration = AttributedStringUrlConfiguration(key, urlToOpen: url, color: color, font: font)

        let text = "Check the privacy policy"
        let result = AttributedString.from(
            text: text,
            foregroundColor: Color.black,
            font: Font.system(size: 12),
            urlConfigurations: [configuration])

        if let range = result.range(of: "privacy policy") {
            #expect(result[range].link == url)
            #expect(result[range].foregroundColor == color)
            #expect(result[range].font == font)
        }
    }
}

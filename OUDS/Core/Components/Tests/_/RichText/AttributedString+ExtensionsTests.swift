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

// MARK: - AttributedString Extensions Tests

// swiftlint:disable file_length
// swiftlint:disable type_body_length

struct AttributedStringExtensionsTests {

    // MARK: - from(markdown:) - Configuration by URL

    @Test func `from markdown with URL configuration applies color and font`() throws {
        let markdown = "Check our [privacy policy](https://example.com/privacy)"
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
            markdown: markdown,
            foregroundColor: textColor,
            font: textFont,
            urlConfigurations: configurations)

        for run in result.runs where run.link != nil {
            #expect(run.foregroundColor == urlColor)
            #expect(run.font == urlFont)
            #expect(run.underlineStyle == .single)
        }
    }

    @Test func `from markdown with URL configuration matches by URL string`() throws {
        let markdown = "Visit [our site](https://example.com) for more info"
        let urlColor = Color.blue
        let urlFont = Font.system(size: 14)
        let textColor = Color.black
        let textFont = Font.system(size: 12)

        let configurations: [AttributedStringUrlConfiguration] = try [
            AttributedStringUrlConfiguration(
                urlToOpen: #require(URL(string: "https://example.com")),
                color: urlColor,
                font: urlFont),
        ]

        let result = AttributedString.from(
            markdown: markdown,
            foregroundColor: textColor,
            font: textFont,
            urlConfigurations: configurations)

        for run in result.runs where run.link?.absoluteString == "https://example.com" {
            #expect(run.foregroundColor == urlColor)
            #expect(run.font == urlFont)
        }
    }

    // MARK: - from(markdown:) - Configuration by Text

    @Test func `from markdown with text-only configuration applies style by matching text`() {
        let markdown = "Read our [terms of service](https://example.com/terms) and [privacy policy](https://example.com/privacy)"
        let urlColor = Color.green
        let urlFont = Font.system(size: 14, weight: .medium)
        let textColor = Color.gray
        let textFont = Font.system(size: 12)

        let configurations: [AttributedStringUrlConfiguration] = [
            AttributedStringUrlConfiguration(
                text: "terms of service",
                color: urlColor,
                font: urlFont),
        ]

        let result = AttributedString.from(
            markdown: markdown,
            foregroundColor: textColor,
            font: textFont,
            urlConfigurations: configurations)

        for run in result.runs where run.link != nil {
            let linkText = String(result[run.range].characters)
            if linkText == "terms of service" {
                #expect(run.foregroundColor == urlColor)
                #expect(run.font == urlFont)
            }
        }
    }

    @Test func `from markdown with text configuration matches multiple links with same text`() {
        let markdown = "See [here](https://a.com) and [here](https://b.com) for details"
        let urlColor = Color.purple
        let urlFont = Font.system(size: 14)
        let textColor = Color.black
        let textFont = Font.system(size: 12)

        let configurations: [AttributedStringUrlConfiguration] = [
            AttributedStringUrlConfiguration(
                text: "here",
                color: urlColor,
                font: urlFont),
        ]

        let result = AttributedString.from(
            markdown: markdown,
            foregroundColor: textColor,
            font: textFont,
            urlConfigurations: configurations)

        var matchedCount = 0
        for run in result.runs where run.link != nil {
            let linkText = String(result[run.range].characters)
            if linkText == "here" {
                #expect(run.foregroundColor == urlColor)
                #expect(run.font == urlFont)
                matchedCount += 1
            }
        }
        #expect(matchedCount == 2)
    }

    // MARK: - from(markdown:) - Default Configuration

    @Test func `from markdown with default configuration applies to unmatched URLs`() throws {
        let markdown = "Check [unknown link](https://unknown.com) and [privacy](https://example.com/privacy)"
        let defaultColor = Color.orange
        let defaultFont = Font.system(size: 16, weight: .light)
        let textColor = Color.black
        let textFont = Font.system(size: 12)

        let configurations: [AttributedStringUrlConfiguration] = try [
            AttributedStringUrlConfiguration(
                text: "privacy",
                urlToOpen: #require(URL(string: "https://example.com/privacy")),
                color: Color.green,
                font: Font.system(size: 14)),
            AttributedStringUrlConfiguration(
                color: defaultColor,
                font: defaultFont),
        ]

        let result = AttributedString.from(
            markdown: markdown,
            foregroundColor: textColor,
            font: textFont,
            urlConfigurations: configurations)

        for run in result.runs where run.link?.absoluteString == "https://unknown.com" {
            #expect(run.foregroundColor == defaultColor)
            #expect(run.font == defaultFont)
        }
    }

    // MARK: - from(markdown:) - No Match

    @Test func `from markdown without matching configuration applies base style`() {
        let markdown = "Visit [our website](https://example.com)"
        let textColor = Color.blue
        let textFont = Font.system(size: 12)

        let configurations: [AttributedStringUrlConfiguration] = [
            AttributedStringUrlConfiguration(
                text: "different text",
                color: Color.red,
                font: Font.system(size: 14)),
        ]

        let result = AttributedString.from(
            markdown: markdown,
            foregroundColor: textColor,
            font: textFont,
            urlConfigurations: configurations)

        for run in result.runs where run.link != nil {
            #expect(run.foregroundColor == textColor)
            #expect(run.font == textFont)
        }
    }

    // MARK: - from(markdown:) - Edge Cases

    @Test func `from markdown with multiple links applies correct styles`() throws {
        let markdown = "Link [A](https://a.com) and [B](https://b.com) and [C](https://c.com)"
        let textColor = Color.black
        let textFont = Font.system(size: 12)

        let configurations: [AttributedStringUrlConfiguration] = try [
            AttributedStringUrlConfiguration(
                text: "A",
                urlToOpen: #require(URL(string: "https://a.com")),
                color: Color.red,
                font: Font.system(size: 14)),
            AttributedStringUrlConfiguration(
                text: "B",
                urlToOpen: #require(URL(string: "https://b.com")),
                color: Color.blue,
                font: Font.system(size: 16)),
        ]

        let result = AttributedString.from(
            markdown: markdown,
            foregroundColor: textColor,
            font: textFont,
            urlConfigurations: configurations)

        for run in result.runs where run.link != nil {
            let linkText = String(result[run.range].characters)
            if linkText == "A" {
                #expect(run.foregroundColor == Color.red)
                #expect(run.font == Font.system(size: 14))
            } else if linkText == "B" {
                #expect(run.foregroundColor == Color.blue)
                #expect(run.font == Font.system(size: 16))
            } else if linkText == "C" {
                #expect(run.foregroundColor == textColor)
                #expect(run.font == textFont)
            }
        }
    }

    // MARK: - from(text:) - Basic Tests

    @Test func `from text with URL configuration applies link style`() throws {
        let text = "Check the privacy policy and terms of use"
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
            text: text,
            foregroundColor: textColor,
            font: textFont,
            urlConfigurations: configurations)

        if let range = result.range(of: "privacy policy") {
            #expect(result[range].foregroundColor == urlColor)
            #expect(result[range].font == urlFont)
            #expect(result[range].link == URL(string: "https://example.com/privacy"))
        }
    }

    @Test func `from text with configuration text not found in string does not crash`() throws {
        let text = "Simple text without matching shard"
        let configurations: [AttributedStringUrlConfiguration] = try [
            AttributedStringUrlConfiguration(
                text: "not present",
                urlToOpen: #require(URL(string: "https://example.com")),
                color: .red,
                font: .system(size: 14)),
        ]

        let result = AttributedString.from(
            text: text,
            foregroundColor: .black,
            font: .system(size: 12),
            urlConfigurations: configurations)

        #expect(String(result.characters) == text)
        for run in result.runs {
            #expect(run.link == nil)
        }
    }

    @Test func `from text with nil foreground color applies no explicit color`() {
        let text = "Some plain text"

        let result = AttributedString.from(
            text: text,
            foregroundColor: nil,
            font: .system(size: 12),
            urlConfigurations: [])

        for run in result.runs {
            #expect(run.foregroundColor == nil)
            #expect(run.font == Font.system(size: 12))
        }
    }

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

    // MARK: - from(text:) - Foreground color and font, no URL

    @Test func `from text with foreground color and font applies both to whole text`() {
        let text = "Overline"
        let color = Color.blue
        let font = Font.system(size: 12, weight: .bold)

        let result = AttributedString.from(text: text, foregroundColor: color, font: font)

        #expect(String(result.characters) == text)
        for run in result.runs {
            #expect(run.foregroundColor == color)
            #expect(run.font == font)
        }
    }

    @Test func `from text with foreground color token and font applies resolved color and font`() {
        let text = "Overline"
        let token: ColorSemanticToken = "#112233FF"
        let font = Font.system(size: 12, weight: .bold)

        let result = AttributedString.from(text: text, foregroundColor: token, font: font)

        #expect(String(result.characters) == text)
        for run in result.runs {
            #expect(run.foregroundColor == Color(hexadecimalCode: token))
            #expect(run.font == font)
        }
    }

    // MARK: - from(_:) - LocalizedStringKey, foreground color and font, no URL

    @Test func `from localized key with foreground color and font applies both to whole text`() {
        let key: LocalizedStringKey = "Overline"
        let color = Color.green
        let font = Font.system(size: 12, weight: .semibold)

        let result = AttributedString.from(key, foregroundColor: color, font: font)

        for run in result.runs {
            #expect(run.foregroundColor == color)
            #expect(run.font == font)
        }
    }

    @Test func `from localized key with foreground color token and font applies resolved color and font`() {
        let key: LocalizedStringKey = "Overline"
        let token: ColorSemanticToken = "#445566FF"
        let font = Font.system(size: 12, weight: .semibold)

        let result = AttributedString.from(key, foregroundColor: token, font: font)

        for run in result.runs {
            #expect(run.foregroundColor == Color(hexadecimalCode: token))
            #expect(run.font == font)
        }
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable file_length

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
import OUDSFoundations
import OUDSTokensSemantic
import SwiftUI

// MARK: - Attributed String Url Configuration

// swiftlint:disable file_length
// swiftlint:disable function_default_parameter_at_end

/// Defines the configuration to apply for an URL available in a text so as to forge a styled `AttributedString` in the end.
///
/// ## Code samples
///
/// Defines styled `AttributedString` with known texts and URL to open:
///
/// ```swift
///     // Define the fonts and colors in use for URL and texts
///
///     let urlFont = Font(Font.makeFont(family: theme.fontFamily,
///                                      from: theme.fonts.bodyStrongMedium,
///                                      isCompact: (horizontalSizeClass == .compact || verticalSizeClass == .compact))
///
///     let textFont = Font(Font.makeFont(family: theme.fontFamily,
///                                       from: theme.fonts.bodyDefaultMedium,
///                                       isCompact: (horizontalSizeClass == .compact || verticalSizeClass == .compact))
///
///     let urlColor = theme.colors.contentBrandPrimary.color(for: colorScheme)
///
///     let textColor = theme.colors.contentDefault.color(for: colorScheme)
///
///     // Define the configurations
///
///     var urlConfigurations: [AttributedStringUrlConfiguration] = []
///     urlConfigurations.append(.init(text: "customers rights and duties",
///                                    urlToOpen: websiteUrl,
///                                    color: urlColor,
///                                    font: urlFont))
///     urlConfigurations.append(.init(text: "Terms of Uses",
///                                    urlToOpen: someLocalUrl,
///                                    color: urlColor,
///                                    font: urlFont))
///
///     // Forge the final rich text attributed string
///     return AttributedString.from(text: "You must read the customers rights and duties, and accept the Terms of Uses",
///                                  foregroundColor: textColor,
///                                  font: textFont,
///                                  configurations: urlConfigurations)
/// ```
///
/// Defines styled `AttributedString` for Markdown contents and unknown URL:
///
/// ```swift
///     // Define the fonts and colors in use for URL and texts
///
///     let urlFont = Font(Font.makeFont(family: theme.fontFamily,
///                                      from: theme.fonts.bodyStrongMedium,
///                                      isCompact: (horizontalSizeClass == .compact || verticalSizeClass == .compact))
///
///     let textFont = Font(Font.makeFont(family: theme.fontFamily,
///                                       from: theme.fonts.bodyDefaultMedium,
///                                       isCompact: (horizontalSizeClass == .compact || verticalSizeClass == .compact))
///
///     let urlColor = theme.colors.contentBrandPrimary.color(for: colorScheme)
///
///     let textColor = theme.colors.contentDefault.color(for: colorScheme)
///
///     // Define the configurations
///
///     var urlConfigurations: [AttributedStringUrlConfiguration] = []
///
///     // Configuration for a link with the given text
///     urlConfigurations.append(.init(text: "Privacy policy",
///                                    color: urlColor,
///                                    font: urlFont))
///     // Default configuration for any link not managed
///     urlConfigurations.append(.init(color: urlColor,
///                                    font: urlFont))
///
///     return AttributedString.from(markdown: markdownContent,
///                                  foregroundColor: textColor,
///                                  font: textFont,
///                                  configurations: urlConfigurations)
/// ```
///
/// ## Accessibility considerations
///
/// Do not use `AttributedString`  for *rich text* mode in OUDS componants if they contain hyperlinks.
/// Hyperlinks may be not accessible for Voice Over, Full Keyboard Access and Switch Control.
/// Prefer use other components like `Text` from SwiftUI.
///
/// - Since: 3.0.0
@frozen public struct AttributedStringUrlConfiguration {

    let text: String?
    let urlToOpen: URL?
    let color: Color?
    let font: Font

    /// Defines for the given text at that `LocalizedStringKey` the style to apply.
    /// Will associate to the text a `URL` to open on tap.
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` pointing to the text to define as hyperlink
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - urlToOpen: The link to open on tap on the text
    ///    - token: The color to apply to the text as URL, as OUDS token
    ///    - font: The font to apply to the text as URL
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                urlToOpen: URL,
                color token: ColorSemanticToken,
                font: Font)
    {
        self.init(key, tableName: tableName, bundle: bundle, urlToOpen: urlToOpen, color: Color(hexadecimalCode: token), font: font)
    }

    /// Defines for the given text at that `LocalizedStringKey` the style to apply.
    /// Will associate to the text a `URL` to open on tap.
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` pointing to the text to define as hyperlink
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - urlToOpen: The link to open on tap on the text
    ///    - color: The color to apply to the text as URL
    ///    - font: The font to apply to the text as URL
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                urlToOpen: URL,
                color: Color?,
                font: Font)
    {
        let resolvedText = key.resolved(tableName: tableName, bundle: bundle)
        self.init(text: resolvedText, urlToOpen: urlToOpen, color: color, font: font)
    }

    /// Defines for the given  `text` the style to apply.
    /// Will associate to the text a `URL` to open on tap, if defined.
    ///
    /// ```swift
    ///     // Default configuration for any hyperlink not managed
    ///     AttributedStringUrlConfiguration(color: someColor, font: someFont)
    ///
    ///     // Configuration for a hyperlink with a text
    ///     // More for Markdown cases
    ///     AttributedStringUrlConfiguration(text: "Privacy policy", color: someColor, font: someFont)
    ///
    ///     // Configuration to add on a text and hyperlink to open on tap
    ///     // More for programmatic case
    ///     AttributedStringUrlConfiguration(text: "Privacy policy", urlToOpen: someRemoteOrLocalUrl, color: someColor, font: someFont)
    /// ```
    ///
    /// - Parameters:
    ///    - text: The text to display as hyperlink, default set to `nil`
    ///    - urlToOpen: The link to open on tap on the text, default set to `nil`
    ///    - token: The color to apply to the text as URL, as OUDS token
    ///    - font: The font to apply to the text as URL
    public init(text: String? = nil, urlToOpen: URL? = nil, color token: ColorSemanticToken, font: Font) {
        self.init(text: text, urlToOpen: urlToOpen, color: Color(hexadecimalCode: token), font: font)
    }

    /// Defines for the given  `text` the style to apply.
    /// Will associate to the text a `URL` to open on tap, if defined.
    ///
    /// ```swift
    ///     // Default configuration for any hyperlink not managed
    ///     AttributedStringUrlConfiguration(color: someColor, font: someFont)
    ///
    ///     // Configuration for a hyperlink with a text
    ///     // More for Markdown cases
    ///     AttributedStringUrlConfiguration(text: "Privacy policy", color: someColor, font: someFont)
    ///
    ///     // Configuration to add on a text and hyperlink to open on tap
    ///     // More for programmatic case
    ///     AttributedStringUrlConfiguration(text: "Privacy policy", urlToOpen: someRemoteOrLocalUrl, color: someColor, font: someFont)
    /// ```
    ///
    /// - Parameters:
    ///    - text: The text to display as hyperlink, default set to `nil`
    ///    - urlToOpen: The link to open on tap on the text, default set to `nil`
    ///    - color: The color to apply to the text as URL
    ///    - font: The font to apply to the text as URL
    public init(text: String? = nil, urlToOpen: URL? = nil, color: Color?, font: Font) {
        self.text = text
        self.urlToOpen = urlToOpen
        self.color = color
        self.font = font
    }
}

// MARK: - Attributed String extension (from:)

extension AttributedString {

    /// Creates an `AttributedString`  with a fallback to return if the initialization for a Markdown string fails.
    init(markdown string: String, or fallback: String) {
        self = (try? AttributedString(markdown: string)) ?? AttributedString(fallback)
    }

    // MARK: Utilities (from text, only foreground colors)

    /// Creates a new `AttributedString` object from a text defined in localizables, and applies
    /// the given `token` as foreground color.
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` pointing to the text to display which contains texts for URL
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - token: The color to apply to the  text as OUDS token
    public static func from(_ key: LocalizedStringKey,
                            tableName: String? = nil,
                            bundle: Bundle = .main,
                            foregroundColor token: ColorSemanticToken) -> AttributedString
    {
        from(key, tableName: tableName, bundle: bundle, foregroundColor: Color(hexadecimalCode: token))
    }

    /// Creates a new `AttributedString` object from a text defined in localizables, and applies
    /// the given `foregroundColor`.
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` pointing to the text to display which contains texts for URL
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - foregroundColor: The color to apply to the whole text
    public static func from(_ key: LocalizedStringKey,
                            tableName: String? = nil,
                            bundle: Bundle = .main,
                            foregroundColor: Color?) -> AttributedString
    {
        let resolvedText = key.resolved(tableName: tableName, bundle: bundle)
        return from(text: resolvedText, foregroundColor: foregroundColor)
    }

    /// Creates a new `AttributedString` object from a text  and applies
    /// the given `token` as foreground color.
    ///
    /// - Parameters:
    ///    - text: The text which contains some text shards to find and turn into hyperlinks
    ///    - token: The color to apply to the text, as OUDS token
    public static func from(text: String,
                            foregroundColor token: ColorSemanticToken) -> AttributedString
    {
        from(text: text, foregroundColor: Color(hexadecimalCode: token))
    }

    /// Creates a new `AttributedString` object from a text  and applies
    /// the given `foregroundColor`.
    ///
    /// - Parameters:
    ///    - text: The text which contains some text shards to find and turn into hyperlinks
    ///    - foregroundColor: The color to apply to the whole text except the URL
    public static func from(text: String,
                            foregroundColor: Color?) -> AttributedString
    {
        var result = AttributedString(text)
        var base = AttributeContainer()
        base.foregroundColor = foregroundColor
        result.mergeAttributes(base)
        return result
    }

    // MARK: Utilities (from text, foreground colors and font, no URL)

    /// Creates a new `AttributedString` object from a text defined in localizables, and applies
    /// the given `token` as foreground color and the given `font`.
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` pointing to the text to display
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - token: The color to apply to the whole text, as OUDS token
    ///    - font: The font to apply to the whole text
    public static func from(_ key: LocalizedStringKey,
                            tableName: String? = nil,
                            bundle: Bundle = .main,
                            foregroundColor token: ColorSemanticToken,
                            font: Font) -> AttributedString
    {
        from(key, tableName: tableName, bundle: bundle, foregroundColor: Color(hexadecimalCode: token), font: font)
    }

    /// Creates a new `AttributedString` object from a text defined in localizables, and applies
    /// the given `foregroundColor` and `font`.
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` pointing to the text to display
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - foregroundColor: The color to apply to the whole text
    ///    - font: The font to apply to the whole text
    public static func from(_ key: LocalizedStringKey,
                            tableName: String? = nil,
                            bundle: Bundle = .main,
                            foregroundColor: Color?,
                            font: Font) -> AttributedString
    {
        let resolvedText = key.resolved(tableName: tableName, bundle: bundle)
        return from(text: resolvedText, foregroundColor: foregroundColor, font: font)
    }

    /// Creates a new `AttributedString` object from a text, and applies
    /// the given `token` as foreground color and the given `font`.
    ///
    /// ```swift
    ///     AttributedString.from(text: "Overline", foregroundColor: theme.colors.contentBrandPrimary, font: someFont)
    /// ```
    ///
    /// - Parameters:
    ///    - text: The text to style
    ///    - token: The color to apply to the whole text, as OUDS token
    ///    - font: The font to apply to the whole text
    public static func from(text: String,
                            foregroundColor token: ColorSemanticToken,
                            font: Font) -> AttributedString
    {
        from(text: text, foregroundColor: Color(hexadecimalCode: token), font: font)
    }

    /// Creates a new `AttributedString` object from a text, and applies
    /// the given `foregroundColor` and `font`.
    ///
    /// ```swift
    ///     AttributedString.from(text: "Overline", foregroundColor: someColor, font: someFont)
    /// ```
    ///
    /// - Parameters:
    ///    - text: The text to style
    ///    - foregroundColor: The color to apply to the whole text
    ///    - font: The font to apply to the whole text
    public static func from(text: String,
                            foregroundColor: Color?,
                            font: Font) -> AttributedString
    {
        var result = AttributedString(text)
        var base = AttributeContainer()
        base.foregroundColor = foregroundColor
        base.font = font
        result.mergeAttributes(base)
        return result
    }

    // MARK: Utilities (from text, foreground colors and URL configurations)

    /// Creates a new `AttributedString` object from a text defined in localizables, containing text shards which must be turned into hyperlinks.
    /// Applies to the main text the given `token` as foreground color and `font`, and define styles for the available URL
    /// as defined in `configurations`.
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` pointing to the text to display which contains texts for URL
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - token: The color to apply to the whole text except the URL, as OUDS token
    ///    - font: The font to apply to the whole text except the URL
    ///    - urlConfigurations: The styles to apply to the URLs
    public static func from(_ key: LocalizedStringKey,
                            tableName: String? = nil,
                            bundle: Bundle = .main,
                            foregroundColor token: ColorSemanticToken,
                            font: Font,
                            urlConfigurations: [AttributedStringUrlConfiguration]) -> AttributedString
    {
        from(key, tableName: tableName, bundle: bundle, foregroundColor: Color(hexadecimalCode: token), font: font, urlConfigurations: urlConfigurations)
    }

    /// Creates a new `AttributedString` object from a text defined in localizables, containing text shards which must be turned into hyperlinks.
    /// Applies to the main text the given `foregroundColor` and `font`, and define styles for the available URL
    /// as defined in `configurations`.
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` pointing to the text to display which contains texts for URL
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - foregroundColor: The color to apply to the whole text except the URL
    ///    - font: The font to apply to the whole text except the URL
    ///    - urlConfigurations: The styles to apply to the URLs
    public static func from(_ key: LocalizedStringKey,
                            tableName: String? = nil,
                            bundle: Bundle = .main,
                            foregroundColor: Color?,
                            font: Font,
                            urlConfigurations: [AttributedStringUrlConfiguration]) -> AttributedString
    {
        let resolvedText = key.resolved(tableName: tableName, bundle: bundle)
        return from(text: resolvedText, foregroundColor: foregroundColor, font: font, urlConfigurations: urlConfigurations)
    }

    /// Creates a new `AttributedString` object from a text defined in localizables, containing text shards which must be turned into hyperlinks.
    /// Applies to the main text the given `token`  foreground color and `font`, and define styles for the available URL
    /// as defined in `configurations`.
    ///
    /// - Parameters:
    ///    - text: The text which contains some text shards to find and turn into hyperlinks
    ///    - token: The color to apply to the whole text except the URL, as OUDS token
    ///    - font: The font to apply to the whole text except the URL
    ///    - urlConfigurations: The styles to apply to the URLs
    public static func from(text: String,
                            foregroundColor token: ColorSemanticToken,
                            font: Font,
                            urlConfigurations: [AttributedStringUrlConfiguration]) -> AttributedString
    {
        from(text: text, foregroundColor: Color(hexadecimalCode: token), font: font, urlConfigurations: urlConfigurations)
    }

    /// Creates a new `AttributedString` object from a text defined in localizables, containing text shards which must be turned into hyperlinks.
    /// Applies to the main text the given `foregroundColor` and `font`, and define styles for the available URL
    /// as defined in `configurations`.
    ///
    /// - Parameters:
    ///    - text: The text which contains some text shards to find and turn into hyperlinks
    ///    - foregroundColor: The color to apply to the whole text except the URL
    ///    - font: The font to apply to the whole text except the URL
    ///    - urlConfigurations: The styles to apply to the URLs
    public static func from(text: String,
                            foregroundColor: Color?,
                            font: Font,
                            urlConfigurations: [AttributedStringUrlConfiguration]) -> AttributedString
    {
        // Base object
        var result = AttributedString(text)

        // Global style
        var base = AttributeContainer()
        base.foregroundColor = foregroundColor
        base.font = font
        result.mergeAttributes(base)

        // Add URL configurations
        for configuration in urlConfigurations {
            if let text = configuration.text, let url = configuration.urlToOpen, let range = result.range(of: text) {
                var linkAttrs = AttributeContainer()
                linkAttrs.link = url
                linkAttrs.foregroundColor = configuration.color
                linkAttrs.font = configuration.font
                linkAttrs.underlineStyle = .single
                result[range].mergeAttributes(linkAttrs)
            }
        }

        return result
    }

    // MARK: Utilities (from Markdown)

    /// Creates a new `AttributedString` object from a source in Markdown formatand applies to the text the given `token` as foreground color.
    ///
    /// - Parameters:
    ///    - source: The Markdown text containing URL
    ///    - token: The color to apply to the whole text except the URL, as OUDS token
    public static func from(markdown source: String,
                            foregroundColor token: ColorSemanticToken) -> AttributedString
    {
        from(markdown: source, foregroundColor: Color(hexadecimalCode: token))
    }

    /// Creates a new `AttributedString` object from a source in Markdown formatand applies to the text the given `foregroundColor`.
    ///
    /// - Parameters:
    ///    - source: The Markdown text containing URL
    ///    - foregroundColor: The color to apply to the whole text except the URL
    public static func from(markdown source: String,
                            foregroundColor: Color?) -> AttributedString
    {
        var result = AttributedString(markdown: source, or: "")
        var base = AttributeContainer()
        base.foregroundColor = foregroundColor
        result.mergeAttributes(base)
        return result
    }

    /// Creates a new `AttributedString` object from a source in Markdown format containing URL.
    /// Applies to the main text the given `token` as foregrond color and `font`, and define styles for the available URL
    /// as defined in `configurations`.
    ///
    /// - Parameters:
    ///    - source: The Markdown text containing URL
    ///    - token: The color to apply to the whole text except the URL, as OUDS token
    ///    - font: The font to apply to the whole text except the URL
    ///    - urlConfigurations: The styles to apply to the URLs
    public static func from(markdown source: String,
                            foregroundColor token: ColorSemanticToken,
                            font: Font,
                            urlConfigurations: [AttributedStringUrlConfiguration]) -> AttributedString
    {
        from(markdown: source, foregroundColor: Color(hexadecimalCode: token), font: font, urlConfigurations: urlConfigurations)
    }

    /// Creates a new `AttributedString` object from a source in Markdown format containing URL.
    /// Applies to the main text the given `foregroundColor` and `font`, and define styles for the available URL
    /// as defined in `configurations`.
    ///
    /// - Parameters:
    ///    - source: The Markdown text containing URL
    ///    - foregroundColor: The color to apply to the whole text except the URL
    ///    - font: The font to apply to the whole text except the URL
    ///    - urlConfigurations: The styles to apply to the URLs
    public static func from(markdown source: String,
                            foregroundColor: Color?,
                            font: Font,
                            urlConfigurations: [AttributedStringUrlConfiguration]) -> AttributedString
    {

        // Base object
        var result = AttributedString(markdown: source, or: "")

        // Global style
        var base = AttributeContainer()
        base.foregroundColor = foregroundColor
        base.font = font
        result.mergeAttributes(base)

        // Default configuration for URL, if defined
        let defaultConfiguration = urlConfigurations.first(where: { $0.text == nil && $0.urlToOpen == nil })

        // Add URL configurations
        for run in result.runs where run.link != nil {
            if let configuration = urlConfigurations.first(where: {
                ($0.urlToOpen?.absoluteString == run.link?.absoluteString) ||
                    ($0.text == String(result[run.range].characters))
            }) {
                result[run.range].foregroundColor = configuration.color
                result[run.range].font = configuration.font
            } else if let defaultConfiguration {
                result[run.range].foregroundColor = defaultConfiguration.color
                result[run.range].font = defaultConfiguration.font
            } else {
                OL.warning("No configuration found for URL '\(String(describing: run.link?.absoluteString))'")
            }
            result[run.range].underlineStyle = .single
        }

        return result
    }
}

// swiftlint:enable function_default_parameter_at_end
// swiftlint:enable file_length

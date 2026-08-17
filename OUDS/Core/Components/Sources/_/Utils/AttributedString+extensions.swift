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
/// - Since: 3.0.0
public struct AttributedStringUrlConfiguration {

    let text: String?
    let urlToOpen: URL?
    let color: Color
    let font: Font

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
                color: Color,
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
    ///    - color: The color to apply to the text as URL
    ///    - font: The font to apply to the text as URL
    public init(text: String? = nil, urlToOpen: URL? = nil, color: Color, font: Font) {
        self.text = text
        self.urlToOpen = urlToOpen
        self.color = color
        self.font = font
    }
}

// MARK: - Attributed String extension

extension AttributedString {

    /// Creates an `AttributedString`  with a fallback to return if the initialization for a Markdown string fails.
    init(markdown string: String, or fallback: String) {
        self = (try? AttributedString(markdown: string)) ?? AttributedString(fallback)
    }

    // MARK: Utilities (from text)

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
    ///    - configurations: The styles to apply to the URLs
    public static func from(_ key: LocalizedStringKey,
                            tableName: String? = nil,
                            bundle: Bundle = .main,
                            foregroundColor: Color,
                            font: Font,
                            configurations: [AttributedStringUrlConfiguration]) -> AttributedString
    {
        let resolvedText = key.resolved(tableName: tableName, bundle: bundle)
        return from(text: resolvedText, foregroundColor: foregroundColor, font: font, configurations: configurations)
    }

    /// Creates a new `AttributedString` object from a text defined in localizables, containing text shards which must be turned into hyperlinks.
    /// Applies to the main text the given `foregroundColor` and `font`, and define styles for the available URL
    /// as defined in `configurations`.
    ///
    /// - Parameters:
    ///    - text: The text which contains some text shards to find and turn into hyperlinks
    ///    - foregroundColor: The color to apply to the whole text except the URL
    ///    - font: The font to apply to the whole text except the URL
    ///    - configurations: The styles to apply to the URLs
    public static func from(text: String,
                            foregroundColor: Color,
                            font: Font,
                            configurations: [AttributedStringUrlConfiguration]) -> AttributedString
    {
        // Base object
        var result = AttributedString(text)

        // Global style
        var base = AttributeContainer()
        base.foregroundColor = foregroundColor
        base.font = font
        result.mergeAttributes(base)

        // Add URL configurations
        for configuration in configurations {
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

    /// Creates a new `AttributedString` object from a source in Markdown format containing URL.
    /// Applies to the main text the given `foregroundColor` and `font`, and define styles for the available URL
    /// as defined in `configurations`.
    ///
    /// - Parameters:
    ///    - source: The Markdown text containing URL
    ///    - foregroundColor: The color to apply to the whole text except the URL
    ///    - font: The font to apply to the whole text except the URL
    ///    - configurations: The styles to apply to the URLs
    public static func from(markdown source: String,
                            foregroundColor: Color,
                            font: Font,
                            configurations: [AttributedStringUrlConfiguration]) -> AttributedString
    {

        // Base object
        var result = AttributedString(markdown: source, or: "")

        // Global style
        var base = AttributeContainer()
        base.foregroundColor = foregroundColor
        base.font = font
        result.mergeAttributes(base)

        // Default configuration for URL, if defined
        let defaultConfiguration = configurations.first(where: { $0.text == nil && $0.urlToOpen == nil })

        // Add URL configurations
        for run in result.runs where run.link != nil {
            if let configuration = configurations.first(where: {
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

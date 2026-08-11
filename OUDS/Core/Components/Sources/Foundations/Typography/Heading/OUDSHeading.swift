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

import OUDSFoundations
import SwiftUI

/// Text component used to structure the hierarchy of a screen.
/// Four sizes are available; the largest (`.large`) can optionally display a **marker**, i.e. a small brand-coloured
/// rectangle rendered below the text (when the current theme declares it supports one).
///
/// ## Sizes
///
/// - **XLarge**: The largest heading, useful for page titles.
/// - **Large (by default)**: The default heading. Only this size supports the marker and the *colored substring* feature.
/// - **Medium**: A medium heading, typically used for section titles.
/// - **Small**: The smallest heading, used for subsection titles.
///
/// ## Marker
///
/// Some themes (like *Orange*, *Orange Compact* and *Wireframe*) declare that a *large* heading is decorated with a small
/// coloured rectangle below the text, i.e. the **marker**. Other themes (like *Sosh*) do not use a marker at all but something else.
///
/// ## Coloring a substring
///
/// A dedicated initializer accepts a `coloredText` sub-string instead of a marker.
/// This is useful to emphasize a specific word inside a heading (for example a brand name). This feature is only
/// meaningful for `size == .large`; on other sizes a warning is logged and the text is rendered plain.
///
/// > Warning: Not all themes provide a valid `theme.colors.contentBrandSecondary` (e.g. *Orange* and *Orange Compact* where
/// > the token is marked as forbidden). When the token is forbidden the coloring is skipped .
///
/// ## Code samples
///
/// ```swift
///     // Simple raw string
///     OUDSHeading(text: "Title")
///
///     // Large heading with a marker (rendered only when the theme supports it)
///     OUDSHeading(text: "Section title", size: .large, hasMarker: true)
///
///     // Smaller heading (marker parameter would be ignored here)
///     OUDSHeading(text: "Sub-section", size: .medium)
///
///     // Heading with a brand-coloured word
///     OUDSHeading(text: "Welcome to Orange", coloredText: "Orange")
///
///     // Combined: coloured word
///     OUDSHeading(text: "Welcome to Sosh", coloredText: "Sosh")
///
///     // Localizable from a bundle
///     OUDSHeading(LocalizedStringKey("section_title"), bundle: Bundle.module, size: .large)
/// ```
///
/// ## Accessibility
///
/// The component adds the `.isHeader` accessibility trait so that assistive technologies (like *VoiceOver*)
/// announce the text as a header. When a marker is drawn, it is hidden from assistive technologies (decorative).
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![An heading typography component in light and dark modes with Orange theme](component_typography_heading_Orange)
///
/// ### Orange Compact
///
/// ![An heading typography component in light and dark modes with Orange Compact theme](component_typography_heading_OrangeCompact)
///
/// ### Sosh
///
/// ![An heading typography component in light and dark modes with Sosh theme](component_typography_heading_Sosh)
///
/// ### Wireframe
///
/// ![An heading typography component in light and dark modes with Wireframe theme](component_typography_heading_Wireframe)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 3.0.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSHeading: View {

    // MARK: - Properties

    private let text: String
    private let coloredText: String?
    private let size: Size
    private let hasMarker: Bool

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Size

    /// Defines the size of the heading text.
    ///
    /// - Since: 3.0.0
    @frozen public enum Size {
        /// The largest heading size, e.g. for page titles.
        case xLarge

        /// The default heading size. Only this size supports the marker and the *colored substring* feature.
        case large

        /// A medium heading size, e.g. for section titles.
        case medium

        /// The smallest heading size, e.g. for subsection titles.
        case small
    }

    // MARK: - Initializers

    /// Creates a heading with a raw `String`.
    ///
    /// ```swift
    ///     OUDSHeading(text: "Title", size: .large, hasMarker: true)
    /// ```
    ///
    /// - Parameters:
    ///    - text: The text of the heading.
    ///    - size: The heading size, default set to `.large`.
    ///    - hasMarker: Whether to draw the brand marker below the text. Only honored when `size == .large`
    ///     **and** the current theme supports it. Default set to `false`.
    public init(text: String, size: Size = .large, hasMarker: Bool = false) {
        self.text = text
        coloredText = nil
        self.size = size
        self.hasMarker = hasMarker
    }

    /// Creates a heading with a localized `LocalizedStringKey`, looking up the key in the given bundle.
    ///
    /// ```swift
    ///     OUDSHeading(LocalizedStringKey("section_title"),
    ///                 bundle: Bundle.module,
    ///                 size: .large,
    ///                 hasMarker: true)
    /// ```
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` used to look up the text in the given bundle.
    ///    - tableName: The name of the `.strings` file, or `nil` for the default.
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - size: The heading size, default set to `.large`.
    ///    - hasMarker: Whether to draw the brand marker below the text. Only honored when `size == .large`
    ///     **and** the current theme supports it. Default set to `false`.
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                size: Size = .large,
                hasMarker: Bool = false)
    {
        self.init(text: key.resolved(tableName: tableName, bundle: bundle),
                  size: size,
                  hasMarker: hasMarker)
    }

    /// Creates a large heading with a *sub-string* rendered with `theme.colors.contentBrandSecondary`.
    /// This variant is meant for `size == .large`; passing another size will log a warning and render the text plain.
    ///
    /// ```swift
    ///     OUDSHeading(text: "Welcome to Sosh", coloredText: "Sosh")
    /// ```
    ///
    /// - Parameters:
    ///    - text: The full text of the heading.
    ///    - coloredText: The sub-string of `text` to render with the brand secondary color.
    ///     If the sub-string is not found, or if the theme does not provide a valid brand secondary color,
    ///     a warning is logged and the text is rendered plain.
    public init(text: String, coloredText: String) {
        self.text = text
        self.coloredText = coloredText
        size = .large
        hasMarker = false
    }

    // swiftlint:disable function_default_parameter_at_end
    /// Creates a large heading with a *sub-string* rendered with `theme.colors.contentBrandSecondary`,
    /// looking up the text in a bundle for localization.
    ///
    /// ```swift
    ///     OUDSHeading(LocalizedStringKey("welcome_sosh"),
    ///                 bundle: Bundle.module,
    ///                 coloredText: "Sosh")
    /// ```
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` used to look up the text in the given bundle.
    ///    - tableName: The name of the `.strings` file, or `nil` for the default.
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - coloredText: The sub-string to render with the brand secondary color.
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                coloredText: String)
    {
        self.init(text: key.resolved(tableName: tableName, bundle: bundle),
                  coloredText: coloredText)
    }

    // swiftlint:enable function_default_parameter_at_end

    // MARK: Body

    public var body: some View {
        logMisuseWarningsIfNeeded()
        return content
    }

    @ViewBuilder
    private var content: some View {
        if mustDisplayMarker {
            VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {
                styledText
                    .foregroundColor(theme.colors.contentDefault)
                HeadingMarker()
            }
            .accessibilityElement(children: .combine)
            .accessibilityAddTraits(.isHeader)
        } else {
            styledText
                .foregroundColor(theme.colors.contentDefault)
                .accessibilityAddTraits(.isHeader)
        }
    }

    // MARK: Helpers

    /// Whether the marker should actually be drawn, taking into account size and theme support.
    private var mustDisplayMarker: Bool {
        hasMarker && size == .large && theme.hasTypographyHeadingLargeMarker
    }

    /// Emits warnings when the parameters are used outside their supported combinations.
    private func logMisuseWarningsIfNeeded() {
        if hasMarker, size != .large {
            OL.warning("The 'hasMarker' parameter of OUDSHeading is only honored when 'size == .large'. It is ignored for size '\(size)'.")
        } else if hasMarker, size == .large, !theme.hasTypographyHeadingLargeMarker {
            OL.warning("The current theme does not support a large heading marker. The 'hasMarker' parameter is ignored.")
        }
        if coloredText != nil, size != .large {
            OL.warning("The 'coloredText' parameter of OUDSHeading is only honored when 'size == .large'. It is ignored for size '\(size)'.")
        }
    }

    @ViewBuilder
    private var styledText: some View {
        switch size {
        case .xLarge:
            Text(text).headingXLarge(theme)
        case .large:
            largeText.headingLarge(theme)
        case .medium:
            Text(text).headingMedium(theme)
        case .small:
            Text(text).headingSmall(theme)
        }
    }

    private var largeText: Text {
        guard let coloredText, size == .large else {
            return Text(text)
        }
        if theme.colors.contentBrandSecondary.hasForbiddenColorValue() {
            OL.warning("The current theme does not provide a valid 'contentBrandSecondary' color. The 'coloredText' parameter is ignored.")
            return Text(text)
        }
        var attributed = AttributedString(text)
        guard let range = attributed.range(of: coloredText) else {
            OL.warning("The 'coloredText' sub-string '\(coloredText)' was not found in the heading text '\(text)'. It is ignored.")
            return Text(text)
        }
        attributed[range].foregroundColor = theme.colors.contentBrandSecondary.color(for: colorScheme)
        return Text(attributed)
    }
}

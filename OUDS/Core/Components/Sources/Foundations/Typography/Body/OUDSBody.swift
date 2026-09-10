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

import SwiftUI

/// Text component used for the main content of a screen (paragraphs, descriptions, helper texts, etc.).
///
/// ## Sizes
///
/// - **Large**: For text at a larger size, useful in engaging visual layouts.
/// - **Medium (by default)**: The default body text size, suitable for functional layouts.
/// - **Small**: For smaller text, useful for captions or dense information.
///
/// ## Weights
///
/// - **Default (by default)**: Regular weight.
/// - **Moderate**: Medium weight for slightly more emphasis.
/// - **Strong**: Bold weight for strong emphasis (headings inside paragraphs, key data, etc.).
///
/// ## Code samples
///
/// ```swift
///     OUDSBody(text: "This is the black collar song...")
///     OUDSBody(text: "This is the black collar song...", size: .large, weight: .strong)
///     OUDSBody(LocalizedStringKey("some_wording_key"), bundle: Bundle.module, size: .small, weight: .moderate)
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A body typography component in light and dark modes with Orange theme](component_typography_body_Orange)
///
/// ### Orange Compact
///
/// ![A body typography component in light and dark modes with Orange Compact theme](component_typography_body_OrangeCompact)
///
/// ### Sosh
///
/// ![A body typography component in light and dark modes with Sosh theme](component_typography_body_Sosh)
///
/// ### Wireframe
///
/// ![A body typography component in light and dark modes with Wireframe theme](component_typography_body_Wireframe)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 3.0.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSBody: View { // TODO: #1580 - Add reference to documentation when available

    // TODO: #1580 - Add illustrations

    // MARK: - Properties

    private let text: String
    private let size: Size
    private let weight: Weight

    @Environment(\.theme) private var theme

    // MARK: - Size

    /// Defines the size of the body text.
    ///
    /// - Since: 3.0.0
    @frozen public enum Size {
        /// A large body size.
        case large

        /// A medium body size (default).
        case medium

        /// A small body size.
        case small
    }

    // MARK: - Weight

    /// Defines the weight of the body text.
    ///
    /// - Since: 3.0.0
    @frozen public enum Weight {
        /// Regular weight (default).
        case `default`

        /// Medium weight.
        case moderate

        /// Bold weight.
        case strong
    }

    // MARK: - Initializers

    /// Creates a body text with a raw `String`.
    ///
    /// - Parameters:
    ///    - text: The text to display.
    ///    - size: The body size, default set to `.medium`.
    ///    - weight: The body weight, default set to `.default`.
    public init(text: String, size: Size = .medium, weight: Weight = .default) {
        self.text = text
        self.size = size
        self.weight = weight
    }

    /// Creates a body text with a localized `LocalizedStringKey`, looking up the key in the given bundle.
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` used to look up the text in the given bundle.
    ///    - tableName: The name of the `.strings` file, or `nil` for the default.
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - size: The body size, default set to `.medium`.
    ///    - weight: The body weight, default set to `.default`.
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                size: Size = .medium,
                weight: Weight = .default)
    {
        self.init(text: key.resolved(tableName: tableName, bundle: bundle), size: size, weight: weight)
    }

    // MARK: Body

    public var body: some View {
        styledText
            .foregroundColor(theme.colors.contentDefault)
    }

    /// Applies the correct typography modifier based on the requested size and weight combination.
    @ViewBuilder
    private var styledText: some View {
        switch (size, weight) {
        case (.large, .default):
            Text(text).bodyDefaultLarge(theme)
        case (.large, .moderate):
            Text(text).bodyModerateLarge(theme)
        case (.large, .strong):
            Text(text).bodyStrongLarge(theme)
        case (.medium, .default):
            Text(text).bodyDefaultMedium(theme)
        case (.medium, .moderate):
            Text(text).bodyModerateMedium(theme)
        case (.medium, .strong):
            Text(text).bodyStrongMedium(theme)
        case (.small, .default):
            Text(text).bodyDefaultSmall(theme)
        case (.small, .moderate):
            Text(text).bodyModerateSmall(theme)
        case (.small, .strong):
            Text(text).bodyStrongSmall(theme)
        }
    }
}

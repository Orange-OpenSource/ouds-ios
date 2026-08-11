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

/// Text component used for short labels attached to controls, form fields, chips, tags, captions and so on.
///
/// ## Sizes
///
/// - **XLarge**: For prominent labels.
/// - **Large**: A larger label.
/// - **Medium (by default)**: The default label size.
/// - **Small**: A smaller label, useful for captions.
///
/// ## Weights
///
/// - **Default (by default)**: Regular weight.
/// - **Moderate**: Medium weight for slightly more emphasis.
/// - **Strong**: Bold weight for strong emphasis.
///
/// ## Code samples
///
/// ```swift
///     OUDSLabel(text: "Woohoo")
///     OUDSLabel(text: "Woohoo", size: .xLarge, weight: .strong)
///     OUDSLabel(LocalizedStringKey("label_wording_key"), bundle: Bundle.module, size: .small, weight: .moderate)
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 3.0.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSLabel: View { // TODO: #1580 - Add reference to documentation when available

    // TODO: #1580 - Add illustrations

    // MARK: Properties

    private let text: String
    private let size: Size
    private let weight: Weight

    @Environment(\.theme) private var theme

    // MARK: - Size

    /// Defines the size of the label text.
    ///
    /// - Since: 3.0.0
    @frozen public enum Size {
        /// The largest label size.
        case xLarge

        /// A large label size.
        case large

        /// A medium label size (default).
        case medium

        /// A small label size.
        case small
    }

    // MARK: - Weight

    /// Defines the weight of the label text.
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

    /// Creates a label text with a raw `String`.
    ///
    /// - Parameters:
    ///    - text: The text to display.
    ///    - size: The label size, default set to `.medium`.
    ///    - weight: The label weight, default set to `.default`.
    public init(text: String, size: Size = .medium, weight: Weight = .default) {
        self.text = text
        self.size = size
        self.weight = weight
    }

    /// Creates a label text with a localized `LocalizedStringKey`, looking up the key in the given bundle.
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` used to look up the text in the given bundle.
    ///    - tableName: The name of the `.strings` file, or `nil` for the default.
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - size: The label size, default set to `.medium`.
    ///    - weight: The label weight, default set to `.default`.
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
        case (.xLarge, .default):
            Text(text).labelDefaultXLarge(theme)
        case (.xLarge, .moderate):
            Text(text).labelModerateXLarge(theme)
        case (.xLarge, .strong):
            Text(text).labelStrongXLarge(theme)
        case (.large, .default):
            Text(text).labelDefaultLarge(theme)
        case (.large, .moderate):
            Text(text).labelModerateLarge(theme)
        case (.large, .strong):
            Text(text).labelStrongLarge(theme)
        case (.medium, .default):
            Text(text).labelDefaultMedium(theme)
        case (.medium, .moderate):
            Text(text).labelModerateMedium(theme)
        case (.medium, .strong):
            Text(text).labelStrongMedium(theme)
        case (.small, .default):
            Text(text).labelDefaultSmall(theme)
        case (.small, .moderate):
            Text(text).labelModerateSmall(theme)
        case (.small, .strong):
            Text(text).labelStrongSmall(theme)
        }
    }
}

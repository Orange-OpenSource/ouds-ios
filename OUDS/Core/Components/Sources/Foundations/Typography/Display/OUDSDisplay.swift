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

/// Text component providing the largest typography styles of the design system.
/// It is used for the most prominent titles like hero sections, splash screens or top-level page headlines.
///
/// ## Sizes
///
/// Three sizes are proposed:
///
/// - **Large (by default)**: The largest display style, reserved for very impactful headlines.
/// - **Medium**: A slightly smaller display style.
/// - **Small**: The smallest display style, useful when large titles are needed on constrained layouts.
///
/// ## Code samples
///
/// ```swift
///     // Simple raw string
///     OUDSDisplay(text: "Woy!")
///
///     // Explicit size
///     OUDSDisplay(text: "Woy!", size: .medium)
///
///     // Localizable from a bundle
///     OUDSDisplay(LocalizedStringKey("welcome_title_wording_key"), bundle: Bundle.module)
///     OUDSDisplay(LocalizedStringKey("welcome_title_wording_key"), bundle: Bundle.module, size: .small)
/// ```
///
/// ## Accessibility
///
/// The component adds the `.isHeader` accessibility trait so that assistive technologies (like *VoiceOver*)
/// announce the text as a header.
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 3.0.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSDisplay: View { // TODO: #1580 - Add reference to documentation when available

    // TODO: #1580 - Add illustrations

    // MARK: Properties

    private let text: String
    private let size: Size

    @Environment(\.theme) private var theme

    // MARK: - Size

    /// Defines the size of the display text.
    ///
    /// - Since: 3.0.0
    @frozen public enum Size {
        /// The largest display size (default).
        case large

        /// A medium display size.
        case medium

        /// The smallest display size.
        case small
    }

    // MARK: - Initializers

    /// Creates a display text with a raw `String`.
    ///
    /// ```swift
    ///     OUDSDisplay(text: "Welcome", size: .large)
    /// ```
    ///
    /// - Parameters:
    ///    - text: The text to display.
    ///    - size: The display size, default set to `.large`.
    public init(text: String, size: Size = .large) {
        self.text = text
        self.size = size
    }

    /// Creates a display text with a localized `LocalizedStringKey`, looking up the key in the given bundle.
    ///
    /// ```swift
    ///     OUDSDisplay(LocalizedStringKey("welcome_title"),
    ///                 bundle: Bundle.module,
    ///                 size: .medium)
    /// ```
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` used to look up the text in the given bundle.
    ///    - tableName: The name of the `.strings` file, or `nil` for the default.
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - size: The display size, default set to `.large`.
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                size: Size = .large)
    {
        self.init(text: key.resolved(tableName: tableName, bundle: bundle), size: size)
    }

    // MARK: Body

    public var body: some View {
        styledText
            .foregroundColor(theme.colors.contentDefault)
            .accessibilityAddTraits(.isHeader)
    }

    /// Applies the correct typography modifier based on the requested size.
    @ViewBuilder
    private var styledText: some View {
        switch size {
        case .large:
            Text(text).displayLarge(theme)
        case .medium:
            Text(text).displayMedium(theme)
        case .small:
            Text(text).displaySmall(theme)
        }
    }
}

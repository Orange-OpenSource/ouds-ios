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

/// Represents the textual content displayed within a list item component such as
/// ``OUDSStaticListItem`` or ``OUDSNavigationListItem``.
///
/// ``OUDSListItemData`` groups all the text-based information that a list item can display:
/// a mandatory label (either a `String` or a custom `View`), and optional description, overline,
/// extra label, and helper text.
///
/// ## Properties
///
/// - **labelContent** *(required)*: The primary content of the list item, stored as an ``OUDSListItemData/Label``.
///   Can be a plain text `String` or a custom `View`. Always visible regardless of the item size.
/// - **label**: A computed property returning the string value of the label for backward compatibility.
///   Returns the text for string labels, or the accessibility label for custom view labels.
/// - **isBoldLabel**: A computed property returning `true` when the label is a bold text.
///   Always returns `false` for custom view labels.
/// - **description**: A secondary text displayed below the label, providing additional context.
/// - **overline**: A small text displayed above the label, often used for categories or metadata.
///   **Ignored when the list item size is `.small`** (see ``SwiftUICore/View/oudsListItemSize(_:)``).
/// - **extraLabel**: An additional text displayed below the description.
///   **Ignored when the list item size is `.small`** (see ``SwiftUICore/View/oudsListItemSize(_:)``).
/// - **helperText**: A supporting text displayed below the list item row, outside the main content area,
///   typically used for guidance or additional information.
///
/// ## Code samples
///
/// ```swift
///     // Minimal: label only (String)
///     let data = OUDSListItemData(label: "Label")
///
///     // Label with bold style
///     let data = OUDSListItemData(label: "Label", isBoldLabel: true)
///
///     // Custom view as label with accessibility label
///     let data = OUDSListItemData(
///         label: HStack {
///             Image(systemName: "star.fill")
///             Text("Custom Label")
///         },
///         accessibilityLabel: "Favorite Custom Label"
///     )
///
///     // Full content with text label
///     let data = OUDSListItemData(
///         label: "Label",
///         isBoldLabel: false,
///         description: "Description",
///         overline: "Overline",
///         extraLabel: "Extra Label",
///         helperText: "Helper text providing guidance"
///     )
///
///     // Full content with custom view label
///     let data = OUDSListItemData(
///         label: VStack(alignment: .leading) {
///             Text("Title").font(.headline)
///             Text("Subtitle").font(.caption)
///         },
///         accessibilityLabel: "Title, Subtitle",
///         description: "Description",
///         overline: "Overline",
///         extraLabel: "Extra Label",
///         helperText: "Helper text providing guidance"
///     )
///
///     // Usage with a static list item
///     OUDSStaticListItem(data: data)
///
///     // Usage with a navigation list item
///     OUDSNavigationListItem(data: data) {
///         // Navigate to next screen
///     }
/// ```
///
/// ## Custom view label
///
/// When providing a custom view as label:
/// - The `isBoldLabel` property is not applicable; all styling is controlled by the provided view.
/// - You must provide an `accessibilityLabel` parameter so that Voice Over can vocalize the label.
///   This `accessibilityLabel` is used in the combined accessibility label of the list item text container.
/// - The custom view is rendered inside the same `HStack` as a text label would be,
///   with the same frame constraints (max width, min height).
///
/// ## Small size behavior
///
/// When the list item is displayed in small size (via the `.oudsListItemSize(.small)` modifier),
/// the `overline` and `extraLabel` properties are **automatically hidden** to ensure a compact layout.
/// Only the `label`, `description`, and `helperText` remain visible.
///
/// ```swift
///     // overline and extraLabel will not be displayed
///     OUDSStaticListItem(data: OUDSListItemData(
///         label: "Label",
///         overline: "Hidden in small",
///         extraLabel: "Also hidden in small"
///     ))
///     .oudsListItemSize(.small)
/// ```
///
/// - Since: 2.2.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSListItemData {

    // MARK: - Label

    /// Represents the content of a label within a list item.
    ///
    /// The label can be either a plain text string or a custom SwiftUI view.
    ///
    /// ## Cases
    ///
    /// - **`.text(String, isBold: Bool)`**: A plain text string used as the label.
    ///   The `isBold` parameter controls whether the text is rendered with a bold font weight.
    /// - **`.custom(AnyView, accessibilityLabel: String)`**: A custom SwiftUI view used as the label,
    ///   together with an accessibility label used for Voice Over vocalization.
    ///   When using a custom view, the bold styling is not applicable since it is entirely
    ///   controlled by the provided view.
    ///
    /// ## Accessibility
    ///
    /// When using `.custom`, the ``stringValue`` property returns the provided `accessibilityLabel`.
    /// This value is used by the text container to build the combined accessibility label
    /// for the list item text parts, ensuring Voice Over can vocalize the label even when it is
    /// an arbitrary view.
    ///
    /// - Since: 2.3.0
    public enum Label {
        /// A plain text string label.
        ///
        /// - Parameters:
        ///   - text: The text string to display as the label.
        ///   - isBold: When `true`, the label is rendered with a bold font weight.
        case text(_: String, isBold: Bool = false)

        /// A custom SwiftUI view used as the label, with an accessibility label for Voice Over.
        ///
        /// - Parameters:
        ///   - view: The custom SwiftUI view to render as the label.
        ///   - accessibilityLabel: A text used for Voice Over vocalization of the label.
        case custom(_ view: AnyView, accessibilityLabel: String)

        /// Returns the string value for accessibility purposes.
        /// For `.text`, returns the text itself.
        /// For `.custom`, returns the provided `accessibilityLabel`.
        public var stringValue: String {
            switch self {
            case let .text(string, _):
                string
            case let .custom(_, accessibilityLabel):
                accessibilityLabel
            }
        }
    }

    // MARK: - Properties

    /// The primary content of the list item. Can be a plain text or a custom view.
    /// See ``OUDSListItemData/Label`` for available options.
    public let labelContent: Label

    /// An optional secondary text displayed below the label.
    public let description: String?

    /// An optional small text displayed above the label, often used for categories or metadata.
    /// **Ignored when the list item size is `.small`.**
    public let overline: String?

    /// An optional additional text displayed below the description.
    /// **Ignored when the list item size is `.small`.**
    public let extraLabel: String?

    /// An optional supporting text displayed below the list item row, outside the main content area.
    public let helperText: String?

    // MARK: - Initializers

    /// Creates a new list item data model with a text label.
    ///
    /// - Parameters:
    ///   - label: The primary text of the list item.
    ///   - isBoldLabel: When `true`, the label is rendered in bold. Defaults to `false`.
    ///   - description: An optional secondary text displayed below the label. Defaults to `nil`.
    ///   - overline: An optional text displayed above the label. Defaults to `nil`.
    ///     **Ignored when the list item size is `.small`.**
    ///   - extraLabel: An optional additional text displayed below the description. Defaults to `nil`.
    ///     **Ignored when the list item size is `.small`.**
    ///   - helperText: An optional supporting text displayed below the list item row. Defaults to `nil`.
    public init(
        label: String,
        isBoldLabel: Bool = false,
        description: String? = nil,
        overline: String? = nil,
        extraLabel: String? = nil,
        helperText: String? = nil)
    {
        labelContent = .text(label, isBold: isBoldLabel)
        self.description = description
        self.overline = overline
        self.extraLabel = extraLabel
        self.helperText = helperText
    }

    /// Creates a new list item data model with a custom view as label.
    ///
    /// When using a custom view label, the bold styling is not applicable since
    /// the styling is entirely controlled by the provided view.
    ///
    /// The `accessibilityLabel` parameter is **required** and used by Voice Over to vocalize
    /// the label. It is included in the combined accessibility label built by the text container,
    /// alongside the overline, extra label, and description.
    ///
    /// ```swift
    ///     let data = OUDSListItemData(
    ///         label: HStack {
    ///             Image(systemName: "star.fill")
    ///             Text("Favorite")
    ///         },
    ///         accessibilityLabel: "Favorite",
    ///         description: "A custom label example"
    ///     )
    ///     OUDSStaticListItem(data: data)
    /// ```
    ///
    /// - Parameters:
    ///   - label: A custom SwiftUI view to use as the primary label of the list item.
    ///   - accessibilityLabel: A text used for Voice Over vocalization of the custom label.
    ///     This value is used to build the combined accessibility label of the list item text container.
    ///   - description: An optional secondary text displayed below the label. Defaults to `nil`.
    ///   - overline: An optional text displayed above the label. Defaults to `nil`.
    ///     **Ignored when the list item size is `.small`.**
    ///   - extraLabel: An optional additional text displayed below the description. Defaults to `nil`.
    ///     **Ignored when the list item size is `.small`.**
    ///   - helperText: An optional supporting text displayed below the list item row. Defaults to `nil`.
    public init(
        label: some View,
        accessibilityLabel: String,
        description: String? = nil,
        overline: String? = nil,
        extraLabel: String? = nil,
        helperText: String? = nil)
    {
        labelContent = .custom(AnyView(label), accessibilityLabel: accessibilityLabel)
        self.description = description
        self.overline = overline
        self.extraLabel = extraLabel
        self.helperText = helperText
    }

    /// Creates a new list item data model with a localized text label.
    ///
    /// - Parameters:
    ///   - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///   - tableName: The name of the `.strings` file, or `nil` for the default
    ///   - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///   - isBoldLabel: When `true`, the label is rendered in bold. Defaults to `false`.
    ///   - description: An optional secondary text displayed below the label. Defaults to `nil`.
    ///   - overline: An optional text displayed above the label. Defaults to `nil`.
    ///     **Ignored when the list item size is `.small`.**
    ///   - extraLabel: An optional additional text displayed below the description. Defaults to `nil`.
    ///     **Ignored when the list item size is `.small`.**
    ///   - helperText: An optional supporting text displayed below the list item row. Defaults to `nil`.
    public init(
        key: LocalizedStringKey,
        tableName: String? = nil,
        bundle: Bundle = .main,
        isBoldLabel: Bool = false,
        description: String? = nil,
        overline: String? = nil,
        extraLabel: String? = nil,
        helperText: String? = nil)
    {
        self.init(
            label: key.resolved(tableName: tableName, bundle: bundle),
            isBoldLabel: isBoldLabel,
            description: description,
            overline: overline,
            extraLabel: extraLabel,
            helperText: helperText)
    }
}

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

import OUDSTokensSemantic
import SwiftUI

/// Represents the textual content displayed within a list item component such as
/// ``OUDSListStaticItem`` or ``OUDSListItemNavigation``.
///
/// `OUDSListItemData` groups all the text-based information that a list item can display:
/// a mandatory label, and optional description, overline, extra label, and helper text.
///
/// ## Properties
///
/// - **label** *(required)*: The primary text of the list item. Always visible regardless of the item size.
/// - **isBoldLabel**: When `true`, the label is rendered with a bold font weight. Defaults to `false`.
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
///     // Minimal: label only
///     let data = OUDSListItemData(label: "Label")
///
///     // Label with bold style
///     let data = OUDSListItemData(label: "Label", isBoldLabel: true)
///
///     // Full content
///     let data = OUDSListItemData(
///         label: "Label",
///         isBoldLabel: false,
///         description: "Description",
///         overline: "Overline",
///         extraLabel: "Extra Label",
///         helperText: "Helper text providing guidance"
///     )
///
///     // Usage with a static list item
///     OUDSListStaticItem(data: data)
///
///     // Usage with a navigable list item
///     OUDSListItemNavigation(data: data) {
///         // Navigate to next screen
///     }
/// ```
///
/// ## Small size behavior
///
/// When the list item is displayed in small size (via the `.oudsListItemSize(.small)` modifier),
/// the `overline` and `extraLabel` properties are **automatically hidden** to ensure a compact layout.
/// Only the `label`, `description`, and `helperText` remain visible.
///
/// ```swift
///     // overline and extraLabel will not be displayed
///     OUDSListStaticItem(data: OUDSListItemData(
///         label: "Label",
///         overline: "Hidden in small",
///         extraLabel: "Also hidden in small"
///     ))
///     .oudsListItemSize(.small)
/// ```
///
/// - Since: 2.0.0
public struct OUDSListItemData {

    /// The primary text of the list item. Always visible.
    public let label: String

    /// When `true`, the label is rendered with a bold font weight. Defaults to `false`.
    public let isBoldLabel: Bool

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

    /// Creates a new list item data model.
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
    public init(label: String,
                isBoldLabel: Bool = false,
                description: String? = nil,
                overline: String? = nil,
                extraLabel: String? = nil,
                helperText: String? = nil)
    {
        self.label = label
        self.isBoldLabel = isBoldLabel
        self.description = description
        self.overline = overline
        self.extraLabel = extraLabel
        self.helperText = helperText
    }
}

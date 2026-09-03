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

/// Represents the main content displayed within a list item component such as
/// ``OUDSStaticListItem`` or ``OUDSNavigationListItem``.
///
/// ``OUDSListItemData`` groups all the text-based information that a list item can display:
/// a mandatory label (either a `String` or a custom `View`), and optional description, overline,
/// extra label, and helper text, and slots.
///
/// ## Code samples
///
/// ```swift
///     // Minimal: label only (String)
///     let data = OUDSListItemData(label: "Label")
///
///     // Label with bold style
///     let data = OUDSListItemData(label: "Label", hasBoldLabel: true)
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
///         hasBoldLabel: false,
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
///     // Overline as a user-styled rich text (AttributedString)
///     // Same "overline" parameter name as the String variant, disambiguated by the value's type.
///     let data = OUDSListItemData(
///         label: "Label",
///         overline: .from(text: "Overline",
///                         foregroundColor: theme.colors.contentBrandPrimary.color(for: colorScheme),
///                         font: someFont)
///     )
///
///     // Usage with a static list item
///     OUDSStaticListItem(data: data)
///
///     // Usage with a navigation list item
///     OUDSNavigationListItem(data: data) {
///         // Navigate to next screen
///     }
///
///     // With slot (displayed under texts, before helper text)
///     let dataWithSlot = OUDSListItemData(
///         label: "Label",
///         textSlot: OUDSListItemData.Slot { Text("Additional content") },
///         helperText: "Helper text"
///     )
///
///     // With text slot and bottom slot (bottom slot displayed under text slot, before helper text)
///     let dataWithBothSlots = OUDSListItemData(
///         label: "Label",
///         textSlot: OUDSListItemData.Slot { Text("Slot content") },
///         bottomSlot: OUDSListItemData.Slot { Text("Bottom content") },
///         helperText: "Helper text"
///     )
/// ```
///
/// ## Custom view label
///
/// When providing a custom view as label:
/// - The `hasBoldLabel` property is not applicable; all styling is controlled by the provided view.
/// - You must provide an `accessibilityLabel` parameter so that Voice Over can vocalize the label.
///   This `accessibilityLabel` is used in the combined accessibility label of the list item text container.
/// - You must also check the accessibility of your custom views (navigation with switch control and full keyboard access, dynamic types, contrast ratios)
///
/// ## Small size behavior
///
/// When the list item is displayed in small size (via the `.oudsListItemSize(.small)` modifier),
/// the `overline` and `extraLabel` properties are **automatically hidden** to ensure a compact layout.
/// Only the `label`, `description`, and `helperText` remain visible.
///
/// The `bottomSlot` is also **automatically hidden**, but the `textSlot` remains displayed.
///
/// ```swift
///     // overline, extraLabel and bottomSlot will not be displayed
///     OUDSStaticListItem(data: OUDSListItemData(
///         label: "Label",
///         overline: "Hidden in small",
///         extraLabel: "Also hidden in small"
///     ))
///     .oudsListItemSize(.small)
/// ```
///
/// - Since: 3.0.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSListItemData {

    // MARK: - Slot

    /// Represents a custom view slot within a list item.
    ///
    /// ```swift
    ///     // Call to give to any property for slots
    ///     OUDSListItemData.Slot { Text("Some text") }
    /// ```
    ///
    /// - Since: 3.0.0
    @frozen public struct Slot {
        let view: AnyView

        /// Defines as `AnyView`  the result of `content` to be added in the `list item`  component
        public init(@ViewBuilder content: () -> some View) {
            view = AnyView(content())
        }
    }

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
    /// - Since: 3.0.0
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
    let labelContent: Label

    /// An optional secondary text displayed below the label.
    let description: String?

    /// An optional small text displayed above the label, often used for categories or metadata.
    /// **Ignored when the list item size is `.small`.**
    ///
    /// Set when the `overline: String?` initializer parameter is used. Mutually exclusive with
    /// ``attributedOverline``: use the dedicated initializers taking an `overline: AttributedString`
    /// parameter to provide a styled overline instead (same parameter name, disambiguated by type).
    let overline: String?

    /// An optional small text displayed above the label, as a user-styled `AttributedString`
    /// (font, color, etc. fully controlled by the caller).
    /// **Ignored when the list item size is `.small`.**
    ///
    /// Set when the `overline: AttributedString` initializer parameter is used. Mutually exclusive
    /// with ``overline``: only settable through the dedicated initializers taking an
    /// `overline: AttributedString` parameter.
    ///
    /// ```swift
    ///     OUDSListItemData(
    ///         label: "Label",
    ///         overline: .from(text: "Overline", foregroundColor: someColor, font: someFont)
    ///     )
    /// ```
    let attributedOverline: AttributedString?

    /// An optional additional text displayed below the description.
    /// **Ignored when the list item size is `.small`.**
    let extraLabel: String?

    /// An optional supporting text displayed below the list item row, outside the main content area.
    let helperText: String?

    /// An optional custom view displayed under the texts (overline, label, extra label, description)
    /// but before the helper text.
    ///
    /// Use this slot to insert additional content between the main text content and the helper text.
    let textSlot: Slot?

    /// An optional custom view displayed under the main content (including `slot`) and before the helper text.
    ///
    /// This slot is positioned below the main row content and above the helper text.
    /// It is useful for displaying additional information that should be visually separated from the main texts.
    ///
    /// **Note:** Not displayed in small size (via ``SwiftUICore/View/oudsListItemSize(_:)``).
    let bottomSlot: Slot?

    // MARK: - Initializers

    /// Creates a new list item data model with a text label.
    ///
    /// - Parameters:
    ///   - label: The primary text of the list item.
    ///   - hasBoldLabel: When `true`, the label is rendered in bold. Defaults to `false`.
    ///   - description: An optional secondary text displayed below the label. Defaults to `nil`.
    ///   - overline: An optional text displayed above the label. Defaults to `nil`.
    ///     **Ignored when the list item size is `.small`.**
    ///   - extraLabel: An optional additional text displayed below the description. Defaults to `nil`.
    ///     **Ignored when the list item size is `.small`.**
    ///   - helperText: An optional supporting text displayed below the list item row. Defaults to `nil`.
    ///   - textSlot: An optional custom view displayed under the texts but before the helper text. Defaults to `nil`.
    ///   - bottomSlot: An optional custom view displayed under the main content and before the helper text. Defaults to `nil`.
    public init(
        label: String,
        hasBoldLabel: Bool = false,
        description: String? = nil,
        overline: String? = nil,
        extraLabel: String? = nil,
        helperText: String? = nil,
        textSlot: Slot? = nil,
        bottomSlot: Slot? = nil)
    {
        labelContent = .text(label, isBold: hasBoldLabel)
        self.description = description
        self.overline = overline
        attributedOverline = nil
        self.extraLabel = extraLabel
        self.helperText = helperText
        self.textSlot = textSlot
        self.bottomSlot = bottomSlot
    }

    /// Creates a new list item data model with a text label and a styled `AttributedString` overline.
    ///
    /// - Parameters:
    ///   - label: The primary text of the list item.
    ///   - overline: A user-styled text displayed above the label.
    ///     **Ignored when the list item size is `.small`.**
    ///   - hasBoldLabel: When `true`, the label is rendered in bold. Defaults to `false`.
    ///   - description: An optional secondary text displayed below the label. Defaults to `nil`.
    ///   - extraLabel: An optional additional text displayed below the description. Defaults to `nil`.
    ///     **Ignored when the list item size is `.small`.**
    ///   - helperText: An optional supporting text displayed below the list item row. Defaults to `nil`.
    ///   - textSlot: An optional custom view displayed under the texts but before the helper text. Defaults to `nil`.
    ///   - bottomSlot: An optional custom view displayed under the main content and before the helper text. Defaults to `nil`.
    public init(
        label: String,
        overline: AttributedString,
        hasBoldLabel: Bool = false,
        description: String? = nil,
        extraLabel: String? = nil,
        helperText: String? = nil,
        textSlot: Slot? = nil,
        bottomSlot: Slot? = nil)
    {
        labelContent = .text(label, isBold: hasBoldLabel)
        self.description = description
        self.overline = nil
        attributedOverline = overline
        self.extraLabel = extraLabel
        self.helperText = helperText
        self.textSlot = textSlot
        self.bottomSlot = bottomSlot
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
    ///   - textSlot: An optional custom view displayed under the texts but before the helper text. Defaults to `nil`.
    ///   - bottomSlot: An optional custom view displayed under the main content and before the helper text. Defaults to `nil`.
    public init(
        label: some View,
        accessibilityLabel: String,
        description: String? = nil,
        overline: String? = nil,
        extraLabel: String? = nil,
        helperText: String? = nil,
        textSlot: Slot? = nil,
        bottomSlot: Slot? = nil)
    {
        labelContent = .custom(AnyView(label), accessibilityLabel: accessibilityLabel)
        self.description = description
        self.overline = overline
        attributedOverline = nil
        self.extraLabel = extraLabel
        self.helperText = helperText
        self.textSlot = textSlot
        self.bottomSlot = bottomSlot
    }

    /// Creates a new list item data model with a custom view as label and a styled `AttributedString` overline.
    ///
    /// - Parameters:
    ///   - label: A custom SwiftUI view to use as the primary label of the list item.
    ///   - accessibilityLabel: A text used for Voice Over vocalization of the custom label.
    ///     This value is used to build the combined accessibility label of the list item text container.
    ///   - overline: A user-styled text displayed above the label.
    ///     **Ignored when the list item size is `.small`.**
    ///   - description: An optional secondary text displayed below the label. Defaults to `nil`.
    ///   - extraLabel: An optional additional text displayed below the description. Defaults to `nil`.
    ///     **Ignored when the list item size is `.small`.**
    ///   - helperText: An optional supporting text displayed below the list item row. Defaults to `nil`.
    ///   - textSlot: An optional custom view displayed under the texts but before the helper text. Defaults to `nil`.
    ///   - bottomSlot: An optional custom view displayed under the main content and before the helper text. Defaults to `nil`.
    public init(
        label: some View,
        accessibilityLabel: String,
        overline: AttributedString,
        description: String? = nil,
        extraLabel: String? = nil,
        helperText: String? = nil,
        textSlot: Slot? = nil,
        bottomSlot: Slot? = nil)
    {
        labelContent = .custom(AnyView(label), accessibilityLabel: accessibilityLabel)
        self.description = description
        self.overline = nil
        attributedOverline = overline
        self.extraLabel = extraLabel
        self.helperText = helperText
        self.textSlot = textSlot
        self.bottomSlot = bottomSlot
    }

    /// Creates a new list item data model with a localized text label.
    ///
    /// - Parameters:
    ///   - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///   - tableName: The name of the `.strings` file, or `nil` for the default
    ///   - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///   - hasBoldLabel: When `true`, the label is rendered in bold. Defaults to `false`.
    ///   - description: An optional secondary text displayed below the label. Defaults to `nil`.
    ///   - overline: An optional text displayed above the label. Defaults to `nil`.
    ///     **Ignored when the list item size is `.small`.**
    ///   - extraLabel: An optional additional text displayed below the description. Defaults to `nil`.
    ///     **Ignored when the list item size is `.small`.**
    ///   - helperText: An optional supporting text displayed below the list item row. Defaults to `nil`.
    ///   - textSlot: An optional custom view displayed under the texts but before the helper text. Defaults to `nil`.
    ///   - bottomSlot: An optional custom view displayed under the main content and before the helper text. Defaults to `nil`.
    public init(
        key: LocalizedStringKey,
        tableName: String? = nil,
        bundle: Bundle = .main,
        hasBoldLabel: Bool = false,
        description: String? = nil,
        overline: String? = nil,
        extraLabel: String? = nil,
        helperText: String? = nil,
        textSlot: Slot? = nil,
        bottomSlot: Slot? = nil)
    {
        self.init(
            label: key.resolved(tableName: tableName, bundle: bundle),
            hasBoldLabel: hasBoldLabel,
            description: description,
            overline: overline,
            extraLabel: extraLabel,
            helperText: helperText,
            textSlot: textSlot,
            bottomSlot: bottomSlot)
    }

    /// Creates a new list item data model with a localized text label and a styled `AttributedString` overline.
    ///
    /// - Parameters:
    ///   - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///   - overline: A user-styled text displayed above the label.
    ///     **Ignored when the list item size is `.small`.**
    ///   - tableName: The name of the `.strings` file, or `nil` for the default
    ///   - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///   - hasBoldLabel: When `true`, the label is rendered in bold. Defaults to `false`.
    ///   - description: An optional secondary text displayed below the label. Defaults to `nil`.
    ///   - extraLabel: An optional additional text displayed below the description. Defaults to `nil`.
    ///     **Ignored when the list item size is `.small`.**
    ///   - helperText: An optional supporting text displayed below the list item row. Defaults to `nil`.
    ///   - textSlot: An optional custom view displayed under the texts but before the helper text. Defaults to `nil`.
    ///   - bottomSlot: An optional custom view displayed under the main content and before the helper text. Defaults to `nil`.
    public init(
        key: LocalizedStringKey,
        overline: AttributedString,
        tableName: String? = nil,
        bundle: Bundle = .main,
        hasBoldLabel: Bool = false,
        description: String? = nil,
        extraLabel: String? = nil,
        helperText: String? = nil,
        textSlot: Slot? = nil,
        bottomSlot: Slot? = nil)
    {
        self.init(
            label: key.resolved(tableName: tableName, bundle: bundle),
            overline: overline,
            hasBoldLabel: hasBoldLabel,
            description: description,
            extraLabel: extraLabel,
            helperText: helperText,
            textSlot: textSlot,
            bottomSlot: bottomSlot)
    }

    // MARK: - Overline Content

    /// The overline resolved as a ``TextualContent``, either `.raw` (from `overline`) or
    /// `.attributed` (from `attributedOverline`), `attributedOverline` taking precedence if both
    /// were somehow set. Returns `nil` if none is defined.
    var overlineContent: TextualContent? {
        if let attributedOverline {
            return .attributed(attributedOverline)
        }
        if let overline {
            return .raw(overline)
        }
        return nil
    }
}

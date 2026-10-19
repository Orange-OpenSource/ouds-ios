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
/// a mandatory label (either a `String`, an `AttributedString` or a custom `View`) and optional
/// description, overline, extra label and helper text. Each optional textual field accepts either
/// a `String` or an `AttributedString` through ``OUDSTextualContent``, plus optional slots.
///
/// ## Code samples
///
/// ```swift
///     // Minimal: label only (string literal is implicitly converted to .text)
///     let data = OUDSListItemData(label: .text("Label"))
///
///     // Label with bold style
///     let data = OUDSListItemData(label: .text("Label", isBold: true))
///
///     // Styled rich label (user-controlled font, color, markdown…)
///     let data = OUDSListItemData(
///         label: .rich(AttributedString.from(text: "Label",
///                                           foregroundColor: .orange,
///                                           font: .headline))
///     )
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
///     // Full content with text label (string literals auto-convert to .raw OUDSTextualContent)
///     let data = OUDSListItemData(
///         label: .text("Label"),
///         description: "Description",
///         overline: "Overline",
///         extraLabel: "Extra Label",
///         helperText: "Helper text providing guidance"
///     )
///
///     // Mixed raw / rich text per field — any textual field can be styled
///     let data = OUDSListItemData(
///         label: .text("Label"),
///         description: .rich(myStyledDescription),
///         overline: "Plain overline",
///         helperText: .rich(myStyledHelper)
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
///         label: .text("Label"),
///         textSlot: OUDSListItemData.Slot { Text("Additional content") },
///         helperText: "Helper text"
///     )
///
///     // With text slot and bottom slot (bottom slot displayed under text slot, before helper text)
///     let dataWithBothSlots = OUDSListItemData(
///         label: .text("Label"),
///         textSlot: OUDSListItemData.Slot { Text("Slot content") },
///         bottomSlot: OUDSListItemData.Slot { Text("Bottom content") },
///         helperText: "Helper text"
///     )
/// ```
///
/// ## Custom view label
///
/// When providing a custom view as label:
/// - Bold styling is not applicable; all styling is controlled by the provided view.
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
///         label: .text("Label"),
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
    @available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
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
    /// The label can be either a plain text string, a user-styled `AttributedString` (rich text)
    /// or an arbitrary SwiftUI view.
    ///
    /// ## Cases
    ///
    /// - **`.text(String, isBold: Bool)`**: A plain text string used as the label.
    ///   The `isBold` parameter controls whether the text is rendered with a bold font weight.
    /// - **`.rich(AttributedString)`**: A user-styled `AttributedString` used as the label.
    ///   The styling (font, color, markdown…) is entirely controlled by the caller.
    /// - **`.custom(AnyView, accessibilityLabel: String)`**: A custom SwiftUI view used as the label,
    ///   together with an accessibility label used for Voice Over vocalization.
    ///   When using a custom view, the bold styling is not applicable since it is entirely
    ///   controlled by the provided view.
    ///
    /// ## String literal convenience
    ///
    /// `Label` conforms to `ExpressibleByStringLiteral`, so a plain string literal is implicitly
    /// converted to `.text(literal, isBold: false)` wherever a `Label` is expected.
    ///
    /// ```swift
    ///     let data = OUDSListItemData(label: "Hello") // same as .text("Hello", isBold: false)
    /// ```
    ///
    /// ## Accessibility
    ///
    /// When using `.custom`, the ``stringValue`` property returns the provided `accessibilityLabel`.
    /// For `.rich`, it returns the plain-string projection of the `AttributedString`.
    /// For `.text`, it returns the text itself.
    /// This value is used by the text container to build the combined accessibility label
    /// for the list item text parts, ensuring Voice Over can vocalize the label even when it is
    /// an arbitrary view.
    ///
    /// - Since: 3.0.0
    public enum Label: ExpressibleByStringLiteral {
        /// A plain text string label.
        ///
        /// - Parameters:
        ///   - text: The text string to display as the label.
        ///   - isBold: When `true`, the label is rendered with a bold font weight.
        case text(_: String, isBold: Bool = false)

        /// A user-styled rich-text label backed by an `AttributedString`.
        ///
        /// Use this case when you need to control the font, color, markdown or any other
        /// `AttributedString` attribute of the label yourself. The library will render the
        /// provided `AttributedString` as-is in the label area.
        ///
        /// - Parameter attributedString: The styled text to display as the label.
        ///
        /// - Since: 3.2.0
        case rich(_: AttributedString)

        /// A custom SwiftUI view used as the label, with an accessibility label for Voice Over.
        /// Paddings must be managed by the given `View` in the slot.
        ///
        /// - Parameters:
        ///   - view: The custom SwiftUI view to render as the label.
        ///   - accessibilityLabel: A text used for Voice Over vocalization of the label.
        case custom(_ view: AnyView, accessibilityLabel: String)

        /// Creates a ``text(_:isBold:)`` label from a string literal (`isBold: false`).
        public init(stringLiteral value: String) {
            self = .text(value, isBold: false)
        }

        /// Returns the string value for accessibility purposes.
        /// For `.text`, returns the text itself.
        /// For `.rich`, returns the plain-string projection of the `AttributedString`.
        /// For `.custom`, returns the provided `accessibilityLabel`.
        public var stringValue: String {
            switch self {
            case let .text(string, _):
                string
            case let .rich(attributedString):
                String(attributedString.characters)
            case let .custom(_, accessibilityLabel):
                accessibilityLabel
            }
        }
    }

    // MARK: - Properties

    /// The primary content of the list item. Can be a plain text, a styled rich text or a custom view.
    /// See ``OUDSListItemData/Label`` for available options.
    let labelContent: Label

    /// An optional secondary text displayed below the label.
    /// Accepts either a plain `String` or a styled `AttributedString` through ``OUDSTextualContent``.
    let descriptionContent: OUDSTextualContent?

    /// An optional small text displayed above the label, often used for categories or metadata.
    /// Accepts either a plain `String` or a styled `AttributedString` through ``OUDSTextualContent``.
    /// **Ignored when the list item size is `.small`.**
    let overlineContent: OUDSTextualContent?

    /// An optional additional text displayed below the description.
    /// Accepts either a plain `String` or a styled `AttributedString` through ``OUDSTextualContent``.
    /// **Ignored when the list item size is `.small`.**
    let extraLabelContent: OUDSTextualContent?

    /// An optional supporting text displayed below the list item row, outside the main content area.
    /// Accepts either a plain `String` or a styled `AttributedString` through ``OUDSTextualContent``.
    let helperTextContent: OUDSTextualContent?

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
    /// Paddings must be managed by the given `View` in the slot.
    ///
    /// **Note:** Not displayed in small size (via ``SwiftUICore/View/oudsListItemSize(_:)``).
    let bottomSlot: Slot?

    // MARK: - Initializers (unified, v3.2)

    /// Creates a new list item data model with a label and optional textual fields.
    ///
    /// Every optional textual field (`description`, `overline`, `extraLabel`, `helperText`) accepts
    /// either a plain `String` or a styled `AttributedString` through ``OUDSTextualContent``. A plain
    /// string literal is automatically converted to ``OUDSTextualContent/raw(_:)`` thanks to
    /// `ExpressibleByStringLiteral`.
    ///
    /// - Parameters:
    ///   - label: The primary content of the list item (plain text, rich text or custom view).
    ///   - description: An optional secondary text displayed below the label. Defaults to `nil`.
    ///   - overline: An optional text displayed above the label. Defaults to `nil`.
    ///     **Ignored when the list item size is `.small`.**
    ///   - extraLabel: An optional additional text displayed below the description. Defaults to `nil`.
    ///     **Ignored when the list item size is `.small`.**
    ///   - helperText: An optional supporting text displayed below the list item row. Defaults to `nil`.
    ///   - textSlot: An optional custom view displayed under the texts but before the helper text. Defaults to `nil`.
    ///   - bottomSlot: An optional custom view displayed under the main content and before the helper text. Defaults to `nil`.
    ///
    /// - Since: 3.2.0
    public init(
        label: Label,
        description: OUDSTextualContent? = nil,
        overline: OUDSTextualContent? = nil,
        extraLabel: OUDSTextualContent? = nil,
        helperText: OUDSTextualContent? = nil,
        textSlot: Slot? = nil,
        bottomSlot: Slot? = nil)
    {
        labelContent = label
        descriptionContent = description
        overlineContent = overline
        extraLabelContent = extraLabel
        helperTextContent = helperText
        self.textSlot = textSlot
        self.bottomSlot = bottomSlot
    }

    /// Creates a new list item data model with a custom SwiftUI view as label and optional textual fields.
    ///
    /// Every optional textual field (`description`, `overline`, `extraLabel`, `helperText`) accepts
    /// either a plain `String` or a styled `AttributedString` through ``OUDSTextualContent``.
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
    ///
    /// - Since: 3.2.0
    public init(
        label: some View,
        accessibilityLabel: String,
        description: OUDSTextualContent? = nil,
        overline: OUDSTextualContent? = nil,
        extraLabel: OUDSTextualContent? = nil,
        helperText: OUDSTextualContent? = nil,
        textSlot: Slot? = nil,
        bottomSlot: Slot? = nil)
    {
        self.init(
            label: .custom(AnyView(label), accessibilityLabel: accessibilityLabel),
            description: description,
            overline: overline,
            extraLabel: extraLabel,
            helperText: helperText,
            textSlot: textSlot,
            bottomSlot: bottomSlot)
    }

    /// Creates a new list item data model with a localized text label and optional textual fields.
    ///
    /// Every optional textual field (`description`, `overline`, `extraLabel`, `helperText`) accepts
    /// either a plain `String` or a styled `AttributedString` through ``OUDSTextualContent``.
    ///
    /// - Parameters:
    ///   - key: A `LocalizedStringKey` used to look up the label in the given bundle.
    ///   - tableName: The name of the `.strings` file, or `nil` for the default.
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
    ///
    /// - Since: 3.2.0
    public init(
        key: LocalizedStringKey,
        tableName: String? = nil,
        bundle: Bundle = .main,
        hasBoldLabel: Bool = false,
        description: OUDSTextualContent? = nil,
        overline: OUDSTextualContent? = nil,
        extraLabel: OUDSTextualContent? = nil,
        helperText: OUDSTextualContent? = nil,
        textSlot: Slot? = nil,
        bottomSlot: Slot? = nil)
    {
        self.init(
            label: .text(key.resolved(tableName: tableName, bundle: bundle), isBold: hasBoldLabel),
            description: description,
            overline: overline,
            extraLabel: extraLabel,
            helperText: helperText,
            textSlot: textSlot,
            bottomSlot: bottomSlot)
    }
}

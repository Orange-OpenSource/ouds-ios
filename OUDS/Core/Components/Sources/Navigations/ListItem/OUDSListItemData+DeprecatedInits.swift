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

/// Deprecated initializers of ``OUDSListItemData``.
///
/// All six initializers below were introduced in v3.0.0 (one per combination of label type
/// × overline type) and are now deprecated in favor of the three unified initializers added
/// in v3.2.0 that accept ``OUDSTextualContent`` for every optional textual field.
///
/// They forward to the new unified initializers so existing call sites keep working unchanged;
/// only a deprecation warning is emitted.
///
/// See `MIGRATION.md` section `v3.0.0 → v3.2.0` for the full migration guide.
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
extension OUDSListItemData { // TODO: v4 - Remove these old inits

    // MARK: - String label

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
    ///
    /// - Since: 3.0.0
    @available(*, deprecated, message: "Use init(label:Label, ...) with OUDSTextualContent. See MIGRATION.md v3.2.0.")
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
        self.init(
            label: .text(label, isBold: hasBoldLabel),
            description: description.map { .raw($0) },
            overline: overline.map { .raw($0) },
            extraLabel: extraLabel.map { .raw($0) },
            helperText: helperText.map { .raw($0) },
            textSlot: textSlot,
            bottomSlot: bottomSlot)
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
    ///
    /// - Since: 3.0.0
    @available(*, deprecated, message: "Use init(label:Label, ...) with OUDSTextualContent. See MIGRATION.md v3.2.0.")
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
        self.init(
            label: .text(label, isBold: hasBoldLabel),
            description: description.map { .raw($0) },
            overline: .rich(overline),
            extraLabel: extraLabel.map { .raw($0) },
            helperText: helperText.map { .raw($0) },
            textSlot: textSlot,
            bottomSlot: bottomSlot)
    }

    // MARK: - Custom view label

    /// Creates a new list item data model with a custom view as label.
    ///
    /// When using a custom view label, the bold styling is not applicable since
    /// the styling is entirely controlled by the provided view.
    ///
    /// The `accessibilityLabel` parameter is **required** and used by Voice Over to vocalize
    /// the label. It is included in the combined accessibility label built by the text container,
    /// alongside the overline, extra label, and description.
    ///
    /// - Parameters:
    ///   - label: A custom SwiftUI view to use as the primary label of the list item.
    ///   - accessibilityLabel: A text used for Voice Over vocalization of the custom label.
    ///   - description: An optional secondary text displayed below the label. Defaults to `nil`.
    ///   - overline: An optional text displayed above the label. Defaults to `nil`.
    ///     **Ignored when the list item size is `.small`.**
    ///   - extraLabel: An optional additional text displayed below the description. Defaults to `nil`.
    ///     **Ignored when the list item size is `.small`.**
    ///   - helperText: An optional supporting text displayed below the list item row. Defaults to `nil`.
    ///   - textSlot: An optional custom view displayed under the texts but before the helper text. Defaults to `nil`.
    ///   - bottomSlot: An optional custom view displayed under the main content and before the helper text. Defaults to `nil`.
    ///
    /// - Since: 3.0.0
    @available(*, deprecated, message: "Use init(label:some View, accessibilityLabel:, ...) with OUDSTextualContent. See MIGRATION.md v3.2.0.")
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
        self.init(
            label: .custom(AnyView(label), accessibilityLabel: accessibilityLabel),
            description: description.map { .raw($0) },
            overline: overline.map { .raw($0) },
            extraLabel: extraLabel.map { .raw($0) },
            helperText: helperText.map { .raw($0) },
            textSlot: textSlot,
            bottomSlot: bottomSlot)
    }

    /// Creates a new list item data model with a custom view as label and a styled `AttributedString` overline.
    ///
    /// - Parameters:
    ///   - label: A custom SwiftUI view to use as the primary label of the list item.
    ///   - accessibilityLabel: A text used for Voice Over vocalization of the custom label.
    ///   - overline: A user-styled text displayed above the label.
    ///     **Ignored when the list item size is `.small`.**
    ///   - description: An optional secondary text displayed below the label. Defaults to `nil`.
    ///   - extraLabel: An optional additional text displayed below the description. Defaults to `nil`.
    ///     **Ignored when the list item size is `.small`.**
    ///   - helperText: An optional supporting text displayed below the list item row. Defaults to `nil`.
    ///   - textSlot: An optional custom view displayed under the texts but before the helper text. Defaults to `nil`.
    ///   - bottomSlot: An optional custom view displayed under the main content and before the helper text. Defaults to `nil`.
    ///
    /// - Since: 3.0.0
    @available(*, deprecated, message: "Use init(label:some View, accessibilityLabel:, ...) with OUDSTextualContent. See MIGRATION.md v3.2.0.")
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
        self.init(
            label: .custom(AnyView(label), accessibilityLabel: accessibilityLabel),
            description: description.map { .raw($0) },
            overline: .rich(overline),
            extraLabel: extraLabel.map { .raw($0) },
            helperText: helperText.map { .raw($0) },
            textSlot: textSlot,
            bottomSlot: bottomSlot)
    }

    // MARK: - LocalizedStringKey label

    /// Creates a new list item data model with a localized text label.
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
    /// - Since: 3.0.0
    @available(*, deprecated, message: "Use init(key:LocalizedStringKey, ...) with OUDSTextualContent. See MIGRATION.md v3.2.0.")
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
            label: .text(key.resolved(tableName: tableName, bundle: bundle), isBold: hasBoldLabel),
            description: description.map { .raw($0) },
            overline: overline.map { .raw($0) },
            extraLabel: extraLabel.map { .raw($0) },
            helperText: helperText.map { .raw($0) },
            textSlot: textSlot,
            bottomSlot: bottomSlot)
    }

    /// Creates a new list item data model with a localized text label and a styled `AttributedString` overline.
    ///
    /// - Parameters:
    ///   - key: A `LocalizedStringKey` used to look up the label in the given bundle.
    ///   - overline: A user-styled text displayed above the label.
    ///     **Ignored when the list item size is `.small`.**
    ///   - tableName: The name of the `.strings` file, or `nil` for the default.
    ///   - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///   - hasBoldLabel: When `true`, the label is rendered in bold. Defaults to `false`.
    ///   - description: An optional secondary text displayed below the label. Defaults to `nil`.
    ///   - extraLabel: An optional additional text displayed below the description. Defaults to `nil`.
    ///     **Ignored when the list item size is `.small`.**
    ///   - helperText: An optional supporting text displayed below the list item row. Defaults to `nil`.
    ///   - textSlot: An optional custom view displayed under the texts but before the helper text. Defaults to `nil`.
    ///   - bottomSlot: An optional custom view displayed under the main content and before the helper text. Defaults to `nil`.
    ///
    /// - Since: 3.0.0
    @available(*, deprecated, message: "Use init(key:LocalizedStringKey, ...) with OUDSTextualContent. See MIGRATION.md v3.2.0.")
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
            label: .text(key.resolved(tableName: tableName, bundle: bundle), isBold: hasBoldLabel),
            description: description.map { .raw($0) },
            overline: .rich(overline),
            extraLabel: extraLabel.map { .raw($0) },
            helperText: helperText.map { .raw($0) },
            textSlot: textSlot,
            bottomSlot: bottomSlot)
    }
}

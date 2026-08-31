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

/// Defines the elements that can be displayed at the trailing position (after the texts)
/// of a list item such as ``OUDSStaticListItem`` or ``OUDSNavigationListItem``.
///
/// The trailing element provides supplementary information, actions, or visual indicators
/// alongside the textual content of the list item. Only one trailing element can be set at a time.
///
/// ## Available options
///
/// - `text(_:)`: A textual element with various styles (see ``TextType``).
/// - `badge(_:)`: A badge component (see ``OUDSBadgeStandard`` or ``OUDSBadgeCount``).
/// - `tag(_:)`: A tag component (see ``OUDSTag``).
/// - `icon(_:)`: A status or custom icon (see ``OUDSListItemIcon``).
/// - `image(_:)`: A static image asset (see ``OUDSListItemImage``).
/// - `flag(_:)`: A country flag image (see ``OUDSListItemFlag``).
/// - `avatar(_:)`:  An avatar with icon, initials, or image (see ``OUDSListItemAvatar``).
/// - `custom(_:)`: Any custom SwiftUI view, e.g. any bespoke view.
///
/// ## Code samples
///
/// ```swift
///     // Trailing with a default label text
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Label"),
///         trailing: .text(.label("Info"))
///     )
///
///     // Trailing with a muted label
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Label"),
///         trailing: .text(.labelMuted("Secondary"))
///     )
///
///     // Trailing with label and extra label
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Label"),
///         trailing: .text(.labelAndExtraLabel("Label", "Extra"))
///     )
///
///     // Trailing with a badge according to type
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Notifications"),
///         trailing: .badge(.count(.init(3, accessibilityLabel: "3 notifications", status: .negative, size: .medium)))
///     )
///
///     // Trailing with a tag
///     let tag = OUDSTag(label: "New", size: .small)
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Feature"),
///         trailing: .tag(tag)
///     )
///
///     // Trailing with an icon
///     let icon = OUDSListItemIcon(type: .info, size: .medium)
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Label"),
///         trailing: .icon(icon)
///     )
///
///     // Trailing with an image
///     let image = OUDSListItemImage(asset: Image("il_placeholder"), size: .medium)
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Label"),
///         trailing: .image(image)
///     )
///
///     // Trailing with a country flag
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "France"),
///         trailing: .flag(.init(asset: Image("il_flag_fr"), size: .medium))
///     )
///
///     // Trailing with an avatar
///     let avatar = OUDSListItemAvatar(type: .initials("AB"), size: .medium)
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Contact"),
///         trailing: .avatar(avatar)
///     )
///
///     // Trailing with a custom view, e.g. a gauge showing a remaining SMS credit
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "SMS credit"),
///         trailing: .custom {
///             OUDSCircularProgressIndicator(progress: 0.75)
///         }
///     )
/// ```
///
/// ## Media appearance
///
/// Images can be displayed with rounded corners using the
/// ``SwiftUICore/View/oudsListItemRoundedMedia(_:)`` view modifier.
///
/// ## Small size behavior
///
/// When the list item is displayed in small size (via ``SwiftUICore/View/oudsListItemSize(_:)``):
/// - Trailing elements such as avatars and icons are rendered in their smallest available size.
/// - The extra label in ``TextType/labelAndExtraLabel(_:_:)`` is **ignored**.
/// - A `.custom` view is not resized automatically and must handle its own layout.
///
/// - Since: 3.0.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
@frozen public enum OUDSListItemTrailing {

    // MARK: - Text Type

    /// Defines the type of trailing text displayed in the list item.
    ///
    /// Each variant controls the visual style and content of the text shown at the trailing position.
    ///
    /// - Since: 3.0.0
    @frozen public enum TextType {
        /// A default-styled label.
        case label(String)

        /// A muted (less prominent) label, typically displayed in a secondary color.
        case labelMuted(String)

        /// A strong (emphasized) label, typically displayed with a bold or prominent style.
        case labelStrong(String)

        /// A default label paired with an additional extra label displayed below it.
        ///
        /// **Note:** For small size of the list item (via ``SwiftUICore/View/oudsListItemSize(_:)``),
        /// the extra label is **ignored** and only the primary label is shown.
        case labelAndExtraLabel(String, String)
    }

    // MARK: - Badge Type

    /// The type of badge displayed.
    ///
    /// - Since: 3.0.0
    @frozen public enum BadgeType {
        /// A standard badge
        case standard(OUDSBadgeStandard)

        /// A badge with count
        case count(OUDSBadgeCount)
    }

    // MARK: - Values

    /// A textual element with configurable style.
    ///
    /// See ``TextType`` for available styles: `.label`, `.labelMuted`, `.labelStrong`,
    /// and `.labelAndExtraLabel`.
    case text(TextType)

    /// A badge component providing status or count information.
    ///
    /// See ``OUDSBadgeStandard``  or ``OUDSBadgeCount``for available configurations.
    case badge(BadgeType)

    /// A tag component providing categorization or status information.
    ///
    /// See ``OUDSTag`` for available configurations.
    case tag(OUDSTag)

    /// A status or custom icon.
    ///
    /// See ``OUDSListItemIcon`` for available icon types (`.neutral`, `.info`, `.warning`, `.negative`, `.positive`)
    /// and sizes (`.small`, `.medium`, `.large`).
    case icon(OUDSListItemIcon)

    /// A static image asset displayed at the leading position.
    ///
    /// The image is displayed as-is. Use ``SwiftUICore/View/oudsListItemRoundedMedia(_:)``
    /// to apply rounded corners. Do not forget to add an accessibility label if the image is not decorative.
    ///
    /// ```swift
    ///     // Decorative image
    ///     .image(.init(asset: Image(decorative: "il_placeholder")))
    ///
    ///     // Not decorative image
    ///     .image(.init(asset: Image("meaningful_image"), description: "A nice landscape"))
    /// ```
    case image(OUDSListItemImage)

    /// A country flag image.
    case flag(OUDSListItemFlag)

    /// An avatar with icon, initials, or image.
    ///
    /// See ``OUDSListItemAvatar`` for available types (`.icon`, `.image`, `.initials`)
    /// and sizes (`.medium`, `.large`, `.extraLarge`).
    /// An optional Badge can be attached to the avatar.
    case avatar(OUDSListItemAvatar)

    /// A custom SwiftUI view displayed at the trailing position.
    ///
    /// Use this case to display any bespoke content that is not covered by the other options.
    ///
    /// The custom view is responsible for its own accessibility: unlike `.flag` and `.avatar`,
    /// it is **not** automatically hidden from assistive technologies.
    case slot(AnyView)

    /// Creates a ``slot(_:)`` trailing element from a `@ViewBuilder` closure.
    ///
    /// ```swift
    ///     OUDSStaticListItem(
    ///         data: OUDSListItemData(label: "SMS credit"),
    ///         trailing: .slot {
    ///             OUDSCircularProgressIndicator(progress: 0.75)
    ///         }
    ///     )
    /// ```
    ///
    /// - Parameter content: A view builder returning the custom view to display.
    public static func slot(@ViewBuilder _ content: () -> some View) -> Self {
        .slot(AnyView(content()))
    }
}

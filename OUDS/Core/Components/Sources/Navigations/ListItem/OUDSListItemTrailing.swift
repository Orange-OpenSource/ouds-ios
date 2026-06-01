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

/// Defines the elements that can be displayed at the trailing position (after the texts)
/// of a list item such as ``OUDSListStaticItem`` or ``OUDSListItemNavigation``.
///
/// The trailing element provides supplementary information, actions, or visual indicators
/// alongside the textual content of the list item. Only one trailing element can be set at a time.
///
/// ## Available options
///
/// - ``text(_:)``: A textual element with various styles (see ``TextType``).
/// - ``badge(_:)``: A badge component (see ``OUDSBadge``).
/// - ``tag(_:)``: A tag component (see ``OUDSTag``).
/// - ``icon(_:)``: A status or custom icon (see ``OUDSLIstItemIcon``).
/// - ``image(asset:)``: A static image asset.
/// - ``flag(asset:)``: A country flag image.
/// - ``video(_:)``: A video thumbnail loaded from a URL.
/// - ``avatar(_:)``: An avatar with icon, initials, or image (see ``OUDSListItemAvatar``).
///
/// ## Code samples
///
/// ```swift
///     // Trailing with a default label text
///     OUDSListStaticItem(
///         data: OUDSListItemData(label: "Label"),
///         trailing: .text(.label(Text("Info")))
///     )
///
///     // Trailing with a muted label
///     OUDSListStaticItem(
///         data: OUDSListItemData(label: "Label"),
///         trailing: .text(.labelMuted(Text("Secondary")))
///     )
///
///     // Trailing with label and extra label
///     OUDSListStaticItem(
///         data: OUDSListItemData(label: "Label"),
///         trailing: .text(.labelAndExtraLabel(Text("Label"), Text("Extra")))
///     )
///
///     // Trailing with a badge
///     let badge = OUDSBadge(count: 3, accessibilityLabel: "3 notifications", status: .negative, size: .medium)
///     OUDSListStaticItem(
///         data: OUDSListItemData(label: "Notifications"),
///         trailing: .badge(badge)
///     )
///
///     // Trailing with a tag
///     let tag = OUDSTag(label: "New", size: .small)
///     OUDSListStaticItem(
///         data: OUDSListItemData(label: "Feature"),
///         trailing: .tag(tag)
///     )
///
///     // Trailing with an icon
///     let icon = OUDSLIstItemIcon(type: .info, size: .medium)
///     OUDSListStaticItem(
///         data: OUDSListItemData(label: "Label"),
///         trailing: .icon(icon)
///     )
///
///     // Trailing with an image
///     OUDSListStaticItem(
///         data: OUDSListItemData(label: "Label"),
///         trailing: .image(asset: Image("il_placeholder"))
///     )
///
///     // Trailing with a country flag
///     OUDSListStaticItem(
///         data: OUDSListItemData(label: "France"),
///         trailing: .flag(asset: Image("il_flag_fr"))
///     )
///
///     // Trailing with a video thumbnail
///     OUDSListStaticItem(
///         data: OUDSListItemData(label: "Watch"),
///         trailing: .video(URL(string: "https://example.com/video.mp4")!)
///     )
///
///     // Trailing with an avatar
///     let avatar = OUDSListItemAvatar(type: .initials("AB"), size: .medium)
///     OUDSListStaticItem(
///         data: OUDSListItemData(label: "Contact"),
///         trailing: .avatar(avatar)
///     )
/// ```
///
/// ## Media appearance
///
/// Images and videos can be displayed with rounded corners using the
/// ``SwiftUICore/View/oudsListItemRoundedMedia(_:)`` view modifier.
///
/// ## Small size behavior
///
/// When the list item is displayed in small size (via ``SwiftUICore/View/oudsListItemSize(_:)``):
/// - Trailing elements such as avatars and icons are rendered in their smallest available size.
/// - The extra label in ``TextType/labelAndExtraLabel(_:_:)`` is **ignored**.
///
/// - Since: 2.0.0
@frozen public enum OUDSListItemTrailing {

    /// Defines the type of trailing text displayed in the list item.
    ///
    /// Each variant controls the visual style and content of the text shown at the trailing position.
    ///
    /// - Since: 2.0.0
    @frozen public enum TextType {
        /// A default-styled label.
        case label(Text)

        /// A muted (less prominent) label, typically displayed in a secondary color.
        case labelMuted(Text)

        /// A strong (emphasized) label, typically displayed with a bold or prominent style.
        case labelStrong(Text)

        /// A default label paired with an additional extra label displayed below it.
        ///
        /// **Note:** For small size of the list item (via ``SwiftUICore/View/oudsListItemSize(_:)``),
        /// the extra label is **ignored** and only the primary label is shown.
        case labelAndExtraLabel(Text, Text)
    }

    /// A textual element with configurable style.
    ///
    /// See ``TextType`` for available styles: `.label`, `.labelMuted`, `.labelStrong`,
    /// and `.labelAndExtraLabel`.
    case text(TextType)

    /// A badge component providing status or count information.
    ///
    /// See ``OUDSBadge`` for available configurations.
    case badge(OUDSBadge)

    /// A tag component providing categorization or status information.
    ///
    /// See ``OUDSTag`` for available configurations.
    case tag(OUDSTag)

    /// A status or custom icon.
    ///
    /// See ``OUDSLIstItemIcon`` for available icon types (`.neutral`, `.info`, `.warning`, `.negative`, `.positive`)
    /// and sizes (`.small`, `.medium`, `.large`).
    case icon(OUDSLIstItemIcon)

    /// A static image asset.
    ///
    /// Use ``SwiftUICore/View/oudsListItemRoundedMedia(_:)`` to apply rounded corners.
    case image(asset: Image)

    /// A country flag image.
    case flag(asset: Image)

    /// A video thumbnail loaded from the given URL.
    ///
    /// Use ``SwiftUICore/View/oudsListItemRoundedMedia(_:)`` to apply rounded corners.
    case video(URL)

    /// An avatar with icon, initials, or image.
    ///
    /// See ``OUDSListItemAvatar`` for available types (`.icon`, `.image`, `.initials`)
    /// and sizes (`.medium`, `.large`, `.extraLarge`).
    /// An optional ``OUDSBadge`` can be attached to the avatar.
    case avatar(OUDSListItemAvatar)
}

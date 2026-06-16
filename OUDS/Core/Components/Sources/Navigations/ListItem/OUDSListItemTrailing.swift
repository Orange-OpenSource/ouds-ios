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
/// - `badge(_:)`: A badge component (see ``OUDSBadge``).
/// - `tag(_:)`: A tag component (see ``OUDSTag``).
/// - `icon(_:)`: A status or custom icon (see ``OUDSListItemIcon``).
/// - `image(asset:)`: A static image asset.
/// - `flag(asset:)`: A country flag image.
/// - `video(_:autoplay:muted:tapToTogglePlay:tapToToggleMute:)`: A video loaded from a URL **(iOS only)**.
/// - `avatar(_:)`: An avatar with icon, initials, or image (see ``OUDSListItemAvatar``).
///
/// ## Code samples
///
/// ```swift
///     // Trailing with a default label text
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Label"),
///         trailing: .text(.label(Text("Info")))
///     )
///
///     // Trailing with a muted label
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Label"),
///         trailing: .text(.labelMuted(Text("Secondary")))
///     )
///
///     // Trailing with label and extra label
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Label"),
///         trailing: .text(.labelAndExtraLabel(Text("Label"), Text("Extra")))
///     )
///
///     // Trailing with a badge
///     let badge = OUDSBadge(count: 3, accessibilityLabel: "3 notifications", status: .negative, size: .medium)
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Notifications"),
///         trailing: .badge(badge)
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
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Label"),
///         trailing: .image(asset: Image("il_placeholder"))
///     )
///
///     // Trailing with a country flag
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "France"),
///         trailing: .flag(asset: Image("il_flag_fr"))
///     )
///
///     // Trailing with a video thumbnail
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Watch"),
///         trailing: .video(URL(string: "https://example.com/video.mp4")!)
///     )
///
///     // Trailing with an avatar
///     let avatar = OUDSListItemAvatar(type: .initials("AB"), size: .medium)
///     OUDSStaticListItem(
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
/// - Since: 2.2.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
@frozen public enum OUDSListItemTrailing {

    /// Defines the type of trailing text displayed in the list item.
    ///
    /// Each variant controls the visual style and content of the text shown at the trailing position.
    ///
    /// - Since: 2.2.0
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
    ///     .image(asset: Image(decorative: "il_placeholder"))
    ///
    ///     // Not decorative image
    ///     .image(asset: Image("meaningful_image"), description: "A nice landscape")
    /// ```
    case image(asset: Image, description: String? = nil)

    /// A country flag image.
    case flag(asset: Image)

    /// A video loaded from the given URL.
    ///
    /// Use ``SwiftUICore/View/oudsListItemRoundedMedia(_:)`` to apply rounded corners.
    ///
    /// - Parameters:
    ///   - url: The URL of the video (local `file://` or remote `https://` HLS / MP4).
    ///   - autoplay: Whether the video starts playing automatically when the item appears. Defaults to `false`.
    ///   - muted: Whether the video is muted. Defaults to `true`.
    ///   - tapToTogglePlay: Whether a tap on the video toggles play / pause. Defaults to `false`.
    ///   - tapToToggleMute: Whether a tap on the video toggles mute / unmute. Defaults to `false`.
    ///
    /// When both `tapToTogglePlay` and `tapToToggleMute` are `true`, a single tap performs both actions.
    /// When `autoplay` is `false` and `tapToTogglePlay` is `false`, the first frame is shown as a static thumbnail.
    @available(macOS, unavailable)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    @available(visionOS, unavailable)
    case video(URL, autoplay: Bool = false, muted: Bool = true, tapToTogglePlay: Bool = false, tapToToggleMute: Bool = false)

    /// An avatar with icon, initials, or image.
    ///
    /// See ``OUDSListItemAvatar`` for available types (`.icon`, `.image`, `.initials`)
    /// and sizes (`.medium`, `.large`, `.extraLarge`).
    /// An optional ``OUDSBadge`` can be attached to the avatar.
    case avatar(OUDSListItemAvatar)
}

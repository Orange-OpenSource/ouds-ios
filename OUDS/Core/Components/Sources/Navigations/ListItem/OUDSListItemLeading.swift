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

/// Defines the elements that can be displayed at the leading position (before the texts)
/// of a list item such as ``OUDSStaticListItem`` or ``OUDSNavigationListItem``.
///
/// The leading element provides visual context or identification alongside the textual content
/// of the list item. Only one leading element can be set at a time.
///
/// **Note:** When using ``OUDSNavigationListItem`` with an affordance type of `.previous`,
/// the leading element is automatically hidden.
///
/// ## Available options
///
/// - ``icon(_:)``: A status or custom icon (see ``OUDSListItemIcon``).
/// - ``image(asset:)``: A static image asset.
/// - ``flag(asset:)``: A country flag image.
/// - ``video(_:)``: A video thumbnail loaded from a URL.
/// - ``avatar(_:)``: An avatar with icon, initials, or image (see ``OUDSListItemAvatar``).
///
/// ## Code samples
///
/// ```swift
///     // Leading with a status icon
///     let icon = OUDSListItemIcon(type: .info, size: .medium)
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Label"),
///         leading: .icon(icon)
///     )
///
///     // Leading with an image
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Label"),
///         leading: .image(asset: Image("il_placeholder"))
///     )
///
///     // Leading with a country flag
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "France"),
///         leading: .flag(asset: Image("il_flag_fr"))
///     )
///
///     // Leading with a video thumbnail
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Watch video"),
///         leading: .video(URL(string: "https://example.com/video.mp4")!)
///     )
///
///     // Leading with an avatar
///     let avatar = OUDSListItemAvatar(type: .icon, size: .medium)
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Profile"),
///         leading: .avatar(avatar)
///     )
/// ```
///
/// ## Media appearance
///
/// Images and videos can be displayed with rounded corners using the  ``SwiftUI/View/oudsListItemRoundedMedia(_:)`` view modifier.
///
/// ## Small size behavior
///
/// When the list item is displayed in small size (via ``SwiftUI/View/oudsListItemSize(_:)``), leading elements such as avatars and icons
/// are rendered in their smallest available size.
///
/// - Since: 2.2.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
@frozen public enum OUDSListItemLeading {
    /// A status or custom icon displayed at the leading position.
    ///
    /// See ``OUDSListItemIcon`` for available icon types (`.neutral`, `.info`, `.warning`, `.negative`, `.positive`)
    /// and sizes (`.small`, `.medium`, `.large`).
    case icon(OUDSListItemIcon)

    /// A static image asset displayed at the leading position.
    ///
    /// The image is displayed as-is. Use ``SwiftUI/View/oudsListItemRoundedMedia(_:)``
    /// to apply rounded corners.
    case image(asset: Image)

    /// A country flag image displayed at the leading position.
    case flag(asset: Image)

    /// A video thumbnail loaded from the given URL, displayed at the leading position.
    ///
    /// Use ``SwiftUI/View/oudsListItemRoundedMedia(_:)`` to apply rounded corners.
    case video(URL)

    /// An avatar displayed at the leading position.
    ///
    /// See ``OUDSListItemAvatar`` for available types (`.icon`, `.image`, `.initials`)
    /// and sizes (`.medium`, `.large`, `.extraLarge`).
    /// An optional ``OUDSBadge`` can be attached to the avatar.
    case avatar(OUDSListItemAvatar)
}

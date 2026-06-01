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

/// Defines the elements that can be displayed at the leading position (before the texts)
/// of a list item such as ``OUDSListStaticItem`` or ``OUDSListItemNavigation``.
///
/// The leading element provides visual context or identification alongside the textual content
/// of the list item. Only one leading element can be set at a time.
///
/// **Note:** When using ``OUDSListItemNavigation`` with an affordance type of `.previous`,
/// the leading element is automatically hidden.
///
/// ## Available options
///
/// - ``icon(_:)``: A status or custom icon (see ``OUDSLIstItemIcon``).
/// - ``image(asset:)``: A static image asset.
/// - ``flag(asset:)``: A country flag image.
/// - ``video(_:)``: A video thumbnail loaded from a URL.
/// - ``avatar(_:)``: An avatar with icon, initials, or image (see ``OUDSListItemAvatar``).
///
/// ## Code samples
///
/// ```swift
///     // Leading with a status icon
///     let icon = OUDSLIstItemIcon(type: .info, size: .medium)
///     OUDSListStaticItem(
///         data: OUDSListItemData(label: "Label"),
///         leading: .icon(icon)
///     )
///
///     // Leading with an image
///     OUDSListStaticItem(
///         data: OUDSListItemData(label: "Label"),
///         leading: .image(asset: Image("il_placeholder"))
///     )
///
///     // Leading with a country flag
///     OUDSListStaticItem(
///         data: OUDSListItemData(label: "France"),
///         leading: .flag(asset: Image("il_flag_fr"))
///     )
///
///     // Leading with a video thumbnail
///     OUDSListStaticItem(
///         data: OUDSListItemData(label: "Watch video"),
///         leading: .video(URL(string: "https://example.com/video.mp4")!)
///     )
///
///     // Leading with an avatar
///     let avatar = OUDSListItemAvatar(type: .icon, size: .medium)
///     OUDSListStaticItem(
///         data: OUDSListItemData(label: "Profile"),
///         leading: .avatar(avatar)
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
/// When the list item is displayed in small size (via ``SwiftUICore/View/oudsListItemSize(_:)``),
/// leading elements such as avatars and icons are rendered in their smallest available size.
///
/// - Since: 2.0.0
@frozen public enum OOUDSListItemLeading {
    /// A status or custom icon displayed at the leading position.
    ///
    /// See ``OUDSLIstItemIcon`` for available icon types (`.neutral`, `.info`, `.warning`, `.negative`, `.positive`)
    /// and sizes (`.small`, `.medium`, `.large`).
    case icon(OUDSLIstItemIcon)

    /// A static image asset displayed at the leading position.
    ///
    /// The image is displayed as-is. Use ``SwiftUICore/View/oudsListItemRoundedMedia(_:)``
    /// to apply rounded corners.
    case image(asset: Image)

    /// A country flag image displayed at the leading position.
    case flag(asset: Image)

    /// A video thumbnail loaded from the given URL, displayed at the leading position.
    ///
    /// Use ``SwiftUICore/View/oudsListItemRoundedMedia(_:)`` to apply rounded corners.
    case video(URL)

    /// An avatar displayed at the leading position.
    ///
    /// See ``OUDSListItemAvatar`` for available types (`.icon`, `.image`, `.initials`)
    /// and sizes (`.medium`, `.large`, `.extraLarge`).
    /// An optional ``OUDSBadge`` can be attached to the avatar.
    case avatar(OUDSListItemAvatar)
}

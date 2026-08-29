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
/// **Note:** When using ``OUDSNavigationListItem`` with an indicator type of `.previous`,
/// the leading element is automatically hidden.
///
/// ## Available options
///
/// -  `icon`: A status or custom icon (see ``OUDSListItemIcon``).
/// - `image`: A static image asset (see ``OUDSListItemImage``).
/// - `flag`: A country flag image (see ``OUDSListItemFlag``).
/// - `avatar`: An avatar with icon, initials, or image (see ``OUDSListItemAvatar``).
/// - `custom`: Any custom SwiftUI view, e.g. any bespoke view.
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
///     let image = OUDSListItemImage(asset: Image("il_placeholder"), size: .medium)
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Label"),
///         leading: .image(image)
///     )
///
///     // Leading with a country flag
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "France"),
///         leading: .flag(.init(asset: Image("il_flag_fr"), size: .medium))
///     )
///
///     // Leading with an avatar
///     let avatar = OUDSListItemAvatar(type: .icon, size: .medium)
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Profile"),
///         leading: .avatar(avatar)
///     )
///
///     // Leading with a custom view, e.g. a gauge showing a remaining SMS credit
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "SMS credit"),
///         leading: .custom {
///             OUDSCircularProgressIndicator(progress: 0.75)
///         }
///     )
/// ```
///
/// ## Media appearance
///
/// Images can be displayed with rounded corners using the  ``SwiftUICore/View/oudsListItemRoundedMedia(_:)`` view modifier.
///
/// ## Small size behavior
///
/// When the list item is displayed in small size (via ``SwiftUICore/View/oudsListItemSize(_:)``), leading elements such as avatars and icons
/// are rendered in their smallest available size. A `.custom` view is not resized automatically and must handle its own layout.
///
/// - Since: 3.0.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
@frozen public enum OUDSListItemLeading {
    /// A status or custom icon displayed at the leading position.
    ///
    /// See ``OUDSListItemIcon`` for available icon types (`.neutral`, `.info`, `.warning`, `.negative`, `.positive`)
    /// and sizes (`.medium`, `.large`).
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
    ///
    ///     // Decorative image in large size
    ///     .image(.init(asset: Image(decorative: "il_placeholder"), size .large))
    /// ```
    case image(OUDSListItemImage)

    /// A country flag image displayed at the leading position.
    case flag(OUDSListItemFlag)

    /// An avatar displayed at the leading position.
    ///
    /// See ``OUDSListItemAvatar`` for available types (`.icon`, `.image`, `.initials`)
    /// and sizes (`.medium`, `.large`, `.extraLarge`).
    /// An optional ``OUDSBadgeStandard`` can be attached to the avatar.
    case avatar(OUDSListItemAvatar)

    /// A custom SwiftUI view displayed at the leading position.
    ///
    /// Use this case to display any bespoke content that is not covered by the other options.
    ///
    /// The custom view is responsible for its own accessibility: unlike `.flag` and `.avatar`,
    /// it is **not** automatically hidden from assistive technologies.
    case customView(AnyView)

    /// Creates a ``customView(_:)`` leading element from a `@ViewBuilder` closure.
    ///
    /// ```swift
    ///     OUDSStaticListItem(
    ///         data: OUDSListItemData(label: "SMS credit"),
    ///         leading: .custom {
    ///             OUDSCircularProgressIndicator(progress: 0.75)
    ///         }
    ///     )
    /// ```
    ///
    /// - Parameter content: A view builder returning the custom view to display.
    public static func custom(@ViewBuilder _ content: () -> some View) -> Self {
        .customView(AnyView(content()))
    }
}

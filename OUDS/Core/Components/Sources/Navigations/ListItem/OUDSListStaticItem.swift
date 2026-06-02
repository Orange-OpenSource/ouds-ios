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

/// A list item component used to display a row of static (non-interactive, non-navigable) content within a list.
///
/// `OUDSListStaticItem` typically contains a label, and optionally a description, an overline, an extra label,
/// and a helper text — all provided through ``OUDSListItemData``.
/// It can also include an optional leading element (such as an icon, image, avatar, flag, or video)
/// and an optional trailing element (such as a text, badge, tag, icon, image, avatar, flag, or video).
///
/// Use this component when the list item should only display information without triggering any navigation or action.
/// For navigable list items, see ``OUDSListItemNavigation``.
///
/// ## Code samples
///
/// ```swift
///     // Simple list item with a label only
///     OUDSListStaticItem(data: OUDSListItemData(label: "Label"))
///
///     // List item with more textual content
///     let data = OUDSListItemData(
///         label: "Label",
///         description: "Description",
///         overline: "Overline",
///         extraLabel: "Extra Label"
///     )
///     OUDSListStaticItem(data: data)
///
///     // List item with leading icon and trailing badge
///     let icon = OUDSLIstItemIcon(type: .info, size: .medium)
///     let badge = OUDSBadge(count: 3, accessibilityLabel: "3 notifications", status: .negative, size: .medium)
///
///     OUDSListStaticItem(
///         data: OUDSListItemData(label: "Label"),
///         leading: .icon(icon),
///         trailing: .badge(badge)
///     )
///
///     // List item with avatar as leading and text as trailing
///     let avatar = OUDSListItemAvatar(type: .icon, size: .medium)
///
///     OUDSListStaticItem(
///         data: OUDSListItemData(label: "Label", description: "Description"),
///         leading: .avatar(avatar),
///         trailing: .text(.label(Text("Info")))
///     )
/// ```
///
/// ## View modifiers
///
/// Several view modifiers can be applied to customize the appearance and layout of list items:
///
/// - ``SwiftUICore/View/oudsListItemSize(_:)`` — Sets the size of the item (`.standard` or `.small`).
/// - ``SwiftUICore/View/oudsListItemContainerAlignment(_:)`` — Aligns leading, trailing, and text containers (`.top` or `.center`).
/// - ``SwiftUICore/View/oudsListItemStyle(style:)`` — Applies a standard style with optional divider and background.
/// - ``SwiftUICore/View/oudsListCardStyle(hasDdivider:hasBackground:)`` — Applies a card style on list items.
/// - ``SwiftUICore/View/oudsListItemRoundedMedia(_:)`` — Defines whether media (images, videos) should be displayed with rounded corners.
///
/// ```swift
///     OUDSListStaticItem(data: OUDSListItemData(label: "Label"))
///         .oudsListItemSize(.small)
///         .oudsListItemContainerAlignment(.top)
///         .oudsListItemStyle(style: .outlined)
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-listitem)
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-link)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A list item component in light and dark modes with Orange theme](component_list_item_static_Orange)
///
/// ### Orange Compact
///
/// ![A list item component in light and dark modes with Orange Compact theme](component_list_item_static_OrangeCompact)
///
/// ### Sosh
///
/// ![A list item component in light and dark modes with Sosh theme](component_list_item_static_Sosh)
///
/// ### Wireframe
///
/// ![A list item component in light and dark modes with Wireframe theme](component_list_item_static_Wireframe)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 2.0.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSListStaticItem: View {

    // MARK: - Stored Properties

    private let data: OUDSListItemData
    private let leading: OOUDSListItemLeading?
    private let trailing: OUDSListItemTrailing?

    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.theme) private var theme

    // MARK: - Initializer

    /// Creates a list item to display static data, without interaction or navigation.
    ///
    /// ```swift
    ///     let data = OUDSListItemData(label: "Label", description: "Description")
    ///     OUDSListStaticItem(data: data)
    /// ```
    ///
    /// - Parameters:
    ///    - data: The textual data of the item, including label, description, overline, extra label, and helper text.
    ///    - leading: An optional element displayed at the leading position (before the texts).
    ///     See ``OOUDSListItemLeading`` for available options (icon, image, flag, video, avatar).
    ///    - trailing: An optional element displayed at the trailing position (after the texts).
    ///     See ``OUDSListItemTrailing`` for available options (text, badge, tag, icon, image, flag, video, avatar).
    ///
    /// - Note: Leading, trailing, and text containers can be aligned using the
    ///   ``SwiftUICore/View/oudsListItemContainerAlignment(_:)`` view modifier.
    public init(data: OUDSListItemData,
                leading: OOUDSListItemLeading? = nil,
                trailing: OUDSListItemTrailing? = nil)
    {
        self.data = data
        self.leading = leading
        self.trailing = trailing
    }

    // MARK: - Body

    public var body: some View {
        ListItemContent(data: data,
                        affordanceType: nil,
                        leading: leading,
                        trailing: trailing,
                        interactionState: isEnabled ? .enabled : .disabled)
    }
}

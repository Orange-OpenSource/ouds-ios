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

/// A list item component used to display a row of static (non-interactive, non-navigable) content within a list.
///
/// ``OUDSStaticListItem`` typically contains a label, and optionally a description, an overline, an extra label,
/// and a helper text — all provided through ``OUDSListItemData``.
/// It can also include an optional leading element (such as an icon, image, avatar, flag, or video)
/// and an optional trailing element (such as a text, badge, tag, icon, image, avatar, flag, or video).
///
/// Use this component when the list item should only display information without triggering any navigation or action.
/// For navigable list items, see ``OUDSNavigationListItem``.
///
/// ## Code samples
///
/// ```swift
///     // Simple list item with a label only
///     OUDSStaticListItem(data: OUDSListItemData(label: "Label"))
///
///     // List item with more textual content
///     let data = OUDSListItemData(
///         label: "Label",
///         description: "Description",
///         overline: "Overline",
///         extraLabel: "Extra Label"
///     )
///     OUDSStaticListItem(data: data)
///
///     // List item with leading icon and trailing badge
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Label"),
///         leading: .icon(.init(type: .info, size: .medium)),
///         trailing: .badge(.count(.init(3, accessibilityLabel: "3 notifications", status: .negative, size: .medium)))
///     )
///
///     // List item with avatar as leading and text as trailing
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Label", description: "Description"),
///         leading: .avatar(.init(type: .icon, size: .medium)),
///         trailing: .text(.label(Text("Info")))
///     )
/// ```
///
/// ## Leading elements
///
///  The leading position (before the texts) accepts one optional element via ``OUDSListItemLeading``:
///  - `.icon(OUDSListItemIcon)`: A status or custom icon (neutral, info, warning, negative, positive)
///  - `.image(asset:)`: A static image asset
///  - `.flag(asset:)`: A country flag image
///  - `.video(URL)`: A video thumbnail loaded from a URL
/// - `.avatar(OUDSListItemAvatar)`: An avatar with icon, initials, or image
///
/// ## Trailing elements
///
/// The trailing position (after the texts) accepts one optional element via ``OUDSListItemTrailing``, like:
/// - `.text(.label(Text))`: A default-styled label
/// - `.text(.labelMuted(Text))`: A muted (secondary) label
/// - `.text(.labelStrong(Text))`: An emphasized (bold) label
/// - `.text(.labelAndExtraLabel(Text, Text))`: A label with an additional extra label below
/// - `.badge(.count(OUDSBadgeCount)`: A badge with count
/// - `.badge(.standard(ODSBadgeStandard)`: A badge with standard status
/// - `.tag(OUDSTag)`: A tag for categorization
/// - `.icon(OUDSListItemIcon)`: A status or custom icon
/// - `.image(OUDSListItemImage)`:  A static image asset
/// - `.flag(OUDSListItemFlag)`: A country flag image
/// - `.video(URL)`: A video thumbnail loaded from a URL
/// - `.avatar(OUDSListItemAvatar)`: An avatar with icon, initials, or image
///
/// ## View modifiers
///
/// Several view modifiers can be applied to customize the appearance and layout of list items:
///
/// - ``SwiftUICore/View/oudsListItemSize(_:)`` — Sets the size of the item (`.standard` or `.small`).
/// - ``SwiftUICore/View/oudsListItemContainerAlignment(_:)`` — Aligns leading, trailing, and text containers (`.top` or `.center`).
/// - ``SwiftUICore/View/oudsListItemStyle(_:)`` — Applies a standard style with optional divider and background.
/// - ``SwiftUICore/View/oudsListCardStyle(hasDivider:hasBackground:)`` — Applies a card style on list items.
/// - ``SwiftUICore/View/oudsListItemRoundedMedia(_:)`` — Defines whether media (images, videos) should be displayed with rounded corners.
///
/// ```swift
///     OUDSStaticListItem(data: OUDSListItemData(label: "Label"))
///         .oudsListItemSize(.small)
///         .oudsListItemContainerAlignment(.top)
///         .oudsListItemStyle(.outlined)
/// ```
///
/// ## Accesibility considerations
///
/// You should test with Voice Over your `OUDSStaticListItem` to check which parts are vocalized and if they are well vocalized, specially for
/// the avatars, badges, tags and slot views.  Do not vocalize decorative elements.
///
/// If flags are used, do not suppose users known the flags and add in the texts parts of the `OUDSStaticListItem` the country or region name.
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-listitem)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A list item component in light and dark modes with Orange theme](component_static_list_item_Orange)
///
/// ### Orange Compact
///
/// ![A list item component in light and dark modes with Orange Compact theme](component_static_list_item_OrangeCompact)
///
/// ### Sosh
///
/// ![A list item component in light and dark modes with Sosh theme](component_static_list_item_Sosh)
///
/// ### Wireframe
///
/// ![A list item component in light and dark modes with Wireframe theme](component_static_list_item_Wireframe)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 2.2.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSStaticListItem<Slot: View>: View {

    // MARK: - Stored Properties

    private let data: OUDSListItemData
    private let slot: Slot
    private let leading: OUDSListItemLeading?
    private let trailing: OUDSListItemTrailing?

    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Initializer

    /// Creates a list item to display static data, without interaction or navigation.
    /// A slot (`View`) area is reserved under texts and before helper text.
    ///
    /// ```swift
    ///     let data = OUDSListItemData(label: "Label", description: "Description")
    ///     OUDSStaticListItem(data: data, slot: someView())
    /// ```
    ///
    /// - Parameters:
    ///    - data: The textual data of the item, including label, description, overline, extra label, and helper text.
    ///    - slot: An element displayed under texts (at the bottom of the text container).
    ///    - leading: An optional element displayed at the leading position (before the texts).
    ///     See ``OUDSListItemLeading`` for available options (icon, image, flag, video, avatar).
    ///    - trailing: An optional element displayed at the trailing position (after the texts).
    ///     See ``OUDSListItemTrailing`` for available options (text, badge, tag, icon, image, flag, video, avatar).
    ///
    /// - Note: Leading, trailing, and text containers can be aligned using the
    ///   ``SwiftUICore/View/oudsListItemContainerAlignment(_:)`` view modifier.
    public init(data: OUDSListItemData,
                slot: Slot,
                leading: OUDSListItemLeading? = nil,
                trailing: OUDSListItemTrailing? = nil)
    {
        self.data = data
        self.leading = leading
        self.trailing = trailing
        self.slot = slot
    }

    /// Creates a list item to display static data, without interaction or navigation.
    ///
    /// ```swift
    ///     let data = OUDSListItemData(label: "Label", description: "Description")
    ///     OUDSStaticListItem(data: data)
    /// ```
    ///
    /// - Parameters:
    ///    - data: The textual data of the item, including label, description, overline, extra label, and helper text.
    ///    - leading: An optional element displayed at the leading position (before the texts).
    ///     See ``OUDSListItemLeading`` for available options (icon, image, flag, video, avatar).
    ///    - trailing: An optional element displayed at the trailing position (after the texts).
    ///     See ``OUDSListItemTrailing`` for available options (text, badge, tag, icon, image, flag, video, avatar).
    ///
    /// - Note: Leading, trailing, and text containers can be aligned using the
    ///   ``SwiftUICore/View/oudsListItemContainerAlignment(_:)`` view modifier.
    public init(data: OUDSListItemData,
                leading: OUDSListItemLeading? = nil,
                trailing: OUDSListItemTrailing? = nil) where Slot == EmptyView
    {
        self.data = data
        slot = EmptyView()
        self.leading = leading
        self.trailing = trailing
    }

    // MARK: - Body

    public var body: some View {
        ListItemContent(data: data,
                        slot: slot,
                        indicatorType: nil,
                        leading: leading,
                        trailing: trailing,
                        interactionState: isEnabled ? .enabled : .disabled)
    }
}

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

/// A list item component used to display a row of interactive content which triggers an action when tapped,
/// for example to make a call, send an email or share content.
///
/// ``OUDSActionListItem`` is an interactive variant of the list item, like ``OUDSNavigationListItem``,
/// but it never displays any indicator (no next, previous or external indicator) because it does not navigate: it performs an action.
///
/// The item typically contains a label, and optionally a description, an overline, an extra label,
/// a text slot, a bottom slot, and a helper text — all provided through ``OUDSListItemData``.
/// It can also include an optional leading element (such as an icon, image, avatar, flag or custom view)
/// and an optional trailing element (such as a text, badge, tag, icon, image, avatar, flag or custom view)
///
/// For non-interactive, display-only list items, see ``OUDSStaticListItem``.
/// For list items which navigate to another screen or outside the app, see ``OUDSNavigationListItem``.
///
/// ## Code samples
///
/// ```swift
///     // Simple list item triggering an action
///     OUDSActionListItem(
///         data: OUDSListItemData(label: .textual("Call us"))
///     ) {
///         // Start the call
///     }
///
///     // List item with leading icon and description
///     OUDSActionListItem(
///         data: OUDSListItemData(label: "Call customer service", description: "Free number"),
///         leading: .icon(OUDSListItemIcon(status: .neutral(asset: Image("ic_phone"), description: ""), size: .medium))
///     ) {
///         // Start the call
///     }
///
///     // List item with leading avatar and trailing text
///     let avatar = OUDSListItemAvatar(type: .icon, size: .medium)
///
///     OUDSActionListItem(
///         data: OUDSListItemData(label: "Profile", description: "Share your profile"),
///         leading: .avatar(avatar),
///         trailing: .text(.labelMuted("Share"))
///     ) {
///         // Share the profile
///     }
///
///     // List item with a custom view as trailing, e.g. a gauge showing a remaining SMS credit
///     OUDSActionListItem(
///         data: OUDSListItemData(label: .textual("SMS credit")),
///         trailing: .slot {
///             OUDSCircularProgressIndicator(progress: 0.75)
///         }
///     ) {
///         // Refill the credit
///     }
///
///     // List item with slot (displayed under texts, before helper text)
///     OUDSActionListItem(
///         data: OUDSListItemData(
///             label: "Settings",
///             textSlot: .init { Text("Configure options") },
///             helperText: "Helper text"
///         )
///     ) {
///         // Perform the action
///     }
///
///     // List item with bottomSlot (displayed under main content, before helper text)
///     OUDSActionListItem(
///         data: OUDSListItemData(
///             label: "Profile",
///             bottomSlot: .init { Text("Additional info") },
///             helperText: "Helper text"
///         )
///     ) {
///         // Perform the action
///     }
/// ```
///
/// ## Leading elements
///
///  The leading position (before the texts) accepts one optional element via ``OUDSListItemLeading``:
///  - `.icon(OUDSListItemIcon)`: A status or custom icon (neutral, info, warning, negative, positive)
///  - `.image(OUDSListItemImage)`: A static image asset
///  - `.flag(OUDSListItemFlag)`: A country flag image
///  - `.avatar(OUDSListItemAvatar)`: An avatar with icon, initials, or image
///  - `.slot { ... }`: Any custom SwiftUI view (e.g. a gauge)
///
/// ## Trailing elements
///
/// The trailing position (after the texts) accepts one optional element via ``OUDSListItemTrailing``, like:
/// - `.text(.label(String))`: A default-styled label
/// - `.text(.labelMuted(String))`: A muted (secondary) label
/// - `.text(.labelStrong(String))`: An emphasized (bold) label
/// - `.text(.labelAndExtraLabel(String, String))`: A label with an additional extra label below
/// - `.badge(.count(OUDSBadgeCount)`: A badge with count
/// - `.badge(.standard(OUDSBadgeStandard)`: A badge with standard status
/// - `.tag(OUDSTag)`: A tag for categorization
/// - `.icon(OUDSListItemIcon)`: A status or custom icon
/// - `.image(OUDSListItemImage)`:  A static image asset
/// - `.flag(OUDSListItemFlag)`: A country flag image
/// - `.avatar(OUDSListItemAvatar)`: An avatar with icon, initials, or image
/// - `.slot { ... }`: Any custom SwiftUI view
///
/// ## View modifiers
///
/// Several view modifiers can be applied to customize the appearance and layout of list items:
///
/// - ``SwiftUICore/View/oudsListItemSize(_:)`` — Sets the size of the item (`.standard` or `.small`).
/// - ``SwiftUICore/View/oudsListItemContainerAlignment(_:)`` — Aligns leading, trailing, and text containers (`.top` or `.center`).
/// - ``SwiftUICore/View/oudsListItemStyle(divider:background:)`` — Applies a item style with optional divider and background.
/// - ``SwiftUICore/View/oudsListCardStyle(_:)`` — Applies a card style on list items.
/// - ``SwiftUICore/View/oudsListItemRoundedMedia(_:)`` — Defines whether media (images) should be displayed with rounded corners.
///
/// ```swift
///     OUDSActionListItem(
///         data: OUDSListItemData(label: .textual("Call us"))
///     ) {
///         // Start the call
///     }
///     .oudsListItemSize(.small)
///     .oudsListItemContainerAlignment(.top)
///     .oudsListCardStyle(.outlined)
/// ```
///
/// ## Accessibility considerations
///
/// The item is vocalized as a button. You should test with Voice Over your `OUDSActionListItem` to check which parts are vocalized and if they are well vocalized, specially for
/// the avatars, badges, tags and slot views.  Do not vocalize decorative elements.
///
/// If flags are used, do not suppose users know the flags and add in the texts parts of the `OUDSActionListItem` the country or region name.
///
/// Be sure the available texts are enough to explain to the users the action which will be performed.
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-navigation-list-item)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A button component in light and dark modes with Orange theme](component_action_list_item_Orange)
///
/// ### Orange Compact
///
/// ![A button component in light and dark modes with Orange Compact theme](comcomponent_action_list_item_OrangeCompact)
///
/// ### Sosh
///
/// ![A button component in light and dark modes with Sosh theme](component_action_list_item_Sosh)
///
/// ### Wireframe
///
/// ![A button component in light and dark modes with Wireframe theme](component_action_list_item_Wireframe)
///
/// - Version: 3.4.0 (Figma component design version)
/// - Since: 0.0.0 (this is a draft component)
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSActionListItem: View { // TODO: #1771 - Update documentation hyperlink, and version of component

    // MARK: Properties

    private let data: OUDSListItemData
    private let leading: OUDSListItemLeading?
    private let trailing: OUDSListItemTrailing?
    private let action: () -> Void

    // MARK: Initializers

    /// Creates a list item with textual data which triggers an action when tapped.
    ///
    /// - Parameters:
    ///   - data: The textual data of the item, including label, description, overline, extra label, slot, bottomSlot, and helper text.
    ///   - leading: An optional element displayed at the leading position (before the texts).
    ///     See ``OUDSListItemLeading`` for available options (icon, image, flag, avatar, custom).
    ///   - trailing: An optional element displayed at the trailing position (after the texts).
    ///     See ``OUDSListItemTrailing`` for available options (text, badge, tag, icon, image, flag, avatar, custom).
    ///   - action: The closure triggered when the item is tapped.
    ///
    /// - Note: Leading, trailing, and text containers can be aligned using the
    ///   ``SwiftUICore/View/oudsListItemContainerAlignment(_:)`` view modifier.
    public init(data: OUDSListItemData,
                leading: OUDSListItemLeading? = nil,
                trailing: OUDSListItemTrailing? = nil,
                action: @escaping () -> Void)
    {
        self.data = data
        self.leading = leading
        self.trailing = trailing
        self.action = action
    }

    // MARK: Body

    public var body: some View {
        OUDSInteractionButton(isReadOnly: false) {
            action()
        } content: { interactionState in
            ListItemContent(data: data,
                            indicatorType: nil,
                            leading: leading,
                            trailing: trailing,
                            interactionState: interactionState)
        }
        .accessibilityElement(children: .combine)
        .accessibilityAddTraits(.isButton)
    }
}

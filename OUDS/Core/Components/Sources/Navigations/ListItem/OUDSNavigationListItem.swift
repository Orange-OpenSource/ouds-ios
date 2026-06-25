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

/// A list item component used to display a row of interactive, navigable content within a list.
///
/// ``OUDSNavigationListItem`` is an interactive variant of the list item that triggers an action when tapped.
/// It displays a navigation affordance indicator (chevron for next/previous, or an external link icon)
/// to communicate the type of navigation to the user.
///
/// The item typically contains a label, and optionally a description, an overline, an extra label,
/// and a helper text — all provided through ``OUDSListItemData``.
/// It can also include an optional leading element (such as an icon, image, avatar, flag, or video)
/// and an optional trailing element (such as a text, badge, tag, icon, image, avatar, flag, or video).
///
/// For non-interactive, display-only list items, see ``OUDSStaticListItem``.
///
/// ## Affordance types
///
/// The ``OUDSNavigationListItemAffordanceType`` enum defines the visual indicator and semantic meaning of the navigation:
/// - **`.next`** (default): A forward chevron indicating in-app navigation to a next screen.
/// - **`.previous`**: A backward chevron indicating in-app navigation to a previous screen.
///   When using `.previous`, the leading element is automatically hidden.
/// - **`.external`**: An external link icon indicating that the action opens content outside the app
///   (e.g. a URL in a browser or an external viewer).
///
/// ## Code samples
///
/// ```swift
///     // Simple navigable list item with forward navigation
///     OUDSNavigationListItem(
///         data: OUDSListItemData(label: "Next screen")
///     ) {
///         // Navigate to next screen
///     }
///
///     // List item with external navigation
///     OUDSNavigationListItem(
///         data: OUDSListItemData(label: "Open website"),
///         affordanceType: .external
///     ) {
///         openURL(url)
///     }
///
///     // List item with backward navigation
///     OUDSNavigationListItem(
///         data: OUDSListItemData(label: "Go back"),
///         affordanceType: .previous
///     ) {
///         // Navigate back
///     }
///
///     // List item with leading avatar, trailing text, and forward navigation
///     let avatar = OUDSListItemAvatar(type: .icon, size: .medium)
///
///     OUDSNavigationListItem(
///         data: OUDSListItemData(label: "Profile", description: "View your profile"),
///         leading: .avatar(avatar),
///         trailing: .text(.labelMuted(Text("Details")))
///     ) {
///         // Navigate to profile
///     }
/// ```
///
/// ## Leading elements
///
///  The leading position (before the texts) accepts one optional element via ``OUDSListItemLeading``:
///  - `.icon(OUDSListItemIcon)`: A status or custom icon (neutral, info, warning, negative, positive)
///  - `.image(OUDSListItemImage)`: A static image asset
///  - `.flag(OUDSListItemFlag)`: A country flag image
///  - `.video(URL)`: A video thumbnail loaded from a URL
///  - `.avatar(OUDSListItemAvatar)`: An avatar with icon, initials, or image
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
///     OUDSNavigationListItem(
///         data: OUDSListItemData(label: "Settings"),
///         affordanceType: .next
///     ) {
///         // Navigate to settings
///     }
///     .oudsListItemSize(.small)
///     .oudsListItemContainerAlignment(.top)
///     .oudsListItemStyle(.outlined)
/// ```
///
/// ## Accesibility considerations
///
/// You should test with Voice Over your `OUDSNavigationListItem` to check which parts are vocalized and if they are well vocalized, specially for
/// the avatars, badges, tags and slot views.  Do not vocalize decorative elements.
///
/// If flags are used, do not suppose users known the flags and add in the texts parts of the `OUDSNavigationListItem` the country or region name.
///
/// Be sure the available texts are enough to explain to the users the navigation depending to its affordance type.
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-listitem)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A list item component in light and dark modes with Orange theme](component_navigation_list_item_Orange)
///
/// ### Orange Compact
///
/// ![A list item component in light and dark modes with Orange Compact theme](component_navigation_list_item_OrangeCompact)
///
/// ### Sosh
///
/// ![A list item component in light and dark modes with Sosh theme](component_navigation_list_item_Sosh)
///
/// ### Wireframe
///
/// ![A list item component in light and dark modes with Wireframe theme](component_navigation_list_item_Wireframe)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 2.2.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSNavigationListItem<Slot: View>: View { // TODO: #265 - Use suitable short link for DSM documentation

    // MARK: - Stored Properties

    private let data: OUDSListItemData
    private let slot: Slot
    private let affordanceType: OUDSNavigationListItemAffordanceType
    private let action: (() -> Void)?
    private let leading: OUDSListItemLeading?
    private let trailing: OUDSListItemTrailing?

    // MARK: - Initializer

    /// Creates a navigable list item with textual data, an affordance type, and an optional action with additional slot.
    /// A slot (`View`) area is reserved under texts and before helper text.
    ///
    /// ```swift
    ///     let data = OUDSListItemData(label: "Label", description: "Description")
    ///     OUDSNavigationListItem(data: data,
    ///                            slot: someView(),
    ///                            affordanceType: .external) {
    ///         openURL(url)
    ///     }
    /// ```
    ///
    /// - Parameters:
    ///   - data: The textual data of the item, including label, description, overline, extra label, and helper text.
    ///   - slot: An optional element displayed under texts (at the bottom of the text container).
    ///   - affordanceType: The type of navigation affordance indicator to display. Defaults to `.next`.
    ///     See ``OUDSNavigationListItemAffordanceType`` for available options (previous, next and external).
    ///   - leading: An optional element displayed at the leading position (before the texts).
    ///     See ``OUDSListItemLeading`` for available options (icon, image, flag, video, avatar).
    ///     **Note:** Ignored when `affordanceType` is `.previous`.
    ///   - trailing: An optional element displayed at the trailing position (after the texts).
    ///     See ``OUDSListItemTrailing`` for available options (text, badge, tag, icon, image, flag, video, avatar).
    ///   - action: An optional closure triggered when the item is tapped.
    ///
    /// - Note: Leading, trailing, and text containers can be aligned using the
    ///   ``SwiftUICore/View/oudsListItemContainerAlignment(_:)`` view modifier.
    public init(data: OUDSListItemData,
                slot: Slot,
                affordanceType: OUDSNavigationListItemAffordanceType = .next,
                leading: OUDSListItemLeading? = nil,
                trailing: OUDSListItemTrailing? = nil,
                action: (() -> Void)? = nil)
    {
        self.data = data
        self.slot = slot
        self.affordanceType = affordanceType
        self.leading = leading
        self.trailing = trailing
        self.action = action
    }

    /// Creates a navigable list item with textual data, an affordance type, and an optional action but with no slot.
    ///
    /// ```swift
    ///     let data = OUDSListItemData(label: "Label", description: "Description")
    ///     OUDSNavigationListItem(data: data, affordanceType: .external) {
    ///         openURL(url)
    ///     }
    /// ```
    ///
    /// - Parameters:
    ///   - data: The textual data of the item, including label, description, overline, extra label, and helper text.
    ///   - affordanceType: The type of navigation affordance indicator to display. Defaults to `.next`.
    ///     See ``OUDSNavigationListItemAffordanceType`` for available options (previous, next and external).
    ///   - leading: An optional element displayed at the leading position (before the texts).
    ///     See ``OUDSListItemLeading`` for available options (icon, image, flag, video, avatar).
    ///     **Note:** Ignored when `affordanceType` is `.previous`.
    ///   - trailing: An optional element displayed at the trailing position (after the texts).
    ///     See ``OUDSListItemTrailing`` for available options (text, badge, tag, icon, image, flag, video, avatar).
    ///   - action: An optional closure triggered when the item is tapped.
    ///
    /// - Note: Leading, trailing, and text containers can be aligned using the
    ///   ``SwiftUICore/View/oudsListItemContainerAlignment(_:)`` view modifier.
    public init(data: OUDSListItemData,
                affordanceType: OUDSNavigationListItemAffordanceType = .next,
                leading: OUDSListItemLeading? = nil,
                trailing: OUDSListItemTrailing? = nil,
                action: (() -> Void)? = nil) where Slot == EmptyView
    {
        self.data = data
        slot = EmptyView()
        self.affordanceType = affordanceType
        self.leading = leading
        self.trailing = trailing
        self.action = action
    }

    // MARK: - Body

    public var body: some View {
        InteractionButton(isReadOnly: false) {
            action?()
        } content: { interactionState in
            ListItemContent(data: data,
                            slot: slot,
                            affordanceType: affordanceType,
                            leading: leading,
                            trailing: trailing,
                            interactionState: interactionState)
        }
        .accessibilityRemoveTraits([.isButton])
        .accessibilityAddTraits([.isLink])
    }
}

// MARK: - OUDS List Item Navigation Affordance Type

/// The navigation affordance indicator, describing the type of navigation triggered when the item is tapped.
///
/// - Since: 2.2.0
@frozen public enum OUDSNavigationListItemAffordanceType {
    /// When item is tapped, the next page is opened in navigation.
    /// A forward chevron is displayed at the trailing edge.
    case next

    /// When item is tapped, the previous page is presented in navigation.
    /// A backward chevron is displayed at the leading edge.
    /// **Note:** When using `.previous`, the leading element is automatically hidden.
    case previous

    /// When item is tapped, the action is performed outside the application
    /// (e.g. open a URL in a browser, open a file in an external viewer).
    /// An external link icon is displayed at the trailing edge.
    case external
}

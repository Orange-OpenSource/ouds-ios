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

import OUDSThemesContract
import SwiftUI

// MARK: - OUDS List Item Containers Alignment

/// Defines the vertical alignment of the leading, trailing, and text containers
/// within a list item such as ``OUDSStaticListItem`` or ``OUDSNavigationListItem``.
///
/// Use the ``SwiftUICore/View/oudsListItemContainerAlignment(_:)`` view modifier
/// to apply the alignment on list items.
///
/// ## Code sample
///
/// ```swift
///     OUDSStaticListItem(data: OUDSListItemData(label: "Label"))
///         .oudsListItemContainerAlignment(.top)
/// ```
///
/// - Since: 3.0.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
@frozen public enum OUDSListItemContainersAlignment {
    /// Containers are aligned to the top of the list item row.
    /// Best suited when the list item has multiple lines of text and
    /// leading/trailing elements should stay anchored at the top.
    case top

    /// Containers are vertically centered within the list item row.
    /// This is the default alignment.
    case center
}

// MARK: - OUDS List Item Content Style

/// Defines the visual style of a list item such as ``OUDSStaticListItem`` or ``OUDSNavigationListItem``.
///
/// The style controls the border, divider, and background appearance of list items.
/// Use the ``SwiftUICore/View/oudsListContentStyle(_:)``,
/// ``SwiftUICore/View/oudsListItemStyle(divider:background:)`` or
/// ``SwiftUICore/View/oudsListCardStyle(_:)`` view modifiers to apply the style on list items.
///
/// ## Cases
///
/// - **`.card(_:)`**: A card-like appearance with various sub-styles (decoration) defined by
///   ``OUDSListItemContentStyle/card(_:)``. Cards can be outlined, have a background,
///   or combine these effects only on interaction.
/// - **`.item(_:)`**: A standard list item appearance with an optional background and divider,
///   defined by ``OUDSListItemContentStyle/item(divider:background:)``.
///
/// ## Known limitation
///
/// The `onlyOnInteraction` flag of the `outlined` decoration of a card has no action on ``OUDSStaticListItem``, because
/// the item does not propose interaction (e.g. pressed or hover state)
///
/// ## Code samples
///
/// ```swift
///     // Card style with outline only on interaction
///     OUDSNavigationListItem(data: OUDSListItemData(label: "Label"))
///         .oudsListCardStyle(decoration: .outlined(onInteractionOnly: true))
///
///     // Card style with an outlined border on all states
///     OUDSNavigationListItem(data: OUDSListItemData(label: "Label"))
///         .oudsListCardStyle(decoration: .outlined(onInteractionOnly: false))
///
///     // Card style with divider, background
///     OUDSNavigationListItem(data: OUDSListItemData(label: "Label"))
///         .oudsListCardStyle(decoration: .standard(divider: true, background: true))
///
///     // Card style divider and without background
///     OUDSNavigationListItem(data: OUDSListItemData(label: "Label"))
///         .oudsListCardStyle(decoration: .standard(divider: true, background: false))
///
///     // Item style with background and divider
///     OUDSNavigationListItem(data: OUDSListItemData(label: "Label"))
///         .oudsListItemStyle(divider: true, .background: true)
///
///     // Item style with divider and without background
///     OUDSNavigationListItem(data: OUDSListItemData(label: "Label"))
///         .oudsListItemStyle(divider: true, .background: false)
///
///     // Using global modifier
///     OUDSNavigationListItem(data: OUDSListItemData(label: "Label"))
///         .oudsListContentStyle(.card(.outlined))
///
///     OUDSNavigationListItem(data: OUDSListItemData(label: "Label"))
///         .oudsListContentStyle(.item(divider: true, background: false))
/// ```
///
/// - Since: 3.0.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
@frozen public enum OUDSListItemContentStyle {

    /// Defines the decoration (sub-styles) available for the ``OUDSListItemContentStyle/card(_:)`` case.
    ///
    /// - Since: 3.0.0
    public enum CardDecoration {

        /// The oulined decoration of a card. A permanent border is drawn around the card. This border can be drawn only
        /// for interaction states (e.g. pressed or hover).
        ///
        /// - Parameter onlyOnInteraction: Used only for `OUDSNavigationListItem` to activate oulined style when
        /// card is pressed or hovered. By default, `false` so outlined available on all states of the card.
        case outlined(onlyOnInteraction: Bool = false)

        /// The standard card decoration with background and divider.
        ///
        ///  - Parameters:
        ///     - divider: Used to display a divider at bottom of the card.
        ///     - background: Used to fill the background, `true` by default. If set to `false`, the background is filled only
        ///     on interaction states (pressed on focussed)
        case standard(divider: Bool = true, background: Bool = true)
    }

    /// The card style of the `OUDSNavigationListItem` and `OUDSStaticListItem`. It controls how the card border,
    /// background, and divider behave, including whether these visual effects are always visible or only appear during interaction
    /// (e.g. press, hover).
    ///
    ///  - Parameters:
    ///     - decoration: The decoration of the card item.
    case card(_ decoration: CardDecoration = .standard(divider: true, background: true))

    /// The item style of the `OUDSNavigationListItem` and `OUDSStaticListItem`. It controls how
    /// the background and divider behave for regular list items, including whether these visual effects are always visible or
    /// only appear during interaction. (e.g. press, hover).
    ///
    ///  - Parameters:
    ///     - divider: Used to display a divider at bottom of the item.
    ///     - background: Used to fill the background, `false` by default. If set to `false`, means the background is filled only
    ///     on interaction states (e.g. press, hover).
    case item(divider: Bool = true, background: Bool = false)
}

// MARK: - OUDS List Item Size

/// Defines the size of a list item such as ``OUDSStaticListItem`` or ``OUDSNavigationListItem``.
///
/// The size affects the padding, the visibility of certain text fields, and the size of
/// leading/trailing elements within the list item.
///
/// Use the ``SwiftUICore/View/oudsListItemSize(_:)`` view modifier to apply the size on list items.
///
/// ## Code samples
///
/// ```swift
///     // Standard size (default)
///     OUDSStaticListItem(data: OUDSListItemData(label: "Label"))
///         .oudsListItemSize(.standard)
///
///     // Small size — overline and extraLabel are hidden,
///     // avatars and icons use their smallest variant
///     OUDSStaticListItem(data: OUDSListItemData(label: "Label"))
///         .oudsListItemSize(.small)
/// ```
///
/// - Since: 3.0.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
@frozen public enum OUDSListItemSize {
    /// The standard (i.e. default) size of the list item.
    /// All text fields and elements are displayed at their normal size.
    case standard

    /// The small (compact) size of the list item.
    ///
    /// When using this size:
    /// - Some elements are displayed in their smallest variant (avatar, icon, badge, etc.).
    /// - Some text fields are **hidden**: `overline` and `extraLabel` from ``OUDSListItemData``,
    ///   and the extra label from ``OUDSListItemTrailing/TextType/labelAndExtraLabel(_:_:)``.
    case small
}

// MARK: - View Modifiers

extension View {

    /// Defines the visual style of a list item such as ``OUDSStaticListItem`` or ``OUDSNavigationListItem``.
    ///
    /// The style controls the border, divider, and background appearance of list items.
    ///
    /// ```swift
    ///     // Set outlined card style
    ///     VStack {
    ///         OUDSStaticListItem(data: OUDSListItemData(label: "Item 1"))
    ///         OUDSStaticListItem(data: OUDSListItemData(label: "Item 2"))
    ///     }
    ///     .oudsListContentStyle(.card(.outlined())
    ///
    ///     // Set item style with background and divider
    ///     VStack {
    ///         OUDSStaticListItem(data: OUDSListItemData(label: "Item 1"))
    ///         OUDSStaticListItem(data: OUDSListItemData(label: "Item 2"))
    ///     }
    ///     .oudsListContentStyle(.item(divider: true, background: true))
    /// ```
    ///
    /// - Parameter style: The ``OUDSListItemContentStyle``  style to apply on items.
    ///
    /// - Returns: A view with the style applied to its list items.
    public func oudsListContentStyle(_ style: OUDSListItemContentStyle) -> some View {
        environment(\.oudsListItemContentStyle, style)
    }

    /// Applies a *card* style on list items.
    ///
    /// This is a convenience modifier that applies an ``OUDSListItemContentStyle/card(_:)`` style.
    /// It is typically applied globally on a container so that all enclosed
    /// list items share the same card-like appearance.
    ///
    /// ```swift
    ///     VStack {
    ///         OUDSStaticListItem(data: OUDSListItemData(label: "Item 1"))
    ///         OUDSStaticListItem(data: OUDSListItemData(label: "Item 2"))
    ///     }
    ///     .oudsListCardStyle(.outlined())
    /// ```
    ///
    /// - Parameter decoration: The ``OUDSListItemContentStyle/card(_:)`` decoration (sub-style) to apply on items.
    ///   Defaults to `.standard(divider: true, background: true)`.
    ///
    /// - Returns: A view with the card style applied to its list items, default set to `.standard(divider: true, background: true)`
    public func oudsListCardStyle(_ decoration: OUDSListItemContentStyle.CardDecoration = .standard(divider: true, background: true)) -> some View {
        environment(\.oudsListItemContentStyle, .card(decoration))
    }

    /// Applies a *item* style on list items.
    ///
    /// This is a convenience modifier that applies an ``OUDSListItemContentStyle/item(divider:background:)`` style.
    /// It is typically applied globally on a container (e.g. a `List`, `VStack`, or `ForEach`)
    /// so that all enclosed list items share the same appearance.
    ///
    /// ```swift
    ///     VStack {
    ///         OUDSStaticListItem(data: OUDSListItemData(label: "Item 1"))
    ///         OUDSStaticListItem(data: OUDSListItemData(label: "Item 2"))
    ///     }
    ///     .oudsListItemStyle(divider: true, background: true)
    /// ```
    ///
    /// - Parameters:
    ///   - divider: Used to display a divider at bottom of the card.
    ///   - background: Used to fill the background, `true` by default. If set to `false`, the background is filled only
    ///     on interaction states (pressed on focussed)
    ///
    /// - Returns: A view with the item style applied to its list items, default set to `.item(divider: true, background: false)`
    public func oudsListItemStyle(divider: Bool = true, background: Bool = false) -> some View {
        environment(\.oudsListItemContentStyle, .item(divider: divider, background: background))
    }

    /// Defines whether media elements (images and videos) in list items should be displayed
    /// with rounded corners.
    ///
    /// This modifier applies to both leading and trailing media elements
    /// (``OUDSListItemLeading/image(_:)``, `OUDSListItemLeading/video(_:)`,
    /// ``OUDSListItemTrailing/image(_:)``, `OUDSListItemTrailing/video(_:)`).
    ///
    /// ```swift
    ///     OUDSStaticListItem(
    ///         data: OUDSListItemData(label: "Label"),
    ///         leading: .image(.init(asset: Image("il_placeholder"), size: .medium))
    ///     )
    ///     .oudsListItemRoundedMedia(true)
    /// ```
    ///
    /// - Parameter rounded: When `true`, media elements are displayed with rounded corners.
    ///   When `false` (default), media elements are displayed with square corners.
    ///
    /// - Returns: A view with the rounded media setting applied to its list items, default set to *false*
    public func oudsListItemRoundedMedia(_ rounded: Bool = false) -> some View {
        environment(\.oudsListItemRoundedMedia, rounded)
    }

    /// Sets the vertical alignment of leading, trailing, and text containers within list items.
    ///
    /// This modifier is typically applied globally on a container so that all enclosed
    /// list items share the same alignment.
    ///
    /// ```swift
    ///     VStack {
    ///         OUDSStaticListItem(
    ///             data: OUDSListItemData(label: "Label", description: "Description"),
    ///             leading: .icon(OUDSListItemIcon(type: .info, size: .medium)),
    ///             trailing: .text(.label(Text("Info")))
    ///         )
    ///     }
    ///     .oudsListItemContainerAlignment(.top)
    /// ```
    ///
    /// - Parameter alignment: The ``OUDSListItemContainersAlignment`` to apply.
    ///   Use `.center` (default) to vertically center all containers, or `.top` to align them
    ///   to the top of the row.
    ///
    /// - Returns: A view with the specified containers alignment applied to its list items.
    public func oudsListItemContainerAlignment(_ alignment: OUDSListItemContainersAlignment = .center) -> some View {
        environment(\.oudsListItemContainersAlignment, alignment)
    }

    /// Sets the size of list items.
    ///
    /// This modifier affects the padding, the visibility of certain text fields
    /// (`overline` and `extraLabel` are hidden in `.small`), and the size of
    /// leading/trailing elements (avatars, icons, badges use their smallest variant in `.small`).
    ///
    /// ```swift
    ///     VStack {
    ///         OUDSStaticListItem(data: OUDSListItemData(label: "Compact item"))
    ///         OUDSStaticListItem(data: OUDSListItemData(label: "Another compact item"))
    ///     }
    ///     .oudsListItemSize(.small)
    /// ```
    ///
    /// - Parameter size: The ``OUDSListItemSize`` to apply.
    ///   Use `.standard` (default) for normal sizing, or `.small` for a compact layout.
    ///
    /// - Returns: A view with the specified size applied to its list items.
    public func oudsListItemSize(_ size: OUDSListItemSize) -> some View {
        environment(\.oudsListItemSize, size)
    }
}

// MARK: - Environment Values

extension EnvironmentValues {

    /// The current vertical alignment of leading, trailing, and text containers in list items.
    ///
    /// Defaults to ``OUDSListItemContainersAlignment/center``.
    /// Set via ``SwiftUICore/View/oudsListItemContainerAlignment(_:)``.
    @Entry var oudsListItemContainersAlignment: OUDSListItemContainersAlignment = .center

    /// The current content style of list items.
    ///
    /// Defaults to `.item(divider: true, background: false)`.
    /// Set via ``SwiftUICore/View/oudsListItemStyle(divider:background:)`` or
    /// ``SwiftUICore/View/oudsListCardStyle(_:)``.
    @Entry var oudsListItemContentStyle: OUDSListItemContentStyle = .item(divider: true, background: false)

    /// Whether media elements (images and videos) in list items should be displayed
    /// with rounded corners.
    ///
    /// Defaults to `false` (square corners).
    /// Set via ``SwiftUICore/View/oudsListItemRoundedMedia(_:)``.
    @Entry var oudsListItemRoundedMedia: Bool = false

    /// The current size of list items.
    ///
    /// Defaults to ``OUDSListItemSize/standard``.
    /// Set via ``SwiftUICore/View/oudsListItemSize(_:)``.
    @Entry var oudsListItemSize: OUDSListItemSize = .standard
}

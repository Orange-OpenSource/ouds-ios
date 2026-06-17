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
/// - Since: 2.2.0
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

/// Defines the visual style of a list item such as ``OUDSStaticListItem`` or ``OUDSNavigationListItem``.
///
/// The style controls the border, divider, and background appearance of list items.
/// Use the ``SwiftUICore/View/oudsListItemStyle(_:)`` or
/// ``SwiftUICore/View/oudsListCardStyle(hasDivider:hasBackground:)`` view modifiers
/// to apply the style on list items.
///
/// ## Code samples
///
/// ```swift
///     // Outlined style with a border around each item
///     OUDSStaticListItem(data: OUDSListItemData(label: "Label"))
///         .oudsListItemStyle(.outlined)
///
///     // Standard style with divider and no background
///     OUDSStaticListItem(data: OUDSListItemData(label: "Label"))
///         .oudsListItemStyle(.standard(divider: true, background: false))
///
///     // Card style with background and no divider
///     OUDSStaticListItem(data: OUDSListItemData(label: "Label"))
///         .oudsListCardStyle(hasDivider: false, hasBackground: true)
/// ```
///
/// - Since: 2.2.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
@frozen public enum OUDSListItemContentStyle {
    /// An outlined appearance with a visible border around the list item.
    case outlined

    /// A standard appearance with configurable divider and background.
    ///
    /// - Parameters:
    ///   - divider: When `true`, a divider line is displayed at the bottom of the item.
    ///   - background: When `true`, a background fill is applied to the item.
    case standard(divider: Bool, background: Bool)
}

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
/// - Since: 2.2.0
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

    /// Applies the *card* style on list items.
    ///
    /// This modifier is typically applied globally on a container (e.g. a `List`, `VStack`, or `ForEach`)
    /// so that all enclosed list items share the same card-like appearance.
    ///
    /// ```swift
    ///     VStack {
    ///         OUDSStaticListItem(data: OUDSListItemData(label: "Item 1"))
    ///         OUDSStaticListItem(data: OUDSListItemData(label: "Item 2"))
    ///     }
    ///     .oudsListCardStyle(hasDivider: false, hasBackground: true)
    /// ```
    ///
    /// - Parameters:
    ///    - hasDivider: When `true`, a divider line is displayed at the bottom of each item. Defaults to `false`.
    ///    - hasBackground: When `true`, a background fill is applied to each item. Defaults to `true`.
    ///
    /// - Returns: A view with the card style applied to its list items.
    public func oudsListCardStyle(hasDivider: Bool = false,
                                  hasBackground: Bool = true) -> some View
    {
        environment(\.oudsListItemContentStyle, .standard(divider: hasDivider, background: hasBackground))
    }

    /// Applies a content style on list items.
    ///
    /// This modifier is typically applied globally on a container so that all enclosed
    /// list items share the same visual style.
    ///
    /// ```swift
    ///     VStack {
    ///         OUDSStaticListItem(data: OUDSListItemData(label: "Item 1"))
    ///         OUDSStaticListItem(data: OUDSListItemData(label: "Item 2"))
    ///     }
    ///     .oudsListItemStyle(.outlined)
    /// ```
    ///
    /// - Parameter style: The ``OUDSListItemContentStyle`` to apply on items.
    ///   Defaults to `.standard(divider: true, background: false)`.
    ///
    /// - Returns: A view with the specified content style applied to its list items.
    public func oudsListItemStyle(_ style: OUDSListItemContentStyle = .standard(divider: true, background: false)) -> some View {
        environment(\.oudsListItemContentStyle, style)
    }

    /// Defines whether media elements (images and videos) in list items should be displayed
    /// with rounded corners.
    ///
    /// This modifier applies to both leading and trailing media elements
    /// (``OUDSListItemLeading/image(asset:description:)``, `OUDSListItemLeading/video(_:autoplay:muted:tapToTogglePlay:tapToToggleMute:)`,
    /// ``OUDSListItemTrailing/image(asset:description:)``, `OUDSListItemTrailing/video(_:autoplay:muted:tapToTogglePlay:tapToToggleMute:)`).
    ///
    /// ```swift
    ///     OUDSStaticListItem(
    ///         data: OUDSListItemData(label: "Label"),
    ///         leading: .image(asset: Image("il_placeholder"))
    ///     )
    ///     .oudsListItemRoundedMedia(true)
    /// ```
    ///
    /// - Parameter rounded: When `true`, media elements are displayed with rounded corners.
    ///   When `false` (default), media elements are displayed with square corners.
    ///
    /// - Returns: A view with the rounded media setting applied to its list items.
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

    /// The current content style of list items (outlined, standard with divider/background).
    ///
    /// Defaults to `.standard(divider: true, background: false)`.
    /// Set via ``SwiftUICore/View/oudsListItemStyle(_:)`` or
    /// ``SwiftUICore/View/oudsListCardStyle(hasDivider:hasBackground:)``.
    @Entry var oudsListItemContentStyle: OUDSListItemContentStyle = .standard(divider: true, background: false)

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

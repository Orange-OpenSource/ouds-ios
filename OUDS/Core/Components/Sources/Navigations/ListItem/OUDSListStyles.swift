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
/// Use the ``SwiftUICore/View/oudsListItemStyle(_:)``,
/// ``SwiftUICore/View/oudsListItemStandardStyle(_:)`` or
/// ``SwiftUICore/View/oudsListCardStyle(_:)`` view modifiers to apply the style on list items.
///
/// ## Cases
///
/// - **`.card(_:)`**: A card-like appearance with various sub-styles defined by
///   ``OUDSListItemContentStyle/Card``. Cards can be outlined, have a background,
///   or combine these effects only on interaction.
/// - **`.standard(_:)`**: A standard list item appearance with an optional background and divider,
///   defined by ``OUDSListItemContentStyle/Standard``.
///
/// ## Known limitation
///
/// The `OnInteractionOnly` variants (`.outlinedOnInteractionOnly`, `.backgroundOnInteractionOnly`)
/// have exactly the same behavior as their non-interaction counterparts on ``OUDSStaticListItem``:
/// - `.outlinedOnInteractionOnly` behaves like `.outlined` (border is always visible).
/// - `.backgroundOnInteractionOnly(withDivider:)` behaves like `.background(wthDivider:)`
///   (background is always visible).
///
/// This will be addressed in a future release when interaction state management is fully integrated.
///
/// ## Code samples
///
/// ```swift
///     // Card style with an outlined border
///     OUDSNavigationListItem(data: OUDSListItemData(label: "Label"))
///         .oudsListItemStyle(.card(.outlined))
///
///     // Card style with outline only on interaction
///     OUDSNavigationListItem(data: OUDSListItemData(label: "Label"))
///         .oudsListItemStyle(.card(.outlinedOnInteractionOnly))
///
///     // Card style with background and divider
///     OUDSNavigationListItem(data: OUDSListItemData(label: "Label"))
///         .oudsListItemStyle(.card(.background(wthDivider: true)))
///
///     // Card style with background only on interaction
///     OUDSNavigationListItem(data: OUDSListItemData(label: "Label"))
///         .oudsListItemStyle(.card(.backgroundOnInteractionOnly(withDivider: false)))
///
///     // Standard style with background and divider
///     OUDSNavigationListItem(data: OUDSListItemData(label: "Label"))
///         .oudsListItemStyle(.standard(.background(wthDivider: true)))
///
///     // Standard style with background only on interaction (default)
///     OUDSNavigationListItem(data: OUDSListItemData(label: "Label"))
///         .oudsListItemStyle(.standard(.backgroundOnInteractionOnly(withDivider: true)))
///
///     // Using convenience modifiers
///     OUDSNavigationListItem(data: OUDSListItemData(label: "Label"))
///         .oudsListCardStyle(.outlined)
///
///     OUDSNavigationListItem(data: OUDSListItemData(label: "Label"))
///         .oudsListItemStandardStyle(.background(wthDivider: false))
/// ```
///
/// - Since: 2.2.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
@frozen public enum OUDSListItemContentStyle {

    /// Defines the sub-styles available for the ``OUDSListItemContentStyle/card(_:)`` case.
    ///
    /// Card styles control how the card border, background, and divider behave,
    /// including whether these visual effects are always visible or only appear during interaction
    /// (e.g. press, hover).
    ///
    /// ## Cases
    ///
    /// - **`.outlined`**: A permanent border is drawn around the card.
    /// - **`.outlinedOnInteractionOnly`**: A border is drawn around the card only when the user
    ///   interacts with it (e.g. press or hover).
    /// - **`.background(wthDivider:)`**: A background fill is always applied to the card.
    ///   An optional divider can be displayed at the bottom. Defaults to `true`.
    /// - **`.backgroundOnInteractionOnly(withDivider:)`**: A background fill is applied only during
    ///   interaction. An optional divider can be displayed at the bottom. Defaults to `true`.
    ///
    /// ## Known limitation
    ///
    /// The `OnInteractionOnly` variants have same behavior on ``OUDSStaticListItem``.:
    /// - `.outlinedOnInteractionOnly` currently behaves like `.outlined` (border is always visible).
    /// - `.backgroundOnInteractionOnly(withDivider:)` currently behaves like `.background(wthDivider:).
    ///   (background is always visible).
    ///
    /// - Since: 2.2.0
    public enum Card {
        /// A permanent border is drawn around the card.
        case outlined

        /// A border is drawn around the card only when the user interacts with it.
        ///
        /// - Note: **Known limitation** — This currently behaves like ``outlined`` on ``OUDSStaticListItem``.
        ///   The border is always visible regardless of interaction state.
        ///   This will be addressed in a future release.
        case outlinedOnInteractionOnly

        /// A background fill is always applied to the card.
        ///
        /// - Parameter wthDivider: When `true`, a divider line is displayed at the bottom of the card.
        ///   Defaults to `true`.
        case background(wthDivider: Bool = true)

        /// A background fill is applied to the card only during interaction.
        ///
        /// - Note: **Known limitation** — This currently behaves like ``background(wthDivider:)`` on ``OUDSStaticListItem``.
        ///   The background is always visible regardless of interaction state.
        ///   This will be addressed in a future release.
        ///
        /// - Parameter withDivider: When `true`, a divider line is displayed at the bottom of the card.
        ///   Defaults to `true`.
        case backgroundOnInteractionOnly(withDivider: Bool = true)
    }

    /// Defines the sub-styles available for the ``OUDSListItemContentStyle/standard(_:)`` case.
    ///
    /// Standard styles control how the background and divider behave for regular list items,
    /// including whether these visual effects are always visible or only appear during interaction
    /// (e.g. press, hover).
    ///
    /// ## Cases
    ///
    /// - **`.background(wthDivider:)`**: A background fill is always applied to the item.
    ///   An optional divider can be displayed at the bottom. Defaults to `true`.
    /// - **`.backgroundOnInteractionOnly(withDivider:)`**: A background fill is applied only during
    ///   interaction. An optional divider can be displayed at the bottom. Defaults to `true`.
    ///
    /// ## Known limitation
    ///
    /// `.backgroundOnInteractionOnly(withDivider:)` currently behaves like `.background(wthDivider:)` on ``OUDSStaticListItem``.
    /// The background is always visible regardless of interaction state.
    /// This will be addressed in a future release.
    ///
    /// - Since: 2.2.0
    public enum Standard {
        /// A background fill is always applied to the item.
        ///
        /// - Parameter wthDivider: When `true`, a divider line is displayed at the bottom of the item.
        ///   Defaults to `true`.
        case background(wthDivider: Bool = true)

        /// A background fill is applied to the item only during interaction.
        ///
        /// - Note: **Known limitation** — This currently behaves like ``background(wthDivider:)`` on ``OUDSStaticListItem``.
        ///   The background is always visible regardless of interaction state.
        ///   This will be addressed in a future release.
        ///
        /// - Parameter withDivider: When `true`, a divider line is displayed at the bottom of the item.
        ///   Defaults to `true`.
        case backgroundOnInteractionOnly(withDivider: Bool = true)
    }

    /// A card-like appearance with a sub-style that controls border, background, and divider behavior.
    ///
    /// Use ``OUDSListItemContentStyle/Card`` to define the card's visual appearance.
    ///
    /// - Parameter style: The ``Card`` sub-style defining the card's visual appearance.
    case card(_ style: Card)

    /// A standard list item appearance with configurable background and divider.
    ///
    /// Use ``OUDSListItemContentStyle/Standard`` to define the standard item's visual appearance.
    ///
    /// - Parameter style: The ``Standard`` sub-style defining the item's visual appearance.
    case standard(_ style: Standard)
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

    /// Applies a *standard* style on list items.
    ///
    /// This is a convenience modifier that applies an ``OUDSListItemContentStyle/standard(_:)`` style.
    /// It is typically applied globally on a container (e.g. a `List`, `VStack`, or `ForEach`)
    /// so that all enclosed list items share the same appearance.
    ///
    /// ```swift
    ///     VStack {
    ///         OUDSStaticListItem(data: OUDSListItemData(label: "Item 1"))
    ///         OUDSStaticListItem(data: OUDSListItemData(label: "Item 2"))
    ///     }
    ///     .oudsListItemStandardStyle(.background(wthDivider: true))
    /// ```
    ///
    /// - Parameter style: The ``OUDSListItemContentStyle/Standard`` sub-style to apply on items.
    ///   Defaults to `.backgroundOnInteractionOnly(withDivider: true)`.
    ///
    /// - Returns: A view with the standard style applied to its list items.
    public func oudsListItemStandardStyle(_ style: OUDSListItemContentStyle.Standard = .backgroundOnInteractionOnly(withDivider: true)) -> some View {
        environment(\.oudsListItemContentStyle, .standard(style))
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
    ///     .oudsListCardStyle(.outlined)
    /// ```
    ///
    /// - Parameter style: The ``OUDSListItemContentStyle/Card`` sub-style to apply on items.
    ///   Defaults to `.background(wthDivider: true)`.
    ///
    /// - Returns: A view with the card style applied to its list items.
    public func oudsListCardStyle(_ style: OUDSListItemContentStyle.Card = .background(wthDivider: true)) -> some View {
        environment(\.oudsListItemContentStyle, .card(style))
    }

    /// Applies a content style on list items.
    ///
    /// This is the general-purpose modifier that can apply any ``OUDSListItemContentStyle``
    /// (either `.standard` or `.card`) on list items.
    /// It is typically applied globally on a container (e.g. a `List`, `VStack`, or `ForEach`)
    /// so that all enclosed list items share the same visual style.
    ///
    /// For convenience, you can also use the dedicated modifiers:
    /// - ``SwiftUICore/View/oudsListItemStandardStyle(_:)`` for standard styles
    /// - ``SwiftUICore/View/oudsListCardStyle(_:)`` for card styles
    ///
    /// ```swift
    ///     // Standard style with background on interaction only and divider
    ///     VStack {
    ///         OUDSNavigationListItem(data: OUDSListItemData(label: "Item 1"))
    ///         OUDSNavigationListItem(data: OUDSListItemData(label: "Item 2"))
    ///     }
    ///     .oudsListItemStyle(.standard(.backgroundOnInteractionOnly(withDivider: true)))
    ///
    ///     // Card style with outlined border
    ///     VStack {
    ///         OUDSNavigationListItem(data: OUDSListItemData(label: "Item 1"))
    ///         OUDSNavigationListItem(data: OUDSListItemData(label: "Item 2"))
    ///     }
    ///     .oudsListItemStyle(.card(.outlined))
    /// ```
    ///
    /// - Parameter style: The ``OUDSListItemContentStyle`` to apply on items.
    ///   Defaults to `.standard(.background(wthDivider: true))`.
    ///
    /// - Returns: A view with the specified content style applied to its list items.
    public func oudsListItemStyle(_ style: OUDSListItemContentStyle = .standard(.background(wthDivider: true))) -> some View {
        environment(\.oudsListItemContentStyle, style)
    }

    /// Defines whether media elements (images and videos) in list items should be displayed
    /// with rounded corners.
    ///
    /// This modifier applies to both leading and trailing media elements
    /// (``OUDSListItemLeading/image(_:)``, ``OUDSListItemLeading/video(_:)``,
    /// ``OUDSListItemTrailing/image(:_)``, ``OUDSListItemTrailing/video(_:)``).
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

    /// The current content style of list items.
    ///
    /// Defaults to `.standard(.backgroundOnInteractionOnly(withDivider: true))`.
    /// Set via ``SwiftUICore/View/oudsListItemStyle(_:)``,
    /// ``SwiftUICore/View/oudsListItemStandardStyle(_:)`` or
    /// ``SwiftUICore/View/oudsListCardStyle(_:)``.
    @Entry var oudsListItemContentStyle: OUDSListItemContentStyle = .standard(.backgroundOnInteractionOnly(withDivider: true))

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

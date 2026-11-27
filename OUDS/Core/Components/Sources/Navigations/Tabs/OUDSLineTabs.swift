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

#if !os(watchOS)
import SwiftUI

/// A group of tabs with a line indicating the selected item.
///
/// Unlike ``OUDSTabBar``, these tabs switch between related sections inside a screen.
/// The application displays the content corresponding to `selection` below the tabs.
/// Distribution is justified: tabs fill the grid, using equal widths when content fits.
/// Otherwise header widths take priority and inline padding is reduced before text wraps.
/// Left-aligned distribution and expand tabs are not supported.
///
/// ```swift
/// @State private var section = 0
///
/// var body: some View {
///     OUDSLineTabs(selection: $section, tabs: [
///         OUDSTabItem(tag: 0, label: "Overview"),
///         OUDSTabItem(tag: 1, label: "Details")
///     ])
/// }
/// ```
///
/// An unknown selection is left unchanged and no tab is marked selected. Disabled
/// tabs remain visible, including a disabled selected tab. Changing the items never
/// silently changes the application's selection. Tags must be unique.
///
/// - SeeAlso: <doc:Tabs>, ``OUDSContainedTabs``
@available(iOS 15, macOS 13, tvOS 16, visionOS 1, *)
public struct OUDSLineTabs<Tag: Hashable>: View {
    @Binding private var selection: Tag
    private let tabs: [OUDSTabItem<Tag>]
    private let layout: OUDSTabsLayout
    private let hasDivider: Bool
    private let hasStrongLabel: Bool
    private let hasGridMargin: Bool
    private let hasStickyBackground: Bool

    /// Creates line tabs controlled by a selection binding.
    ///
    /// - Parameters:
    ///   - selection: The selected tag, owned by the application.
    ///   - tabs: Up to eight items with unique tags and nonempty labels, in reading order.
    ///   - layout: Text only by default. Asset layouts require an image on every item.
    ///   - hasDivider: Whether a divider is displayed below the row. Defaults to `true`.
    ///   - hasStrongLabel: Whether labels use strong typography. Defaults to `true`.
    ///   - hasGridMargin: Whether the row includes the theme's horizontal grid margins. Defaults to `true`.
    ///   - hasStickyBackground: Whether to apply the sticky background and spacing. Only active with grid margins; does not pin the view.
    public init(
        selection: Binding<Tag>,
        tabs: [OUDSTabItem<Tag>],
        layout: OUDSTabsLayout = .textOnly,
        hasDivider: Bool = true,
        hasStrongLabel: Bool = true,
        hasGridMargin: Bool = true,
        hasStickyBackground: Bool = false)
    {
        TabsValidation.validate(tabs, layout: layout)
        _selection = selection
        self.tabs = tabs
        self.layout = layout
        self.hasDivider = hasDivider
        self.hasStrongLabel = hasStrongLabel
        self.hasGridMargin = hasGridMargin
        self.hasStickyBackground = hasStickyBackground
    }

    /// Creates justified line tabs using a data builder. Supports items, arrays,
    /// conditions and Swift `for` loops. The same limits and options as the array initializer apply.
    public init(
        selection: Binding<Tag>,
        layout: OUDSTabsLayout = .textOnly,
        hasDivider: Bool = true,
        hasStrongLabel: Bool = true,
        hasGridMargin: Bool = true,
        hasStickyBackground: Bool = false,
        @OUDSTabItemsBuilder<Tag> tabs: () -> [OUDSTabItem<Tag>])
    {
        self.init(
            selection: selection,
            tabs: tabs(),
            layout: layout,
            hasDivider: hasDivider,
            hasStrongLabel: hasStrongLabel,
            hasGridMargin: hasGridMargin,
            hasStickyBackground: hasStickyBackground)
    }

    /// The themed group of line tabs.
    public var body: some View {
        Tabs(
            selection: $selection,
            items: tabs,
            appearance: .line,
            layout: layout,
            hasDivider: hasDivider,
            hasStrongLabel: hasStrongLabel,
            hasGridMargin: hasGridMargin,
            hasStickyBackground: hasStickyBackground)
    }
}
#endif

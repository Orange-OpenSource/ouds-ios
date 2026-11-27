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

/// A group of contained tabs, separating related sections using backgrounds and borders.
///
/// The application owns the selection and displays its associated content. Uses the
/// same item model and selection semantics as ``OUDSLineTabs``. Unlike a segmented
/// control, tabs navigate between content sections rather than changing a setting.
/// Header widths are measured before allocation: inline padding can shrink to keep
/// labels on one line without reducing font size or truncating their content.
///
/// ```swift
/// OUDSContainedTabs(selection: $section, tabs: [
///     OUDSTabItem(tag: 0, label: "Overview"),
///     OUDSTabItem(tag: 1, label: "Details")
/// ])
/// ```
///
/// - SeeAlso: <doc:Tabs>, ``OUDSLineTabs``, ``OUDSTabItem``
@available(iOS 15, macOS 13, tvOS 16, visionOS 1, *)
public struct OUDSContainedTabs<Tag: Hashable>: View {
    @Binding private var selection: Tag
    private let tabs: [OUDSTabItem<Tag>]
    private let layout: OUDSTabsLayout
    private let hasDivider: Bool
    private let hasStrongLabel: Bool
    private let hasGridMargin: Bool
    private let hasStickyBackground: Bool

    /// Creates contained tabs controlled by a selection binding.
    ///
    /// - Parameters:
    ///   - selection: The selected tag, owned by the application.
    ///   - tabs: Up to eight items with unique tags and nonempty labels, in reading order.
    ///   - layout: Text only by default. Asset layouts require an image on every item.
    ///   - hasDivider: Whether the theme-controlled bottom divider is shown. Defaults to `true`.
    ///   - hasStrongLabel: Whether labels use strong typography. Defaults to `true`.
    ///   - hasGridMargin: Whether the row includes the theme's horizontal grid margins. Defaults to `true`.
    ///   - hasStickyBackground: Whether to apply sticky styling, only with grid margins. Does not pin the view.
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

    /// Creates justified contained tabs using a data builder. Supports items, arrays,
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

    /// The themed group of contained tabs.
    public var body: some View {
        Tabs(
            selection: $selection,
            items: tabs,
            appearance: .contained,
            layout: layout,
            hasDivider: hasDivider,
            hasStrongLabel: hasStrongLabel,
            hasGridMargin: hasGridMargin,
            hasStickyBackground: hasStickyBackground)
    }
}
#endif

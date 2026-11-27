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
import OUDSThemesContract
import SwiftUI

enum TabsAppearance {
    case line, contained
}

/// Shared justified layout. Does not own or silently repair the client's selection.
struct Tabs<Tag: Hashable>: View {
    @Binding var selection: Tag
    let items: [OUDSTabItem<Tag>]
    let appearance: TabsAppearance
    let layout: OUDSTabsLayout
    let hasDivider: Bool
    let hasStrongLabel: Bool
    var hasGridMargin = true
    var hasStickyBackground = false

    @State private var contentHeight: CGFloat = 0
    @State private var availableWidth: CGFloat = 0
    @State private var measurements: [Tag: TabItemMeasurement] = [:]

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var sizeClass

    var body: some View {
        Group {
            if !items.isEmpty {
                if hasGridMargin {
                    decoratedRow
                        .modifier(TabsStickyStyle(appearance: appearance, isEnabled: hasStickyBackground))
                } else {
                    decoratedRow
                        .fixedSize(horizontal: true, vertical: false)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
            }
        }
        .accessibilityElement(children: .contain)
    }

    private var row: some View {
        let allocations = itemAllocations
        return HStack(alignment: .bottom, spacing: spacing) {
            ForEach(items, id: \.tag) { item in
                TabButton(
                    item: item,
                    selected: selection == item.tag,
                    appearance: appearance,
                    layout: layout,
                    hasDivider: hasDivider,
                    hasStrongLabel: hasStrongLabel,
                    isFullWidth: hasGridMargin,
                    allocation: allocations[item.tag],
                    contentHeight: contentHeight)
                {
                    select(item)
                }
                .frame(width: allocations[item.tag]?.width)
            }
        }
        .frame(minWidth: hasGridMargin ? 0 : nil, maxWidth: hasGridMargin ? .infinity : nil)
        .background {
            GeometryReader { geometry in
                Color.clear.preference(key: TabAvailableWidth.self, value: geometry.size.width)
            }
        }
        .modifier(TabGridMargin(isEnabled: hasGridMargin))
        .onPreferenceChange(TabContentHeight.self) { contentHeight = $0 }
        .onPreferenceChange(TabAvailableWidth.self) { availableWidth = $0 }
        .onPreferenceChange(TabMeasurements<Tag>.self) { measurements = $0 }
    }

    private var itemAllocations: [Tag: TabItemAllocation] {
        guard hasGridMargin, availableWidth > 0 else { return [:] }
        let measured = items.compactMap { measurements[$0.tag] }
        guard measured.count == items.count else { return [:] }
        let allocations = TabWidthAllocation.calculate(width: availableWidth, spacing: spacing, items: measured)
        return Dictionary(uniqueKeysWithValues: zip(items.map(\.tag), allocations))
    }

    private var decoratedRow: some View {
        row.background(alignment: .bottom) {
            if appearance == .line, hasDivider {
                OUDSHorizontalDivider()
                    .allowsHitTesting(false)
                    .accessibilityHidden(true)
            }
        }
    }

    private var spacing: CGFloat {
        if appearance == .contained {
            sizeClass == .compact
                ? theme.containedTabs.spaceColumnGapTabsContainerMobile
                : theme.containedTabs.spaceColumnGapTabsContainerTablet
        } else {
            theme.lineTabs.spaceColumnGapTabsContainerJustified
        }
    }

    /// Kept separate from rendering so selection semantics can be unit tested.
    func select(_ item: OUDSTabItem<Tag>) {
        guard item.isEnabled, items.contains(where: { $0.tag == item.tag && $0.isEnabled }) else { return }
        selection = item.tag
    }
}

private struct TabButton<Tag: Hashable>: View {
    let item: OUDSTabItem<Tag>
    let selected: Bool
    let appearance: TabsAppearance
    let layout: OUDSTabsLayout
    let hasDivider: Bool
    let hasStrongLabel: Bool
    let isFullWidth: Bool
    let allocation: TabItemAllocation?
    let contentHeight: CGFloat
    let action: () -> Void

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var sizeClass
    @FocusState private var isFocused: Bool
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.skeletonState) private var skeletonState

    var body: some View {
        OUDSInteractionButton(action: action) { interaction in
            let style = TabStyle(
                theme: theme,
                appearance: appearance,
                selected: selected,
                interaction: interaction,
                isFocused: isFocused)
            VStack(spacing: style.indicatorGap) {
                content
                    // Measure the full multiline content before equalizing tab heights.
                    // Applying this only to Text can let its stack compress and clip it.
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.vertical, style.blockPadding)
                    .padding(.leading, allocation?.leadingPadding ?? preferredLeadingPadding)
                    .padding(.trailing, allocation?.trailingPadding ?? preferredTrailingPadding)
                    .background {
                        GeometryReader { geometry in
                            Color.clear.preference(key: TabContentHeight.self, value: geometry.size.height)
                        }
                    }
                    .frame(minHeight: contentHeight)
                    .frame(maxWidth: .infinity)
                TabShape(topRadius: style.indicatorTopRadius, bottomRadius: style.indicatorBottomRadius)
                    .fill(style.indicatorColor)
                    .frame(height: style.indicatorHeight)
                    .opacity(style.indicatorOpacity)
            }
            .frame(
                minWidth: isFullWidth ? 0 : theme.sizes.minInteractiveAreaDefault,
                minHeight: theme.sizes.minInteractiveAreaDefault)
            .overlay(alignment: .topLeading) { headerMeasurement }
            .foregroundColor(style.contentColor)
            .background(style.backgroundColor)
            .overlay { TabBorder(style: style, hasDivider: hasDivider) }
            .clipShape(TabShape(topRadius: style.topRadius, bottomRadius: style.bottomRadius))
            .overlay {
                if isFocused {
                    TabShape(topRadius: style.topRadius, bottomRadius: style.bottomRadius)
                        .stroke(theme.colors.borderFocus.color(for: colorScheme), lineWidth: theme.borders.widthFocus)
                        .padding(theme.borders.widthFocus / 2)
                }
            }
            .skeleton(shape: TabShape(topRadius: style.topRadius, bottomRadius: style.bottomRadius))
            .contentShape(Rectangle())
            .accessibilityHidden(true)
        }
        .disabled(!item.isEnabled || skeletonState != nil)
        .focused($isFocused)
        .frame(maxWidth: .infinity)
        .accessibilityLabel(accessibleLabel)
        .accessibilityAddTraits(selected ? [.isSelected] : [])
        .accessibilityHidden(skeletonState != nil)
        .modifier(TabIdentifier(identifier: item.accessibilityIdentifier))
    }

    private var headerMeasurement: some View {
        intrinsicHeader
            .fixedSize(horizontal: true, vertical: true)
            .hidden()
            .background {
                GeometryReader { geometry in
                    Color.clear.preference(key: TabMeasurements<Tag>.self, value: [
                        item.tag: TabItemMeasurement(
                            contentWidth: geometry.size.width.rounded(.up),
                            leadingPadding: preferredLeadingPadding,
                            trailingPadding: preferredTrailingPadding),
                    ])
                }
            }
            .allowsHitTesting(false)
            .accessibilityHidden(true)
    }

    @ViewBuilder private var content: some View {
        if layout == .assetOnly {
            HStack(spacing: theme.spaces.fixedXsmall) {
                image
                trailing
            }
        } else if layout == .textAndTopAsset {
            VStack(spacing: theme.spaces.fixedXsmall) {
                image
                texts
            }
        } else {
            HStack(spacing: theme.spaces.fixedXsmall) {
                image
                texts
                    .layoutPriority(1)
            }
        }
    }

    @ViewBuilder private var image: some View {
        if layout.hasAsset, let image = item.image {
            OUDSScaledIcon(
                image: image,
                size: sizeClass == .compact
                    ? theme.sizes.iconWithBodyLargeSizeMediumMobile
                    : theme.sizes.iconWithBodyLargeSizeMediumTablet)
                .accessibilityHidden(true)
        }
    }

    private var texts: some View {
        VStack(spacing: theme.spaces.fixedNone) {
            labelRow
            if let description = item.description {
                text(description)
                    .bodyDefaultSmall(theme)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
        .fixedSize(horizontal: false, vertical: true)
        .multilineTextAlignment(.center)
    }

    private var labelRow: some View {
        HStack(spacing: theme.spaces.fixedXsmall) {
            text(item.label)
                .font(hasStrongLabel ? theme.fonts.bodyStrongLarge : theme.fonts.bodyDefaultLarge)
                .lineLimit(nil)
                .fixedSize(horizontal: false, vertical: true)
                .layoutPriority(1)
            trailing
                .fixedSize(horizontal: false, vertical: true)
        }
    }

    /// Only measures the header: a long description must not force narrower padding
    /// or wider columns when the label itself already fits on one line.
    @ViewBuilder private var intrinsicHeader: some View {
        if layout == .assetOnly {
            HStack(spacing: theme.spaces.fixedXsmall) {
                image
                trailing
            }
        } else if layout == .textAndTopAsset {
            VStack(spacing: theme.spaces.fixedXsmall) {
                image
                labelRow
            }
        } else {
            HStack(spacing: theme.spaces.fixedXsmall) {
                image
                labelRow
            }
        }
    }

    private var preferredLeadingPadding: CGFloat { inlinePadding(hasAccessory: layout.hasAsset) }
    private var preferredTrailingPadding: CGFloat { inlinePadding(hasAccessory: item.trailing != nil, isTrailing: true) }

    @ViewBuilder private var trailing: some View {
        switch item.trailing {
        case let .badge(.standard(label, status)):
            OUDSBadgeStandard(accessibilityLabel: label, status: status, size: .extraSmall)
        case let .badge(.count(count, label, status)):
            OUDSBadgeCount(count, accessibilityLabel: label, status: status, size: .medium)
        case let .tag(tag):
            tag
        case nil:
            EmptyView()
        }
    }

    private func text(_ content: OUDSTextualContent) -> Text {
        switch content {
        case let .raw(value):
            Text(verbatim: value)
        case let .localized(key, tableName, bundle):
            Text(key, tableName: tableName, bundle: bundle)
        case let .rich(value):
            Text(value)
        }
    }

    private var accessibleLabel: String {
        var parts = [item.label.rawValue]
        if let description = item.description { parts.append(description.rawValue) }
        if let trailing = item.trailing { parts.append(trailing.accessibilityLabel) }
        return parts.filter { !$0.isEmpty }.joined(separator: ", ")
    }

    private func inlinePadding(hasAccessory: Bool, isTrailing: Bool = false) -> CGFloat {
        let compact = sizeClass == .compact
        if appearance == .contained {
            if hasAccessory {
                if isTrailing {
                    return compact ? theme.containedTabs.spacePaddingInlineTabIndicatorEndMobile : theme.containedTabs
                        .spacePaddingInlineTabIndicatorEndTablet
                }
                return compact ? theme.containedTabs.spacePaddingInlineTabIconStartMobile : theme.containedTabs.spacePaddingInlineTabIconStartTablet
            }
            return compact ? theme.containedTabs.spacePaddingInlineTabMobile : theme.containedTabs.spacePaddingInlineTabTablet
        }
        if layout == .textAndTopAsset {
            return compact ? theme.lineTabs.spacePaddingInlineTabVerticalMobile : theme.lineTabs.spacePaddingInlineTabVerticalTablet
        }
        if hasAccessory {
            if isTrailing {
                return compact ? theme.lineTabs.spacePaddingInlineTabHorizontalIndicatorEndMobile : theme.lineTabs
                    .spacePaddingInlineTabHorizontalIndicatorEndTablet
            }
            return compact ? theme.lineTabs.spacePaddingInlineTabHorizontalIconStartMobile : theme.lineTabs
                .spacePaddingInlineTabHorizontalIconStartTablet
        }
        return compact ? theme.lineTabs.spacePaddingInlineTabHorizontalMobile : theme.lineTabs.spacePaddingInlineTabHorizontalTablet
    }
}

private struct TabIdentifier: ViewModifier {
    let identifier: String?

    @ViewBuilder func body(content: Content) -> some View {
        if let identifier { content.accessibilityIdentifier(identifier) } else { content }
    }
}

private struct TabGridMargin: ViewModifier {
    let isEnabled: Bool

    @ViewBuilder func body(content: Content) -> some View {
        if isEnabled { content.gridMargin(.horizontal) } else { content }
    }
}

/// Applies the visual sticky treatment, not scrolling/pinning behavior. The caller
/// only applies this modifier when grid margins are enabled.
private struct TabsStickyStyle: ViewModifier {
    let appearance: TabsAppearance
    let isEnabled: Bool

    @Environment(\.theme) private var theme

    @ViewBuilder func body(content: Content) -> some View {
        if isEnabled {
            content
                .padding(
                    .top,
                    appearance == .line ? theme.lineTabs.spacePaddingBlockTopStickyContainer : theme.containedTabs
                        .spacePaddingBlockTopStickyContainer)
                .padding(.bottom, appearance == .line ? theme.spaces.fixedNone : theme.containedTabs.spacePaddingBlockBottomStickyContainer)
                .background(theme.colors.overlaySticky)
                .shadow(theme.elevations.sticky)
        } else {
            content
        }
    }
}

private struct TabContentHeight: PreferenceKey {
    static var defaultValue: CGFloat { 0 }

    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = max(value, nextValue())
    }
}

private struct TabAvailableWidth: PreferenceKey {
    static var defaultValue: CGFloat { 0 }

    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) { value = max(value, nextValue()) }
}

private struct TabMeasurements<Tag: Hashable>: PreferenceKey {
    static var defaultValue: [Tag: TabItemMeasurement] { [:] }

    static func reduce(value: inout [Tag: TabItemMeasurement], nextValue: () -> [Tag: TabItemMeasurement]) {
        value.merge(nextValue(), uniquingKeysWith: { _, latest in latest })
    }
}
#endif

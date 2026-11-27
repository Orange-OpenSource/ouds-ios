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
@testable import OUDSComponents
import OUDSThemesOrange
import SwiftUI
import Testing

@MainActor
struct OUDSTabsTests {
    @Test(arguments: [TabsAppearance.line, .contained])
    func selectionUpdatesBinding(appearance: TabsAppearance) {
        var selection = "overview"
        let items = [OUDSTabItem(tag: "overview", label: "Overview"), OUDSTabItem(tag: "details", label: "Details")]
        let tabs = makeTabs(selection: Binding(get: { selection }, set: { selection = $0 }), items: items, appearance: appearance)
        tabs.select(items[1])
        #expect(selection == "details")
        tabs.select(items[1])
        #expect(selection == "details")
    }

    @Test(arguments: [TabsAppearance.line, .contained])
    func disabledAndMissingItemsCannotBeSelected(appearance: TabsAppearance) {
        var selection = 0
        let items = [OUDSTabItem(tag: 0, label: "Overview"), OUDSTabItem(tag: 1, label: "Details", isEnabled: false)]
        let tabs = makeTabs(selection: Binding(get: { selection }, set: { selection = $0 }), items: items, appearance: appearance)
        tabs.select(items[1])
        #expect(selection == 0)
        tabs.select(OUDSTabItem(tag: 2, label: "Unknown"))
        #expect(selection == 0)
        tabs.select(OUDSTabItem(tag: 1, label: "Disabled tag"))
        #expect(selection == 0)
    }

    @Test func emptyItemsPreserveSelection() {
        var selection = 42
        let tabs = makeTabs(selection: Binding(get: { selection }, set: { selection = $0 }), items: [], appearance: .line)
        tabs.select(OUDSTabItem(tag: 0, label: "Missing"))
        #expect(selection == 42)
    }

    @Test func unknownSelectionCanBeReplacedByAnEnabledTab() {
        var selection = 42
        let items = [OUDSTabItem(tag: 0, label: "Overview")]
        let tabs = makeTabs(selection: Binding(get: { selection }, set: { selection = $0 }), items: items, appearance: .contained)
        #expect(selection == 42)
        tabs.select(items[0])
        #expect(selection == 0)
    }

    @Test(arguments: [TabsAppearance.line, .contained])
    func disabledStateTakesPrecedenceOverFocus(appearance: TabsAppearance) {
        let theme = OrangeTheme()
        let style = TabStyle(theme: theme, appearance: appearance, selected: true, interaction: .disabled, isFocused: true)
        #expect(style.contentColor == theme.colors.actionDisabled)
        #expect(style.indicatorColor == theme.colors.actionDisabled)
    }

    @Test func containedStatesUseDedicatedProvider() {
        let theme = OrangeTheme()
        let hover = TabStyle(theme: theme, appearance: .contained, selected: false, interaction: .hover, isFocused: false)
        #expect(hover.backgroundColor == theme.containedTabs.colorBgUnselectedHover)
        #expect(hover.contentColor == theme.containedTabs.colorContentUnselectedHover)
        let focus = TabStyle(theme: theme, appearance: .contained, selected: true, interaction: .enabled, isFocused: true)
        #expect(focus.contentColor == theme.containedTabs.colorContentSelectedFocus)
        let pressed = TabStyle(theme: theme, appearance: .contained, selected: true, interaction: .pressed, isFocused: true)
        #expect(pressed.contentColor == theme.containedTabs.colorContentSelectedPressed)
    }

    @Test func unselectedIndicatorIsTransparent() {
        let theme = OrangeTheme()
        let style = TabStyle(theme: theme, appearance: .line, selected: false, interaction: .enabled, isFocused: false)
        #expect(style.indicatorColor == theme.colors.opacityTransparent)
        #expect(Double(style.indicatorHeight) == theme.lineTabs.sizeHeightCurrentIndicator)
    }

    @Test(arguments: [TabsAppearance.line, .contained])
    func disabledUnselectedIndicatorIsTransparent(appearance: TabsAppearance) {
        let theme = OrangeTheme()
        let style = TabStyle(theme: theme, appearance: appearance, selected: false, interaction: .disabled, isFocused: false)
        #expect(style.indicatorColor == theme.colors.opacityTransparent)
    }

    @Test func shapeClampsRadiiToBounds() {
        let rect = CGRect(x: 0, y: 0, width: 80, height: 40)
        let shape = TabShape(topRadius: 100, bottomRadius: -10)
        #expect(shape.path(in: rect).boundingRect == rect)
    }

    @Test(arguments: [true, false])
    func builderPreservesOrderAcrossArraysConditionsAndLoops(includeOptional: Bool) {
        let items = builtItems(includeOptional: includeOptional)
        #expect(items.map(\.tag) == (includeOptional ? [0, 1, 2, 4, 5] : [0, 3, 4, 5]))
        #expect(TabsValidation.failure(for: items, layout: .textOnly) == nil)
        _ = OUDSLineTabs(selection: .constant(0)) { items }
        _ = OUDSContainedTabs(selection: .constant(0)) { items }
    }

    @Test func builderAcceptsEmptyContentAndAvailabilityBranches() {
        let empty = OUDSTabItemsBuilder<Int>.buildBlock()
        #expect(empty.isEmpty)
        #expect(OUDSTabItemsBuilder<Int>.buildLimitedAvailability(empty).isEmpty)
        #expect(TabsValidation.failure(for: empty, layout: .textOnly) == nil)
        _ = OUDSLineTabs(selection: .constant(0)) {}
        _ = OUDSContainedTabs(selection: .constant(0)) {}
    }

    @Test func validationAcceptsEightAndRejectsNineItemsWithoutTruncation() {
        let items = (0 ..< 9).map { OUDSTabItem(tag: $0, label: .raw("Tab \($0)")) }
        #expect(TabsValidation.failure(for: Array(items.prefix(8)), layout: .textOnly) == nil)
        #expect(TabsValidation.failure(for: items, layout: .textOnly) != nil)
    }

    @Test func validationRejectsDuplicateTagsAndEmptyAccessibilityLabels() {
        let duplicate = [OUDSTabItem(tag: 0, label: "First"), OUDSTabItem(tag: 0, label: "Second")]
        #expect(TabsValidation.failure(for: duplicate, layout: .textOnly) != nil)
        let empty = [OUDSTabItem(tag: 0, label: " \n")]
        #expect(TabsValidation.failure(for: empty, layout: .textOnly) != nil)
        #expect(TabsValidation.failure(for: empty, layout: .assetOnly) != nil)
    }

    @Test(arguments: [OUDSTabsLayout.textAndLeadingAsset, .textAndTopAsset, .assetOnly])
    func assetLayoutsRequireAnAssetOnEveryItem(layout: OUDSTabsLayout) {
        let missing = [OUDSTabItem(tag: 0, label: "First")]
        #expect(TabsValidation.failure(for: missing, layout: layout) != nil)
        let items = [OUDSTabItem(tag: 0, label: "First", image: OUDSImage(asset: Image(decorative: "test")))]
        #expect(TabsValidation.failure(for: items, layout: layout) == nil)
        _ = OUDSLineTabs(selection: .constant(0), layout: layout) { items }
        _ = OUDSContainedTabs(selection: .constant(0), tabs: items, layout: layout)
    }

    @Test func richLabelsAndTrailingIndicatorsRetainAccessibleContent() {
        let label = OUDSTextualContent.rich(AttributedString("Rich label"))
        let item = OUDSTabItem(
            tag: 0,
            label: label,
            description: "Description",
            trailing: .badge(.count(3, accessibilityLabel: "3 notifications", status: .positive)))
        #expect(item.label.rawValue == "Rich label")
        #expect(item.description?.rawValue == "Description")
        #expect(item.trailing?.accessibilityLabel == "3 notifications")
        let standard = OUDSTabItemTrailing.badge(.standard(accessibilityLabel: "New", status: .negative))
        #expect(standard.accessibilityLabel == "New")
        let tag = OUDSTabItemTrailing.tag(OUDSTag(label: "New service", size: .small))
        #expect(tag.accessibilityLabel == "New service")
    }

    @OUDSTabItemsBuilder<Int>
    private func builtItems(includeOptional: Bool) -> [OUDSTabItem<Int>] {
        OUDSTabItem(tag: 0, label: "First")
        if includeOptional { OUDSTabItem(tag: 1, label: "Optional") }
        if includeOptional {
            [OUDSTabItem(tag: 2, label: "True branch")]
        } else {
            OUDSTabItem(tag: 3, label: "False branch")
        }
        for tag in 4 ..< 6 {
            OUDSTabItem(tag: tag, label: .raw("Tab \(tag)"))
        }
    }

    private func makeTabs<Tag>(selection: Binding<Tag>, items: [OUDSTabItem<Tag>], appearance: TabsAppearance) -> Tabs<Tag> {
        Tabs(
            selection: selection,
            items: items,
            appearance: appearance,
            layout: .textOnly,
            hasDivider: true,
            hasStrongLabel: true)
    }
}

#if os(macOS)
/// Verify that both public construction paths enforce the design contract.
struct OUDSTabsCrashTests {
    @Test func lineTabsRejectMoreThanEightItems() async {
        await #expect(processExitsWith: .failure) {
            await MainActor.run {
                let items = (0 ..< 9).map { OUDSTabItem(tag: $0, label: .raw("Tab \($0)")) }
                _ = OUDSLineTabs(selection: .constant(0), tabs: items)
            }
        }
    }

    @Test func containedBuilderRejectsDuplicateTags() async {
        await #expect(processExitsWith: .failure) {
            await MainActor.run {
                _ = OUDSContainedTabs(selection: .constant(0)) {
                    OUDSTabItem(tag: 0, label: "First")
                    OUDSTabItem(tag: 0, label: "Second")
                }
            }
        }
    }

    @Test func assetOnlyTabsRejectMissingAccessibleLabels() async {
        await #expect(processExitsWith: .failure) {
            await MainActor.run {
                _ = OUDSLineTabs(selection: .constant(0), layout: .assetOnly) {
                    OUDSTabItem(tag: 0, label: "", image: OUDSImage(asset: Image(decorative: "test")))
                }
            }
        }
    }

    @Test func assetLayoutsRejectMissingImages() async {
        await #expect(processExitsWith: .failure) {
            await MainActor.run {
                _ = OUDSContainedTabs(selection: .constant(0), layout: .textAndTopAsset) {
                    OUDSTabItem(tag: 0, label: "Missing image")
                }
            }
        }
    }
}
#endif
#endif

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

#if os(macOS)
import AppKit
@testable import OUDSComponents
import OUDSThemesContract
import OUDSThemesOrange
import SwiftUI
import Testing

/// Numeric layout tests, not image comparisons or snapshot tests.
@MainActor
struct OUDSTabsTextLayoutTests {
    private let longLabel = "A complete tab label that needs several lines to remain readable"
    private let longDescription = "Additional information below the main text must also remain visible in a narrow tab."

    @Test(arguments: [TabsAppearance.line, .contained])
    func labelsAndDescriptionsIncreaseTheTabHeight(appearance: TabsAppearance) async {
        for layout in [OUDSTabsLayout.textOnly, .textAndLeadingAsset, .textAndTopAsset] {
            let shortHeight = await height(appearance: appearance, layout: layout, label: "Tab", description: nil)
            let longHeight = await height(appearance: appearance, layout: layout, label: longLabel, description: longDescription)
            #expect(longHeight > shortHeight)
        }
    }

    @Test(arguments: [TabsAppearance.line, .contained])
    func anInheritedLineLimitDoesNotTruncateTabContent(appearance: TabsAppearance) async {
        let unlimited = await height(appearance: appearance, layout: .textOnly, label: longLabel, description: longDescription)
        let inheritedLimit = await height(
            appearance: appearance,
            layout: .textOnly,
            label: longLabel,
            description: longDescription,
            inheritedLineLimit: 1)
        #expect(abs(unlimited - inheritedLimit) < 1)
    }

    @Test(arguments: [OUDSTabsLayout.textOnly, .textAndLeadingAsset, .textAndTopAsset])
    func fourContainedLabelXHeadersRemainOnOneLine(layout: OUDSTabsLayout) async {
        let wide = await standardLabelsHeight(width: 900, layout: layout)
        // Leading assets consume additional horizontal space before any padding.
        let phone = await standardLabelsHeight(width: layout == .textAndLeadingAsset ? 430 : 390, layout: layout)
        #expect(abs(wide - phone) < 1)
    }

    @Test func containedHeaderWithAnIndicatorCanBorrowColumnSpace() async {
        let indicator = OUDSTabItemTrailing.tag(OUDSTag(label: "New", size: .small))
        let wide = await standardLabelsHeight(width: 900, layout: .textOnly, trailing: indicator)
        let phone = await standardLabelsHeight(width: 390, layout: .textOnly, trailing: indicator)
        #expect(abs(wide - phone) < 1)
    }

    private func standardLabelsHeight(width: CGFloat, layout: OUDSTabsLayout, trailing: OUDSTabItemTrailing? = nil) async -> CGFloat {
        let image = layout.hasAsset ? OUDSImage(asset: Image(systemName: "star")) : nil
        let root = OUDSThemeableView(theme: OrangeTheme()) {
            OUDSContainedTabs(selection: .constant(0), layout: layout) {
                for index in 0 ..< 4 {
                    OUDSTabItem(tag: index, label: .raw("Label \(index + 1)"), image: image, trailing: index == 0 ? trailing : nil)
                }
            }
        }
        .environment(\.horizontalSizeClass, .compact)
        .environment(\.oudsHorizontalSizeClass, .compact)
        .frame(width: width)
        return await fittingHeight(root)
    }

    private func height(
        appearance: TabsAppearance,
        layout: OUDSTabsLayout,
        label: String,
        description: String?,
        inheritedLineLimit: Int? = nil) async -> CGFloat
    {
        let image = layout.hasAsset ? OUDSImage(asset: Image(systemName: "star")) : nil
        let items = [
            OUDSTabItem(
                tag: 0,
                label: .rich(AttributedString(label)),
                description: description.map(OUDSTextualContent.raw),
                image: image,
                trailing: .tag(OUDSTag(label: "New", size: .small))),
            OUDSTabItem(tag: 1, label: "Other", image: image),
        ]
        let root = OUDSThemeableView(theme: OrangeTheme()) {
            Group {
                if appearance == .contained {
                    OUDSContainedTabs(selection: .constant(0), tabs: items, layout: layout)
                } else {
                    OUDSLineTabs(selection: .constant(0), tabs: items, layout: layout)
                }
            }
        }
        .environment(\.horizontalSizeClass, .compact)
        .lineLimit(inheritedLineLimit)
        .frame(width: 320)
        return await fittingHeight(root)
    }

    private func fittingHeight(_ root: some View) async -> CGFloat {
        let hostingView = NSHostingView(rootView: root)
        // Settle intrinsic measurement, width allocation and shared row height.
        // This verifies geometry only: no images or snapshot references are produced.
        for _ in 0 ..< 6 {
            hostingView.setFrameSize(hostingView.fittingSize)
            hostingView.layoutSubtreeIfNeeded()
            await Task.yield()
        }
        return hostingView.fittingSize.height
    }
}
#endif

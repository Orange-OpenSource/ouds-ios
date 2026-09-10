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

#if !os(watchOS) && !os(tvOS)
import OUDSFoundations
import OUDSThemesContract
import SwiftUI

// MARK: - ToolBar Top Modifier

struct ToolBarTopModifier: ViewModifier {

    // MARK: - Stored properties

    let title: String
    let hasLargeTitle: Bool
    let subtitle: String?
    @OUDSToolBarItemsBuilder let leadingItems: [OUDSToolBarItem]
    let principalItem: OUDSToolBarItem?
    @OUDSToolBarItemsBuilder let trailingItems: [OUDSToolBarItem]

    // MARK: - Initializer

    /// Creates a top toolbar with a title, optional subtitle (iOS 26+ only), and leading / principal / trailing items.
    ///
    /// - Parameters:
    ///   - title: The toolbar title. Prefer a non-empty string.
    ///   - hasLargeTitle: If title must be displayed in large mode. If large mode, the subtitle is not displayed for iOS lower than 26.
    ///   - subtitle: Optional subtitle displayed below the title, *nil* by default. **Ignored if `principalItem` is not *nil*.**
    ///   - leadingItems: The items displayed on the leading side
    ///   - principalItem: The item displayed in the principal (center) position (only one item supported).
    ///     If set, the title is not displayed unless `hasLargeTitle` is `true`, and the subtitle is never displayed.
    ///   - trailingItems: The items displayed on the trailing side
    ///   - content: The content view wrapped by the toolbar.
    init(title: String,
         hasLargeTitle: Bool,
         subtitle: String? = nil,
         @OUDSToolBarItemsBuilder leadingItems: @escaping () -> [OUDSToolBarItem],
         principalItem: OUDSToolBarItem? = nil,
         @OUDSToolBarItemsBuilder trailingItems: @escaping () -> [OUDSToolBarItem])
    {
        if title.isEmpty {
            OL.warning("The title of ToolBarTopModifier is empty, prefer a non-empty title")
        }
        if let subtitle, subtitle.isEmpty {
            OL.warning("The subtitle of ToolBarTopModifier is empty, prefer nil instead")
        }

        self.title = title
        self.hasLargeTitle = hasLargeTitle
        self.subtitle = subtitle
        self.leadingItems = leadingItems()
        self.principalItem = principalItem
        self.trailingItems = trailingItems()
    }

    // MARK: - Body

    @ViewBuilder
    func body(content: Content) -> some View {
        if let principalItem, !hasLargeTitle {
            // Principal item without large title: no title, no subtitle, just the toolbar with the principal item.
            content.toolbar {
                ToolbarItemGroup(placement: leadingPlacement) {
                    itemsView(leadingItems)
                }
                ToolbarItem(placement: principalPlacement) {
                    principalItem.environment(\.toolbarItemLocation, .toolbarTop)
                }
                ToolbarItemGroup(placement: trailingPlacement) {
                    itemsView(trailingItems)
                }
            }
        } else if let principalItem {
            // Principal item and large title: title is displayed (large mode), subtitle is never displayed.
            // Note: SwiftUI's `.principal` placement only replaces the inline compact bar title, not the large title
            // nor `.navigationSubtitle()` (iOS 26+), which would otherwise keep rendering next to/under the principal
            // item with no visible title next to it. So the subtitle must never be forwarded here.
            content
                .oudsNavigationTitle(title, subtitle: nil, hasLargeTitle: hasLargeTitle)
                .toolbar {
                    ToolbarItemGroup(placement: leadingPlacement) {
                        itemsView(leadingItems)
                    }
                    ToolbarItem(placement: principalPlacement) {
                        principalItem.environment(\.toolbarItemLocation, .toolbarTop)
                    }
                    ToolbarItemGroup(placement: trailingPlacement) {
                        itemsView(trailingItems)
                    }
                }
        } else {
            // No principal item: standard behavior, title and subtitle displayed as configured.
            content
                .oudsNavigationTitle(title, subtitle: subtitle, hasLargeTitle: hasLargeTitle)
                .toolbar {
                    ToolbarItemGroup(placement: leadingPlacement) {
                        itemsView(leadingItems)
                    }
                    ToolbarItemGroup(placement: trailingPlacement) {
                        itemsView(trailingItems)
                    }
                }
        }
    }

    // MARK: - Helpers

    private func itemsView(_ items: [OUDSToolBarItem]) -> some View {
        ForEach(items) { item in
            item
                .environment(\.toolbarItemLocation, .toolbarTop)
        }
    }

    private var leadingPlacement: ToolbarItemPlacement {
        #if os(iOS) || os(visionOS)
        return .topBarLeading
        #else
        return .automatic
        #endif
    }

    private var principalPlacement: ToolbarItemPlacement {
        #if os(iOS) || os(visionOS)
        return .principal
        #else
        return .automatic
        #endif
    }

    private var trailingPlacement: ToolbarItemPlacement {
        #if os(iOS) || os(visionOS)
        return .topBarTrailing
        #else
        return .automatic
        #endif
    }
}
#endif

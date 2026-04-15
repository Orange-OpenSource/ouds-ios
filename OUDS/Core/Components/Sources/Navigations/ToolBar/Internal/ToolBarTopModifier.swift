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
    @OUDSToolBarItemsBuilder let trailingItems: [OUDSToolBarItem]

    // MARK: - Initializer

    /// Creates a top toobar with a title, optional subtitle (iOS 26+ only), and leading / trailing items.
    ///
    /// - Parameters:
    ///   - title: The toobar title. Prefer a non-empty string.
    ///   - hasLargeTitle: If title must be displayed in large mode. If large mode, the subtitle is not displayed.
    ///   - subtitle: Optional subtitle displayed below the title, *nil* by default.
    ///   - leadingItems: The items displayed on the leading side
    ///   - trailingItems: The items displayed on the trailing side
    ///   - content: The content view wrapped by the toolbar.
    init(title: String,
         hasLargeTitle: Bool,
         subtitle: String? = nil,
         @OUDSToolBarItemsBuilder leadingItems: @escaping () -> [OUDSToolBarItem],
         @OUDSToolBarItemsBuilder trailingItems: @escaping () -> [OUDSToolBarItem])
    {
        if title.isEmpty {
            OL.warning("The title of OUDSToolBarTopModifier is empty, prefer a non-empty title")
        }
        if let subtitle, subtitle.isEmpty {
            OL.warning("The subtitle of OUDSToolBarTopModifier is empty, prefer nil instead")
        }

        self.title = title
        self.hasLargeTitle = hasLargeTitle
        self.subtitle = subtitle
        self.leadingItems = leadingItems()
        self.trailingItems = trailingItems()
    }

    // MARK: - Body

    func body(content: Content) -> some View {
        content
            .oudsNavigationTitle(title, subtitle: subtitle)
        #if os(iOS) || os(visionOS)
            .navigationBarTitleDisplayMode(hasLargeTitle ? .large : .inline)
        #endif
            .toolbar {
                ToolbarItemGroup(placement: leadingPlacement) {
                    itemsView(leadingItems)
                }
                ToolbarItemGroup(placement: trailingPlacement) {
                    itemsView(trailingItems)
                }
            }
    }

    // MARK: - Helpers

    private func itemsView(_ items: [OUDSToolBarItem]) -> some View {
        ForEach(items) { item in
            item
        }
    }

    private var leadingPlacement: ToolbarItemPlacement {
        #if os(iOS) || os(visionOS)
        return .topBarLeading
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

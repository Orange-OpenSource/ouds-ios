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
import OUDSFoundations
import OUDSThemesContract
import SwiftUI

// MARK: - Toolbar top Modifier (Bottom)

@available(iOS 15, macOS 13, *)
struct ToolBarTopModifier: ViewModifier {

    // MARK: - Stored properties

    let title: String
    let hasLargeTitle: Bool
    let subtitle: String?
    @OUDSToolbarItemsBuilder
    let leadingItems: [OUDSToolbarItem]
    @OUDSToolbarItemsBuilder
    let trailingItems: [OUDSToolbarItem]

    // MARK: - Initializer

    /// Creates a top toolbar with a title, optional subtitle (ios 26 only), and leading/trailing items.
    ///
    /// - Parameters:
    ///   - title: The toolbar title. Prefer a non-empty string.
    ///   - hasLargeTitle: If title must be displayed in large mode, false by default. If large mode, the subtitle is not display
    ///   - subtitle: Optional subtitle displayed below the title, *nil* by default.
    ///   - leadingItems: The items displayed on the leading side, empty by default.
    ///   - trailingItems: The items displayed on the trailing side, empty by default.
    ///   - content: The content view wrapped by the toolbar.
    init(title: String,
         hasLargeTitle: Bool,
         subtitle: String? = nil,
         @OUDSToolbarItemsBuilder
         leadingItems: @escaping () -> [OUDSToolbarItem],
         @OUDSToolbarItemsBuilder
         trailingItems: @escaping () -> [OUDSToolbarItem])
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
            .oudsNavigationTitle(title)
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

    private func itemsView(_ items: [OUDSToolbarItem]) -> some View {
        ForEach(items) { item in
            switch item.content {
            case let .action(_, style):
                item.buttonStyle(ToolbarTopItemActionStyle(style: style))
            case let .navigation(type):
                item.buttonStyle(ToolbarTopItemNavigationStyle(type: type))
            case let .customView(view):
                view
            }
        }
    }

    // MARK: - Helpers

    private var leadingPlacement: ToolbarItemPlacement {
        #if os(iOS) || os(visionOS) || os(tvOS)
        return .topBarLeading
        #elseif os(macOS)
        return .navigation
        #else
        return .automatic
        #endif
    }

    private var trailingPlacement: ToolbarItemPlacement {
        #if os(iOS) || os(visionOS) || os(tvOS)
        return .topBarTrailing
        #elseif os(macOS)
        return .primaryAction
        #else
        return .automatic
        #endif
    }
}
#endif

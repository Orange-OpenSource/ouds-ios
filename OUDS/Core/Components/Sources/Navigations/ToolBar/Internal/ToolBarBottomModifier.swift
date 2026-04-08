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

@available(iOS 15, macOS 13, visionOS 1, *)
struct ToolBarBottomModifier: ViewModifier {

    // MARK: - Stored properties

    private let leadingItems: [OUDSToolBarItem]
    private let trailingItems: [OUDSToolBarItem]
    private let groupedItems: [OUDSToolBarItem]

    @Environment(\.theme) private var theme

    // MARK: - Initializer

    /// Creates a bottom toolBar with leading and trailing items, and a space between them.
    ///
    /// - Parameters:
    ///   - leadingItems: The items displayed on the leading side.
    ///   - trailingItems: The items displayed on the trailing side.
    init(@OUDSToolBarItemsBuilder leadingItems: () -> [OUDSToolBarItem] = { [] },
         @OUDSToolBarItemsBuilder trailingItems: () -> [OUDSToolBarItem] = { [] })
    {
        groupedItems = []
        self.leadingItems = leadingItems()
        self.trailingItems = trailingItems()
    }

    /// Creates a bottom toolBar with grouped items, centered to the screen.
    ///
    /// **Warning: Works only with iOS 26+ / Liquid Glass, otherwise items will be splitted by the system**
    ///
    /// - Parameters:
    ///   - groupedItems: All the items to place in the center of the s creen
    init(@OUDSToolBarItemsBuilder groupedItems: () -> [OUDSToolBarItem] = { [] }) {
        self.groupedItems = groupedItems()
        leadingItems = []
        trailingItems = []
    }

    // MARK: - Body

    func body(content: Content) -> some View {
        if !groupedItems.isEmpty {
            content
                .toolbar {
                    ToolbarItemGroup(placement: bottomPlacement) {
                        itemsView(groupedItems)
                    }
                }
        } else {
            content
                .toolbar {
                    ToolbarItemGroup(placement: bottomPlacement) {
                        itemsView(leadingItems)

                        Spacer()

                        itemsView(trailingItems)
                    }
                }
        }
    }

    // MARK: - Helpers

    private var bottomPlacement: ToolbarItemPlacement {
        #if os(iOS) || os(visionOS)
        return .bottomBar
        #elseif os(macOS)
        return .automatic
        #else
        return .automatic
        #endif
    }

    private func itemsView(_ items: [OUDSToolBarItem]) -> some View {
        ForEach(items) { item in
            item
        }
    }
}
#endif

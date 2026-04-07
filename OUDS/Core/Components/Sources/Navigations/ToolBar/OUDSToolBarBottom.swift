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
import OUDSThemesContract
import SwiftUI

/// The bottom toolBar is a kind of navigation bar component used to display leading and trailing actions
/// at the bottom of the screen when supported.
///
/// ``oudsToolBarBottom`` View helper applies a SwiftUI toolBar configuration.
///
/// ## Appearances
///
/// TODO: #1174 - Update this section
///
/// ## Platform considerations
///
/// - Available on iOS 15, macOS 15, visionOS 1
/// - Not available on watchOS and tvOS
/// - On macOS, toolBar items are displayed in the standard toolBar area
///
/// ## Guidelines
///
/// - Test the use of the ``oudsToolBarBottom`` for both iOS with Liquid Glass and not Liquid Glass
/// - If you use both an  ``OUDSTabBar`` with the ``oudsToolBarBottom``, the toolBar will be above the tabbar for iOS lower than 26
/// - If you use both an  ``OUDSTabBar`` with the ``oudsToolBarBottom``, the toolBar will be **behind** the tabbar for iOS 26+, so not usable
/// - Avoid use of both ``oudsToolBarBottom`` and ``OUDSTabBar`` in the same page
///
/// ## Code sample
///
/// ```swift
///       YourView()
///         .oudsToolBarBottom {
///             OUDSToolBarItem {
///                 Image(systemName: "tray")
///             }
///         }, trailingItems: {
///             OUDSToolBarItem {
///                 Image(systemName: "square.and.pencil")
///             }
///         }
/// ```
///
/// ## Themes rendering
///
/// ### Liquid Glass
///
/// ![A bottom toolBar component in light mode with Liquid Glass effect and Orange theme](component_toolBarBottom_LiquidGlass_Orange_light)
/// ![A bottom toolBar component in dark mode with Liquid Glass effect and Orange theme](component_toolBarBottom_LiquidGlass_Orange_dark)
///
/// ![A bottom toolBar component in light mode with Liquid Glass effect and Orange Compact theme](component_toolBarBottom_LiquidGlass_OrangeCompact_light)
/// ![A bottom toolBar component in dark mode with Liquid Glass effect and Orange Compact theme](component_toolBarBottom_LiquidGlass_OrangeCompact_dark)
///
/// ![A bottom toolBar component in light mode with Liquid Glass effect and Sosh theme](component_toolBarBottom_LiquidGlass_Sosh_light)
/// ![A bottom toolBar component in dark mode with Liquid Glass effect and Sosh theme](component_toolBarBottom_LiquidGlass_Sosh_dark)
///
/// ![A bottom toolBar component in light mode with Liquid Glass effect and Wireframe theme](component_toolBarBottom_LiquidGlass_Wireframe_light)
/// ![A bottom toolBar component in dark mode with Liquid Glass effect and Wireframe theme](component_toolBarBottom_LiquidGlass_Wireframe_dark)
///
/// ### Without Liquid Glass
///
/// ![A bottom toolBar component in light mode with Liquid Glass effect and Orange theme](component_toolBarBottom_Orange_light)
/// ![A bottom toolBar component in dark mode with Liquid Glass effect and Orange theme](component_toolBarBottom_Orange_dark)
///
/// ![A bottom toolBar component in light mode with Liquid Glass effect and Orange Compact theme](component_toolBarBottom_OrangeCompact_light)
/// ![A bottom toolBar component in dark mode with Liquid Glass effect and Orange Compact theme](component_toolBarBottom_OrangeCompact_dark)
///
/// ![A bottom toolBar component in light mode with Liquid Glass effect and Sosh theme](component_toolBarBottom_Sosh_light)
/// ![A bottom toolBar component in dark mode with Liquid Glass effect and Sosh theme](component_toolBarBottom_Sosh_dark)
///
/// ![A bottom toolBar component in light mode with Liquid Glass effect and Wireframe theme](component_toolBarBottom_Wireframe_light)
/// ![A bottom toolBar component in dark mode with Liquid Glass effect and Wireframe theme](component_toolBarBottom_Wireframe_dark)
///
/// - Since: 1.3.0
extension View {

    /// Creates a bottom toolBar with leading and trailing items.
    ///
    /// - Parameters:
    ///   - leadingItems: The items displayed on the leading side.
    ///   - trailingItems: The items displayed on the trailing side.
    @available(iOS 15, macOS 13, visionOS 1, *)
    public func oudsToolBarBottom(@OUDSToolBarItemsBuilder leadingItems: () -> [OUDSToolBarItem] = { [] },
                                  @OUDSToolBarItemsBuilder trailingItems: () -> [OUDSToolBarItem] = { [] }) -> some View
    {
        modifier(OUDSToolBarBottomModifier(leadingItems: leadingItems,
                                           trailingItems: trailingItems))
    }

    /// Creates a bottom toolBar with grouped items, centered to the screen.
    ///
    /// **Warning: Works only with iOS 26+ / Liquid Glass, otherwise items will be splitted by the system**
    ///
    /// - Parameter groupedItems: All the items to place in the center of the s creen
    @available(iOS 15, macOS 13, visionOS 1, *)
    public func oudsToolBarBottom(@OUDSToolBarItemsBuilder groupedItems: () -> [OUDSToolBarItem] = { [] }) -> some View {
        modifier(OUDSToolBarBottomModifier(groupedItems: groupedItems))
    }
}

@available(iOS 15, macOS 13, visionOS 1, *)
struct OUDSToolBarBottomModifier: ViewModifier {

    // MARK: - Stored properties

    private let leadingItems: [OUDSToolBarItem]?
    private let trailingItems: [OUDSToolBarItem]?
    private let groupedItems: [OUDSToolBarItem]?

    @Environment(\.theme) private var theme

    // MARK: - Initializer

    /// Creates a bottom toolBar with leading and trailing items, and a space between them.
    ///
    /// - Parameters:
    ///   - leadingItems: The items displayed on the leading side.
    ///   - trailingItems: The items displayed on the trailing side.
    ///   - content: The content view wrapped by the toolBar.
    init(@OUDSToolBarItemsBuilder leadingItems: () -> [OUDSToolBarItem] = { [] },
         @OUDSToolBarItemsBuilder trailingItems: () -> [OUDSToolBarItem] = { [] })
    {
        groupedItems = nil
        self.leadingItems = leadingItems()
        self.trailingItems = trailingItems()
    }

    init(@OUDSToolBarItemsBuilder groupedItems: () -> [OUDSToolBarItem] = { [] }) {
        self.groupedItems = groupedItems()
        leadingItems = nil
        trailingItems = nil
    }

    /// Creates a bottom toolBar with grouped items, centered to the screen.
    ///
    /// **Warning: Works only with iOS 26+ / Liquid Glass, otherwise items will be splitted by the system**
    ///
    /// - Parameters:
    ///   - groupedItems: All the items to place in the center of the s creen
    ///   - content: The content view wrapped by the toolBar.
    func body(content: Content) -> some View {
        if let groupedItems {
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

    @ViewBuilder
    private func itemsView(_ items: [OUDSToolBarItem]?) -> some View {
        if let items, !items.isEmpty {
            ForEach(items) { item in
                item.modifier(ToolBarBottomItemActionStyleModifier())
            }
        }
    }
}

#endif

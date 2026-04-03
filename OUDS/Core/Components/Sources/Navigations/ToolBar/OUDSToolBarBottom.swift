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

/// The bottom toolbar is a kind of navigation bar component used to display leading and trailing actions
/// at the bottom of the screen when supported.
///
/// ``oudsToolbarBottom`` View helper applies a SwiftUI toolbar configuration.
///
/// ## Appearances
///
/// TODO: #1174 - Update this section
///
/// ## Platform considerations
///
/// - Available on iOS 15, macOS 15, visionOS 1
/// - Not available on watchOS and tvOS
/// - On macOS, toolbar items are displayed in the standard toolbar area
///
/// ## Guidelines
///
/// - Test the use of the ``oudsToolbarBottom`` for both iOS with Liquid Glass and not Liquid Glass
/// - If you use both an  ``OUDSTabBar`` with the ``oudsToolbarBottom``, the toolbar will be above the tabbar for iOS lower than 26
/// - If you use both an  ``OUDSTabBar`` with the ``oudsToolbarBottom``, the toolbar will be **behind** the tabbar for iOS 26+, so not usable
/// - Avoid use of both ``oudsToolbarBottom`` and ``OUDSTabBar`` in the same page
///
/// ## Code sample
///
/// ```swift
///       YourView()
///         .oudsToolbarBottom {
///             OUDSToolbarItem {
///                 Image(systemName: "tray")
///             }
///         }, trailingItems: {
///             OUDSToolbarItem {
///                 Image(systemName: "square.and.pencil")
///             }
///         }
/// ```
///
/// ## Themes rendering
///
/// ### Liquid Glass
///
/// ![A bottom toolbar component in light mode with Liquid Glass effect and Orange theme](component_toolbarBottom_LiquidGlass_Orange_light)
/// ![A bottom toolbar component in dark mode with Liquid Glass effect and Orange theme](component_toolbarBottom_LiquidGlass_Orange_dark)
///
/// ![A bottom toolbar component in light mode with Liquid Glass effect and Orange Compact theme](component_toolbarBottom_LiquidGlass_OrangeCompact_light)
/// ![A bottom toolbar component in dark mode with Liquid Glass effect and Orange Compact theme](component_toolbarBottom_LiquidGlass_OrangeCompact_dark)
///
/// ![A bottom toolbar component in light mode with Liquid Glass effect and Sosh theme](component_toolbarBottom_LiquidGlass_Sosh_light)
/// ![A bottom toolbar component in dark mode with Liquid Glass effect and Sosh theme](component_toolbarBottom_LiquidGlass_Sosh_dark)
///
/// ![A bottom toolbar component in light mode with Liquid Glass effect and Wireframe theme](component_toolbarBottom_LiquidGlass_Wireframe_light)
/// ![A bottom toolbar component in dark mode with Liquid Glass effect and Wireframe theme](component_toolbarBottom_LiquidGlass_Wireframe_dark)
///
/// ### Without Liquid Glass
///
/// ![A bottom toolbar component in light mode with Liquid Glass effect and Orange theme](component_toolbarBottom_Orange_light)
/// ![A bottom toolbar component in dark mode with Liquid Glass effect and Orange theme](component_toolbarBottom_Orange_dark)
///
/// ![A bottom toolbar component in light mode with Liquid Glass effect and Orange Compact theme](component_toolbarBottom_OrangeCompact_light)
/// ![A bottom toolbar component in dark mode with Liquid Glass effect and Orange Compact theme](component_toolbarBottom_OrangeCompact_dark)
///
/// ![A bottom toolbar component in light mode with Liquid Glass effect and Sosh theme](component_toolbarBottom_Sosh_light)
/// ![A bottom toolbar component in dark mode with Liquid Glass effect and Sosh theme](component_toolbarBottom_Sosh_dark)
///
/// ![A bottom toolbar component in light mode with Liquid Glass effect and Wireframe theme](component_toolbarBottom_Wireframe_light)
/// ![A bottom toolbar component in dark mode with Liquid Glass effect and Wireframe theme](component_toolbarBottom_Wireframe_dark)
///
/// - Since: 1.3.0
extension View {

    /// Creates a bottom toolbar with leading and trailing items.
    ///
    /// - Parameters:
    ///   - leadingItems: The items displayed on the leading side.
    ///   - trailingItems: The items displayed on the trailing side.
    @available(iOS 15, macOS 13, visionOS 1, *)
    public func oudsToolBarBottom(@OUDSToolbarItemsBuilder leadingItems: () -> [OUDSToolbarItem] = { [] },
                                  @OUDSToolbarItemsBuilder trailingItems: () -> [OUDSToolbarItem] = { [] }) -> some View
    {
        modifier(OUDSToolbarBottomModifier(leadingItems: leadingItems,
                                           trailingItems: trailingItems))
    }

    /// Creates a bottom toolbar with grouped items, centered to the screen.
    ///
    /// **Warning: Works only with iOS 26+ / Liquid Glass, otherwise items will be splitted by the system**
    ///
    /// - Parameter groupedItems: All the items to place in the center of the s creen
    @available(iOS 15, macOS 13, visionOS 1, *)
    public func oudsToolBarBottom(@OUDSToolbarItemsBuilder groupedItems: () -> [OUDSToolbarItem] = { [] }) -> some View {
        modifier(OUDSToolbarBottomModifier(groupedItems: groupedItems))
    }
}

@available(iOS 15, macOS 13, visionOS 1, *)
struct OUDSToolbarBottomModifier: ViewModifier {

    // MARK: - Stored properties

    private let leadingItems: [OUDSToolbarItem]?
    private let trailingItems: [OUDSToolbarItem]?
    private let groupedItems: [OUDSToolbarItem]?

    @Environment(\.theme) private var theme

    // MARK: - Initializer

    /// Creates a bottom toolbar with leading and trailing items, and a space between them.
    ///
    /// - Parameters:
    ///   - leadingItems: The items displayed on the leading side.
    ///   - trailingItems: The items displayed on the trailing side.
    ///   - content: The content view wrapped by the toolbar.
    init(@OUDSToolbarItemsBuilder leadingItems: () -> [OUDSToolbarItem] = { [] },
         @OUDSToolbarItemsBuilder trailingItems: () -> [OUDSToolbarItem] = { [] })
    {
        groupedItems = nil
        self.leadingItems = leadingItems()
        self.trailingItems = trailingItems()
    }

    init(@OUDSToolbarItemsBuilder groupedItems: () -> [OUDSToolbarItem] = { [] }) {
        self.groupedItems = groupedItems()
        leadingItems = nil
        trailingItems = nil
    }

    /// Creates a bottom toolbar with grouped items, centered to the screen.
    ///
    /// **Warning: Works only with iOS 26+ / Liquid Glass, otherwise items will be splitted by the system**
    ///
    /// - Parameters:
    ///   - groupedItems: All the items to place in the center of the s creen
    ///   - content: The content view wrapped by the toolbar.
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
    private func itemsView(_ items: [OUDSToolbarItem]?) -> some View {
        if let items, !items.isEmpty {
            ForEach(items) { item in
                item.modifier(ToolbarBottomItemActionStyleModifier())
            }
        }
    }
}

#endif

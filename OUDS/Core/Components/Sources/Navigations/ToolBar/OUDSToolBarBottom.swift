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

#if !os(watchOS) && !os(tvOS) && !os(macOS)
import OUDSThemesContract
import SwiftUI

/// The bottom toolbar is a kind of navigation bar component used to display leading and trailing actions
/// at the bottom of the screen when supported.
///
/// ``oudsToolBarBottom`` View helper applies a SwiftUI toolbar configuration.
///
/// ## Platform considerations
///
/// - Available on iOS, iPadOS, and visionOS
/// - Not available on watchOS, macOS and tvOS
///
/// ## Guidelines
///
/// - Test the use of the ``oudsToolBarBottom`` for both iOS with Liquid Glass and not Liquid Glass
/// - If you use both an  ``OUDSTabBar`` with the ``oudsToolBarBottom``, the toolbar will be above the tabbar for iOS lower than 26, **not recommended**
/// - If you use both an  ``OUDSTabBar`` with the ``oudsToolBarBottom``, the toolbar will be **behind** the tabbar for iOS 26+, so not usable, **not recommended**
/// - Avoid use of both ``oudsToolBarBottom`` and ``OUDSTabBar`` in the same page
///
/// ## Code samples
///
/// Define leading and trailing items for the bottom toolbar
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
/// - Since: 1.4.0
extension View {

    /// Creates a bottom toolbar with leading and trailing items.
    ///
    /// There must be only one *bottom toolbar*.
    ///
    /// - Parameters:
    ///   - leadingItems: The items displayed on the leading side.
    ///   - trailingItems: The items displayed on the trailing side.
    @available(iOS 15, visionOS 1, *)
    public func oudsToolBarBottom(@OUDSToolBarItemsBuilder leadingItems: () -> [OUDSToolBarItem] = { [] },
                                  @OUDSToolBarItemsBuilder trailingItems: () -> [OUDSToolBarItem] = { [] }) -> some View
    {
        modifier(ToolBarBottomModifier(leadingItems: leadingItems,
                                       trailingItems: trailingItems))
    }

    /// Creates a bottom toolbar with grouped items, centered to the screen.
    ///
    /// **Warning: Works only with iOS 26+ / Liquid Glass, otherwise items will be splitted by the system**
    ///
    /// There must be only one *bottom toolbar*.
    ///
    /// - Parameter groupedItems: All the items to place in the center of the s creen
    @available(iOS 15, visionOS 1, *)
    public func oudsToolBarBottom(@OUDSToolBarItemsBuilder groupedItems: () -> [OUDSToolBarItem] = { [] }) -> some View {
        modifier(ToolBarBottomModifier(groupedItems: groupedItems))
    }
}
#endif

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

// MARK: - OUDS Toolbar Bottom View Modifier

/// The bottom toolbar is a kind of navigation bar component used to display leading and trailing actions
/// at the bottom of the screen when supported.
///
/// `oudsToolBarBottom` View helper applies a SwiftUI toolbar configuration.
///
/// ## Platform considerations
///
/// - Available on iOS, iPadOS, and visionOS
/// - Not available on watchOS, tvOS and macOS
///
/// ## Guidelines
///
/// - Test the use of the `oudsToolBarBottom` for both iOS with Liquid Glass and not Liquid Glass
/// - If you use both an  ``OUDSTabBar`` with the `oudsToolBarBottom`, the toolbar will be above the tabbar for iOS lower than 26, **not recommended**
/// - If you use both an  ``OUDSTabBar`` with the `oudsToolBarBottom`, the toolbar will be **behind** the tabbar for iOS 26+, so not usable, **not recommended**
/// - Avoid use of both `oudsToolBarBottom` and ``OUDSTabBar`` in the same page
///
/// ## Code samples
///
/// Define leading and trailing items for the bottom toolbar
/// ```swift
///     SomeView()
///         .oudsToolBarBottom(leadingItems: {
///                 OUDSToolBarItem(label: "Some label") { /* Action to process */ }
///             }, trailingItems: {
///                 OUDSToolBarItem(icon: Image(decorative: "some_image"), accessibilityLabel: "Label") { /* Action to process */ }
///         })
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-ios-tool-bar-bottom)
///
/// ## Themes rendering
///
/// ### Liquid Glass
///
/// #### Orange
///
/// ![A bottom toolbar component in light mode with Liquid Glass effect and Orange theme](component_toolBarBottom_LiquidGlass_Orange_light)
/// ![A bottom toolbar component in dark mode with Liquid Glass effect and Orange theme](component_toolBarBottom_LiquidGlass_Orange_dark)
///
/// #### Orange Compact
///
/// ![A bottom toolbar component in light mode with Liquid Glass effect and Orange Compact theme](component_toolBarBottom_LiquidGlass_OrangeCompact_light)
/// ![A bottom toolbar component in dark mode with Liquid Glass effect and Orange Compact theme](component_toolBarBottom_LiquidGlass_OrangeCompact_dark)
///
/// #### Sosh
///
/// ![A bottom toolbar component in light mode with Liquid Glass effect and Sosh theme](component_toolBarBottom_LiquidGlass_Sosh_light)
/// ![A bottom toolbar component in dark mode with Liquid Glass effect and Sosh theme](component_toolBarBottom_LiquidGlass_Sosh_dark)
///
/// #### Wireframe
///
/// ![A bottom toolbar component in light mode with Liquid Glass effect and Wireframe theme](component_toolBarBottom_LiquidGlass_Wireframe_light)
/// ![A bottom toolbar component in dark mode with Liquid Glass effect and Wireframe theme](component_toolBarBottom_LiquidGlass_Wireframe_dark)
///
/// ### Without Liquid Glass
///
/// #### Orange
///
/// ![A bottom toolbar component in light mode without Liquid Glass effect and Orange theme](component_toolBarBottom_Orange_light)
/// ![A bottom toolbar component in dark mode without Liquid Glass effect and Orange theme](component_toolBarBottom_Orange_dark)
///
/// #### Orange Compact
///
/// ![A bottom toolbar component in light mode without Liquid Glass effect and Orange Compact theme](component_toolBarBottom_OrangeCompact_light)
/// ![A bottom toolbar component in dark mode without Liquid Glass effect and Orange Compact theme](component_toolBarBottom_OrangeCompact_dark)
///
/// #### Sosh
///
/// ![A bottom toolbar component in light mode without Liquid Glass effect and Sosh theme](component_toolBarBottom_Sosh_light)
/// ![A bottom toolbar component in dark mode without Liquid Glass effect and Sosh theme](component_toolBarBottom_Sosh_dark)
///
/// #### Wireframe
///
/// ![A bottom toolbar component in light mode without Liquid Glass effect and Wireframe theme](component_toolBarBottom_Wireframe_light)
/// ![A bottom toolbar component in dark mode without Liquid Glass effect and Wireframe theme](component_toolBarBottom_Wireframe_dark)
///
/// - Since: 1.4.0
@available(iOS 15, visionOS 1, *)
public struct OUDSToolBarBottom: ViewModifier {
    // NOTE: As Swift DocC cannot build rich documention for methods, this struct does not the job

    // MARK: Properties

    /// The items to display in leading position
    @OUDSToolBarItemsBuilder private let leadingItems: () -> [OUDSToolBarItem]
    /// The items to display in trailing position
    @OUDSToolBarItemsBuilder private let trailingItems: () -> [OUDSToolBarItem]
    /// The items to display in one group
    @OUDSToolBarItemsBuilder private let groupedItems: () -> [OUDSToolBarItem]
    /// Internal flag to know witch API to use to place items
    private let useGroupedItems: Bool

    // MARK: Initializer

    /// `ViewModifier` to define an OUDS bottom toolbar.
    ///
    ///  You should prefer `oudsToolBarBottom(leadingItems:trailingItems:)`.
    ///
    /// - Parameters:
    ///   - leadingItems: The items displayed on the leading side, *empty* by default.
    ///   - trailingItems: The items displayed on the trailing side, *empty* by default.
    public init(leadingItems: @escaping () -> [OUDSToolBarItem] = { [] },
                trailingItems: @escaping () -> [OUDSToolBarItem] = { [] })
    {
        self.leadingItems = leadingItems
        self.trailingItems = trailingItems
        groupedItems = { [] }
        useGroupedItems = false
    }

    /// `ViewModifier` to define an OUDS bottom toolbar.
    ///
    ///  You should prefer `oudsToolBarBottom(groupedItems:)`.
    ///
    /// **Warning: Works only with iOS 26+ / Liquid Glass, otherwise items will be splitted by the system**
    ///
    /// - Parameter groupedItems: All the items to place in the center of the screen
    public init(groupedItems: @escaping () -> [OUDSToolBarItem] = { [] }) {
        leadingItems = { [] }
        trailingItems = { [] }
        self.groupedItems = groupedItems
        useGroupedItems = true
    }

    // MARK: - Body

    public func body(content: Content) -> some View {
        if useGroupedItems {
            content.oudsToolBarBottom(groupedItems: groupedItems)
        } else {
            content.oudsToolBarBottom(leadingItems: leadingItems,
                                      trailingItems: trailingItems)
        }
    }
}

// MARK: - Extension of View

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

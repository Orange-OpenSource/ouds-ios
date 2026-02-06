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

/// The bottom toolbar is a navigation bar component used to display leading and trailing actions
/// at the bottom of the screen when supported.
///
/// ``OUDSToolBarBottom`` wraps any content view and applies a SwiftUI toolbar configuration.
///
/// ## Appearances
///
/// - **Liquid Glass (iOS 26+)**: the system renders the Liquid Glass background automatically. OUDS applies
///   semantic colors on the items and highlights them with an accent background.
/// - **Before iOS 26**: the toolbar background uses a regular blur and the bar translucent color token.
///
/// ## Platform considerations
///
/// - Available on iOS 16, macOS 15, visionOS 1
/// - Not available on watchOS and tvOS
/// - On macOS, toolbar items are displayed in the standard toolbar area
///
/// ## Code sample
///
/// ```swift
///     OUDSToolBarBottom {
///         ContentView()
///     } leadingItems: {
///         OUDSToolBarItem {
///             Image(systemName: "tray")
///         }
///     } trailingItems: {
///         OUDSToolBarItem {
///             Image(systemName: "square.and.pencil")
///         }
///     }
/// ```
///
// ## Themes rendering
///
/// ### Liquid Glass
///
/// ![A bottom toolbar component in light mode with Liquid Glass effect and Orange theme](component_toolBarBottom_LiquidGlass_Orange_light)
/// ![A bottom toolbar component in dark mode with Liquid Glass effect and Orange theme](component_toolBarBottom_LiquidGlass_Orange_dark)
///
/// ![A bottom toolbar component in light mode with Liquid Glass effect and Orange Business Tools theme](component_toolBarBottom_LiquidGlass_OrangeBusinessTools_light)
/// ![A bottom toolbar component in dark mode with Liquid Glass effect and Orange Business Tools theme](component_toolBarBottom_LiquidGlass_OrangeBusinessTools_dark)
///
/// ![A bottom toolbar component in light mode with Liquid Glass effect and Sosh theme](component_toolBarBottom_LiquidGlass_Sosh_light)
/// ![A bottom toolbar component in dark mode with Liquid Glass effect and Sosh theme](component_toolBarBottom_LiquidGlass_Sosh_dark)
///
/// ![A bottom toolbar component in light mode with Liquid Glass effect and Wireframe theme](component_toolBarBottom_LiquidGlass_Wireframe_light)
/// ![A bottom toolbar component in dark mode with Liquid Glass effect and Wireframe theme](component_toolBarBottom_LiquidGlass_Wireframe_dark)
///
/// ### Without Liquid Glass
///
/// ![A bottom toolbar component in light mode with Liquid Glass effect and Orange theme](component_toolBarBottom_Orange_light)
/// ![A bottom toolbar component in dark mode with Liquid Glass effect and Orange theme](component_toolBarBottom_Orange_dark)
///
/// ![A bottom toolbar component in light mode with Liquid Glass effect and Orange Business Tools theme](component_toolBarBottom_OrangeBusinessTools_light)
/// ![A bottom toolbar component in dark mode with Liquid Glass effect and Orange Business Tools theme](component_toolBarBottom_OrangeBusinessTools_dark)
///
/// ![A bottom toolbar component in light mode with Liquid Glass effect and Sosh theme](component_toolBarBottom_Sosh_light)
/// ![A bottom toolbar component in dark mode with Liquid Glass effect and Sosh theme](component_toolBarBottom_Sosh_dark)
///
/// ![A bottom toolbar component in light mode with Liquid Glass effect and Wireframe theme](component_toolBarBottom_Wireframe_light)
/// ![A bottom toolbar component in dark mode with Liquid Glass effect and Wireframe theme](component_toolBarBottom_Wireframe_dark)
///
/// - Since: 1.2.0
@available(iOS 16, macOS 15, visionOS 1, *)
public struct OUDSToolBarBottom<Content>: View where Content: View {

    // MARK: - Stored properties

    private let leadingItems: [OUDSToolBarItem]
    private let trailingItems: [OUDSToolBarItem]
    private let content: () -> Content

    @Environment(\.theme) private var theme

    // MARK: - Initializer

    /// Creates a bottom toolbar with leading and trailing items.
    ///
    /// - Parameters:
    ///   - leadingItems: The items displayed on the leading side.
    ///   - trailingItems: The items displayed on the trailing side.
    ///   - content: The content view wrapped by the toolbar.
    public init(@OUDSToolBarItemsBuilder leadingItems: () -> [OUDSToolBarItem] = { [] },
                @OUDSToolBarItemsBuilder trailingItems: () -> [OUDSToolBarItem] = { [] },
                @ViewBuilder content: @escaping () -> Content)
    {
        self.leadingItems = leadingItems()
        self.trailingItems = trailingItems()
        self.content = content
    }

    // MARK: - Body

    public var body: some View {
        content()
            .toolbar {
                ToolbarItem(placement: bottomPlacement) {
                    bottomBarContent
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
    private var bottomBarContent: some View {
        if !leadingItems.isEmpty || !trailingItems.isEmpty {
            HStack(spacing: theme.spaces.fixedSmall) {
                if !leadingItems.isEmpty {
                    itemsView(leadingItems)
                }
                if !leadingItems.isEmpty, !trailingItems.isEmpty {
                    Spacer(minLength: theme.spaces.fixedSmall)
                }
                if !trailingItems.isEmpty {
                    itemsView(trailingItems)
                }
            }
        }
    }

    @ViewBuilder
    private func itemsView(_ items: [OUDSToolBarItem]) -> some View {
        HStack(spacing: theme.spaces.fixedSmall) {
            ForEach(items) { item in
                item.modifier(ToolBarItemActionStyleModifier(style: .bottom))
            }
        }
    }
}
#endif

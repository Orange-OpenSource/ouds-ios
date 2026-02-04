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

/// The top toolbar (aka *navigation bar* on iOS and iPadOS 18 and lower) sits at the top of the screen and provides contextual information
/// and controls related to the current view.
/// It typically displays the page title, and may include navigation actions such as “Back,” as well as supplementary actions like search or menus.
/// It can contains leading and trailing actions.
///
/// ``OUDSToolBarTop`` wraps any content view and applies a SwiftUI toolbar configuration.
///
/// ## Appearances
///
/// - **Liquid Glass (iOS 26+)**: the system renders the Liquid Glass background automatically.
/// OUDS applies semantic colors on the title and items, and highlights trailing items with an accent background.
///
/// - **Before iOS 26**: the toolbar background uses a regular blur and the bar translucent color token.
///
/// ## Platform considerations
///
/// - The component is available on iOS, macOS and visionOS 1
/// - The component is not available for watchOS
/// - The component is not available for tvOS
///
/// ## Code sample
///
/// ```swift
/// OUDSToolBarTop(title: "Inbox", subtitle: "2 new messages") {
///     ContentView()
/// } leadingItems: {
///     OUDSToolBarItem(navigation: .back, accessibilityLabel: "Back") {
///         // Handle back
///     }
/// } trailingItems: {
///     OUDSToolBarItem {
///         Image(systemName: "bell")
///     }
/// }
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/6782de-ios-bars/b/317890)
///
/// ## Themes rendering
///
/// ### Liquid Glass
///
/// ![A top toolbar component in light mode with Liquid Glass effect and Orange theme](component_toolBarTop_LiquidGlass_Orange_light)
/// ![A top toolbar component in dark mode with Liquid Glass effect and Orange theme](component_toolBarTop_LiquidGlass_Orange_dark)
///
/// ![A top toolbar component in light mode with Liquid Glass effect and Orange Business Tools theme](component_toolBarTop_LiquidGlass_OrangeBusinessTools_light)
/// ![A top toolbar component in dark mode with Liquid Glass effect and Orange Business Tools theme](component_toolBarTop_LiquidGlass_OrangeBusinessTools_dark)
///
/// ![A top toolbar component in light mode with Liquid Glass effect and Sosh theme](component_toolBarTop_LiquidGlass_Sosh_light)
/// ![A top toolbar component in dark mode with Liquid Glass effect and Sosh theme](component_toolBarTop_LiquidGlass_Sosh_dark)
///
/// ![A top toolbar component in light mode with Liquid Glass effect and Wireframe theme](component_toolBarTop_LiquidGlass_Wireframe_light)
/// ![A top toolbar component in dark mode with Liquid Glass effect and Wireframe theme](component_toolBarTop_LiquidGlass_Wireframe_dark)
///
/// ### Without Liquid Glass
///
/// ![A top toolbar component in light mode with Liquid Glass effect and Orange theme](component_toolBarTop_Orange_light)
/// ![A top toolbar component in dark mode with Liquid Glass effect and Orange theme](component_toolBarTop_Orange_dark)
///
/// ![A top toolbar component in light mode with Liquid Glass effect and Orange Business Tools theme](component_toolBarTop_OrangeBusinessTools_light)
/// ![A top toolbar component in dark mode with Liquid Glass effect and Orange Business Tools theme](component_toolBarTop_OrangeBusinessTools_dark)
///
/// ![A top toolbar component in light mode with Liquid Glass effect and Sosh theme](component_toolBarTop_LiquidGlass_light)
/// ![A top toolbar component in dark mode with Liquid Glass effect and Sosh theme](component_toolBarTop_LiquidGlass_dark)
///
/// ![A top toolbar component in light mode with Liquid Glass effect and Wireframe theme](component_toolBarTop_LiquidGlass_light)
/// ![A top toolbar component in dark mode with Liquid Glass effect and Wireframe theme](component_toolBarTop_LiquidGlass_dark)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 1.2.0
@available(iOS 15, macOS 13, visionOS 1, *)
public struct OUDSToolBarTop<Content>: View where Content: View { // TODO: #1174 - Use short link for documentation

    // MARK: - Stored properties

    private let title: String
    private let subtitle: String?
    private let leadingItems: [OUDSToolBarItem]
    private let trailingItems: [OUDSToolBarItem]
    private let content: () -> Content

    @Environment(\.theme) private var theme

    // MARK: - Initializer

    /// Creates a top toolbar with a title, optional subtitle, and leading/trailing items.
    ///
    /// - Parameters:
    ///   - title: The toolbar title. Prefer a non-empty string.
    ///   - subtitle: Optional subtitle displayed below the title.
    ///   - leadingItems: The items displayed on the leading side.
    ///   - trailingItems: The items displayed on the trailing side.
    ///   - content: The content view wrapped by the toolbar.
    public init(title: String,
                subtitle: String? = nil,
                @OUDSToolBarItemsBuilder leadingItems: () -> [OUDSToolBarItem] = { [] },
                @OUDSToolBarItemsBuilder trailingItems: () -> [OUDSToolBarItem] = { [] },
                @ViewBuilder content: @escaping () -> Content)
    {
        if title.isEmpty {
            OL.warning("The title of OUDSToolBarTop is empty, prefer a non-empty title")
        }
        if let subtitle, subtitle.isEmpty {
            OL.warning("The subtitle of OUDSToolBarTop is empty, prefer nil instead")
        }
        self.title = title
        self.subtitle = subtitle?.isEmpty == true ? nil : subtitle
        self.leadingItems = leadingItems()
        self.trailingItems = trailingItems()
        self.content = content
    }

    // MARK: - Body

    public var body: some View {
        NavigationView {
            content()
                .modifier(ToolBarTopAppearanceModifier())
                .toolbar {
                    ToolbarItemGroup(placement: leadingPlacement) {
                        itemsView(leadingItems, style: .topLeading)
                    }
                    ToolbarItem(placement: principalPlacement) {
                        ToolBarTitleView(title: title, subtitle: subtitle)
                    }
                    ToolbarItemGroup(placement: trailingPlacement) {
                        itemsView(trailingItems, style: .topTrailing)
                    }
                }
        }
    }

    // MARK: - Helpers

    private var leadingPlacement: ToolbarItemPlacement {
        #if os(iOS) || os(visionOS)
        return .navigationBarLeading
        #elseif os(macOS)
        return .navigation
        #else
        return .automatic
        #endif
    }

    private var trailingPlacement: ToolbarItemPlacement {
        #if os(iOS) || os(visionOS)
        return .navigationBarTrailing
        #elseif os(macOS)
        return .primaryAction
        #else
        return .automatic
        #endif
    }

    private var principalPlacement: ToolbarItemPlacement {
        .principal
    }

    @ViewBuilder
    private func itemsView(_ items: [OUDSToolBarItem], style: ToolBarItemStyle) -> some View {
        if !items.isEmpty {
            ForEach(items) { item in
                item.modifier(ToolBarItemStyleModifier(style: style))
            }
        }
    }
}
#endif

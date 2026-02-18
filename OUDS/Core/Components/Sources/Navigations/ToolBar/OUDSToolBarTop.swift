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
/// It typically displays the page title, and may include navigation actions such as “Back” or "Cancel" as well as supplementary actions.
/// It can contains leading and trailing actions.
///
/// ``OUDSToolbarTop`` wraps any content view and applies a SwiftUI toolbar configuration.
///
/// ## Appearances
///
/// With Liquid Glass / iOS 26+ the OS will change the rendering of the toolbar items depending to the context:
/// - The OS can group the items of same types in one group with kind of rectangle (e.g. views with menus)
/// - But for buttons items they will remain isolated
/// - The placement of the title can be leading or centered depending to the length of the text
/// - The text can be truncated if there is not enough remaining space
/// - The OS can apply another style for the back button
///
/// Without Liquid Glass / iOS 18-, the OS won't change that much the style of the toolbar items:
/// - Items won't be visually grouped
///
/// TODO: #1174 - Add details about appearances depending to versions
///
/// ## Technical constraints
///
/// To be sure for iOS 18 and lower the back buttton and text have the good color, in your main view apply the following accent color:
///
/// ```swift
///     struct AppMainView: View {
///         var body: some View {
///             ContentView()
///                 .oudsAccentColor(theme.colors.contentBrandPrimary)
///         }
///     }
/// ```
///
/// ## Platform considerations
///
/// - The component is available on iOS, macOS and visionOS
/// - The component is not available for watchOS
/// - The component is not available for tvOS
///
/// ## Code sample
///
/// ```swift
///     OUDSToolbarTop(title: "Inbox", subtitle: "2 new messages") {
///         ContentView()
///     } leadingItems: {
///         OUDSToolbarItem(navigation: .close, accessibilityLabel: "Close") {
///             // Handle close
///         }
///     } trailingItems: {
///         OUDSToolbarItem {
///             Image(systemName: "bell")
///         }
///     }
/// ```
///
/// ## Design documentation
///
/// TODO: #1174 - Use shortlink for documentation
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/6782de-ios-bars/b/317890)
///
/// ## Themes rendering
///
/// ### Liquid Glass
///
/// ![A top toolbar component in light mode with Liquid Glass effect and Orange theme](component_toolbarTop_LiquidGlass_Orange_light)
/// ![A top toolbar component in dark mode with Liquid Glass effect and Orange theme](component_toolbarTop_LiquidGlass_Orange_dark)
///
/// ![A top toolbar component in light mode with Liquid Glass effect and Orange Compact theme](component_toolbarTop_LiquidGlass_OrangeCompact_light)
/// ![A top toolbar component in dark mode with Liquid Glass effect and Orange Compact theme](component_toolbarTop_LiquidGlass_OrangeCompact_dark)
///
/// ![A top toolbar component in light mode with Liquid Glass effect and Sosh theme](component_toolbarTop_LiquidGlass_Sosh_light)
/// ![A top toolbar component in dark mode with Liquid Glass effect and Sosh theme](component_toolbarTop_LiquidGlass_Sosh_dark)
///
/// ![A top toolbar component in light mode with Liquid Glass effect and Wireframe theme](component_toolbarTop_LiquidGlass_Wireframe_light)
/// ![A top toolbar component in dark mode with Liquid Glass effect and Wireframe theme](component_toolbarTop_LiquidGlass_Wireframe_dark)
///
/// ### Without Liquid Glass
///
/// ![A top toolbar component in light mode with Liquid Glass effect and Orange theme](component_toolbarTop_Orange_light)
/// ![A top toolbar component in dark mode with Liquid Glass effect and Orange theme](component_toolbarTop_Orange_dark)
///
/// ![A top toolbar component in light mode with Liquid Glass effect and Orange Compact theme](component_toolbarTop_OrangeCompact_light)
/// ![A top toolbar component in dark mode with Liquid Glass effect and Orange Compact theme](component_toolbarTop_OrangeCompact_dark)
///
/// ![A top toolbar component in light mode with Liquid Glass effect and Sosh theme](component_toolbarTop_LiquidGlass_light)
/// ![A top toolbar component in dark mode with Liquid Glass effect and Sosh theme](component_toolbarTop_LiquidGlass_dark)
///
/// ![A top toolbar component in light mode with Liquid Glass effect and Wireframe theme](component_toolbarTop_LiquidGlass_light)
/// ![A top toolbar component in dark mode with Liquid Glass effect and Wireframe theme](component_toolbarTop_LiquidGlass_dark)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 1.3.0
@available(iOS 15, macOS 13, visionOS 1, *)
public struct OUDSToolbarTop<Content>: View where Content: View {
    // TODO: #1174 - Make screenshots for doc

    // MARK: - Stored properties

    private let title: String
    private let subtitle: String?
    private let leadingItems: [OUDSToolbarItem]
    private let trailingItems: [OUDSToolbarItem]
    private let content: () -> Content

    @Environment(\.theme) private var theme

    // MARK: - Initializer

    /// Creates a top toolbar with a title, optional subtitle, and leading/trailing items.
    ///
    /// - Parameters:
    ///   - title: The toolbar title. Prefer a non-empty string.
    ///   - subtitle: Optional subtitle displayed below the title, *nil* by default.
    ///   - leadingItems: The items displayed on the leading side, empty by default.
    ///   - trailingItems: The items displayed on the trailing side, empty by default.
    ///   - content: The content view wrapped by the toolbar.
    public init(title: String,
                subtitle: String? = nil,
                @OUDSToolbarItemsBuilder leadingItems: () -> [OUDSToolbarItem] = { [] },
                @OUDSToolbarItemsBuilder trailingItems: () -> [OUDSToolbarItem] = { [] },
                @ViewBuilder content: @escaping () -> Content)
    {
        if title.isEmpty {
            OL.warning("The title of OUDSToolbarTop is empty, prefer a non-empty title")
        }
        if let subtitle, subtitle.isEmpty {
            OL.warning("The subtitle of OUDSToolbarTop is empty, prefer nil instead")
        }
        self.title = title
        self.subtitle = subtitle?.isEmpty == true ? nil : subtitle
        self.leadingItems = leadingItems()
        self.trailingItems = trailingItems()
        self.content = content
    }

    // MARK: - Body

    public var body: some View {
        content()
            .toolbar {
                ToolbarItemGroup(placement: leadingPlacement) {
                    itemsView(leadingItems, style: .topLeading)
                }
                ToolbarItem(placement: principalPlacement) {
                    ToolbarTitleView(title: title, subtitle: subtitle)
                }
                ToolbarItemGroup(placement: trailingPlacement) {
                    itemsView(trailingItems, style: .topTrailing)
                }
            }
        // TODO: #1174 - Define accent color, at least for iOS 18-, to apply theme.colors.contentBrandPrimary token
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
    private func itemsView(_ items: [OUDSToolbarItem], style: ToolbarItemStyle) -> some View {
        if !items.isEmpty {
            ForEach(items) { item in
                switch item.content {
                case .actionWithoutIcon:
                    item.modifier(ToolbarTopItemActionStyleModifier(textOnly: true))
                case .actionWithIcon:
                    item.modifier(ToolbarTopItemActionStyleModifier(textOnly: false))
                case let .navigation(icon, _, _, _):
                    item.modifier(ToolbarTopItemNavigationStyleModifier(icon: icon))
                case let .customView(view):
                    view
                }
            }
        }
    }
}
#endif

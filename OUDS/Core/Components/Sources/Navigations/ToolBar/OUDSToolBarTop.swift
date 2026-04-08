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

/// The top tool bar (aka *navigation bar* on iOS and iPadOS 18 and lower) sits at the top of the screen and provides contextual information
/// and controls related to the current view.
/// It typically displays the page title, and may include navigation actions such as “Back” or "Close" as well as supplementary actions.
/// It can contains leading and trailing actions.
///
/// ``oudsToolBarTop(_:hasLargeTitle:subtitle:leadingItems:trailingItems:)``  View helper applies a SwiftUI toolBar configuration.
///
/// ## Appearances
///
/// With Liquid Glass / iOS 26+ the OS will change the rendering of the toolBar items depending to the context:
/// - The OS can group the items of same types in one group with kind of rectangle (e.g. views with menus)
/// - But for buttons items they will remain isolated
/// - The placement of the title can be leading or centered depending to the length of the text
/// - The text can be truncated if there is not enough remaining space
/// - The OS can apply another style for the back button
///
/// Without Liquid Glass / iOS 18-, the OS won't change that much the style of the toolBar items:
/// - Items won't be visually grouped
///
/// Globaly the appearence if the ** navigatrion bar** elements are changed by the `oudsNavigationBarAppearance`
/// helper of `View` that must be applyed on the root view of the Navigation stack.
///
/// ## Technical constraints
///
/// To be sure for iOS 18 and lower the back buttton and text have the good color, in your main view apply the following accent color:
///
/// ```swift
///     struct AppMainView: View {
///         var body: some View {
///             ContentView()
///                 .accentColor(theme.colors.contentDefault)
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
///     ContentView()
///        .oudsToolBarTop(title: "Inbox", subtitle: "2 new messages") {
///            OUDSToolBarItem(navigation: .close) {
///                // Handle close
///            }
///        } trailingItems: {
///            OUDSToolBarItem {
///                Image(systemName: "bell")
///            }
///        }
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
/// ![A top toolBar component in light mode with Liquid Glass effect and Orange theme](component_toolBarTop_LiquidGlass_Orange_light)
/// ![A top toolBar component in dark mode with Liquid Glass effect and Orange theme](component_toolBarTop_LiquidGlass_Orange_dark)
///
/// ![A top toolBar component in light mode with Liquid Glass effect and Orange Compact theme](component_toolBarTop_LiquidGlass_OrangeCompact_light)
/// ![A top toolBar component in dark mode with Liquid Glass effect and Orange Compact theme](component_toolBarTop_LiquidGlass_OrangeCompact_dark)
///
/// ![A top toolBar component in light mode with Liquid Glass effect and Sosh theme](component_toolBarTop_LiquidGlass_Sosh_light)
/// ![A top toolBar component in dark mode with Liquid Glass effect and Sosh theme](component_toolBarTop_LiquidGlass_Sosh_dark)
///
/// ![A top toolBar component in light mode with Liquid Glass effect and Wireframe theme](component_toolBarTop_LiquidGlass_Wireframe_light)
/// ![A top toolBar component in dark mode with Liquid Glass effect and Wireframe theme](component_toolBarTop_LiquidGlass_Wireframe_dark)
///
/// ### Without Liquid Glass
///
/// ![A top toolBar component in light mode without Liquid Glass effect and Orange theme](component_toolBarTop_Orange_light)
/// ![A top toolBar component in dark mode without Liquid Glass effect and Orange theme](component_toolBarTop_Orange_dark)
///
/// ![A top toolBar component in light mode without Liquid Glass effect and Orange Compact theme](component_toolBarTop_OrangeCompact_light)
/// ![A top toolBar component in dark mode without Liquid Glass effect and Orange Compact theme](component_toolBarTop_OrangeCompact_dark)
///
/// ![A top toolBar component in light mode without Liquid Glass effect and Sosh theme](component_toolBarTop_Sosh_light)
/// ![A top toolBar component in dark mode without Liquid Glass effect and Sosh theme](component_toolBarTop_Sosh_dark)
///
/// ![A top toolBar component in light mode without Liquid Glass effect and Wireframe theme](component_toolBarTop_Wireframe_light)
/// ![A top toolBar component in dark mode without Liquid Glass effect and Wireframe theme](component_toolBarTop_Wireframe_dark)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 1.4.0
@available(iOS 15, macOS 13, visionOS 1, *)
extension View {
    /// Creates a top toolBar with a title, optional subtitle (ios >= 26), and leading/trailing items.
    ///
    /// - Parameters:
    ///   - title: The toolBar title. Prefer a non-empty string.
    ///   - hasLargeTitle: If title must be displayed in large mode, false by default. If large mode, the subtitle is not display
    ///   - subtitle: Optional subtitle displayed below the title, *nil* by default.
    ///   - leadingItems: The items displayed on the leading side, empty by default.
    ///   - trailingItems: The items displayed on the trailing side, empty by default.
    public func oudsToolBarTop(_ title: String,
                               hasLargeTitle: Bool = false,
                               subtitle: String? = nil,
                               @OUDSToolBarItemsBuilder
                               leadingItems: @escaping () -> [OUDSToolBarItem] = { [] },
                               @OUDSToolBarItemsBuilder
                               trailingItems: @escaping () -> [OUDSToolBarItem] = { [] }) -> some View
    {
        modifier(ToolBarTopModifier(title: title,
                                    hasLargeTitle: hasLargeTitle,
                                    subtitle: subtitle,
                                    leadingItems: leadingItems,
                                    trailingItems: trailingItems))
    }
}
#endif

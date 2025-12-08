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

import OUDSFoundations
import OUDSThemesContract
import OUDSTokensRaw
import OUDSTokensSemantic
import SwiftUI

/// The ``OUDSTabBar`` is a SwiftUI `TabView` which applying OUDS tokens and styles on its content supposing to be
/// views with *tab bar items*.
/// The tab bar is, for iOS, a bottom bar with tabs containing for example images, texts and badges.
///
/// ## Appearances
///
/// iOS 26 brings Liquid Glass, the new Apple look and feel which will prevent developers to define specific styles for some critical components like bars.
/// Because today the OUDS tab bar relies on native component and is not designed from scratch, some elements will look different between iOS 26 and older versions:
/// - background color of tab bar can be changed for iOS lower than 26
/// - background color of tab bar does not change since iOS 26
/// - normal / unselected tab item color can be changed for both image and text only for iOS lower than 26
/// - with iOS 26 no token of color are applied on unselected / normal tab item because only the image will be changed
/// and not the text making theme not readable in dark color scheme
///
/// In addition the badges colors will be the same and cannot be changed (except with token definition). These particular badges do not rely on ``OUDSBadge`` component,
/// the native API is used instead.
///
/// Because Liquid Glass is available since iOS 26, the tab bar will be liquified / glassified since this OS version, not before.
///
/// If you use SF Symbols for images, if they exist their *fill* variant will be automatically used in the tab bar (native behaviour).
///
/// ## Platform considerations
///
/// - This component is tailored for iOS
/// - On iPadOS the tabs do not apply the fonts
/// - Because macOS does not support UIKit and because UIKIt is used to define the style of the tab bar, there is not styling of the tab bar for macOS
/// - visionOS with is specific UI does not apply colors on tab bars and things are glasssified
/// - The component is not available for watchOS
/// - The component is not available for tvOS
///
/// ## Guidelines
///
/// OUDS guidelines recommends to:
/// - limit when possible the number of items to 5
/// - use both images and texts in tab bar items
/// - use badges only when needed to avoid to have heavy tab bar
/// - be sure the selected information is not only defined by the color of the tab; you may need to change the shape or the fill of the image
/// - if possible displayed a selected tab indicator for the selected tab
///
/// ## Accessibility considerations
///
/// - If your tabs embeded in the `OUDSTabBar` do not contain texts but only images, add an accessibility label introducing the journey for this tab
/// - If your tabs embeded in the `OUDSTabBar` display a badge (empty or with text), vocalize it in your tab to let users know what it is (unread messages, new things, etc)
/// by using accessibilty value
///
/// ```swift
///     OUDSTabBar {
///         SomeView()
///             .tabItem {
///                 Label {
///                     Text("Emails") // The text is vocalized first
///                         .accessibilityValue("5 unread emails") // A value vocalized after the text
///             } icon: {
///                 Image(systemName: "mail").accessibilityHidden(true)
///             }
///         }
///         .badge(5) // The value you give to the badge
///     }
///
/// ```
///
/// ## Selection of tabs
///
/// For iOS lower than 26, a selected tab indicator can be displayed in the `OUDSTabBar` if the `count` parameter is defined (to the number of tabs in the component)
/// and if the `selected` parameter is equal to a given tag associated to a tab item.
/// Otherwise the indicator won't appear; these parameters are mandatory to computer the location of the indicator.
///
/// ## Code samples
///
/// ```swift
///     // Use the OUDS tab bar to wrap tab bar items and associated views
///     // Item tagged 0 will be selected first, 3 tabs are embeded.
///     OUDSTabBar(selected: 0, count: 3) {
///
///         // Add the views with the SwiftUI tab item and labels
///         // No need to define colors, everything is done inside OUDSTabBar
///         SomeView()
///             .tabItem {
///                 Label("Label 1", image: "image_1")
///             }
///             .tag(0)
///         OtherView()
///             .tabItem {
///                 Label("Label 2", image: "image_2")
///             }
///             .tag(1)
///         LastView()
///             .tabItem {
///                 Label("Label 3", image: "image_3")
///             }
///             .tag(2)
///     }
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com)
///
/// ## Themes rendering
///
/// ### Liquid Glass
///
/// #### Orange
///
/// ![A tab bar component in light mode with Liquid Glass effect and Orange theme](component_tabBar_LiquidGlass_Orange_light)
/// ![A tab bar component in dark mode with Liquid Glass effect and Orange theme](component_tabBar_LiquidGlass_Orange_dark)
///
/// #### Orange Business Tools
///
/// ![A  tab bar component in light mode with Liquid Glass effect and Orange Business Tools theme](component_tabBar_LiquidGlass_OrangeBusinessTools_light)
/// ![A  tab bar component in dark mode with Liquid Glass effect and Orange Business Tools theme](component_tabBar_LiquidGlass_OrangeBusinessTools_dark)
///
/// #### Sosh
///
/// ![A  tab bar component in light mode with Liquid Glass effect and Sosh theme](component_tabBar_LiquidGlass_Sosh_light)
/// ![A  tab bar component in dark mode with Liquid Glass effect and Sosh theme](component_tabBar_LiquidGlass_Sosh_dark)
///
/// #### Wireframe
///
/// ![A  tab bar component in light mode with Liquid Glass effect and Wireframe theme](component_tabBar_LiquidGlass_Wireframe_light)
/// ![A  tab bar component in dark mode with Liquid Glass effect and Wireframe theme](component_tabBar_LiquidGlass_Wireframe_dark)
///
/// ### Without Liquid Glass
///
/// #### Orange
///
/// ![A tab bar component in light mode without Liquid Glass effect and Orange theme](component_tabBar_Orange_light)
/// ![A tab bar component in dark mode without Liquid Glass effect and Orange theme](component_tabBar_Orange_dark)
///
/// #### Orange Business Tools
///
/// ![A  tab bar component in light mode without Liquid Glass effect and Orange Business Tools theme](component_tabBar_OrangeBusinessTools_light)
/// ![A  tab bar component in dark mode without Liquid Glass effect and Orange Business Tools theme](component_tabBar_OrangeBusinessTools_dark)
///
/// #### Sosh
///
/// ![A  tab bar component in light mode without Liquid Glass effect and Sosh theme](component_tabBar_Sosh_light)
/// ![A  tab bar component in dark mode without Liquid Glass effect and Sosh theme](component_tabBar_Sosh_dark)
///
/// #### Wireframe
///
/// ![A  tab bar component in light mode without Liquid Glass effect and Wireframe theme](component_tabBar_Wireframe_light)
/// ![A  tab bar component in dark mode without Liquid Glass effect and Wireframe theme](component_tabBar_Wireframe_dark)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 1.0.0
@available(iOS 15, macOS 15, visionOS 1, *)
public struct OUDSTabBar<Content>: View where Content: View {

    // MARK: Properties

    /// The current number of tabs in the `OUDSTabBar` to compute the selected tab indicator for iOS without Liquid Glass
    let tabCount: Int

    /// State to keep the selected tab reference and refresh the view
    @State private var selectedTab: Int

    /// Contains the tab bar items
    @ViewBuilder private let content: () -> Content

    // MARK: Initializers

    // swiftlint:disable function_default_parameter_at_end
    // NOTE: No use of #if os(iOS) to let OUDS maintainers macOS computers compute the documentation
    /// Defines the tab bar component with given tab bar items.
    ///
    /// Number if tabs and selected tab are needed to compute the selected tab indicator for iOS lower than 26.
    /// If you target iOS 26+ or other platform, prefer instead `OUDSTabBar(content:)`
    ///
    /// - Parameters:
    ///    - selected: The identifier of the selected tab, i.e. its rank starting from 0, default set to *0*, assoiated to a *tag*  on a *tab bar item*
    ///    - count: The current number of tabs hosted in the tab bar, must be positive non null integer
    ///    - content: The list of items to add in the tab bar
    public init(selected: Int = 0,
                count: Int,
                @ViewBuilder content: @escaping () -> Content)
    {
        selectedTab = selected
        tabCount = count
        self.content = content
    }

    // swiftlint:enable function_default_parameter_at_end

    /// Defines the tab bar component with given tab bar items.
    ///
    /// If you target iOS lower than 26 you should use instead `OUDSTabBar(selected:count:content)` to get the active tab indicator
    ///
    /// - Parameters:
    ///    - content: The list of items to add in the tab bar
    public init(@ViewBuilder content: @escaping () -> Content) {
        selectedTab = 0
        tabCount = 0
        self.content = content
    }

    // MARK: Body

    /// Uses a native SwiftUI `TabView` populated with the given content where *tab item* elements are defined.
    /// Warning: rendering wil change depending to OS version!
    public var body: some View {
        #if os(iOS)
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                content()
            }
            .modifier(TabBarViewModifier())

            // Without Liquid Glass, an indicator for the tab bar is mandatory for iPhones
            // Must not be added for iPads (as tabs are not managed the same way by the OS)
            // and can pollute some rendering like in demo app particular cases
            if #unavailable(iOS 26.0), UIDevice.current.userInterfaceIdiom == .phone {
                SelectedTabIndicator(selected: $selectedTab, count: tabCount)
            }
        }
        #else // visionOS, macOS
        TabView(selection: $selectedTab) {
            content()
        }
        #endif
    }
}

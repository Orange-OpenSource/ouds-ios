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
import SwiftUI

/// The Tab bar is a system navigation component with a position which can vary depending to the OS.
/// The tab bar can be found at the bottom of the screen for iOS. It can vary for iPadOS.
/// It allows users to switch between the sections of an app.
/// Each tab can be represented by a label, optionally paired with an icon, and maintains persistent visibility across top-level destinations.
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
/// - On iPadOS the tabs do not apply the fonts since iPadOS 18
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
/// - if a badge must be displayed, prefer short texts. If the text is a decimal value greater than 99, prefer display "+99"
/// - if decorative images are used for tab bar item, apply *template* rendering mode on it to apply color on tabs
///
/// ## Technical constraints
///
/// - You must use in your tab bar items images with **a size of 26 x 26**, otherwise rendering could be unaligned with Figma specifications
/// - Because the component cannot compute the ideal width of the selected tab indicator (for iOS before 26 and iPadOS before 18), ideal width based on the tab bar item content,
/// this indicator is not displayed for iOS lower than 26 in landscape mode and iPadOS.
///
/// ## Accessibility considerations
///
/// - If your tabs embeded in the `OUDSTabBar` do not contain texts but only images, add an accessibility label introducing the journey for this tab
/// - If your tabs embeded in the `OUDSTabBar` display a badge (empty or with text), vocalize it in your tab to let users know what it is (unread messages, new things, etc)
/// by using accessibiltiy value
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
/// Otherwise the indicator won't appear; these parameters are mandatory to compute the location of the indicator.
/// This rule is only applied if selected tab indicator must be displayed.
///
/// ## Technical considerations
///
/// In order to improve the Developer eXperience the current `OUDSTabBar` implementation lets users define their own tab items.
/// OUDS applies only appearances and styles on elements to prevent users to define raw data to assign to the component before being rendered like a *picker*.
/// Thus users will need to add their own accessiiblity label if badges are used or also apply *template* rendering mode on images if needed.
/// Thus it will be also possible to use Liquid Glass new API with animations and items stacking.
///
/// ## Code samples
///
/// ```swift
///     // Use the OUDS tab bar to wrap tab bar items and associated views
///     // Item tagged 0 will be selected first, 3 tabs are embeded.
///     // Image with size of 26 x 26
///     OUDSTabBar(selected: 0, count: 3) {
///
///         // Add the views with the SwiftUI tab item and labels
///         // No need to define colors, everything is done inside OUDSTabBar
///         SomeView()
///             .tabItem {
///                 Label("Label 1", image: "image_1")
///             }
///             .tag(0) // Must match the selected parameter
///         OtherView()
///             .tabItem {
///                 Label {
///                     Text("Label 2")
///                 } icon: {
///                     Image(decorative: "image_2")
///                         .renderingMode(.template) // Mandatory to apply color on selected item
///                 }
///             .tag(1) // Must be used for the selected parameter
///         LastView()
///             .tabItem {
///                 Label("Label 3", image: "image_3")
///             }
///             .tag(2) // Must be used for the selected parameter
///     }
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-ios-tab-bar)
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
/// #### Orange Compact
///
/// ![A  tab bar component in light mode with Liquid Glass effect and Orange Compact theme](component_tabBar_LiquidGlass_OrangeCompact_light)
/// ![A  tab bar component in dark mode with Liquid Glass effect and Orange Compact theme](component_tabBar_LiquidGlass_OrangeCompact_dark)
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
/// #### Orange Compact
///
/// ![A  tab bar component in light mode without Liquid Glass effect and Orange Compact theme](component_tabBar_OrangeCompact_light)
/// ![A  tab bar component in dark mode without Liquid Glass effect and Orange Compact theme](component_tabBar_OrangeCompact_dark)
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
@available(iOS 15, macOS 13, visionOS 1, *)
public struct OUDSTabBar<Content>: View where Content: View {

    // MARK: Properties

    /// The current number of tabs in the `OUDSTabBar` to compute the selected tab indicator for iOS without Liquid Glass
    private let tabCount: Int

    /// State to keep the selected tab reference and refresh the view
    @State private var selectedTab: Int

    /// Contains the tab bar items
    @ViewBuilder private let content: () -> Content

    /// Track orientation changes to trigger view refresh
    @State private var isLandscape: Bool

    // MARK: Initializers

    // NOTE: No use of #if os(iOS) to let OUDS maintainers macOS computers compute the documentation
    /// Defines the tab bar component with given tab bar items.
    /// Number of tabs and selected tab are needed to compute the selected tab indicator for iOS lower than 26.
    /// If you target iOS 26+ or other platform, prefer instead `OUDSTabBar(content:)`
    ///
    /// ```swift
    ///     OUDSTabBar {
    ///         SomeView()
    ///             .tabItem {
    ///                 Label("Label 1", image: "some-image")
    ///              }
    ///              .tag(0)
    ///         OtherViewView()
    ///             .tabItem {
    ///                 Label("Label 2", image: "some-image")
    ///              }
    ///              .tag(0)
    ///     }
    /// ```
    ///
    /// - Parameters:
    ///    - selected: The identifier of the first selected tab, i.e. its rank starting from 0, associated to a *tag*  on a *tab bar item*
    ///    - count: The current number of tabs hosted in the tab bar, must be positive non null integer
    ///    - content: The list of items to add in the tab bar
    public init(selected: Int,
                count: Int,
                @ViewBuilder content: @escaping () -> Content)
    {
        selectedTab = selected
        tabCount = count
        self.content = content
        _isLandscape = State(initialValue: Self.isInLandscapeViewport())
    }

    // NOTE: No use of #if os(iOS) to let OUDS maintainers macOS computers compute the documentation
    /// Defines the tab bar component with given tab bar items.
    /// If you target iOS lower than 26, prefer instead `OUDSTabBar(selected:count:content:)`
    ///
    /// ```swift
    ///     OUDSTabBar {
    ///         SomeView()
    ///             .tabItem {
    ///                 Label("Label 1", image: "some-image")
    ///              }
    ///         OtherViewView()
    ///             .tabItem {
    ///                 Label("Label 2", image: "some-image")
    ///              }
    ///     }
    /// ```
    ///
    /// - Parameter content: The views to add in the tab bar
    @available(iOS 26, *)
    public init(@ViewBuilder content: @escaping () -> Content) {
        selectedTab = 0
        tabCount = 0
        self.content = content
        _isLandscape = State(initialValue: false)
    }

    // MARK: Body

    /// Uses a native SwiftUI `TabView` populated with the given content where *tab item* elements are defined.
    /// Rendering wil change depending to OS version, with a top divider and a selected tab indicator for legacy layouts.
    public var body: some View {
        #if os(iOS)
        // Without Liquid Glass, an indicator for the tab bar is mandatory for iPhones in portrait mode only,
        // not for iPhone in landscape mode nor iPads (design requirements).
        // With Xcode 26.0 it was mandatory to manage these 2 cases.
        // But with Xcode 26.1 and 26.2, the old implementation was broken and add cycle in attributes graph
        // because of the ZStack, its conditions and the multiple use of tab views.
        // Such cycle broke view hierachy, UI tests and had side effects with toolbar buttons.
        // Now it seems for iOS 26+ this code is not used and the tab bar is still well computed.
        // `DeviceModifier` is intentionally applied at the `OUDSTabBar` level so that
        // device-related environment values (such as `iPhoneInUse`) are available only
        // within the TabBar view hierarchy (e.g. `SelectedTabIndicator`, `TabBarTopDivider`).
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                content()
            }
            .modifier(TabBarViewModifier())

            TabBarTopDivider()
                .opacity(hasLegacyLayout ? 1 : 0)

            SelectedTabIndicator(selected: $selectedTab, count: tabCount)
                .opacity(shouldShowTabIndicator ? 1 : 0)
        }
        .onAppear {
            isLandscape = Self.isInLandscapeViewport()
        }
        .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)) { _ in
            // Delay to ensure the orientation change is complete
            DispatchQueue.main.asyncAfter(deadline: .now() + kAsyncDelay) {
                isLandscape = Self.isInLandscapeViewport()
            }
        }
        .modifier(DeviceModifier())
        #else // visionOS, macOS
        TabView {
            content()
        }
        #endif
    }

    // MARK: - Helpers

    /// Determines if the selected tab indicator should be shown, i.e. if iOS lower than 26 in portrait mode.
    private var shouldShowTabIndicator: Bool {
        #if canImport(UIKit) && !os(watchOS)
        guard #unavailable(iOS 26.0) else { return false }
        guard UIDevice.current.userInterfaceIdiom == .phone else { return false }
        return !isLandscape
        #else
        return false
        #endif
    }

    /// - Returns Bool: true if iOS lower than 26.0 for iPhone or iOS lower than 18.0 for iPad, false otherwise
    private var hasLegacyLayout: Bool {
        #if canImport(UIKit) && !os(watchOS)
        // iOS < 26
        if #unavailable(iOS 26.0) {
            // iPhone
            if UIDevice.current.userInterfaceIdiom == .phone {
                return true
                // iPad with iPadOS < 18
            } else if UIDevice.current.userInterfaceIdiom == .pad {
                if #unavailable(iOS 18.0) {
                    return true
                }
            }
        }
        return false
        #else
        // iOS 26+ / Liquid Glass
        return false
        #endif
    }
}

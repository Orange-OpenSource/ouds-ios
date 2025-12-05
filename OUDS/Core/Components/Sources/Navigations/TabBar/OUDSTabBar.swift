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

// MARK: - OUDS Tab Bar

/// The ``OUDSTabBar`` is a SwiftUI `TabView` which applies an ``OUDSTabBarViewModifier`` on its content supposing to be
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
/// the native API is sued instead.
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
            .modifier(OUDSTabBarViewModifier())

            // Without Liquid Glass, an indicator for the tab bar is mandatory with iOS
            if #unavailable(iOS 26.0) {
                SelectedTabIndicator(selected: $selectedTab, count: tabCount)
            }
        }
        #else // visionOS, macOS
        TabView(selection: $selectedTab) {
            content()
        }
        #endif
        /*
         #if !os(macOS) && !os(watchOS)
         ZStack(alignment: .bottom) {
             TabView(selection: $selectedTab) {
                 content()
             }
             .modifier(OUDSTabBarViewModifier())

             #if os(iOS)
             // Without Liquid Glass, an indicator for the tab bar is mandatory with iOS
             if #unavailable(iOS 26.0) {
                 SelectedTabIndicator(selected: $selectedTab, count: tabCount)
             }
             #endif
         }
         #else
         TabView {
             content()
         }
         #endif
          */
    }
}

#if !os(macOS) && !os(watchOS)
// MARK: - OUDS Tab Bar View Modifier

/// Defines the look and feel the tab bar must have by applying the OUDS tokens.
///
/// **This `ViewModifier` can be used directly on a `TabView`, but for iOS 26 and more (i.e. with Liquid Glass), otherwise the selected tab indicator won't appear.**
///
/// ## Rendering
///
/// iOS 26 brings Liquid Glass, the new Apple look and feel which will prevent developers to define specific styles for some critical components like bars.
/// Because today the OUDS tab bar relies on native component and is not designed from scratch, some elements will look different between iOS 26 and old versions:
/// - background color of tab bar can be changed for iOS lower than 26
/// - background color of tab bar does not change since iOS 26
/// - normal / unselected tab item color can be changed for both image and text only for iOS lower than 26
/// - with iOS 26 no token of color are applied on unselected / normal tab item because only the image will be changed
/// and not the text making theme not readable in dark color scheme
///
/// In addition the badges colors will be the same and cannot be changed (except with token definition). These aprticular badges do not rely on ``OUDSBadge`` component.
///
/// **Warning: this view modifier does not add the selected tab indicator. Prefer `OUDSTabBar` instead**.
///
/// ## Guidelines
///
/// OUDS guidelines recommends to:
/// - limit when possible the number of items to 5
/// - use both images and texts in tab bar items
/// - use badges only when needed to avoid to have heavy tab bar
/// - be sure the selected information is not only defined by the color of the tab ; you may need to change the shape or the fill of the image
/// - if possible displayed a selected tab indicator for the selected tab
///
/// ## Code samples
///
/// ```swift
///     // Wrap your items in the tab view
///     TabView {
///
///         SomeView()
///             .tabItem {
///                 Label("Label 1", image: "image_1")
///             }
///         OtherView()
///             .tabItem {
///                 Label("Label 2", image: "image_2")
///             }
///         LastView()
///             .tabItem {
///                 Label("Label 3", image: "image_3")
///             }
///
///     // Add the view modifier to apply OUDS style
///     }.modifier(OUDSTabBarViewModifier())
/// ```
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 1.0.0
@available(iOS 15, *)
public struct OUDSTabBarViewModifier: ViewModifier {

    // MARK: Properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.verticalSizeClass) private var verticalSizeClass

    // MARK: Init

    public init() {}

    // MARK: Body

    public func body(content: Content) -> some View {
        content
            // Do not use task(), it's async, effects may be applied too late
            .onAppear {
                setupTabBarAppearance(withColor: colorScheme)
            }
            // If change of orientation
            .onChange(of: verticalSizeClass) { _ in
                DispatchQueue.main.asyncAfter(deadline: .now() + kAsyncDelay) {
                    setupTabBarAppearance(withColor: colorScheme)
                }
            }
        // Color scheme changes can rise a bit later after onAppear()
        // Thus we need to catch the most up-to-date value to apply
        #if os(visionOS) || os(watchOS)
            .onChange(of: colorScheme) { _, newColorScheme in
                setupTabBarAppearance(withColor: newColorScheme)
            }
            .onChange(of: theme) { _, newTheme in
                setupTabBarAppearance(andTheme: newTheme)
            }
        #else // iOS, iPadOS
            .onChange(of: colorScheme) { newColorScheme in
                setupTabBarAppearance(withColor: newColorScheme)
            }
            .onChange(of: theme) { newTheme in
                setupTabBarAppearance(andTheme: newTheme)
            }
        #endif
            .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)) { _ in
                DispatchQueue.main.asyncAfter(deadline: .now() + kAsyncDelay) {
                    setupTabBarAppearance(withColor: colorScheme)
                }
            }
    }

    // swiftlint:disable function_body_length
    /// Defines the selected and unselected states, and background colors for the tab bar.
    /// Can use forced values for color scheme and theme in some edge cases (app refresh).
    /// More details: https://github.com/Orange-OpenSource/ouds-ios/discussions/1076
    ///
    /// - Parameters:
    ///    - scheme: The color scheme to apply if defined
    ///    - theme: The theme to apply if defined
    private func setupTabBarAppearance(withColor scheme: ColorScheme? = nil, andTheme theme: OUDSTheme? = nil) {

        // Get forced or most fresh theme and color scheme
        let colorSchemeToApply = scheme ?? colorScheme
        let themeToApply = theme ?? self.theme

        let tabBarAppearance = UITabBarAppearance()
        let tabBarItemAppearance = UITabBarItemAppearance()

        // MARK: Tab bar item badge
        let badgeUIColor = themeToApply.colors.surfaceStatusNegativeEmphasized.color(for: colorSchemeToApply).uiColor
        tabBarItemAppearance.normal.badgeBackgroundColor = badgeUIColor
        tabBarItemAppearance.selected.badgeBackgroundColor = badgeUIColor
        tabBarItemAppearance.focused.badgeBackgroundColor = badgeUIColor

        // MARK: Tab bar background
        // NOTE: Background color and background effect not working with Liquid Glass / iOS 26+
        tabBarAppearance.configureWithTransparentBackground()
        tabBarAppearance.backgroundEffect = UIBlurEffect(style: .systemThinMaterial) // TODO: #1135 - Check which material must be used
        tabBarAppearance.backgroundColor = themeToApply.bar.colorBgTranslucent.color(for: colorSchemeToApply).uiColor
        // Define the color for the top border of the tab view, but does not work on all cases (ノಠ益ಠ)ノ彡┻━┻
        tabBarAppearance.shadowColor = themeToApply.colors.borderMinimal.color(for: colorSchemeToApply).uiColor

        // MARK: Fonts
        // In Apple apps even if the user increases the text sizes the tab bar texts does not change
        // We keep about 12px in Figma i.e. sizeLabelSmall
        let fontSize = themeToApply.fonts.sizeLabelSmall
        var normalFont: UIFont, selectedFont: UIFont
        if let fontFamily = themeToApply.fontFamily {
            let normalFontName = kApplePostScriptFontNames[orKey: PSFNMK(fontFamily, Font.Weight.regular)]
            let selectedFontName = kApplePostScriptFontNames[orKey: PSFNMK(fontFamily, Font.Weight.bold)]
            normalFont = UIFont(name: normalFontName, size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
            selectedFont = UIFont(name: selectedFontName, size: fontSize) ?? UIFont.boldSystemFont(ofSize: fontSize)
        } else {
            normalFont = UIFont.systemFont(ofSize: fontSize)
            selectedFont = UIFont.boldSystemFont(ofSize: fontSize)
        }

        // MARK: Tab bar unselected item
        /*
         With iOS 26+, if a color is applied to a tab bar item in unselected state,
         only the image is changed and not the text.
         It could mean in dark mode the text is not readable at all.
         Thus apply the unselector color only for cases where everything works.
         */
        if #unavailable(iOS 26.0) {
            let unselectedUIColor = themeToApply.bar.colorContentUnselectedEnabled.color(for: colorSchemeToApply).uiColor
            tabBarItemAppearance.normal.iconColor = unselectedUIColor
            tabBarItemAppearance.normal.titleTextAttributes = [
                .foregroundColor: unselectedUIColor,
                .font: normalFont,
            ]
        } else {
            tabBarItemAppearance.normal.titleTextAttributes = [
                .font: normalFont,
            ]
        }

        // MARK: Tab bar selected item
        let selectedUIColor = themeToApply.colors.actionAccent.color(for: colorSchemeToApply).uiColor
        tabBarItemAppearance.selected.iconColor = selectedUIColor
        tabBarItemAppearance.selected.titleTextAttributes = [
            .foregroundColor: selectedUIColor,
            .font: selectedFont,
        ]

        // MARK: Tab bar focused item
        let focusedUIColor = themeToApply.bar.colorContentSelectedFocus.color(for: colorSchemeToApply).uiColor
        tabBarItemAppearance.focused.iconColor = focusedUIColor
        tabBarItemAppearance.focused.titleTextAttributes = [
            .foregroundColor: focusedUIColor,
            .font: selectedFont,
        ]

        tabBarAppearance.stackedLayoutAppearance = tabBarItemAppearance
        tabBarAppearance.inlineLayoutAppearance = tabBarItemAppearance
        tabBarAppearance.compactInlineLayoutAppearance = tabBarItemAppearance

        UITabBar.appearance().standardAppearance = tabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance

        DispatchQueue.main.async {
            updateExistingTabBars(with: tabBarAppearance)
        }
    }

    // swiftlint:enable function_body_length

    /// Force the update of all tab bars within the hosted app
    private func updateExistingTabBars(with appearance: UITabBarAppearance) {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else { return }

        for window in windowScene.windows {
            updateTabBars(in: window.rootViewController, with: appearance)
        }
    }

    /// Find and update recursively the tab bars
    private func updateTabBars(in viewController: UIViewController?, with appearance: UITabBarAppearance) {
        guard let viewController else { return }

        if let tabBarController = viewController as? UITabBarController {
            tabBarController.tabBar.standardAppearance = appearance
            tabBarController.tabBar.scrollEdgeAppearance = appearance

            tabBarController.tabBar.setNeedsLayout()
            tabBarController.tabBar.layoutIfNeeded()
        }

        for child in viewController.children {
            updateTabBars(in: child, with: appearance)
        }

        if let presented = viewController.presentedViewController {
            updateTabBars(in: presented, with: appearance)
        }
    }
}

#endif

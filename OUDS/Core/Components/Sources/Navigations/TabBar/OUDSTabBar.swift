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

import OUDSThemesContract
import OUDSTokensRaw
import OUDSTokensSemantic
import SwiftUI

// MARK: - OUDS Tab Bar

/// The ``OUDSTabBar`` is a SwiftUI `TabView` which applies a ``OUDSTabBarViewModifier`` on its content supposing to be
/// views with *tab bar items*.
/// The tab bar is, for iOS, a bottom bar with tabs containing for example images, texts and badges.
///
/// ## Appearances
///
/// iOS 26 brings Liquid Glass, the new Apple look and feel which will prevent developers to define specific styles for some critical components like bars.
/// Because today the OUDS tab bar relies on native component and is not designed from scratch, some elements will look different between iOS 26 and old versions:
/// - background color of tab bar can be changed for iOS lower than 26
/// - background color of tab bar does not change since iOS 26
/// - normal / unselected tab item color can be changed for both image and text only for iOS lower than 26
/// - with iOS 26 no token of color are applied on unselected / normal tab item because only the image will be changed and not the text making theme not readable in dark color scheme
///
/// In addition the badges colors will be the same and cannot be changed (except with token definition). These aprticular badges do not rely on ``OUDSBadge`` component.
///
/// Because Liquid Glass is available since iOS 26, the tab bar will be liquified / glassified.
///
/// ## Guidelines
///
/// OUDS guidelines recommends to:
/// - limit when possible the number of items to 5
/// - use both images and texts in tab bar items
/// - use badges only when needed to avoid to have heavy tab bar
/// - be sure the selected information is not only defined by the color of the tab ; you may need to change the shape or the fill of the image
///
/// ## Code samples
///
/// ```swift
///     // Use the OUDS tab bar to wrap tab bar items and associated views
///     OUDSTabBar {
///
///         // Add the views with the SwiftUI tab item and labels
///         // No need to define colors, everything is done inside OUDSTabBar
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
///     }
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A tab bar component in light and dark mode with Orange theme](component_tabBar_Orange)
///
/// ### Orange Business Tools
///
/// ![A  tab bar component in light and dark mode with Orange Business Tools theme](component_tabBar_OrangeBusinessTools)
///
/// ### Sosh
///
/// ![A  tab bar component in light and dark mode with Sosh theme](component_tabBar_Sosh)
///
/// ### Wireframe
///
/// ![A  tab bar component in light and dark mode with Wireframe theme](component_tabBar_Wireframe)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 0.23.0
@available(iOS 15, macOS 15, visionOS 1, *)
public struct OUDSTabBar<Content>: View where Content: View {

    // MARK: - Properties

    /// Must return the tab bar items
    @ViewBuilder private let content: () -> Content

    // MARK: - Initializers

    /// Defines the tab bar component with given tab bar items
    ///
    /// - Parameter content: The list of items to add in the tab bar
    public init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }

    /// Uses a native SwiftUI `TabView` populated with the given content where *tab item* elements are defined.
    /// Warning: rendering wil change depending to OS version!
    public var body: some View {
        TabView {
            content()
        }.modifier(OUDSTabBarViewModifier())
    }
}

// MARK: - OUDS Tab Bar View Modifier

/// Defines the look and feel the tab bar must have by applying the OUDS tokens.
/// This `ViewModifier` can be used directly on a `TabView`.
///
/// ## Rendering
///
/// iOS 26 brings Liquid Glass, the new Apple look and feel which will prevent developers to define specific styles for some critical components like bars.
/// Because today the OUDS tab bar relies on native component and is not designed from scratch, some elements will look different between iOS 26 and old versions:
/// - background color of tab bar can be changed for iOS lower than 26
/// - background color of tab bar does not change since iOS 26
/// - normal / unselected tab item color can be changed for both image and text only for iOS lower than 26
/// - with iOS 26 no token of color are applied on unselected / normal tab item because only the image will be changed and not the text making theme not readable in dark color scheme
///
/// In addition the badges colors will be the same and cannot be changed (except with token definition). These aprticular badges do not rely on ``OUDSBadge`` component.
///
/// ## Guidelines
///
/// OUDS guidelines recommends to:
/// - limit when possible the number of items to 5
/// - use both images and texts in tab bar items
/// - use badges only when needed to avoid to have heavy tab bar
/// - be sure the selected information is not only defined by the color of the tab ; you may need to change the shape or the fill of the image
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
/// - Since: 0.23.0
@available(iOS 15, macOS 15, visionOS 1, *)
public struct OUDSTabBarViewModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    public init() {}

    public func body(content: Content) -> some View {
        content
            .task {
                setupTabBarAppearance()
            }
    }

    /// Defines the selected and unselected states, and background colors for the tab bar
    ///
    /// More details: https://github.com/Orange-OpenSource/ouds-ios/discussions/1076
    private func setupTabBarAppearance() {
        let tabBarAppearance = UITabBarAppearance()
        let tabBarItemAppearance = UITabBarItemAppearance()

        // Tab bar item badge
        let badgeUIColor = theme.colors.surfaceStatusNegativeEmphasized.color(for: colorScheme).uiColor
        tabBarItemAppearance.normal.badgeBackgroundColor = badgeUIColor
        tabBarItemAppearance.selected.badgeBackgroundColor = badgeUIColor
        tabBarItemAppearance.focused.badgeBackgroundColor = badgeUIColor

        // Tab bar background
        if #available(iOS 26.0, *) { // May not work with Liquid Glass
            tabBarAppearance.backgroundColor = theme.bar.colorBgOpaque.color(for: colorScheme).uiColor
        } else {
            tabBarAppearance.backgroundColor = theme.bar.colorBgTranslucent.color(for: colorScheme).uiColor
            // Define the color for the top border of the tab view, but does not work on all cases
            tabBarAppearance.shadowColor = theme.colors.borderMinimal.color(for: colorScheme).uiColor
        }

        // Tab bar unselected item
        /*
         With iOS 26+, if a color is applied to a tab bar item in unselected state,
         only the image is changed and not the text.
         It could mean in dark mode the text is not readable at all.
         Thus apply the unselector color only for cases where everything works.
         */
        if #unavailable(iOS 26.0) {
            let unselectedUIColor = theme.bar.colorContentUnselectedEnabled.color(for: colorScheme).uiColor
            tabBarItemAppearance.normal.iconColor = unselectedUIColor
            tabBarItemAppearance.normal.titleTextAttributes = [
                .foregroundColor: unselectedUIColor,
            ]
        }

        // Tab bar selected item
        let selectedUIColor = theme.colors.actionAccent.color(for: colorScheme).uiColor
        tabBarItemAppearance.selected.iconColor = selectedUIColor
        tabBarItemAppearance.selected.titleTextAttributes = [
            .foregroundColor: selectedUIColor,
        ]

        // Tab bar focused item
        let focusedUIColor = theme.bar.colorContentSelectedFocus.color(for: colorScheme).uiColor
        tabBarItemAppearance.focused.iconColor = focusedUIColor
        tabBarItemAppearance.focused.titleTextAttributes = [
            .foregroundColor: focusedUIColor,
        ]

        tabBarAppearance.stackedLayoutAppearance = tabBarItemAppearance
        UITabBar.appearance().standardAppearance = tabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
    }
}

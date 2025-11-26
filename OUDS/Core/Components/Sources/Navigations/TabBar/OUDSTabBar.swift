//
//  OUDSTabBar.swift.tmp.swift
//  OUDS
//
//  Created by Pierre-Yves Lapersonne on 21/11/2025.
//

import OUDSThemesContract
import OUDSTokensRaw
import OUDSTokensSemantic
import SwiftUI

// MARK: - OUDS Tab Bar

/// The ``OUDSTabBar`` ...
///
///    /// Note please that:
/// - SwiftUI API is not isofunctional with UIKit API
/// - background color of tab bar can be changed for iOS lower than 26
/// - background color of tab bar does not change for iOS 26 and greater
/// - normal / unselected color can be changed for both image and text only for iOS lower than 26
/// - normal / unselected color can be changed for text only if iOS 26 and greater
/// - normal / unselected color for image in tab bar item cannot be changed even if image is defined with "rempalte" rendering and changed with a foreground color
///
///
/// ## Appearances
///
/// ...
///
/// ## Code samples
///
/// ```swift
///     ...
/// ```
///
/// ## Styles
///
/// ...
///
/// ## Specific behavior
///
/// ...
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](...)
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
/// - Version: xxx (Figma component design version)
/// - Since: 0.xxx.0
@available(iOS 15, macOS 15, visionOS 1, *)
public struct OUDSTabBar<Content>: View where Content: View {

    // MARK: - Properties

    @ViewBuilder private let content: () -> Content

    // MARK: - Initializers

    /// Defines the tab bar component embeding the given `content` containing tab bar items.
    ///
    /// - Parameter content: The `View` containing tab bar items to wrap in the SwiftUI `TabView` in the end
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

/// Defines the look and feel the tab bar must have by applying the OUDS tokes.
///
public struct OUDSTabBarViewModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    public func body(content: Content) -> some View {
        // The border must be added only if OS lower than 26
        // otherwise with Liquid Glass a small horizontal stroke dividing the screen will appear
        // and will not be related to the tab bar
        if #unavailable(iOS 26.0) {
            content
                .task {
                    setupTabBarAppearance()
                }
                .border(theme.colors.borderMinimal.color(for: colorScheme))
        } else {
            content
                .task {
                    setupTabBarAppearance()
                }
        }
    }

    /// Defines the selected and unselected states, and background colors for the tab bar
    ///
    /// More details: https://github.com/Orange-OpenSource/ouds-ios/discussions/1076
    private func setupTabBarAppearance() {
        let tabBarAppearance = UITabBarAppearance()
        let tabBarItemAppearance = UITabBarItemAppearance()

        // Tab bar background
        if #available(iOS 26.0, *) {
            tabBarAppearance.backgroundColor = theme.bar.colorBgOpaque.color(for: colorScheme).uiColor
        } else {
            tabBarAppearance.backgroundColor = theme.bar.colorBgTranslucent.color(for: colorScheme).uiColor
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
            tabBarItemAppearance.normal.badgeBackgroundColor = unselectedUIColor
        }

        // Tab bar selected item
        let selectedUIColor = theme.colors.actionAccent.color(for: colorScheme).uiColor
        tabBarItemAppearance.selected.iconColor = selectedUIColor
        tabBarItemAppearance.selected.titleTextAttributes = [
            .foregroundColor: selectedUIColor,
        ]
        tabBarItemAppearance.selected.badgeBackgroundColor = selectedUIColor

        // Tab bar focused item
        let focusedUIColor = theme.bar.colorContentSelectedFocus.color(for: colorScheme).uiColor
        tabBarItemAppearance.focused.iconColor = focusedUIColor
        tabBarItemAppearance.focused.titleTextAttributes = [
            .foregroundColor: focusedUIColor,
        ]
        tabBarItemAppearance.focused.badgeBackgroundColor = focusedUIColor

        tabBarAppearance.stackedLayoutAppearance = tabBarItemAppearance
        UITabBar.appearance().standardAppearance = tabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
    }
}

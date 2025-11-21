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

/// The ``OUDSTabBar`` ...
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

    private var selectedColor: MultipleColorSemanticTokens?
    private var unselectedColor: MultipleColorSemanticTokens?
    private var backgroundColor: MultipleColorSemanticTokens?

    @ViewBuilder private let content: () -> Content

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Initializers

    /// Defines the tab bar component to use with some colors to apply.
    ///
    /// - Parameters:
    ///    - selectedColor: The raw color to apply to the selected tab bar item (both image and text for iOS 18 and lower, only text for iOS 26 and greater)
    ///    - unselectedColor: The raw color to apply to the unselected tab bar item (both image and text for iOS 18 and lower, only text for iOS 26 and greater)
    ///    - backgroundColor: The raw of color to apply to the tab bar background (only for iOS 18 and lower)
    public init(selectedColor: ColorRawToken,
                unselectedColor: ColorRawToken,
                backgroundColor: ColorRawToken,
                @ViewBuilder content: @escaping () -> Content)
    {
        self.init(selectedColor: MultipleColorSemanticTokens(selectedColor),
                  unselectedColor: MultipleColorSemanticTokens(unselectedColor),
                  backgroundColor: MultipleColorSemanticTokens(backgroundColor),
                  content: content)
    }

    /// Defines the tab bar component to use with some colors to apply.
    ///
    /// - Parameters:
    ///    - selectedColor: The token of color to apply to the selected tab bar item (both image and text for iOS 18 and lower, only text for iOS 26 and greater)
    ///    - unselectedColor: The token of color to apply to the unselected tab bar item (both image and text for iOS 18 and lower, only text for iOS 26 and greater)
    ///    - backgroundColor: The token of color to apply to the tab bar background(only for iOS 18 and lower)
    public init(selectedColor: MultipleColorSemanticTokens? = nil,
                unselectedColor: MultipleColorSemanticTokens? = nil,
                backgroundColor: MultipleColorSemanticTokens? = nil,
                @ViewBuilder content: @escaping () -> Content)
    {
        self.selectedColor = selectedColor
        self.unselectedColor = unselectedColor
        self.backgroundColor = backgroundColor
        self.content = content
        setupTabBarAppearance()
    }

    /// Uses a native SwiftUI `TabView` populated with the given content where *tab item* elements are defined.
    /// Warning: rendering wil change depending to OS version
    public var body: some View {
        TabView {
            content()
        }
    }

    // MARK: - Helpers

    /// Defines the selected and unselected states, and background colors for the tab bar
    ///
    /// Note please that:
    /// - SwiftUI API is not isofunctional with UIKit API
    /// - background color of tab bar can be changed for iOS lower than 26
    /// - background color of tab bar does not change for iOS 26 and greater
    /// - normal / unselected color can be changed for both image and text only for iOS lower than 26
    /// - normal / unselected color can be changed for text only if iOS 26 and greater
    /// - normal / unselected color for image in tab bar item cannot be changed even if image is defined with "rempalte" rendering and changed with a foreground color
    ///
    /// More details: https://github.com/Orange-OpenSource/ouds-ios/discussions/1076
    private func setupTabBarAppearance() {
        let tabBarAppearance = UITabBarAppearance()
        let tabBarItemAppearance = UITabBarItemAppearance()

        // Tab bar background color
        if let backgroundColor {
            tabBarAppearance.backgroundColor = backgroundColor.color(for: colorScheme).uiColor
        }

        // Tab bar select item
        if let selectedColor {
            let selectedUIColor = selectedColor.color(for: colorScheme).uiColor
            tabBarItemAppearance.selected.iconColor = selectedUIColor
            tabBarItemAppearance.selected.titleTextAttributes = [
                .foregroundColor: selectedUIColor,
            ]
            tabBarItemAppearance.selected.badgeBackgroundColor = selectedUIColor
            tabBarAppearance.stackedLayoutAppearance = tabBarItemAppearance
        }

        // Tab bar unselected item
        if let unselectedColor {
            let unselectedUIColor = unselectedColor.color(for: colorScheme).uiColor
            tabBarItemAppearance.normal.iconColor = unselectedUIColor
            tabBarItemAppearance.normal.titleTextAttributes = [
                .foregroundColor: unselectedUIColor,
            ]
            tabBarItemAppearance.normal.badgeBackgroundColor = unselectedUIColor
        }

        tabBarAppearance.stackedLayoutAppearance = tabBarItemAppearance
        UITabBar.appearance().standardAppearance = tabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
    }
}

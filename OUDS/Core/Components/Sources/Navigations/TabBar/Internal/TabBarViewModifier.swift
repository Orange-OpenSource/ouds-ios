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

#if !os(macOS) && !os(watchOS) && !os(tvOS)

import OUDSFoundations
import OUDSThemesContract
import SwiftUI

/// Defines the look and feel the tab bar must have by applying the OUDS tokens.
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
/// In addition the badges colors will be the same and cannot be changed (except with token definition). These particular badges do not rely on ``OUDSBadge`` component.
///
@available(iOS 15, *)
struct TabBarViewModifier: ViewModifier {

    // MARK: Properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.verticalSizeClass) private var verticalSizeClass

    // MARK: Init

    init() {}

    // MARK: Body

    func body(content: Content) -> some View {
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
        #if os(visionOS)
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
        tabBarAppearance.backgroundEffect = UIBlurEffect(radius: themeToApply.bar.effectBgBlur)
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
        if #unavailable(iOS 26.0) { // No Liquid Glass
            let unselectedUIColor = themeToApply.bar.colorContentUnselectedEnabled.color(for: colorSchemeToApply).uiColor
            tabBarItemAppearance.normal.iconColor = unselectedUIColor
            tabBarItemAppearance.normal.titleTextAttributes = [
                .foregroundColor: unselectedUIColor,
                .font: normalFont,
            ]
        } else { // Liquid Glass
            tabBarItemAppearance.normal.titleTextAttributes = [
                .font: normalFont,
            ]
        }

        // MARK: Tab bar selected item
        if #available(iOS 26.0, *) { // Liquid Glass
            let selectedUIColor = themeToApply.colors.actionAccent.color(for: colorSchemeToApply).uiColor
            tabBarItemAppearance.selected.iconColor = selectedUIColor
            tabBarItemAppearance.selected.titleTextAttributes = [
                .foregroundColor: selectedUIColor,
                .font: selectedFont,
            ]
        } else { // No Liquid Glass
            let selectedUIColor = themeToApply.bar.colorContentSelectedEnabled.color(for: colorSchemeToApply).uiColor
            tabBarItemAppearance.selected.iconColor = selectedUIColor
            tabBarItemAppearance.selected.titleTextAttributes = [
                .foregroundColor: selectedUIColor,
                .font: selectedFont,
            ]
        }

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

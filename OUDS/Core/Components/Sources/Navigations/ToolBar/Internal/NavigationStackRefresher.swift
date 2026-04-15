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

#if !os(watchOS) && !os(tvOS) && !os(macOS)
import OUDSFoundations
import OUDSThemesContract
import SwiftUI

// swiftlint:disable cyclomatic_complexity
struct NavigationStackRefresher: ViewModifier {

    // MARK: - Properties

    private let hideBackButtonLabel: Bool

    @Environment(\.theme) private var theme: OUDSTheme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.oudsIsLiquidGlassDisabled) private var isLiquidGlassDisabled

    // MARK: - Initializer

    init(hideBackButtonLabel: Bool = true) {
        self.hideBackButtonLabel = hideBackButtonLabel
    }

    // MARK: - Body

    func body(content: Content) -> some View {
        #if !os(visionOS)
        content
            .onChange(of: theme) { newTheme in
                refreshAllNavigationBars(for: newTheme, with: colorScheme)
            }
            .onAppear {
                refreshAllNavigationBars(for: theme, with: colorScheme)
            }
            .onChange(of: colorScheme) { newColorScheme in
                refreshAllNavigationBars(for: theme, with: newColorScheme)
            }
        #else
        content
            .onChange(of: theme) { _, newTheme in
                refreshAllNavigationBars(for: newTheme, with: colorScheme)
            }
            .onAppear {
                refreshAllNavigationBars(for: theme, with: colorScheme)
            }
            .onChange(of: colorScheme) { _, newColorScheme in
                refreshAllNavigationBars(for: theme, with: newColorScheme)
            }
        #endif
    }

    // MARK: - Helpers

    private func refreshAllNavigationBars(for newTheme: OUDSTheme, with newColorScheme: ColorScheme) {
        DispatchQueue.main.async {
            // For the update of all visible navigation bars
            for scene in UIApplication.shared.connectedScenes {
                guard let windowScene = scene as? UIWindowScene else { continue }

                for window in windowScene.windows {
                    // Go accross the views hierarhcy to find the UINavigationBar
                    refreshNavigationBars(in: window, for: newTheme, with: newColorScheme)
                }
            }
        }
    }

    // swiftlint:disable function_body_length
    private func refreshNavigationBars(in view: UIView,
                                       for newTheme: OUDSTheme,
                                       with newColorScheme: ColorScheme)
    {
        let appearance = UINavigationBarAppearance()

        // Foreground color (ie.titles)
        let foregroundColor = newTheme.colors.contentDefault.color(for: newColorScheme).uiColor

        // Titles fonts
        var titleFont: UIFont?, largeTitleFont: UIFont?, subTitleFont: UIFont?, largeSubtitleFont: UIFont?
        if let fontFamily = newTheme.fontFamily {
            let titleFontName = kApplePostScriptFontNames[orKey: PSFNMK(fontFamily, Font.Weight.bold)]
            titleFont = UIFont(name: titleFontName, size: 17)

            let largeTitleFontName = kApplePostScriptFontNames[orKey: PSFNMK(fontFamily, Font.Weight.bold)]
            largeTitleFont = UIFont(name: largeTitleFontName, size: 34)
            subTitleFont = UIFont(name: titleFontName, size: 12)
            largeSubtitleFont = UIFont(name: titleFontName, size: 15)
        }

        // Titles appearance
        if let titleFont {
            appearance.titleTextAttributes = [.foregroundColor: foregroundColor, .font: titleFont]
        }
        if let largeTitleFont {
            appearance.largeTitleTextAttributes = [.foregroundColor: foregroundColor, .font: largeTitleFont]
        }

        #if !os(visionOS)
        if #available(iOS 26.0, *) {
            if let subTitleFont {
                appearance.subtitleTextAttributes = [.font: subTitleFont]
            }
            if let largeSubtitleFont {
                appearance.largeSubtitleTextAttributes = [.font: largeSubtitleFont]
            }
        }
        #endif

        // Back indicator

        let backImage = UIImage(named: "ic_link_previous", in: newTheme.resourcesBundle, with: .none)
        appearance.setBackIndicatorImage(backImage, transitionMaskImage: backImage)

        let backButtonAppearance = appearance.backButtonAppearance

        if hideBackButtonLabel {
            let titleTextAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.clear, .backgroundColor: UIColor.clear]
            backButtonAppearance.normal.titleTextAttributes = titleTextAttributes
            backButtonAppearance.disabled.titleTextAttributes = titleTextAttributes
            backButtonAppearance.focused.titleTextAttributes = titleTextAttributes
            backButtonAppearance.highlighted.titleTextAttributes = titleTextAttributes

            // Nos designers ont du talent
            // (╯°Д°)╯︵/(.□ . \)
            backButtonAppearance.normal.titlePositionAdjustment = .init(horizontal: -1_000, vertical: 0)
            backButtonAppearance.disabled.titlePositionAdjustment = .init(horizontal: -1_000, vertical: 0)
            backButtonAppearance.focused.titlePositionAdjustment = .init(horizontal: -1_000, vertical: 0)
            backButtonAppearance.highlighted.titlePositionAdjustment = .init(horizontal: -1_000, vertical: 0)
        } else if let titleFont {
            let enabledColor = newTheme.button.colorContentMinimalEnabled.color(for: newColorScheme).uiColor
            let disabledColor = newTheme.button.colorContentMinimalDisabled.color(for: newColorScheme).uiColor
            let focusedColor = newTheme.button.colorContentMinimalFocus.color(for: newColorScheme).uiColor
            let pressedColor = newTheme.button.colorContentMinimalPressed.color(for: newColorScheme).uiColor

            backButtonAppearance.normal.titleTextAttributes = [.foregroundColor: enabledColor, .font: titleFont]
            backButtonAppearance.disabled.titleTextAttributes = [.foregroundColor: disabledColor, .font: titleFont]
            backButtonAppearance.focused.titleTextAttributes = [.foregroundColor: focusedColor, .font: titleFont]
            backButtonAppearance.highlighted.titleTextAttributes = [.foregroundColor: pressedColor, .font: titleFont]
        }

        appearance.backButtonAppearance = backButtonAppearance

        // Background and tint colors

        if isLiquidGlassDisabled {
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = newTheme.bar.colorBgTranslucent.color(for: newColorScheme).uiColor
        }

        UINavigationBar.appearance().tintColor = newTheme.button.colorContentMinimalEnabled.color(for: newColorScheme).uiColor

        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance

        // If it's a navbar, refresh its appearance
        if let navBar = view as? UINavigationBar {
            // For update of appearance
            navBar.standardAppearance = UINavigationBar.appearance().standardAppearance
            navBar.compactAppearance = UINavigationBar.appearance().compactAppearance
            navBar.scrollEdgeAppearance = UINavigationBar.appearance().scrollEdgeAppearance
            navBar.compactScrollEdgeAppearance = UINavigationBar.appearance().compactScrollEdgeAppearance
            navBar.tintColor = UINavigationBar.appearance().tintColor

            // Force redraw
            navBar.setNeedsLayout()
            navBar.layoutIfNeeded()
        }

        // Continue on subviews
        for subview in view.subviews {
            refreshNavigationBars(in: subview, for: newTheme, with: newColorScheme)
        }
    }
    // swiftlint:enable function_body_length
}
// swiftlint:enable cyclomatic_complexity
#endif

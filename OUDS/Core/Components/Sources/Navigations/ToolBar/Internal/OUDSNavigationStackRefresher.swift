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

#if os(iOS)
import OUDSFoundations
import OUDSThemesContract
import SwiftUI

@available(iOS 15, macOS 13, visionOS 1, *)
struct OUDSNavigationStackRefresher: ViewModifier {

    // MARK: Properties

    private let hideBackButtonLabel: Bool
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.theme) private var theme: OUDSTheme

    // MARK: Initializer

    init(hideBackButtonLabel: Bool = true) {
        self.hideBackButtonLabel = hideBackButtonLabel
    }

    // MARK: Body

    func body(content: Content) -> some View {
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
    }

    // MARK: Private helpers

    private func refreshAllNavigationBars(for newTheme: OUDSTheme, with newColorScheme: ColorScheme) {
        DispatchQueue.main.async {
            // Forcer la mise à jour de toutes les navigation bars visibles
            for scene in UIApplication.shared.connectedScenes {
                guard let windowScene = scene as? UIWindowScene else { continue }

                for window in windowScene.windows {
                    // Parcourir la hiérarchie de vues pour trouver les UINavigationBar
                    refreshNavigationBars(in: window, for: newTheme, with: newColorScheme)
                }
            }
        }
    }

    private func refreshNavigationBars(in view: UIView, for newTheme: OUDSTheme, with newColorScheme: ColorScheme) {
        let appearance = UINavigationBarAppearance()

        // Foreground color (ie.titles)
        let foregroundColor = newTheme.colors.contentDefault.color(for: newColorScheme).uiColor

        // MARK: Titles fonts

        var titleFont: UIFont?, largeTitleFont: UIFont?, subTitleFont: UIFont?, largeSubtitleFont: UIFont?
        if let fontFamily = newTheme.fontFamily {
            let titleFontName = kApplePostScriptFontNames[orKey: PSFNMK(fontFamily, Font.Weight.regular)]
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

        if #available(iOS 26.0, *) {
            if let subTitleFont {
                appearance.subtitleTextAttributes = [.font: subTitleFont]
            }
            if let largeSubtitleFont {
                appearance.largeSubtitleTextAttributes = [.font: largeSubtitleFont]
            }
        }

        // MARK: Back indicator

        let backImage = UIImage(named: "ic_link_previous", in: newTheme.resourcesBundle, with: .none)
        appearance.setBackIndicatorImage(backImage, transitionMaskImage: backImage)

        let backButtonAppearance = appearance.backButtonAppearance

        if hideBackButtonLabel {
            let titleTextAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.clear, .backgroundColor: UIColor.clear]
            backButtonAppearance.normal.titleTextAttributes = titleTextAttributes
            backButtonAppearance.disabled.titleTextAttributes = titleTextAttributes
            backButtonAppearance.focused.titleTextAttributes = titleTextAttributes
            backButtonAppearance.highlighted.titleTextAttributes = titleTextAttributes

            backButtonAppearance.normal.titlePositionAdjustment = .init(horizontal: -1_000, vertical: 0)
            backButtonAppearance.disabled.titlePositionAdjustment = .init(horizontal: -1_000, vertical: 0)
            backButtonAppearance.focused.titlePositionAdjustment = .init(horizontal: -1_000, vertical: 0)
            backButtonAppearance.highlighted.titlePositionAdjustment = .init(horizontal: -1_000, vertical: 0)
        } else {
            if let titleFont {
                let enabledColor = newTheme.button.colorContentMinimalEnabled.color(for: newColorScheme).uiColor
                let disabledColor = newTheme.button.colorContentMinimalDisabled.color(for: newColorScheme).uiColor
                let focusedColor = newTheme.button.colorContentMinimalFocus.color(for: newColorScheme).uiColor
                let pressedColor = newTheme.button.colorContentMinimalPressed.color(for: newColorScheme).uiColor

                backButtonAppearance.normal.titleTextAttributes = [.foregroundColor: enabledColor, .font: titleFont]
                backButtonAppearance.disabled.titleTextAttributes = [.foregroundColor: disabledColor, .font: titleFont]
                backButtonAppearance.focused.titleTextAttributes = [.foregroundColor: focusedColor, .font: titleFont]
                backButtonAppearance.highlighted.titleTextAttributes = [.foregroundColor: pressedColor, .font: titleFont]
            }
        }

        appearance.backButtonAppearance = backButtonAppearance

        // MARK: Background and tint color

        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = newTheme.bar.colorBgTranslucent.color(for: newColorScheme).uiColor

        UINavigationBar.appearance().tintColor = newTheme.button.colorContentMinimalEnabled.color(for: newColorScheme).uiColor

        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance

        // If it's a navbar, refresh its appearance
        if let navBar = view as? UINavigationBar {
            // Forcer la mise à jour de l'apparence
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
}
#endif

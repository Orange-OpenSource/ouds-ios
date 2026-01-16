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
import SwiftUI

#if canImport(UIKit)
import UIKit
#endif

@available(iOS 15, macOS 15, visionOS 1, *)
struct ToolBarTopAppearanceModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    func body(content: Content) -> some View {
        content
            .onAppear {
                setupNavigationBarAppearance()
            }
        #if os(iOS)
            .onChange(of: colorScheme) { newColorScheme in
                setupNavigationBarAppearance(withColor: newColorScheme)
            }
            .onChange(of: theme) { newTheme in
                setupNavigationBarAppearance(withTheme: newTheme)
            }
        #endif
        #if os(visionOS)
        // Conflict between SwiftLint and SwiftFormat
        // swiftlint:disable closure_end_indentation
            .onChange(of: colorScheme) { _, newColorScheme in
                setupNavigationBarAppearance(withColor: newColorScheme)
        }
        .onChange(of: theme) { _, newTheme in
            setupNavigationBarAppearance(withTheme: newTheme)
        }
        // swiftlint:enable closure_end_indentation
        #endif
    }

    private func setupNavigationBarAppearance(withColor scheme: ColorScheme? = nil,
                                              withTheme theme: OUDSTheme? = nil)
    {
        #if os(iOS)
        if #available(iOS 26.0, *) {
            return
        }

        let schemeToApply = scheme ?? colorScheme
        let themeToApply = theme ?? self.theme
        let appearance = UINavigationBarAppearance()

        appearance.configureWithTransparentBackground()
        appearance.backgroundEffect = UIBlurEffect(style: .regular)
        appearance.backgroundColor = themeToApply.bar.colorBgTranslucent.color(for: schemeToApply).uiColor

        let titleColor = themeToApply.colors.contentDefault.color(for: schemeToApply).uiColor
        appearance.titleTextAttributes = [.foregroundColor: titleColor]
        appearance.largeTitleTextAttributes = [.foregroundColor: titleColor]

        let navigationBar = UINavigationBar.appearance()
        navigationBar.standardAppearance = appearance
        navigationBar.scrollEdgeAppearance = appearance
        navigationBar.compactAppearance = appearance

        DispatchQueue.main.async {
            updateExistingNavigationBars(with: appearance)
        }
        #endif
    }

    #if os(iOS)
    private func updateExistingNavigationBars(with appearance: UINavigationBarAppearance) {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else { return }

        for window in windowScene.windows {
            updateNavigationBars(in: window.rootViewController, with: appearance)
        }
    }

    private func updateNavigationBars(in viewController: UIViewController?, with appearance: UINavigationBarAppearance) {
        guard let viewController else { return }

        if let navigationController = viewController as? UINavigationController {
            navigationController.navigationBar.standardAppearance = appearance
            navigationController.navigationBar.scrollEdgeAppearance = appearance
            navigationController.navigationBar.compactAppearance = appearance

            navigationController.navigationBar.setNeedsLayout()
            navigationController.navigationBar.layoutIfNeeded()
        }

        for child in viewController.children {
            updateNavigationBars(in: child, with: appearance)
        }

        if let presented = viewController.presentedViewController {
            updateNavigationBars(in: presented, with: appearance)
        }
    }
    #endif
}

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
struct ToolBarBottomAppearanceModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    func body(content: Content) -> some View {
        content
            .onAppear {
                setupToolBarAppearance()
            }
        #if os(iOS)
            .onChange(of: colorScheme) { newColorScheme in
                setupToolBarAppearance(withColor: newColorScheme)
            }
            .onChange(of: theme) { newTheme in
                setupToolBarAppearance(withTheme: newTheme)
            }
        #endif
        #if os(visionOS)
        // Conflict between SwiftLint and SwiftFormat
        // swiftlint:disable closure_end_indentation
            .onChange(of: colorScheme) { _, newColorScheme in
                setupToolBarAppearance(withColor: newColorScheme)
        }
        .onChange(of: theme) { _, newTheme in
            setupToolBarAppearance(withTheme: newTheme)
        }
        // swiftlint:enable closure_end_indentation
        #endif
    }

    private func setupToolBarAppearance(withColor scheme: ColorScheme? = nil,
                                        withTheme theme: OUDSTheme? = nil)
    {
        #if os(iOS)
        if #available(iOS 26.0, *) {
            return
        }

        let schemeToApply = scheme ?? colorScheme
        let themeToApply = theme ?? self.theme
        let appearance = UIToolbarAppearance()

        appearance.configureWithTransparentBackground()
        appearance.backgroundEffect = UIBlurEffect(style: .regular)
        appearance.backgroundColor = themeToApply.bar.colorBgTranslucent.color(for: schemeToApply).uiColor

        let toolBar = UIToolbar.appearance()
        toolBar.standardAppearance = appearance
        toolBar.scrollEdgeAppearance = appearance

        DispatchQueue.main.async {
            updateExistingToolBars(with: appearance)
        }
        #endif
    }

    #if os(iOS)
    private func updateExistingToolBars(with appearance: UIToolbarAppearance) {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else { return }

        for window in windowScene.windows {
            updateToolBars(in: window.rootViewController, with: appearance)
        }
    }

    private func updateToolBars(in viewController: UIViewController?, with appearance: UIToolbarAppearance) {
        guard let viewController else { return }

        if let navigationController = viewController as? UINavigationController {
            navigationController.toolbar.standardAppearance = appearance
            navigationController.toolbar.scrollEdgeAppearance = appearance

            navigationController.toolbar.setNeedsLayout()
            navigationController.toolbar.layoutIfNeeded()
        }

        for child in viewController.children {
            updateToolBars(in: child, with: appearance)
        }

        if let presented = viewController.presentedViewController {
            updateToolBars(in: presented, with: appearance)
        }
    }
    #endif
}

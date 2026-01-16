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

#if !os(watchOS) && !os(tvOS)
import OUDSThemesContract
import SwiftUI
#if os(iOS)
import UIKit
#endif

/// Applies the background appearance for the top toolbar when Liquid Glass is not available.
@available(iOS 16, macOS 15, visionOS 1, *)
struct ToolBarTopAppearanceModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    func body(content: Content) -> some View {
        #if os(iOS)
        content
            .onAppear {
                setupAppearance(withColor: colorScheme)
            }
            .onChange(of: colorScheme) { newScheme in
                setupAppearance(withColor: newScheme)
            }
            .onChange(of: theme) { newTheme in
                setupAppearance(withColor: colorScheme, andTheme: newTheme)
            }
        #else
        content
        #endif
    }

    #if os(iOS)
    private func setupAppearance(withColor scheme: ColorScheme? = nil, andTheme forcedTheme: OUDSTheme? = nil) {
        guard #unavailable(iOS 26.0) else { return }

        let colorSchemeToApply = scheme ?? colorScheme
        let themeToApply = forcedTheme ?? theme

        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.backgroundEffect = UIBlurEffect(style: .regular)
        appearance.backgroundColor = themeToApply.bar.colorBgTranslucent.color(for: colorSchemeToApply).uiColor

        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    #endif
}

/// Applies the background appearance for the bottom toolbar when Liquid Glass is not available.
@available(iOS 16, macOS 15, visionOS 1, *)
struct ToolBarBottomAppearanceModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    func body(content: Content) -> some View {
        #if os(iOS)
        content
            .onAppear {
                setupAppearance(withColor: colorScheme)
            }
            .onChange(of: colorScheme) { newScheme in
                setupAppearance(withColor: newScheme)
            }
            .onChange(of: theme) { newTheme in
                setupAppearance(withColor: colorScheme, andTheme: newTheme)
            }
        #else
        content
        #endif
    }

    #if os(iOS)
    private func setupAppearance(withColor scheme: ColorScheme? = nil, andTheme forcedTheme: OUDSTheme? = nil) {
        guard #unavailable(iOS 26.0) else { return }

        let colorSchemeToApply = scheme ?? colorScheme
        let themeToApply = forcedTheme ?? theme

        let appearance = UIToolbarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.backgroundEffect = UIBlurEffect(style: .regular)
        appearance.backgroundColor = themeToApply.bar.colorBgTranslucent.color(for: colorSchemeToApply).uiColor

        UIToolbar.appearance().standardAppearance = appearance
        UIToolbar.appearance().scrollEdgeAppearance = appearance
    }
    #endif
}
#endif

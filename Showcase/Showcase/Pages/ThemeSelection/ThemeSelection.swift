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

import OUDSThemesSosh
import OUDSThemesOrange
import OUDS
import SwiftUI

extension OUDSTheme: Identifiable, Hashable {

    var name: String {
        if let orangeTheme = self as? OrangeTheme {
            return "Orange"
        }
        if let soshTheme = self as? SoshTheme {
            return "Sosh"
        }
        
        return String(describing: Self.self)
    }
    
    // MARK: Identifiable

    public var id: String {
        name
    }

    // MARK: Hashable

    public static func == (lhs: OUDSTheme, rhs: OUDSTheme) -> Bool {
        lhs.name == rhs.name
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}

/// Theme provider that proposes all supported themes for the demo application.
/// It also stores the current theme, selected by user.
final class ThemeProvider: ObservableObject {

    // =======================
    // MARK: Stored Properties
    // =======================
    @Published
    var currentTheme: OUDSTheme {
        didSet {
            if currentTheme.name != oldValue.name {
                hotSwitchWarningIndicator.showAlert = true
            }
            UserDefaults.standard.set(currentTheme.name, forKey: "themeName")
        }
    }

    var hotSwitchWarningIndicator: HotSwitchWarningIndicator
    let themes: [OUDSTheme]

    // ==================
    // MARK: Initializers
    // ==================

    init() {
        let orangeTheme = OrangeTheme()
        let soshTheme = SoshTheme()
        let defaultTheme = orangeTheme
        themes = [orangeTheme, soshTheme]

        if let themeName = UserDefaults.standard.value(forKey: "themeName") as? String,
           let theme = themes.first(where: { $0.name == themeName }) {
            currentTheme = theme
        } else {
            currentTheme = defaultTheme
        }

        hotSwitchWarningIndicator = HotSwitchWarningIndicator()
    }
}

extension View {
    func navigationbarMenuForThemeSelection() -> some View {
        toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                ThemeSelectionButton()
            }
        }
    }
}

// ==============================
// MARK: - Theme Selection Button
// ==============================

/// Button is added in navigation bar to allow, the user to change the current theme.
struct ThemeSelectionButton: View {

    // =======================
    // MARK: Stored properties
    // =======================

    @EnvironmentObject private var themeProvider: ThemeProvider
    @Environment(\.colorScheme) private var colorScheme

    // ==========
    // MARK: Body
    // ==========

    var body: some View {
        Menu {
            Picker(selection: $themeProvider.currentTheme, label: EmptyView()) {
                ForEach(themeProvider.themes, id: \.id) { theme in
                    Text(theme.name).tag(theme)
                }
            }
            .pickerStyle(.automatic)
        } label: {
            Image(systemName: "paintpalette")
        }
        .foregroundColor(themeProvider.currentTheme.colorContentBrandPrimary?.color(for: colorScheme))
//        .modifier(HotSwhitchIndicatorModifier(hotSwitchWarningIndicator: themeProvider.hotSwitchWarningIndicator))
    }
}

// ===========================
// MARK: - Hot Switch Warning
// ===========================

/// Will be removed when hot switch will be supported
final class HotSwitchWarningIndicator: ObservableObject {
    @Published var showAlert: Bool = false
}

struct HotSwhitchIndicatorModifier: ViewModifier {

    // =======================
    // MARK: Stored Properties
    // =======================

    @ObservedObject var hotSwitchWarningIndicator: HotSwitchWarningIndicator

    // ==================
    // MARK: Initializers
    // ==================

    init(hotSwitchWarningIndicator: HotSwitchWarningIndicator) {
        self.hotSwitchWarningIndicator = hotSwitchWarningIndicator
    }

    @ViewBuilder
    func body(content: Content) -> some View {
        content
            .alert("Warning", isPresented: $hotSwitchWarningIndicator.showAlert) {} message: {
                Text("You need to restart application to see design with new theme")
            }
    }
}

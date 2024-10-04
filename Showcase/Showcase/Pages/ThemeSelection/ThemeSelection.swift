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

import OUDS
import OUDSThemesInverse
import OUDSThemesOrange
import OUDSThemesSosh
import SwiftUI

// MARK: - Extension of OUDSTheme

/// Extension of the `OUDSTheme` to add both `Identifiable` and `Hashable`.
/// An `OUDSTheme` must be `Identifiable` to be enumerated like in `ForEach`(e.g. used to build the list of elements in picker).
/// It must be `Hashable` because it is used in a picker than need `Hashable` element.
extension OUDSTheme: Identifiable, Hashable {

    var name: String {
        if self is InverseTheme { // Is also an OrangeTheme, should be checked before
            return "Inverse"
        }

        if self is OrangeTheme {
            return "Orange"
        }

        if self is SoshTheme {
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

// MARK: - Theme Provider

/// Theme provider that proposes all supported themes for the demo application.
/// It also stores the current theme, selected by user.
final class ThemeProvider: ObservableObject {

    let themes: [OUDSTheme]

    @Published
    var currentTheme: OUDSTheme {
        didSet {
            UserDefaults.standard.set(currentTheme.name, forKey: "themeName")
        }
    }

    init() {
        let orangeTheme = OrangeTheme()
        let soshTheme = SoshTheme()
        let inverseTheme = InverseTheme()
        let defaultTheme = orangeTheme
        themes = [orangeTheme, soshTheme, inverseTheme]

        if let themeName = UserDefaults.standard.value(forKey: "themeName") as? String,
           let theme = themes.first(where: { $0.name == themeName }) {
            currentTheme = theme
        } else {
            currentTheme = defaultTheme
        }
    }
}

// MARK: - Theme Selection Button

extension View {

    /// To add a `ThemeSelectionButton` in the toolbar
    func navigationbarMenuForThemeSelection() -> some View {
        toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                ThemeSelectionButton()
            }
        }
    }
}

/// Button to make the user change the current theme.
struct ThemeSelectionButton: View {

    @EnvironmentObject private var themeProvider: ThemeProvider
    @Environment(\.colorScheme) private var colorScheme

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
    }
}

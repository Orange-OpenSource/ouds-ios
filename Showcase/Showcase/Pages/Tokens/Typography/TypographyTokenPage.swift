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
import OUDSTokensSemantic
import SwiftUI

// MARK: - Typography Token Page

struct TypographyTokenPage: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass

    /// A theme to force  for this `View` whatever the environnement `theme` is (for UI tests purposes)
    private let forcedTheme: OUDSTheme?
    /// A `ColorScheme` to force  for this `View` whatever the environnement `colorScheme` is (for UI tests purposes)
    private let forcedColorScheme: ColorScheme?
    /// A `HorizontalSizeClass` to force  for this `View` whatever the environnement `horizontalSizeClass` is (for UI tests purposes)
    private let forcedHorizontalSizeClass: UserInterfaceSizeClass?

    init(forceTo theme: OUDSTheme? = nil, colorScheme: ColorScheme? = nil, horizontalSizeClass: UserInterfaceSizeClass? = nil) {
        self.forcedTheme = theme
        self.forcedColorScheme = colorScheme
        self.forcedHorizontalSizeClass = horizontalSizeClass
    }

    /// Computed property for colorScheme
    /// Returns `forcedColorScheme` if available, otherwise falls back to the environment `colorScheme`
    /// If neither is available, the default system `colorScheme` will be applied.
    var activeColorScheme: ColorScheme {
        forcedColorScheme ?? colorScheme
    }

    /// Computed property for theme
    /// Returns `forcedTheme` if available, otherwise falls back to the environment `theme`
    /// If neither is available, the default `theme` will be applied.
    var activeTheme: OUDSTheme {
        forcedTheme ?? theme
    }

    /// Computed property for horizontalSizeClass
    /// Returns `forcedHorizontalSizeClass` if available, otherwise falls back to the environment `horizontalSizeClass`
    /// If neither is available, `.regular` is used as the default value.
    var activeHorizontalSizeClass: UserInterfaceSizeClass {
        forcedHorizontalSizeClass ?? horizontalSizeClass ?? .regular
    }

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedTypography.allCases, id: \.rawValue) { typographyName in
                illustration(from: typographyName)
            }
        }
        .padding(.horizontal, activeTheme.spaceFixedMedium)
        .navigationTitle(LocalizedStringKey("app_tokens_typography_label"))
    }

    // MARK: Helpers

    @ViewBuilder
    func illustration(from namedTypography: NamedTypography) -> some View {
        let token = namedTypography.token(from: activeTheme).typographyToken(for: activeHorizontalSizeClass)

        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            illustration(for: namedTypography, in: activeTheme)
                .foregroundStyle(activeTheme.colorContentDefault.color(for: activeColorScheme))

            Group {
                Text("family (\(activeTheme.customFontFamily ?? "system")), ")
                + Text("weight (\(token.weight)), ")
                + Text("size (\(token.size, specifier: "%.2f")), ")
                + Text("lineHeight (\(token.lineHeight, specifier: "%.2f")), ")
                + Text("letterSpacing \(token.letterSpacing, specifier: "%.2f"))")
            }
            .typeBodyDefaultMedium(activeTheme)
            .fixedSize(horizontal: false, vertical: true)
            .foregroundStyle(activeTheme.colorContentMuted.color(for: activeColorScheme))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.vertical, activeTheme.spaceFixedShorter)
        .accessibilityElement(children: .combine)
    }
}

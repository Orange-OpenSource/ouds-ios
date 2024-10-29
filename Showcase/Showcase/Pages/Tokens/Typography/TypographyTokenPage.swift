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

    /// A theme to force  for this 'View' whatever the environnement theme,  including the color scheme is (for UI tests purposes)
    private let forcedTheme: OUDSTheme?
    private let forcedColorScheme: ColorScheme?

    init(forceTo theme: OUDSTheme? = nil, colorScheme: ColorScheme? = nil) {
        self.forcedTheme = theme
        self.forcedColorScheme = colorScheme
    }

    // MARK: Body

    var body: some View {
        /// Move activeColorScheme here to ensure colorScheme is accessible (for UI tests purposes)
        let activeColorScheme = forcedColorScheme ?? colorScheme
        /// Move activeTheme here to ensure theme is accessible (for UI tests purposes)
        let activeTheme = forcedTheme ?? theme

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
    public func illustration(from namedTypography: NamedTypography) -> some View {
        /// Move activeColorScheme here to ensure colorScheme is accessible (for UI tests purposes)
        let activeColorScheme = forcedColorScheme ?? colorScheme
        /// Move activeTheme here to ensure theme is accessible (for UI tests purposes)
        let activeTheme = forcedTheme ?? theme

        let horizontalSizeClass = horizontalSizeClass ?? .regular
        let token = namedTypography.token(from: activeTheme).typographyToken(for: horizontalSizeClass)

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

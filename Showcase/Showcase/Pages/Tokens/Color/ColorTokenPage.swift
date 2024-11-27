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
import OUDSTokensRaw
import OUDSTokensSemantic
import SwiftUI

struct ColorTokenPage: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    /// A theme to force for this `View` whatever the environnement `theme` is (for UI tests purposes)
    private let forcedTheme: OUDSTheme?
    /// A `ColorScheme` to force for this `View` whatever the environnement `colorScheme` is (for UI tests purposes)
    private let forcedColorScheme: ColorScheme?

    init(forceTo theme: OUDSTheme? = nil, colorScheme: ColorScheme? = nil) {
        forcedTheme = theme
        forcedColorScheme = colorScheme
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

    // MARK: Body

    var body: some View {
        Group {
            Section { illustrationForBackground() } header: { header("Background") }
            Section { illustrationForAction() } header: { header("Action") }
            Section { illustrationForAlways() } header: { header("Always") }
            Section { illustrationForContent() } header: { header("Content") }
            Section { illustrationForBorder() } header: { header("Border") }
            Section { illustrationForeElevation() } header: { header("Elevation") }
            Section { illustrationForDecorative() } header: { header("Decorative") }
            Section { illustrationForChart() } header: { header("Chart") }
        }
        .padding(.horizontal, activeTheme.spaceFixedMedium)
    }

    // MARK: Private helpers

    private func header(_ text: String) -> some View {
        Text(text).showcaseSectionHeaderStyle()
    }

    private func illustrationForBackground() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedColor.Background.allCases, id: \.rawValue) { namedColorToken in
                illustration(for: namedColorToken.token(from: activeTheme), name: namedColorToken.rawValue)
            }
        }
    }

    private func illustrationForAction() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedColor.Action.allCases, id: \.rawValue) { namedColorToken in
                illustration(for: namedColorToken.token(from: activeTheme), name: namedColorToken.rawValue)
            }
        }
    }

    private func illustrationForAlways() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedColor.Always.allCases, id: \.rawValue) { namedColorToken in
                illustration(for: namedColorToken.token(from: activeTheme), name: namedColorToken.rawValue)
            }
        }
    }

    private func illustrationForChart() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedColor.Chart.allCases, id: \.rawValue) { namedColorToken in
                illustration(for: namedColorToken.token(from: activeTheme), name: namedColorToken.rawValue)
            }
        }
    }

    private func illustrationForBorder() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedColor.Border.allCases, id: \.rawValue) { namedColorToken in
                illustration(for: namedColorToken.token(from: activeTheme), name: namedColorToken.rawValue)
            }
        }
    }

    private func illustrationForContent() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedColor.Content.allCases, id: \.rawValue) { namedColorToken in
                illustration(for: namedColorToken.token(from: activeTheme), name: namedColorToken.rawValue)
            }
        }
    }

    private func illustrationForDecorative() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedColor.Decorative.allCases, id: \.rawValue) { namedColorToken in
                illustration(for: namedColorToken.token(from: activeTheme), name: namedColorToken.rawValue)
            }
        }
    }

    private func illustrationForeElevation() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedColor.Elevation.allCases, id: \.rawValue) { namedColorToken in
                illustration(for: namedColorToken.token(from: activeTheme), name: namedColorToken.rawValue)
            }
        }
    }

    // MARK: Common private helpers

    @ViewBuilder
    func illustration(for token: MultipleColorSemanticTokens, name: String) -> some View {
        let colorRawToken = activeColorScheme == .dark ? token.dark : token.light
        ShowcaseTokenIllustration(tokenName: name, tokenValue: colorRawToken, forceTo: activeTheme, colorScheme: activeColorScheme) {
            Rectangle()
                .fill(colorRawToken.color)
                .frame(width: 64, height: 64)
                .oudsBorder(style: activeTheme.borderStyleDefault,
                            width: activeTheme.borderWidthThin,
                            radius: activeTheme.borderRadiusNone,
                            color: activeTheme.colorBorderDefault)
        }
    }
}

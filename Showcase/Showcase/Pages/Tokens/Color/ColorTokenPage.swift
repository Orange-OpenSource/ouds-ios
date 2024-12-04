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

    // MARK: Body

    var body: some View {
        Group {
            Section {
                ShowcaseTokenCode(code: "theme.colorBgPrimary.color(for: colorScheme)")
            }
            Section { illustrationForBackground() } header: { header("Background") }
            Section { illustrationForAction() } header: { header("Action") }
            Section { illustrationForAlways() } header: { header("Always") }
            Section { illustrationForContent() } header: { header("Content") }
            Section { illustrationForTransparent() } header: { header("Transparent") }
            Section { illustrationForBorder() } header: { header("Border") }
            Section { illustrationForElevation() } header: { header("Elevation") }
            Section { illustrationForDecorative() } header: { header("Decorative") }
            Section { illustrationForChart() } header: { header("Chart") }
            Section { illustrationForGradient() } header: { header("Gradient") }
        }
        .padding(.horizontal, theme.spaceFixedMedium)
    }

    // MARK: Private helpers

    private func header(_ text: String) -> some View {
        Text(text).showcaseSectionHeaderStyle()
    }

    private func illustrationForBackground() -> some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedColor.Background.allCases, id: \.rawValue) { namedColorToken in
                Illustration(token: namedColorToken.token(from: theme), name: namedColorToken.rawValue)
            }
        }
    }

    private func illustrationForAction() -> some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedColor.Action.allCases, id: \.rawValue) { namedColorToken in
                Illustration(token: namedColorToken.token(from: theme), name: namedColorToken.rawValue)
            }
        }
    }

    private func illustrationForAlways() -> some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedColor.Always.allCases, id: \.rawValue) { namedColorToken in
                Illustration(token: namedColorToken.token(from: theme), name: namedColorToken.rawValue)
            }
        }
    }

    private func illustrationForChart() -> some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedColor.Chart.allCases, id: \.rawValue) { namedColorToken in
                Illustration(token: namedColorToken.token(from: theme), name: namedColorToken.rawValue)
            }
        }
    }

    private func illustrationForBorder() -> some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedColor.Border.allCases, id: \.rawValue) { namedColorToken in
                Illustration(token: namedColorToken.token(from: theme), name: namedColorToken.rawValue)
            }
        }
    }

    private func illustrationForContent() -> some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedColor.Content.allCases, id: \.rawValue) { namedColorToken in
                Illustration(token: namedColorToken.token(from: theme), name: namedColorToken.rawValue)
            }
        }
    }

    private func illustrationForTransparent() -> some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedColor.Transparent.allCases, id: \.rawValue) { namedColorToken in
                Illustration(token: namedColorToken.token(from: theme), name: namedColorToken.rawValue)
            }
        }
    }

    private func illustrationForDecorative() -> some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedColor.Decorative.allCases, id: \.rawValue) { namedColorToken in
                Illustration(token: namedColorToken.token(from: theme), name: namedColorToken.rawValue)
            }
        }
    }

    private func illustrationForElevation() -> some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedColor.Elevation.allCases, id: \.rawValue) { namedColorToken in
                Illustration(token: namedColorToken.token(from: theme), name: namedColorToken.rawValue)
            }
        }
    }

    private func illustrationForGradient() -> some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedColor.Gradient.allCases, id: \.rawValue) { namedColorToken in
                Illustration(token: namedColorToken.token(from: theme), name: namedColorToken.rawValue)
            }
        }
    }

    struct Illustration: View {

        @Environment(\.theme) private var theme
        @Environment(\.colorScheme) private var colorScheme

        var token: MultipleColorSemanticTokens
        var name: String

        var body: some View {
            let colorRawToken = colorScheme == .dark ? token.dark : token.light

            ShowcaseTokenIllustration(tokenName: name, tokenValue: colorRawToken) {
                Rectangle()
                    .fill(colorRawToken.color)
                    .frame(width: 64, height: 64)
                    .oudsBorder(
                        style: theme.borderStyleDefault,
                        width: theme.borderWidthThin,
                        radius: theme.borderRadiusNone,
                        color: theme.colorBorderDefault
                    )
            }
        }
    }
}

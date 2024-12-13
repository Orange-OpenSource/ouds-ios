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

// MARK: - Font Token Page

struct FontTokenPage: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            Section {
                ShowcaseCode(code: "theme.typeBodyStrongLarge(theme)")
            }

            Spacer()

            ForEach(NamedFont.allCases, id: \.rawValue) { fontName in
                IllustrationFont(namedFont: fontName)
            }
        }
        .padding(.horizontal, theme.spaceFixedMedium)
        .navigationTitle(LocalizedStringKey("app_tokens_typography_label"))
    }

    struct IllustrationFont: View {
        @Environment(\.theme) private var theme
        @Environment(\.colorScheme) private var colorScheme
        @Environment(\.horizontalSizeClass) private var horizontalSizeClass

        let namedFont: NamedFont

        var body: some View {
            let token = namedFont.token(from: theme).fontToken(for: horizontalSizeClass ?? .regular)

            VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
                illustration(for: namedFont, in: theme)
                    .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))

                Group {
                    Text("family (\(theme.customFontFamily ?? "system")), ")
                    + Text("weight (\(token.weight)), ")
                    + Text("size (\(token.size, specifier: "%.2f")), ")
                    + Text("lineHeight (\(token.lineHeight, specifier: "%.2f")), ")
                    + Text("letterSpacing (\(token.letterSpacing, specifier: "%.2f"))")
                }
                .typeBodyDefaultMedium(theme)
                .fixedSize(horizontal: false, vertical: true)
                .foregroundStyle(theme.colors.colorContentMuted.color(for: colorScheme))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.vertical, theme.spaceFixedShorter)
            .accessibilityElement(children: .combine)
        }
    }
}

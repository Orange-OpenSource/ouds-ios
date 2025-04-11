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

// MARK: - Font Token Page

struct FontTokenPage: View {

    @Environment(\.theme) private var theme

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedNone) {
            Section {
                DesignToolboxCode(code: "theme.typeBodyStrongLarge(theme)", titleText: "app_tokens_common_viewCodeExample_label")
            }

            Spacer()

            ForEach(NamedFont.allCases, id: \.rawValue) { fontName in
                IllustrationFont(namedFont: fontName)
            }
        }
        .padding(.horizontal, theme.spaces.spaceFixedMedium)
        .navigationTitle(LocalizedStringKey("app_tokens_typography_label"))
    }

    // MARK: - Illustration Font

    struct IllustrationFont: View {

        let namedFont: NamedFont

        private var token: FontCompositeRawToken {
            namedFont.token(from: theme).fontToken(for: horizontalSizeClass ?? .regular)
        }

        @Environment(\.theme) private var theme
        @Environment(\.horizontalSizeClass) private var horizontalSizeClass

        var body: some View {
            VStack(alignment: .leading, spacing: theme.spaces.spaceFixedNone) {
                illustration(for: namedFont, in: theme)
                    .oudsForegroundStyle(theme.colors.colorContentDefault)

                Group {
                    Text(familyText)
                    + Text(weightText)
                    + Text(sizeText)
                    + Text(lineHeightText)
                    + Text(letterSpacingText)
                }
                .typeBodyDefaultMedium(theme)
                .fixedSize(horizontal: false, vertical: true)
                .oudsForegroundStyle(theme.colors.colorContentMuted)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.vertical, theme.spaces.spaceFixedShorter)
            .accessibilityElement(children: .combine)
        }

        private var familyText: String {
            "app_tokens_typography_familyAttribute" <- "\(theme.fontFamily ?? "system")"
        }

        private var weightText: String {
            "app_tokens_typography_weightAttribute" <- token.weight
        }

        private var sizeText: String {
            "app_tokens_typography_sizeAttribute" <- token.size
        }

        private var lineHeightText: String {
            "app_tokens_typography_lineHeightAttribute" <- token.lineHeight
        }

        private var letterSpacingText: String {
            "app_tokens_typography_letterSpacingAttribute" <- token.letterSpacing
        }
    }
}

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

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedTypography.allCases, id: \.rawValue) { typographyName in
                illustration(from: typographyName)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, theme.spaceFixedMedium)
        .navigationTitle(LocalizedStringKey("app_tokens_typography_label"))
    }

    // MARK: Helpers

    @ViewBuilder
    private func illustration(from namedTypography: NamedTypography) -> some View {
        let token = namedTypography.token(from: theme).compact

        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            typgraphyIllustration(from: namedTypography)
                .foregroundStyle(theme.colorContentDefault.color(for: colorScheme))

            Group {
                Text("family (\(theme.customFontFamily ?? "system")), ")
                + Text("weight (\(token.weight)), ")
                + Text("size (\(token.size, specifier: "%.2f")), ")
                + Text("lineHeight (\(token.lineHeight, specifier: "%.2f")), ")
                + Text("letterSpacing \(token.letterSpacing, specifier: "%.2f"))")
            }
            .typeBodyDefaultMedium(theme)
            .fixedSize(horizontal: false, vertical: true)
            .foregroundStyle(theme.colorContentMuted.color(for: colorScheme))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.vertical, theme.spaceFixedShorter)
    }

    @ViewBuilder
    private func typgraphyIllustration(from namedTypography: NamedTypography) -> some View {
        switch namedTypography {
        case .displayLarge:
            Text(namedTypography.rawValue.camelCase).typeDisplayLarge(theme)
        case .displayMedium:
            Text(namedTypography.rawValue.camelCase).typeDisplayMedium(theme)
        case .displaySmall:
            Text(namedTypography.rawValue.camelCase).typeDisplaySmall(theme)
        case .headingXLarge:
            Text(namedTypography.rawValue.camelCase).typeHeadingXLarge(theme)
        case .headingLarge:
            Text(namedTypography.rawValue.camelCase).typeHeadingLarge(theme)
        case .headingMedium:
            Text(namedTypography.rawValue.camelCase).typeHeadingMedium(theme)
        case .headingSmall:
            Text(namedTypography.rawValue.camelCase).typeHeadingSmall(theme)
        case .bodyDefaultLarge:
            Text(namedTypography.rawValue.camelCase).typeBodyDefaultLarge(theme)
        case .bodyDefaultMedium:
            Text(namedTypography.rawValue.camelCase).typeBodyDefaultMedium(theme)
        case .bodyDefaultSmall:
            Text(namedTypography.rawValue.camelCase).typeBodyDefaultSmall(theme)
        case .bodyStrongLarge:
            Text(namedTypography.rawValue.camelCase).typeBodyStrongLarge(theme)
        case .bodyStrongMedium:
            Text(namedTypography.rawValue.camelCase).typeBodyStrongMedium(theme)
        case .bodyStrongSmall:
            Text(namedTypography.rawValue.camelCase).typeBodyStrongSmall(theme)
        case .labelDefaultXLarge:
            Text(namedTypography.rawValue.camelCase).typeLabelDefaultXLarge(theme)
        case .labelDefaultLarge:
            Text(namedTypography.rawValue.camelCase).typeLabelDefaultLarge(theme)
        case .labelDefaultMedium:
            Text(namedTypography.rawValue.camelCase).typeLabelDefaultMedium(theme)
        case .labelDefaultSmall:
            Text(namedTypography.rawValue.camelCase).typeLabelDefaultSmall(theme)
        case .labelStrongXLarge:
            Text(namedTypography.rawValue.camelCase).typeLabelStrongXLarge(theme)
        case .labelStrongLarge:
            Text(namedTypography.rawValue.camelCase).typeLabelStrongLarge(theme)
        case .labelStrongMedium:
            Text(namedTypography.rawValue.camelCase).typeLabelStrongMedium(theme)
        case .labelStrongSmall:
            Text(namedTypography.rawValue.camelCase).typeLabelStrongSmall(theme)
        case .codeSmall:
            Text(namedTypography.rawValue.camelCase).typeCodeMedium(theme)
        case .codeMedium:
            Text(namedTypography.rawValue.camelCase).typeCodeMedium(theme)
        }
    }
}

extension String {
    var camelCase: String {
        self.prefix(1).capitalized + self.dropFirst()
    }
}

// MARK: - Named Typography

private enum NamedTypography: String, CaseIterable {
    case displayLarge
    case displayMedium
    case displaySmall
    case headingXLarge
    case headingLarge
    case headingMedium
    case headingSmall
    case bodyDefaultLarge
    case bodyDefaultMedium
    case bodyDefaultSmall
    case bodyStrongLarge
    case bodyStrongMedium
    case bodyStrongSmall
    case labelDefaultXLarge
    case labelDefaultLarge
    case labelDefaultMedium
    case labelDefaultSmall
    case labelStrongXLarge
    case labelStrongLarge
    case labelStrongMedium
    case labelStrongSmall
    case codeMedium
    case codeSmall

    func token(from theme: OUDSTheme) -> MultipleTypographyTokens {
        switch self {
        case .displayLarge:
            return theme.typeDisplayLarge
        case .displayMedium:
            return theme.typeDisplayMedium
        case .displaySmall:
            return theme.typeDisplaySmall
        case .headingXLarge:
            return theme.typeHeadingXLarge
        case .headingLarge:
            return theme.typeHeadingLarge
        case .headingMedium:
            return theme.typeHeadingMedium
        case .headingSmall:
            return theme.typeHeadingSmall
        case .bodyDefaultLarge:
            return theme.typeBodyDefaultLarge
        case .bodyDefaultMedium:
            return theme.typeBodyDefaultMedium
        case .bodyDefaultSmall:
            return theme.typeBodyDefaultSmall
        case .bodyStrongLarge:
            return theme.typeBodyStrongLarge
        case .bodyStrongMedium:
            return theme.typeBodyStrongMedium
        case .bodyStrongSmall:
            return theme.typeBodyStrongSmall
        case .labelDefaultXLarge:
            return theme.typeLabelDefaultXLarge
        case .labelDefaultLarge:
            return theme.typeLabelDefaultLarge
        case .labelDefaultMedium:
            return theme.typeLabelDefaultMedium
        case .labelDefaultSmall:
            return theme.typeLabelDefaultSmall
        case .labelStrongXLarge:
            return theme.typeLabelStrongXLarge
        case .labelStrongLarge:
            return theme.typeLabelStrongLarge
        case .labelStrongMedium:
            return theme.typeLabelStrongMedium
        case .labelStrongSmall:
            return theme.typeLabelStrongSmall
        case .codeSmall:
            return theme.typeCodeSmall
        case .codeMedium:
            return theme.typeCodeMedium
        }
    }
}

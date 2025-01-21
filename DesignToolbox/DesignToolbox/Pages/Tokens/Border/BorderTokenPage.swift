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

struct BorderTokenPage: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
            Section {
                VStack(alignment: .leading, spacing: theme.spaces.spaceFixedNone) {
                    DesignToolboxCode(code: "theme.borders.borderWidthDefault", titleText: "app_tokens_common_viewCodeExample_label")
                }
            }
            Section {
                VStack(alignment: .leading, spacing: theme.spaces.spaceFixedNone) {
                    ForEach(NamedBorderWidth.allCases, id: \.rawValue) { namedWidth in
                        IllustrationWidth(namedWidth: namedWidth)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            } header: {
                Text("app_tokens_border_width_label")
                    .typeHeadingLarge(theme)
                    .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
            }

            Section {
                VStack(alignment: .leading, spacing: theme.spaces.spaceFixedNone) {
                    ForEach(NamedBorderRadius.allCases, id: \.rawValue) { namedRadius in
                        IllustrationRadius(namedRadius: namedRadius)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            } header: {
                Text("app_tokens_border_radius_label")
                    .typeHeadingLarge(theme)
                    .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
            }

            Section {
                VStack(alignment: .leading, spacing: theme.spaces.spaceFixedNone) {
                    ForEach(NamedBorderStyle.allCases, id: \.rawValue) { namedStyle in
                        IllustrationStyle(namedStyle: namedStyle)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            } header: {
                Text("app_tokens_border_style_label")
                    .typeHeadingLarge(theme)
                    .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
            }
        }
        .padding(.horizontal, theme.spaces.spaceFixedMedium)
    }

    struct RectangleBackground: View {
        @Environment(\.theme) private var theme
        @Environment(\.colorScheme) private var colorScheme

        var body: some View {
            Rectangle()
                .fill(theme.colors.colorBgSecondary.color(for: colorScheme))
                .frame(width: 64, height: 64)
        }
    }

    struct IllustrationWidth: View {
        @Environment(\.theme) private var theme

        let namedWidth: NamedBorderWidth

        var body: some View {
            let token = namedWidth.token(from: theme)
            let name = namedWidth.rawValue
            let value = String(format: "%.2f pt", token)

            DesignToolboxTokenIllustration(tokenName: name, tokenValue: value) {
                RectangleBackground()
                    .oudsBorder(style: theme.borders.borderStyleDefault,
                                width: token,
                                radius: theme.borders.borderRadiusNone,
                                color: theme.colors.colorBorderFocus)
            }
        }
    }

    struct IllustrationRadius: View {
        @Environment(\.theme) private var theme

        let namedRadius: NamedBorderRadius

        var body: some View {
            let token = namedRadius.token(from: theme)
            let name = namedRadius.rawValue
            let value = String(format: "%.2f pt", token)

            DesignToolboxTokenIllustration(tokenName: name, tokenValue: value) {
                RectangleBackground()
                    .oudsBorder(style: theme.borders.borderStyleDefault,
                                width: theme.borders.borderWidthDefault,
                                radius: token,
                                color: theme.colors.colorBorderFocus)
            }
        }
    }

    struct IllustrationStyle: View {
        @Environment(\.theme) private var theme

        let namedStyle: NamedBorderStyle

        var body: some View {
            let token = namedStyle.token(from: theme)
            let name = namedStyle.rawValue
            let value = token

            DesignToolboxTokenIllustration(tokenName: name, tokenValue: value) {
                RectangleBackground()
                    .oudsBorder(style: token,
                                width: theme.borders.borderWidthDefault,
                                radius: theme.borders.borderRadiusNone,
                                color: theme.colors.colorBorderFocus)
            }
        }
    }
}

enum NamedBorderRadius: String, CaseIterable {
    case borderRadiusNone
    case borderRadiusDefault
    case borderRadiusShort
    case borderRadiusMedium
    case borderRadiusTall

    func token(from theme: OUDSTheme) -> BorderRadiusSemanticToken {
        switch self {
        case .borderRadiusNone:
            return theme.borders.borderRadiusNone
        case .borderRadiusDefault:
            return theme.borders.borderRadiusDefault
        case .borderRadiusShort:
            return theme.borders.borderRadiusShort
        case .borderRadiusMedium:
            return theme.borders.borderRadiusMedium
        case .borderRadiusTall:
            return theme.borders.borderRadiusTall
        }
    }
}

enum NamedBorderWidth: String, CaseIterable {
    case borderWidthNone
    case borderWidthDefault
    case borderWidthThin
    case borderWidthMedium
    case borderWidthThick
    case borderWidthThicker
    case borderWidthFocus
    case borderWidthFocusInset

    func token(from theme: OUDSTheme) -> BorderWidthSemanticToken {
        switch self {
        case .borderWidthNone:
            return theme.borders.borderWidthNone
        case .borderWidthDefault:
            return theme.borders.borderWidthDefault
        case .borderWidthThin:
            return theme.borders.borderWidthThin
        case .borderWidthMedium:
            return theme.borders.borderWidthMedium
        case .borderWidthThick:
            return theme.borders.borderWidthThick
        case .borderWidthThicker:
            return theme.borders.borderWidthThicker
        case .borderWidthFocus:
            return theme.borders.borderWidthFocus
        case .borderWidthFocusInset:
            return theme.borders.borderWidthFocusInset
        }
    }
}

enum NamedBorderStyle: String, CaseIterable {
    case borderStyleDefault
    case borderStyleDrag

    func token(from theme: OUDSTheme) -> BorderStyleSemanticToken {
        switch self {
        case .borderStyleDefault:
            return theme.borders.borderStyleDefault
        case .borderStyleDrag:
            return theme.borders.borderStyleDrag
        }
    }
}

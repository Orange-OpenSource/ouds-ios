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
        VStack(alignment: .leading, spacing: theme.spaceFixedMedium) {
            Section {
                VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
                    ShowcaseTokenCode(code: "theme.borderWidthDefault")
                }
            }
            Section {
                VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
                    ForEach(NamedBorderWidth.allCases, id: \.rawValue) { namedWidth in
                        IllustrationWidth(namedWidth: namedWidth)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            } header: {
                Text("app_tokens_border_width_label")
                    .typeHeadingLarge(theme)
                    .foregroundStyle(theme.colorContentDefault.color(for: colorScheme))
            }

            Section {
                VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
                    ForEach(NamedBorderRadius.allCases, id: \.rawValue) { namedRadius in
                        IllustrationRadius(namedRadius: namedRadius)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            } header: {
                Text("app_tokens_border_radius_label")
                    .typeHeadingLarge(theme)
                    .foregroundStyle(theme.colorContentDefault.color(for: colorScheme))
            }

            Section {
                VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
                    ForEach(NamedBorderStyle.allCases, id: \.rawValue) { namedStyle in
                        IllustrationStyle(namedStyle: namedStyle)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            } header: {
                Text("app_tokens_border_style_label")
                    .typeHeadingLarge(theme)
                    .foregroundStyle(theme.colorContentDefault.color(for: colorScheme))
            }
        }
        .padding(.horizontal, theme.spaceFixedMedium)
    }

    struct RectangleBackground: View {
        @Environment(\.theme) private var theme
        @Environment(\.colorScheme) private var colorScheme

        var body: some View {
            Rectangle()
                .fill(theme.colorBgSecondary.color(for: colorScheme))
                .frame(width: 64, height: 64)
        }
    }

    struct IllustrationWidth: View {
        @Environment(\.theme) private var theme
        @Environment(\.colorScheme) private var colorScheme

        let namedWidth: NamedBorderWidth

        var body: some View {
            let token = namedWidth.token(from: theme)
            let name = namedWidth.rawValue
            let value = String(format: "(%.0f) pt", token)

            ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                RectangleBackground()
                    .oudsBorder(style: theme.borderStyleDefault,
                                width: token,
                                radius: theme.borderRadiusNone,
                                color: theme.colorBorderDefault)
            }
        }
    }

    struct IllustrationRadius: View {
        @Environment(\.theme) private var theme
        @Environment(\.colorScheme) private var colorScheme

        let namedRadius: NamedBorderRadius

        var body: some View {
            let token = namedRadius.token(from: theme)
            let name = namedRadius.rawValue
            let value = String(format: "(%.0f) pt", token)

            ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                RectangleBackground()
                    .oudsBorder(style: theme.borderStyleDefault,
                                width: theme.borderWidthDefault,
                                radius: token,
                                color: theme.colorBorderDefault)
            }
        }
    }

    struct IllustrationStyle: View {
        @Environment(\.theme) private var theme
        @Environment(\.colorScheme) private var colorScheme

        let namedStyle: NamedBorderStyle

        var body: some View {
            let token = namedStyle.token(from: theme)
            let name = namedStyle.rawValue
            let value = token

            ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                RectangleBackground()
                    .oudsBorder(style: token,
                                width: theme.borderWidthDefault,
                                radius: theme.borderRadiusNone,
                                color: theme.colorBorderDefault)
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
            return theme.borderRadiusNone
        case .borderRadiusDefault:
            return theme.borderRadiusDefault
        case .borderRadiusShort:
            return theme.borderRadiusShort
        case .borderRadiusMedium:
            return theme.borderRadiusMedium
        case .borderRadiusTall:
            return theme.borderRadiusTall
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
            return theme.borderWidthNone
        case .borderWidthDefault:
            return theme.borderWidthDefault
        case .borderWidthThin:
            return theme.borderWidthThin
        case .borderWidthMedium:
            return theme.borderWidthMedium
        case .borderWidthThick:
            return theme.borderWidthThick
        case .borderWidthThicker:
            return theme.borderWidthThicker
        case .borderWidthFocus:
            return theme.borderWidthFocus
        case .borderWidthFocusInset:
            return theme.borderWidthFocusInset
        }
    }
}

enum NamedBorderStyle: String, CaseIterable {
    case borderStyleDefault
    case borderStyleDrag

    func token(from theme: OUDSTheme) -> BorderStyleSemanticToken {
        switch self {
        case .borderStyleDefault:
            return theme.borderStyleDefault
        case .borderStyleDrag:
            return theme.borderStyleDrag
        }
    }
}

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

import SwiftUI
import OUDS
import OUDSTokensSemantic
import OUDSComponents // for BorderStyleModifier

// Remark: do we need to keep BorderStyleModifier in OUDSComponent or move it to OUDS or OUDSSementicToken ?

struct BorderTokenPage: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedMedium) {
            Section {
                VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
                    ForEach(NamedBoderWidth.allCases, id: \.rawValue) { namedWidth in
                        illustration(for: namedWidth)
                    }
                }
            } header: {
                Text("Width")
                    .typeHeadingLarge(theme)
                    .foregroundStyle((theme.colorContentDefault?.color(for: colorScheme))!)
            }

            Section {
                VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
                    ForEach(NamedBorderRadius.allCases, id: \.rawValue) { namedRadius in
                        illustration(for: namedRadius)
                    }
                }
            } header: {
                Text("Radius")
                    .typeHeadingLarge(theme)
                    .foregroundStyle((theme.colorContentDefault?.color(for: colorScheme))!)
            }

            Section {
                VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
                    ForEach(NamedBorderStyle.allCases, id: \.rawValue) { namedStyle in
                        illustration(for: namedStyle)
                    }
                }
            } header: {
                Text("Style")
                    .typeHeadingLarge(theme)
                    .foregroundStyle((theme.colorContentDefault?.color(for: colorScheme))!)
            }
        }
        .padding(.horizontal, theme.spaceFixedMedium)
    }

    // MARK: Private helpers

    private var rectangle: some View {
        Rectangle()
            .fill(theme.colorBackgroundDefaultSecondary?.color(for: colorScheme) ?? Color(UIColor.systemGroupedBackground))
            .frame(width: 64, height: 64)
    }

    private func illustration(for namedWidth: NamedBoderWidth) -> some View {
        let token = namedWidth.token(from: theme)
        let name = namedWidth.rawValue
        let value = String(format: "(%.0f) pt", token)

        return ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
            rectangle
                .oudsBorder(style: theme.borderStyleDefault,
                            width: token,
                            radius: theme.borderRadiusNone,
                            color: theme.colorBorderDefault!)
        }
    }

    private func illustration(for namedRadius: NamedBorderRadius) -> some View {
        let token = namedRadius.token(from: theme)
        let name = namedRadius.rawValue
        let value = String(format: "(%.0f) pt", token)

        return ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
            rectangle
                .oudsBorder(style: theme.borderStyleDefault,
                            width: theme.borderWidthDefault,
                            radius: token,
                            color: theme.colorBorderDefault!)
        }
    }

    private func illustration(for namedStyle: NamedBorderStyle) -> some View {
        let token = namedStyle.token(from: theme)
        let name = namedStyle.rawValue
        let value = token

        return ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
            rectangle
                .oudsBorder(style: token,
                            width: theme.borderWidthDefault,
                            radius: theme.borderRadiusNone,
                            color: theme.colorBorderDefault!)
        }
    }
}

private enum NamedBorderRadius: String, CaseIterable {
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

private enum NamedBoderWidth: String, CaseIterable {

    case borderWidthNone
    case borderWidthDefault
    case borderWidthThin
    case borderWidthMedium
    case borderWidthThick
    case borderWidthThicker
    case borderWidthOutsideFocus

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
        case .borderWidthOutsideFocus:
            return theme.borderWidthOutsideFocus
        }
    }
}

private enum NamedBorderStyle: String, CaseIterable {
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

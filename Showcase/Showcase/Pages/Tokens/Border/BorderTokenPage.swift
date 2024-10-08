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
        VStack(alignment: .center, spacing: theme.spaceFixedMedium) {
            groupOfIllustrations(name: "Width") {
                ForEach(Width.allCases, id: \.rawValue) { width in
                    let token = width.token(from: theme)

                    illustration(width: token,
                                 radius: theme.borderRadiusNone,
                                 style: theme.borderStyleDefault,
                                 name: width.rawValue,
                                 value: token)
                }
            }

            groupOfIllustrations(name: "Radius") {
                ForEach(Radius.allCases, id: \.rawValue) { radius in
                    let token = radius.token(from: theme)
                    illustration(width: theme.borderWidthDefault,
                                 radius: token,
                                 style: theme.borderStyleDefault,
                                 name: radius.rawValue,
                                 value: token)
                }
            }

            groupOfIllustrations(name: "Style") {
                illustration(width: theme.borderWidthMedium,
                             radius: theme.borderRadiusNone,
                             style: theme.borderStyleDefault,
                             name: "borderStyleDefault")
                illustration(width: theme.borderWidthMedium,
                             radius: theme.borderRadiusNone,
                             style: theme.borderStyleDrag,
                             name: "borderStyleDrag")
            }
        }
        .padding(.horizontal, theme.spaceFixedMedium)
    }

    // MARK: Private helpers

    @ViewBuilder
    private func groupOfIllustrations<Illustration> (name: String, @ViewBuilder illustrations: () -> Illustration) -> some View where Illustration: View {
        VStack(alignment: .leading, spacing: theme.spaceFixedShorter) {
            Text(name).typeHeadingLarge(theme)

            VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
                illustrations()
            }
        }
    }

    private func illustration(
        width: BorderWidthSemanticToken,
        radius: BorderRadiusSemanticToken,
        style: BorderStyleSemanticToken,
        name: String,
        value: Double? = nil) -> some View {
        HStack(alignment: .center, spacing: theme.spaceFixedMedium) {

            Rectangle()
                .fill(theme.colorBackgroundDefaultSecondary?.color(for: colorScheme) ?? Color(UIColor.systemGroupedBackground))
                .frame(width: 64, height: 64)
                .oudsBorder(style: style,
                            width: width,
                            radius: radius,
                            color: theme.colorBorderDefault!)

            VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
                Text(name).bold()
                if let value {
                    Text("\(value, specifier: "%.1f")")
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.vertical, theme.spaceFixedShorter)
    }
}

private enum Radius: String, CaseIterable {
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

private enum Width: String, CaseIterable {

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

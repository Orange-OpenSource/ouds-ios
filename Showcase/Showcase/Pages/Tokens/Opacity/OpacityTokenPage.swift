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
import OUDSComponents // for BorderStyleModifier
import OUDSTokensSemantic
import SwiftUI

// MARK: - Opacity Token Page

struct OpacityTokenPage: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedOpacity.allCases, id: \.rawValue) { opmacityName in
                illustration(for: opmacityName)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, theme.spaceFixedMedium)
    }

    // MARK: Helpers

    private func illustration(for opacityName: NamedOpacity) -> some View {
        illustration(for: opacityName.token(from: theme), named: opacityName.rawValue)
    }

    private func illustration(for opacityToken: OpacitySemanticToken, named name: String) -> some View {
        HStack(alignment: .center, spacing: theme.spaceFixedMedium) {
            ZStack {
                Image("ic_union")
                    .resizable()
                    .frame(width: 44, height: 44)

                Rectangle().fill(colorScheme == .dark ? .white : .black)
                    .opacity(opacityToken)
                    .frame(width: 44, height: 44)
                    .oudsBorder(style: theme.borderStyleDefault,
                                width: theme.borderWidthThin,
                                radius: theme.borderRadiusNone,
                                color: theme.colorContentDefault!)
                    .transformEffect(CGAffineTransform(translationX: 10, y: 10))
            }
            .frame(width: 54, height: 54, alignment: .leading)

            VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
                Text(name).bold()
                Text("\(opacityToken, specifier: "%.2f")")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.vertical, theme.spaceFixedShorter)
    }
}

// MARK: - Named Opacity

private enum NamedOpacity: String, CaseIterable {
    case opacityTransparent
    case opacityWeaker
    case opacityWeak
    case opacityMedium
    case opacityStrong
    case opacityOpaque

    func token(from theme: OUDSTheme) -> OpacitySemanticToken {
        switch self {
        case .opacityTransparent:
            return theme.opacityTransparent
        case .opacityWeaker:
            return theme.opacityWeaker
        case .opacityWeak:
            return theme.opacityWeak
        case .opacityMedium:
            return theme.opacityMedium
        case .opacityStrong:
            return theme.opacityStrong
        case .opacityOpaque:
            return theme.opacityOpaque
        }
    }
}

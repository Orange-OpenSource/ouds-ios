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
import OUDSComponents
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
        let token = opacityName.token(from: theme)
        let name = opacityName.rawValue
        let value = String(format: "%.2f", token)

        return ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
            ZStack {
                Image("ic_union")
                    .resizable()
                    .frame(width: 44, height: 44)
                    .accessibilityHidden(true)

                Rectangle()
                    .fill(theme.colorContentDefault.color(for: colorScheme))
                    .opacity(token)
                    .frame(width: 44, height: 44)
                    .modifier(ExtraBorderModifier(namedOpacity: opacityName))
                    .transformEffect(CGAffineTransform(translationX: 10, y: 10))
            }
            .frame(width: 54, height: 54, alignment: .leading)
        }
    }
}

// MARK: - Extra border modifier

// Add a border for transparent token
private struct ExtraBorderModifier: ViewModifier {

    @Environment(\.theme) private var theme
    let namedOpacity: NamedOpacity

    func body(content: Content) -> some View {
        if namedOpacity == .opacityTransparent {
            content.oudsBorder(style: theme.borderStyleDefault,
                               width: theme.borderWidthThin,
                               radius: theme.borderRadiusNone,
                               color: theme.colorContentDefault)
        } else {
            content
        }
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

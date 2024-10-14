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

// TODO: Check if we can get rid of colors alaises tokens to avoid handling optional values
// swiftlint:disable force_unwrapping

struct SizingTokenPage: View {

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedSizing.allCases, id: \.rawValue) { sizingName in
                illustration(for: sizingName)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, theme.spaceFixedMedium)
    }

    // MARK: Private helpers

    private func illustration(for namedSizing: NamedSizing) -> some View {
        let token = namedSizing.token(from: theme)
        let name = namedSizing.rawValue
        let value = String(format: "(%.0f) pt", token)

        return ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
            ZStack {
                Rectangle()
                    .fill((theme.colorBackgroundEmphasizedPrimary?.color(for: colorScheme))!)
                    .frame(width: 82, height: 82, alignment: .center)

                Image("ic_token")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(.blue)
                //                    .foregroundColor((theme.colorBackgroundStatusAttractiveEmphasized?.color(for: colorScheme))!) // TODO: Update when color is available
                    .frame(width: token, height: token, alignment: .center)
                    .accessibilityHidden(true)
            }
        }
    }
}

// swiftlint:enable force_unwrapping

// MARK: - Named Spacing

private enum NamedSizing: String, CaseIterable {
    case sizeIconDecorativeShortest
    case sizeIconDecorativeShorter
    case sizeIconDecorativeShort
    case sizeIconDecorativeMedium
    case sizeIconDecorativeTall
    case sizeIconDecorativeTaller
    case sizeIconDecorativeTallest

    func token(from theme: OUDSTheme) -> SizingSemanticToken {
        switch self {
        case .sizeIconDecorativeShortest:
            return theme.sizeIconDecorativeShortest
        case .sizeIconDecorativeShorter:
            return theme.sizeIconDecorativeShorter
        case .sizeIconDecorativeShort:
            return theme.sizeIconDecorativeShort
        case .sizeIconDecorativeMedium:
            return theme.sizeIconDecorativeMedium
        case .sizeIconDecorativeTall:
            return theme.sizeIconDecorativeTall
        case .sizeIconDecorativeTaller:
            return theme.sizeIconDecorativeTaller
        case .sizeIconDecorativeTallest:
            return theme.sizeIconDecorativeTallest
        }
    }
}

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

    private func illustration(for sizingName: NamedSizing) -> some View {
        illustration(for: sizingName.token(from: theme), named: sizingName.rawValue)
    }

    private func illustration(for sizingSementicToken: SizingSemanticToken, named: String) -> some View {
        HStack(alignment: .center, spacing: theme.spaceFixedMedium) {
            ZStack {
                Rectangle()
                    .fill((theme.colorBackgroundEmphasizedPrimary?.color(for: colorScheme))!)
                    .frame(width: 82, height: 82, alignment: .center)

                Image("ic_token")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(.blue)
                //                    .foregroundColor((theme.colorBackgroundStatusAttractiveEmphasized?.color(for: colorScheme))!) // TODO: Update when color is available
                    .frame(width: sizingSementicToken, height: sizingSementicToken, alignment: .center)
            }

            VStack(alignment: .leading) {
                Text(named).typeBodyStrongLarge(theme)
                Text("(\(sizingSementicToken, specifier: "%.0f")) pt")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(theme.colorContentDefault?.color(for: colorScheme))
        }
        .padding(.vertical, theme.spaceFixedShorter)
    }
}

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

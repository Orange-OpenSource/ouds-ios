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

struct SpacingTokenPage: View {

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedSpacing.allCases, id: \.rawValue) { spacingName in
                illustration(for: spacingName)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, theme.spaceFixedMedium)
    }

    // MARK: Private helpers

    private func illustration(for spacingName: NamedSpacing) -> some View {
        illustration(for: spacingName.token(from: theme), named: spacingName.rawValue)
    }

    private func illustration(for spacingSementicToken: MultipleSpacingTokens, named: String) -> some View {

        let horizontalDimensionRawToken = spacingSementicToken.dimension(for: horizontalSizeClass ?? .regular)
        let verticalDimensionRawToken = spacingSementicToken.dimension(for: verticalSizeClass ?? .regular)
        return HStack(alignment: .center, spacing: theme.spaceFixedMedium) {
            ZStack {
                Rectangle()
                    .fill((theme.colorBackgroundEmphasizedPrimary?.color(for: colorScheme))!)
                    .frame(width: 64, height: 64, alignment: .center)
                Rectangle()
//                    .fill((theme.colorBackgroundStatusAttractiveEmphasized?.color(for: colorScheme))!) // TODO: Update when color is available
                    .fill(.blue)
                    .frame(width: horizontalDimensionRawToken, height: 64, alignment: .center)
/* TODO: Do we need to show the vertical spacing like this
                Rectangle()
//                    .fill((theme.colorBackgroundStatusAttractiveEmphasized?.color(for: colorScheme))!) // TODO Update when color is available
                    .fill(.yellow)
                    .frame(width: 64, height: verticalDimensionRawToken, alignment: .center)
*/
            }
            VStack(alignment: .leading) {
                Text(named).typeBodyStrongLarge(theme)
                Text("horizontal \(horizontalSizeClass == .regular ? "regular" : "compact") \(horizontalDimensionRawToken, specifier: "%.0f") pt")
                Text("vertical \(verticalSizeClass == .regular ? "regular" : "compact") \(verticalDimensionRawToken, specifier: "%.0f") pt")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(theme.colorContentDefault?.color(for: colorScheme))
        }
        .padding(.vertical, theme.spaceFixedShorter)
    }
}

// MARK: - Named Spacing

private enum NamedSpacing: String, CaseIterable {
    case spaceScaledNone
    case spaceScaledSmash
    case spaceScaledShortest
    case spaceScaledShorter
    case spaceScaledShort
    case spaceScaledMedium
    case spaceScaledTall
    case spaceScaledTaller
    case spaceScaledTallest
    case spaceScaledSpacious

    func token(from theme: OUDSTheme) -> MultipleSpacingTokens {
        switch self {
        case .spaceScaledNone:
            return theme.spaceScaledNone
        case .spaceScaledSmash:
            return theme.spaceScaledSmash
        case .spaceScaledShortest:
            return theme.spaceScaledShortest
        case .spaceScaledShorter:
            return theme.spaceScaledShorter
        case .spaceScaledShort:
            return theme.spaceScaledShort
        case .spaceScaledMedium:
            return theme.spaceScaledMedium
        case .spaceScaledTall:
            return theme.spaceScaledTall
        case .spaceScaledTaller:
            return theme.spaceScaledTaller
        case .spaceScaledTallest:
            return theme.spaceScaledTallest
        case .spaceScaledSpacious:
            return theme.spaceScaledSpacious
        }
    }
}

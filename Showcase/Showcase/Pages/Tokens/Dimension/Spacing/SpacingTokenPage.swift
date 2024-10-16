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

    private func illustration(for namedSpacing: NamedSpacing) -> some View {
        let token = namedSpacing.token(from: theme)
        let name = namedSpacing.rawValue
        let horizontalDimensionRawToken = token.dimension(for: horizontalSizeClass ?? .regular)
        let value = String(format: "horizontal %@\n %.0f pt",
                           horizontalSizeClass == .regular ? "regular" : "compact",
                           horizontalDimensionRawToken)

        return ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
            ZStack {
                Rectangle()
                    .fill((theme.colorAlwaysOnBackgroundAccent.color(for: colorScheme)))
                    .frame(width: 64, height: 64, alignment: .center)
                Rectangle()
                //                    .fill((theme.colorBackgroundStatusAttractiveEmphasized?.color(for: colorScheme))!) // TODO: Update when color is available
                    .fill(.blue)
                    .frame(width: horizontalDimensionRawToken, height: 64, alignment: .center)
            }
        }
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

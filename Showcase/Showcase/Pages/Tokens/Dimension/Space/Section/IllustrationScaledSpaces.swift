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
import OUDSTokensRaw
import OUDSTokensSemantic
import SwiftUI

// MARK: - Internal constants

private let kIillustrationHeight = 72.0
private let kIllustrationWidth = 72.0

// MARK: - Scaled

struct IllustrationForScaledSpaces: View {
    @Environment(\.theme) private var theme

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedSpace.Scaled.allCases, id: \.rawValue) { namedSpaceToken in
                IllustrationScaled(namedSpaceToken: namedSpaceToken)
            }
        }
    }
}

struct IllustrationScaled: View {
    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    @Environment(\.colorScheme) private var colorScheme

    let namedSpaceToken: NamedSpace.Scaled

    var body: some View {
        let token = namedSpaceToken.token(from: theme)
        let name = namedSpaceToken.rawValue
        let horizontalDimensionRawToken = token.dimension(for: horizontalSizeClass ?? .regular)
        let verticalDimensionRawToken = token.dimension(for: verticalSizeClass ?? .compact)

        let value = String(format: "horizontal %@ (%.0f pt)\nvertical %@ (%.0f pt)",
                           horizontalSizeClass == .regular ? "regular" : "compact",
                           horizontalDimensionRawToken,
                           verticalSizeClass == .regular ? "regular" : "compact",
                           verticalDimensionRawToken)

        ShowcaseTokenIllustration(tokenName: name, tokenValue: value, forceTo: theme, colorScheme: colorScheme) {
            ZStack {
                Rectangle()
                    .fill(theme.colorBgEmphasized.color(for: colorScheme))
                    .frame(width: kIllustrationWidth, height: kIillustrationHeight, alignment: .center)
                Rectangle()
                    .fill(theme.colorAlwaysInfo.color(for: colorScheme))
                    .opacity(0.5)
                    .frame(width: horizontalDimensionRawToken, height: kIillustrationHeight, alignment: .center)

                Rectangle()
                    .fill(theme.colorAlwaysInfo.color(for: colorScheme))
                    .opacity(0.5)
                    .frame(width: kIllustrationWidth, height: verticalDimensionRawToken, alignment: .center)
            }
        }
    }
}

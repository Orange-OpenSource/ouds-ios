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

struct GridTokenPage: View {

    @Environment(\.theme) private var theme
    @Environment(\.oudsHorizontalUserInterfaceSizeClass) private var oudsHorizontalSizeClass
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedMedium) {
            Image(decorative: "il_tokens_grid_column_margin")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .background(theme.colorBgEmphasized.color(for: colorScheme))
            Image(decorative: "il_tokens_grid_min_width")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .background(theme.colorBgEmphasized.color(for: colorScheme))
            Image(decorative: "il_tokens_grid_max_width")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .background(theme.colorBgEmphasized.color(for: colorScheme))

            Section { illustrationForGridTokens() } header: {
                Text(oudsHorizontalSizeClass.rawValue)
                    .showcaseSectionHeaderStyle()
            }
        }
        .padding(.horizontal, theme.spaceFixedMedium)
    }

    // MARK: Private helpers

    private func illustrationForGridTokens() -> some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedGrid.allCases, id: \.rawValue) { namedGrid in
                illustration(for: namedGrid)
            }
        }
    }

    private func illustration(for namedGrid: NamedGrid) -> some View {
        let token = namedGrid.token(from: theme, for: oudsHorizontalSizeClass)
        let name = namedGrid.rawValue
        let value = String(format: "(%.0f) pt", token)

        return ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
            EmptyView()
        }
    }
}

private enum NamedGrid: String, CaseIterable {
    case gridMinWidth
    case gridMaxWidth
    case gridMargin
    case gridColumnGap
    case gridColumnCount

    @MainActor
    func token(from theme: OUDSTheme, for oudsUerInterfaceSizeClass: OUDSUserInterfaceSizeClass) -> GridRawToken {
        switch self {
        case .gridMinWidth:
            return theme.gridMinWidth(for: oudsUerInterfaceSizeClass)
        case .gridMaxWidth:
            return theme.gridMaxWidth(for: oudsUerInterfaceSizeClass)
        case .gridMargin:
            return theme.gridMargin(for: oudsUerInterfaceSizeClass)
        case .gridColumnGap:
            return theme.gridColumnGap(for: oudsUerInterfaceSizeClass)
        case .gridColumnCount:
            return theme.gridColumnCount(for: oudsUerInterfaceSizeClass)
        }
    }
}

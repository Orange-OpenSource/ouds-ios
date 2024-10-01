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

struct OpacityTokenPage: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            illustration(for: theme.opacityTransparent, named: "opacityTransparent")
            illustration(for: theme.opacityWeaker, named: "opacityWeaker")
            illustration(for: theme.opacityWeak, named: "opacityWeak")
            illustration(for: theme.opacityMedium, named: "opacityMedium")
            illustration(for: theme.opacityStrong, named: "opacityStrong")
            illustration(for: theme.opacityOpaque, named: "opacityOpaque")
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, theme.spaceFixedMedium)
    }

    // MARK: Private helper

    private var fillColor: Color {
        theme.colorContentBrandPrimary?.color(for: colorScheme) ?? .green
    }

    private func illustration(for opacityToken: OpacitySemanticToken, named name: String) -> some View {
        HStack(alignment: .center, spacing: theme.spaceFixedMedium) {
            ZStack {
                Rectangle().fill(fillColor)
                    .frame(width: 44, height: 44)

                Rectangle().fill( colorScheme == .dark ? .white : .black)
                    .opacity(opacityToken)
                    .frame(width: 44, height: 44)
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

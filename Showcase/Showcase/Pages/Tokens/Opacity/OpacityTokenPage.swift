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
import OUDSTokensRaw

struct OpacityTokenPage: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // ==========
    // MARK: Body
    // ==========

    var body: some View {
        VStack(alignment: .leading) {
            illustration(for: theme.opacityTransparent, named: "Transparent")
            illustration(for: theme.opacityWeaker, named: "Weaker")
            illustration(for: theme.opacityWeak, named: "Weak")
            illustration(for: theme.opacityMedium, named: "Medium")
            illustration(for: theme.opacityStrong, named: "Strong")
            illustration(for: theme.opacityOpaque, named: "Opaque")
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, theme.spaceFixedShort)
    }

    // ====================
    // MARK: Private helper
    // ====================

    private func illustration(for opacityToken: OpacitySemanticToken, named name: String) -> some View {
        HStack(alignment: .center, spacing: 8) {
            ZStack {
                Rectangle().fill(.orange)
                    .frame(width: 44, height: 44)
                Rectangle().fill(.orange)
                    .opacity(opacityToken)
                    .frame(width: 44, height: 44)
                    .transformEffect(CGAffineTransform(translationX: 10, y: 10))
            }
            .frame(width: 54, height: 54, alignment: .leading)

            VStack(alignment: .leading) {
                Text(name).bold()
                Text("\(opacityToken, specifier: "%.2f")")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

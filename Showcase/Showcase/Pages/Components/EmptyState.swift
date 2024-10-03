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
import OUDSTokensSemantic

struct EmptyState: View {

    @Environment(\.theme) private var theme

    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: theme.spaceFixedMedium) {
                Image("il_empty_screen")
                    .frame(width: 160, height: 160, alignment: .center)

                VStack(alignment: .center, spacing: theme.spaceFixedShorter) {
                    Text("No content")
                        .typeHeadingMedium(theme)
                    Text("This content is under construction and will be available very soon")
                        .typeBodyDefaultSmall(theme)
                }
                .padding(.vertical, theme.spaceFixedMedium)
            }
            .padding(.top, theme.spaceFixedJumbo)
            .padding(.horizontal, theme.spaceFixedMedium)
        }
    }
}

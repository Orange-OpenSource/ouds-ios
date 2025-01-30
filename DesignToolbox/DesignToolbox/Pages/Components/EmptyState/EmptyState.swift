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

import OUDSTokensSemantic
import SwiftUI

struct EmptyState: View {

    @Environment(\.theme) private var theme

    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: theme.spaces.spaceFixedMedium) {
                Image("il_empty_screen")
                    .accessibilityHidden(true)
                    .frame(width: 160, height: 160, alignment: .center)

                VStack(alignment: .center, spacing: theme.spaces.spaceFixedShorter) {
                    Text("app_component_emptyContent_text")
                        .typeHeadingMedium(theme)
                    Text("app_component_emptyContent_description_text")
                        .typeBodyDefaultSmall(theme)
                }
                .padding(.vertical, theme.spaces.spaceFixedMedium)
            }
            .padding(.top, theme.spaces.spaceFixedJumbo)
            .padding(.horizontal, theme.spaces.spaceFixedMedium)
        }
    }
}

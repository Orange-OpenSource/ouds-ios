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
import OUDSComponents
import SwiftUI

struct ComponentPage: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored properties

    let entry: ComponentEntity

    // MARK: Body

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: theme.spaceFixedMedium) {
                Text(entry.configuration.description)
                    .typeBodyDefaultLarge(theme)
                    .foregroundStyle(theme.colorContentDefault.color(for: colorScheme))
                    .background(theme.colorContentOnBrandPrimary.color(for: colorScheme))
                    .padding(.top, theme.spaceFixedMedium)
                    .padding(.horizontal, theme.spaceFixedMedium)

                entry.componentView(entry.configuration)
                // No padding here, the component erea keep all the frame horizontaly

                ShowcaseConfiguration {
                    entry.configurationView(entry.configuration)
                }
                .padding(.horizontal, theme.spaceFixedMedium)

                ShowcaseCode(code: entry.configuration.code)
                    .padding(.horizontal, theme.spaceFixedMedium)
            }
            .padding(.bottom, theme.spaceFixedMedium)
        }
    }
}

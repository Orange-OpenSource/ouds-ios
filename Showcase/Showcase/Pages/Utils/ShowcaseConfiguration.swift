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
import SwiftUI

struct ShowcaseConfiguration<Configuration>: View where Configuration: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored properties

    @ViewBuilder
    let configuration: () -> Configuration

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
                Text("app_common_customize_label")
                    .typeHeadingMedium(theme)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.all, theme.spaceFixedShort)

                Divider()
            }
            .background(theme.colorBgSecondary.color(for: colorScheme))

            configuration()
                .padding(.all, theme.spaceFixedMedium)
        }
        .oudsBorder(style: theme.borderStyleDefault,
                    width: theme.borderWidthThin,
                    radius: theme.borderRadiusMedium,
                    color: theme.colorBorderDefault)
    }
}

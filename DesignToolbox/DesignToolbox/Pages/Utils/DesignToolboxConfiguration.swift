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

struct DesignToolboxConfiguration<Configuration>: View where Configuration: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme

    // MARK: Stored properties

    @ViewBuilder
    let configuration: () -> Configuration

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
            Text("Configuration")
                .typeHeadingMedium(theme)
                .frame(maxWidth: .infinity, alignment: .leading)

            Divider()

            configuration()
        }
        .padding(.all, theme.spaces.spaceFixedMedium)
        .oudsBorder(style: theme.borders.borderStyleDefault,
                    width: theme.borders.borderWidthThin,
                    radius: theme.borders.borderRadiusMedium,
                    color: theme.colors.colorBorderDefault)
    }
}

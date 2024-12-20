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

import OUDSComponents
import SwiftUI

// MARK: - Card

struct Card: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored properties

    let title: Text
    let icon: Image

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            CardIllustration(icon: icon)
            title
                .typeHeadingMedium(theme)
                .multilineTextAlignment(.leading)
                .padding(.horizontal, theme.spaces.spaceFixedMedium)
                .padding(.vertical, theme.spaces.spaceFixedMedium)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
        }
        .background(theme.colors.colorBgPrimary.color(for: colorScheme))
        .shadow(elevation: theme.elevations.elevationRaised.elevation(for: colorScheme))
        .padding(.all, 4)
    }
}

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

struct CardIllustration: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored properties

    let icon: Image

    // MARK: Body

    var body: some View {
        HStack {
            Spacer()
            icon
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 88, height: 88, alignment: .center)
                .clipped()
            Spacer()
        }
        .padding(.vertical, 53)
        .accessibilityElement(children: .combine)
        .accessibilityRemoveTraits(.isImage)
        .accessibilityHidden(true)
        .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
        .background(theme.colors.colorSurfaceStatusNeutralMuted.color(for: colorScheme))
    }
}

#Preview {
    CardIllustration(icon: Image("ic_border", bundle: .main))
}

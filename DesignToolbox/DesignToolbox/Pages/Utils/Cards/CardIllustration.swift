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

    // MARK: Stored properties

    let icon: Image

    // MARK: Body

    var body: some View {
        HStack {
            Spacer()
            icon
            Spacer()
        }
        .frame(height: 184, alignment: .center)
        .accessibilityElement(children: .combine)
        .accessibilityRemoveTraits(.isImage)
        .accessibilityHidden(true)
        .oudsForegroundStyle(theme.colors.colorContentDefault)
        .oudsBackground(theme.colors.colorSurfaceStatusNeutralMuted)
    }
}

#Preview {
    CardIllustration(icon: Image("ic_border", bundle: .main))
}

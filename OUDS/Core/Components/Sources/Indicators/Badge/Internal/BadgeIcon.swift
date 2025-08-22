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

struct BadgeIcon: View {

    // MARK: Stored Properties

    let icon: Image?
    let size: OUDSBadge.StandardSize

    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        if let icon, validIconSize {
            icon
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .padding(.all, theme.badge.badgeSpaceInset)
        }
    }

    private var validIconSize: Bool {
        size == .medium || size == .large
    }
}

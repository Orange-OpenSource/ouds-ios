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

import OUDSThemesContract
import SwiftUI

struct BadgeCount: View {

    // MARK: Properties

    let configuration: BadgeCountConfiguration
    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        let text = configuration.value > OUDSBadgeCount.maxCount ? "+\(OUDSBadgeCount.maxCount)" : "\(configuration.value)"
        switch configuration.size {
        case .medium:
            Text(text)
                .labelDefaultSmall(theme)
                .padding(.horizontal, theme.badge.spacePaddingInlineMedium)
        case .large:
            Text(text)
                .labelDefaultMedium(theme)
                .padding(.horizontal, theme.badge.spacePaddingInlineLarge)
        }
    }
}

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

struct BadgeIcon: View {

    // MARK: Properties

    let layout: BadgeLayout

    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        switch layout.type {
        case .empty, .count:
            EmptyView()
        case let .icon(icon, flipped, _):
            (icon ?? defaultLeadingIcon)?
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .toFlip(flipped)
                .padding(.all, theme.badge.spaceInset)
                .accessibilityElement() // Otherwise label cannot be used in OUDSBadge body
        }
    }

    // MARK: Helpers

    private var defaultLeadingIcon: Image? {
        switch layout.status {
        case .neutral, .accent:
            nil
        case .positive:
            Image(decorative: "ic_alert_tick_confirmation_fill", bundle: theme.resourcesBundle)
        case .warning:
            Image(decorative: "ic_alert_warning_external_shape", bundle: theme.resourcesBundle)
        case .negative:
            Image(decorative: "ic_alert_important_fill", bundle: theme.resourcesBundle)
        case .info:
            Image(decorative: "ic_alert_info_fill", bundle: theme.resourcesBundle)
        }
    }
}

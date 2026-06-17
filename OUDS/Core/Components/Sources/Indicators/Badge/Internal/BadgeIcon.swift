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
import OUDSTokensSemantic
import SwiftUI

struct BadgeIcon: View {

    // MARK: Properties

    let configuration: BadgeIconConfiguration
    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled

    // MARK: Body

    var body: some View {
        Group {
            switch configuration.status {
            case .warning:
                if isEnabled {
                    ZStack {
                        OUDSIcon(assetName: "ic_badge_warning_internal_shape", color: theme.icon.colorContentStatusWarningInternalShape)
                        OUDSIcon(assetName: "ic_badge_warning_external_shape", color: theme.icon.colorContentStatusWarningExternalShape)
                    }
                } else {
                    OUDSIcon(assetName: "ic_badge_warning_external_shape", color: theme.colors.actionDisabled)
                }
            default:
                icon
                    .resizable()
                    .renderingMode(.template)
                    .toFlip(flipped)
            }
        }
        .padding(.all, padding)
        .accessibilityElement() // Otherwise label cannot be used in OUDSBadge* body
    }

    // MARK: Helpers

    private var padding: CGFloat {
        switch configuration.status {
        case .neutral, .accent:
            switch configuration.size {
            case .extraSmall:
                theme.badge.spaceInsetXsmall
            case .small:
                theme.badge.spaceInsetSmall
            case .medium:
                theme.badge.spaceInsetMediumLarge
            case .large:
                theme.badge.spaceInsetMediumLarge
            }
        default:
            theme.spaces.insetNone
        }
    }

    private var icon: Image {
        switch configuration.status {
        case let .neutral(icon, _), let .accent(icon, _):
            icon
        case .warning:
            Image(decorative: "ic_badge_warning_external_shape", bundle: theme.resourcesBundle)
        case .positive:
            Image(decorative: "ic_badge_tick_confirmation_fill", bundle: theme.resourcesBundle)
        case .negative:
            Image(decorative: "ic_badge_error_fill", bundle: theme.resourcesBundle)
        case .info:
            Image(decorative: "ic_badge_info_fill", bundle: theme.resourcesBundle)
        }
    }

    private var flipped: Bool {
        switch configuration.status {
        case let .neutral(_, flipped), let .accent(_, flipped):
            flipped
        default:
            false
        }
    }
}

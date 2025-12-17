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

    let customIcon: Image?
    let flipped: Bool
    let size: OUDSBadge.IllustrationSize
    let status: OUDSBadge.Status

    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        Group {
            if let customIcon {
                customIcon
                    .badgeAssetModifier(flipped)
                    .modifier(BadgeContentModifier(status: status))
            } else {
                defaultIcon
            }
        }
        .padding(.all, theme.badge.spaceInset)
        .accessibilityElement() // Otherwise label cannot be used in OUDSBadge body
    }

    // MARK: Helpers

    @ViewBuilder
    private var defaultIcon: some View {
        switch status {
        case .neutral, .accent:
            EmptyView()
        case .warning:
            ZStack {
                Image(decorative: "ic_alert_warning_external_shape", bundle: theme.resourcesBundle)
                    .badgeAssetModifier(false)
                    .oudsForegroundColor(theme.colors.contentOnStatusWarningEmphasized)
                Image(decorative: "ic_alert_warning_internal_shape", bundle: theme.resourcesBundle)
                    .badgeAssetModifier(false)
                    .oudsForegroundColor(theme.icon.colorContentStatusWarningInternalShape)
            }
        case .positive:
            Image(decorative: "ic_alert_tick_confirmation_fill", bundle: theme.resourcesBundle)
                .badgeAssetModifier(flipped)
                .modifier(BadgeContentModifier(status: status))
        case .negative:
            Image(decorative: "ic_alert_important_fill", bundle: theme.resourcesBundle)
                .badgeAssetModifier(flipped)
                .modifier(BadgeContentModifier(status: status))
        case .info:
            Image(decorative: "ic_alert_info_fill", bundle: theme.resourcesBundle)
                .badgeAssetModifier(flipped)
                .modifier(BadgeContentModifier(status: status))
        }
    }
}

extension Image {
    @MainActor
    fileprivate func badgeAssetModifier(_ flipped: Bool) -> some View {
        renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .toFlip(flipped)
    }
}

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

import OUDSTokensSemantic
import SwiftUI

struct AletMessageLeadingIcon: View {

    // MARK: - Properties

    let status: OUDSAlertMessage.Status
    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        if let icon {
            ScaledIcon(icon: icon.renderingMode(.template).resizable(),
                       size: theme.alert.sizeIcon)
                .oudsForegroundColor(color)
                .toFlip(flipIcon)
                .padding(.top, theme.alert.spacePaddingBlock)
        }
    }

    private var color: MultipleColorSemanticToken {
        switch status {
        case .accent:
            theme.colors.contentStatusAccent
        case .neutral:
            theme.colors.contentDefault
        case .positive:
            theme.colors.contentStatusPositive
        case .info:
            theme.colors.contentStatusInfo
        case .warning:
            theme.colors.contentStatusWarning
        case .negative:
            theme.colors.contentStatusNegative
        }
    }

    private var icon: Image? {
        switch status {
        case let .accent(icon, _):
            icon
        case let .neutral(icon, _):
            icon
        case let .negative(showIcon) where showIcon == true:
            Image("ic_alert_important_fill", bundle: theme.resourcesBundle)
        case let .positive(showIcon) where showIcon == true:
            Image("ic_alert_tick_confirmation_fill", bundle: theme.resourcesBundle)
        case let .info(showIcon) where showIcon == true:
            Image("ic_alert_info_fill", bundle: theme.resourcesBundle)
        case let .warning(showIcon) where showIcon == true:
            Image("ic_alert_warning_external_shape", bundle: theme.resourcesBundle)
        default:
            nil
        }
    }

    private var flipIcon: Bool {
        switch status {
        case let .accent(_, flipIcon):
            flipIcon
        case let .neutral(_, flipIcon):
            flipIcon
        default:
            false
        }
    }
}

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

    private let status: OUDSAlertMessage.Status
    @Environment(\.theme) private var theme
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize: DynamicTypeSize

    // MARK: - Initilizer

    init?(status: OUDSAlertMessage.Status) {
        if status.hasIcon {
            self.status = status
        } else {
            return nil
        }
    }

    // MARK: - Body

    var body: some View {
        HStack {
            switch status {
            case let .accent(icon):
                icon?.update(with: theme.colors.contentStatusAccent)
            case let .neutral(icon):
                icon?.update(with: theme.icon.colorContentDefault)
            case .negative:
                OUDSIcon(assetName: "ic_alert_important_fill", color: theme.colors.contentStatusNegative)
            case .positive:
                OUDSIcon(assetName: "ic_alert_tick_confirmation_fill", color: theme.colors.contentStatusPositive)
            case .info:
                OUDSIcon(assetName: "ic_alert_info_fill", color: theme.colors.contentStatusInfo)
            case .warning:
                ZStack {
                    OUDSIcon(assetName: "ic_alert_warning_external_shape", color: theme.icon.colorContentStatusWarningExternalShape)
                    OUDSIcon(assetName: "ic_alert_warning_internal_shape", color: theme.icon.colorContentStatusWarningInternalShape)
                }
            }
        }
        .frame(width: size, height: size)
        .padding(.top, theme.alert.spacePaddingBlock)
    }

    private var size: CGFloat {
        theme.alert.sizeIcon * dynamicTypeSize.percentageRate / 100
    }
}

extension OUDSAlertMessage.Status {
    fileprivate var hasIcon: Bool {
        switch self {
        case let .neutral(icon), let .accent(icon):
            icon != nil
        default:
            true
        }
    }
}

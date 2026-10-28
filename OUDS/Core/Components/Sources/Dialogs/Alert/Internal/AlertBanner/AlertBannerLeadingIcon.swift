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

// MARK: - Alert Leading Icon
struct AlertBannerLeadingIcon: View {

    // MARK: Properties

    private let status: OUDSAlertStatus

    @Environment(\.theme) private var theme
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize: DynamicTypeSize

    // MARK: Initilizer

    init?(status: OUDSAlertStatus) {
        if status.hasIcon {
            self.status = status
        } else {
            return nil
        }
    }

    // MARK: Body

    var body: some View {
        HStack {
            switch status {
            case let .accent(icon):
                icon?.update(with: theme.colors.contentOnStatusAccentEmphasized)
            case let .neutral(icon):
                icon?.update(with: theme.colors.contentInverse)
            case .negative:
                OUDSImage(name: "Component-alert-important-fill", color: theme.colors.contentOnStatusNegativeEmphasized)
            case .positive:
                OUDSImage(name: "Component-alert-tick-confirmation-fill", color: theme.colors.contentOnStatusPositiveEmphasized)
            case .info:
                OUDSImage(name: "Component-alert-info-fill", color: theme.colors.contentOnStatusInfoEmphasized)
            case .warning:
                ZStack {
                    OUDSImage(name: "Component-alert-warning-external-shape", color: theme.colors.contentOnStatusWarningEmphasized)
                    OUDSImage(name: "Component-alert-warning-internal-shape", color: theme.colors.surfaceStatusWarningEmphasized)
                }
            }
        }
        .frame(width: size, height: size)
        .padding(.vertical, theme.alert.spacePaddingBlock)
    }

    private var size: CGFloat {
        theme.alert.sizeAsset * dynamicTypeSize.percentageRate / 100
    }
}

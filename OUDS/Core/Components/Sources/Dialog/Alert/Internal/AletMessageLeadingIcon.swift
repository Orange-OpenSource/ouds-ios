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
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize: DynamicTypeSize

    // MARK: - Body

    var body: some View {
        HStack {
            switch status {
            case let .accent(icon, flipIcon):
                icon.update(with: theme.colors.contentStatusAccent, flipped: flipIcon)
            case let .neutral(icon, flipIcon):
                icon.update(with: theme.icon.colorContentDefault, flipped: flipIcon)
            case let .negative(showIcon) where showIcon == true:
                Image("ic_alert_important_fill", bundle: theme.resourcesBundle)
                    .update(with: theme.colors.contentStatusNegative)
            case let .positive(showIcon) where showIcon == true:
                Image("ic_alert_tick_confirmation_fill", bundle: theme.resourcesBundle)
                    .update(with: theme.colors.contentStatusPositive)
            case let .info(showIcon) where showIcon == true:
                Image("ic_alert_info_fill", bundle: theme.resourcesBundle)
                    .update(with: theme.colors.contentStatusInfo)
            case let .warning(showIcon) where showIcon == true:
                ZStack {
                    Image(decorative: "ic_alert_warning_external_shape", bundle: theme.resourcesBundle)
                        .update(with: theme.icon.colorContentStatusWarningExternalShape)
                    Image(decorative: "ic_alert_warning_internal_shape", bundle: theme.resourcesBundle)
                        .update(with: theme.icon.colorContentStatusWarningInternalShape)
                }
            default:
                EmptyView()
            }
        }
        .frame(width: size, height: size)
        .padding(.top, theme.alert.spacePaddingBlock)
    }

    private var size: CGFloat {
        let rawSize = theme.alert.sizeIcon
        return rawSize * dynamicTypeSize.percentageRate / 100
    }
}

extension Image {
    @MainActor
    func update(with color: MultipleColorSemanticToken, flipped: Bool = false) -> some View {
        resizable()
            .renderingMode(.template)
            .toFlip(flipped)
            .oudsForegroundColor(color)
    }
}

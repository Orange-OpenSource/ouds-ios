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

struct InlineAlertLabel: View {

    // MARK: - Properties

    let text: String
    let status: OUDSAlertStatus

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass

    var body: some View {
        Text(text)
            .labelModerateLarge(theme)
            .foregroundColor(contentColor)
            .frame(maxWidth: theme.sizes.maxWidthLabelLarge.dimension(for: horizontalSizeClass ?? .regular), alignment: .leading)
            .accessibilityLabel(accessibilityLabel)
    }

    // MARK: - Private helper

    private var contentColor: MultipleColorSemanticToken {
        switch status {
        case .neutral, .accent:
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

    private var accessibilityLabel: String {
        let labelPrefix = switch status {
        case .warning:
            "core_alertMessage_warning_a11y".localized() + ","
        case .negative:
            "core_alertMessage_negative_a11y".localized() + ","
        default:
            ""
        }
        return "\(labelPrefix) \(text)"
    }
}

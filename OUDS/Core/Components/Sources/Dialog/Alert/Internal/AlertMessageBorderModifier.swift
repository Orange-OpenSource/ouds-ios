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

struct AlertMessageBorderModifier: ViewModifier {

    // MARK: - Properties

    let status: OUDSAlertMessage.Status

    @Environment(\.theme) private var theme

    // MARK: - Body

    func body(content: Content) -> some View {
        content
            .oudsBorder(style: theme.borders.styleDefault,
                        width: theme.alert.borderWidth,
                        radius: radius,
                        color: color)
            .clipShape(RoundedRectangle(cornerRadius: radius))
    }

    // MARK: - Helpers

    private var radius: BorderRadiusSemanticToken {
        theme.tuning.hasRoundedTextInputs ? theme.alert.borderRadiusRounded : theme.alert.borderRadiusDefault
    }

    private var color: MultipleColorSemanticToken {
        switch status {
        case .neutral:
            theme.colors.borderDefault
        case .accent:
            theme.colors.borderStatusAccent
        case .positive:
            theme.colors.borderStatusPositive
        case .info:
            theme.colors.borderStatusInfo
        case .warning:
            theme.colors.borderStatusWarning
        case .negative:
            theme.colors.borderStatusNegative
        }
    }
}

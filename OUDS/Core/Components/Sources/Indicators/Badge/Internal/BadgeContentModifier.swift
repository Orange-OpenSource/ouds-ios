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

struct BadgeContentModifier: ViewModifier {

    // MARK: Properties

    let status: OUDSBadge.Status

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled: Bool

    // MARK: Body

    func body(content: Content) -> some View {
        content.oudsForegroundColor(contentColor)
    }

    // MARK: Private helper

    private var contentColor: MultipleColorSemanticTokens {
        let enabbledColor = switch status {
        case .neutral:
            theme.colors.contentInverse
        case .accent:
            theme.colors.contentOnStatusAccentEmphasized
        case .positive:
            theme.colors.contentOnStatusPositiveEmphasized
        case .info:
            theme.colors.contentOnStatusInfoEmphasized
        case .warning:
            theme.colors.contentOnStatusWarningEmphasized
        case .negative:
            theme.colors.contentOnStatusNegativeEmphasized
        }

        return isEnabled ? enabbledColor : theme.colors.contentOnActionDisabled
    }
}

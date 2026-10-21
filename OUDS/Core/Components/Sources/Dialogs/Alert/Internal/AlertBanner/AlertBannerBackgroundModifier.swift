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

struct AlertBannerBackgroundModifier: ViewModifier {

    // MARK: - Properties

    let status: OUDSAlertStatus

    @Environment(\.theme) private var theme

    // MARK: - Body

    func body(content: Content) -> some View {
        content.background(color)
    }

    // MARK: - Helpers

    private var color: MultipleColorSemanticToken {
        switch status {
        case .neutral:
            theme.colors.bgInverseHigh
        case .accent:
            theme.colors.surfaceStatusAccentEmphasized
        case .positive:
            theme.colors.surfaceStatusPositiveEmphasized
        case .warning:
            theme.colors.surfaceStatusWarningEmphasized
        case .negative:
            theme.colors.surfaceStatusNegativeEmphasized
        case .info:
            theme.colors.surfaceStatusInfoEmphasized
        }
    }
}

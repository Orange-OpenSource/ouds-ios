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

struct TagBackgroundModifier: ViewModifier {

    // MARK: Stored Properties

    let status: OUDSTag.Status
    let hierarchy: OUDSTag.Hierarchy
    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        content.oudsBackground(background)
    }

    // MARK: Helpers

    private var background: MultipleColorSemanticTokens {
        switch hierarchy {
        case .emphasized:
            return emphasizedBackground
        case .muted:
            return mutedBackground
        }
    }

    private var emphasizedBackground: MultipleColorSemanticTokens {
        switch status {
        case .neutral:
            return theme.colors.colorSurfaceStatusNeutralEmphasized
        case .accent:
            return theme.colors.colorSurfaceStatusAccentEmphasized
        case .positive:
            return theme.colors.colorSurfaceStatusPositiveEmphasized
        case .warning:
            return theme.colors.colorSurfaceStatusWarningEmphasized
        case .negative:
            return theme.colors.colorSurfaceStatusNegativeEmphasized
        case .info:
            return theme.colors.colorSurfaceStatusInfoEmphasized
        case .disabled:
            return theme.colors.colorActionDisabled
        }
    }

    private var mutedBackground: MultipleColorSemanticTokens {
        switch status {
        case .neutral:
            return theme.colors.colorSurfaceStatusNeutralMuted
        case .accent:
            return theme.colors.colorSurfaceStatusAccentMuted
        case .positive:
            return theme.colors.colorSurfaceStatusPositiveMuted
        case .warning:
            return theme.colors.colorSurfaceStatusWarningMuted
        case .negative:
            return theme.colors.colorSurfaceStatusNegativeMuted
        case .info:
            return theme.colors.colorSurfaceStatusInfoMuted
        case .disabled:
            return theme.colors.colorActionDisabled
        }
    }
}

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

    // MARK: Stored properties

    let hierarchy: OUDSTag.Hierarchy
    let status: OUDSTag.Status

    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        content.oudsBackground(background)
    }

    // MARK: Helpers

    private var background: MultipleColorSemanticTokens {
        switch hierarchy {
        case .emphasized:
            emphasizedBackground
        case .muted:
            mutedBackground
        }
    }

    private var emphasizedBackground: MultipleColorSemanticTokens {
        switch status {
        case .neutral:
            theme.colors.colorSurfaceStatusNeutralEmphasized
        case .accent:
            theme.colors.colorSurfaceStatusAccentEmphasized
        case .positive:
            theme.colors.colorSurfaceStatusPositiveEmphasized
        case .warning:
            theme.colors.colorSurfaceStatusWarningEmphasized
        case .negative:
            theme.colors.colorSurfaceStatusNegativeEmphasized
        case .info:
            theme.colors.colorSurfaceStatusInfoEmphasized
        case .disabled:
            theme.colors.colorActionDisabled
        }
    }

    private var mutedBackground: MultipleColorSemanticTokens {
        switch status {
        case .neutral:
            theme.colors.colorSurfaceStatusNeutralMuted
        case .accent:
            theme.colors.colorSurfaceStatusAccentMuted
        case .positive:
            theme.colors.colorSurfaceStatusPositiveMuted
        case .warning:
            theme.colors.colorSurfaceStatusWarningMuted
        case .negative:
            theme.colors.colorSurfaceStatusNegativeMuted
        case .info:
            theme.colors.colorSurfaceStatusInfoMuted
        case .disabled:
            theme.colors.colorActionDisabled
        }
    }
}

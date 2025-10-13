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

    let appearance: OUDSTag.Appearance
    let type: OUDSTag.`Type`

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled

    // MARK: Body

    func body(content: Content) -> some View {
        content.oudsBackground(background)
    }

    // MARK: Helpers

    private var background: MultipleColorSemanticTokens {
        switch type {
        case let .status(_, status):
            if isEnabled {
                switch appearance {
                case .emphasized:
                    emphasizedBackground(for: status)
                case .muted:
                    mutedBackground(for: status)
                }
            } else {
                theme.colors.colorActionDisabled
            }

        case .loader:
            theme.colors.colorContentDefault
        }
    }

    private func emphasizedBackground(for status: OUDSTag.Status) -> MultipleColorSemanticTokens {
        switch status.category {
        case .neutral:
            theme.colors.colorSurfaceInverseHigh
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
            //        case .disabled:
            //          return theme.colors.colorActionDisabled
        }
    }

    private func mutedBackground(for status: OUDSTag.Status) -> MultipleColorSemanticTokens {
        switch status.category {
        case .neutral:
            theme.colors.colorSurfaceSecondary
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
            //        case .disabled:
            //            theme.colors.colorActionDisabled
        }
    }
}

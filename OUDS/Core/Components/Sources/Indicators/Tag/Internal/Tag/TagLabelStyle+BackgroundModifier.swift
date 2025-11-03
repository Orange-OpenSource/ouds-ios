//
// Software Name: OUDSThemesContract iOS
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

    // MARK: Properties

    let appearance: OUDSTag.Appearance
    let type: OUDSTag.`Type`

    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.theme) private var theme

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
                theme.colors.actionDisabled
            }
        case .loader:
            theme.colors.surfaceSecondary
        }
    }

    private func emphasizedBackground(for status: OUDSTag.Status) -> MultipleColorSemanticTokens {
        switch status.category {
        case .neutral:
            theme.colors.surfaceInverseHigh
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

    private func mutedBackground(for status: OUDSTag.Status) -> MultipleColorSemanticTokens {
        switch status.category {
        case .neutral:
            theme.colors.surfaceSecondary
        case .accent:
            theme.colors.surfaceStatusAccentMuted
        case .positive:
            theme.colors.surfaceStatusPositiveMuted
        case .warning:
            theme.colors.surfaceStatusWarningMuted
        case .negative:
            theme.colors.surfaceStatusNegativeMuted
        case .info:
            theme.colors.surfaceStatusInfoMuted
        }
    }
}

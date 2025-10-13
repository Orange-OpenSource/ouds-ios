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

struct TagLabel: View {

    // MARK: Stored Properties

    let appearance: OUDSTag.Appearance
    let size: OUDSTag.Size
    let type: OUDSTag.`Type`

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled

    // MARK: Body

    var body: some View {
        Group {
            switch size {
            case .default:
                Text(type.label)
                    .typeLabelStrongMedium(theme)
            case .small:
                Text(type.label)
                    .typeLabelStrongSmall(theme)
            }
        }
        .oudsForegroundColor(color)
    }

    // MARK: Helper

    private var color: MultipleColorSemanticTokens {
        switch type {
        case let .status(_, status):
            if isEnabled {
                switch appearance {
                case .emphasized:
                    emphasizedColor(for: status)
                case .muted:
                    mutedColor(for: status)
                }
            } else {
                theme.colors.colorContentOnActionDisabled
            }
        case .loader:
            theme.colors.colorContentDefault
        }
    }

    private func emphasizedColor(for status: OUDSTag.Status) -> MultipleColorSemanticTokens {
        switch status.category {
        case .neutral:
            theme.colors.colorContentInverse
        case .accent:
            theme.colors.colorContentOnStatusAccentEmphasized
        case .positive:
            theme.colors.colorContentOnStatusPositiveEmphasized
        case .warning:
            theme.colors.colorContentOnStatusWarningEmphasized
        case .negative:
            theme.colors.colorContentOnStatusNegativeEmphasized
        case .info:
            theme.colors.colorContentOnStatusInfoEmphasized
//        case .disabled:
//            theme.colors.colorContentOnActionDisabled
        }
    }

    private func mutedColor(for status: OUDSTag.Status) -> MultipleColorSemanticTokens {
        switch status.category {
        case .neutral:
            theme.colors.colorContentDefault
        case .accent:
            theme.colors.colorContentOnStatusAccentMuted
        case .positive:
            theme.colors.colorContentOnStatusPositiveMuted
        case .warning:
            theme.colors.colorContentOnStatusWarningMuted
        case .negative:
            theme.colors.colorContentOnStatusNegativeMuted
        case .info:
            theme.colors.colorContentOnStatusInfoMuted
//        case .disabled:
//            theme.colors.colorContentOnActionDisabled
        }
    }
}

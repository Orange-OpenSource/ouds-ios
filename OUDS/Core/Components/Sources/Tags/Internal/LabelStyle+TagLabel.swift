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

    let label: String
    let hierarchy: OUDSTag.Hierarchy
    let status: OUDSTag.Status
    let size: OUDSTag.Size
    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        Group {
            switch size {
            case .default:
                Text(label)
                    .typeLabelStrongMedium(theme)
            case .small:
                Text(label)
                    .typeLabelStrongSmall(theme)
            }
        }
        .oudsForegroundColor(color)
    }

    // MARK: Helper

    private var color: MultipleColorSemanticTokens {
        switch hierarchy {
        case .emphasized:
            return colorEmphasized
        case .muted:
            return colorMuted
        }
    }

    private var colorEmphasized: MultipleColorSemanticTokens {
        switch status {
        case .neutral:
            theme.colors.colorContentOnStatusNeutralEmphasized
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
        case .disabled:
            theme.colors.colorContentOnActionDisabled
        }
    }

    private var colorMuted: MultipleColorSemanticTokens {
        switch status {
        case .neutral:
            theme.colors.colorContentOnStatusNeutralMuted
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
        case .disabled:
            theme.colors.colorContentOnActionDisabled
        }
    }
}

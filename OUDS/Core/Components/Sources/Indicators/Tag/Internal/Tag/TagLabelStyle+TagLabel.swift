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
                    .labelStrongMedium(theme)
            case .small:
                Text(type.label)
                    .labelStrongSmall(theme)
            }
        }
        .oudsForegroundColor(color)
    }

    // MARK: Helpers

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
                theme.colors.contentOnActionDisabled
            }
        case .loader:
            theme.colors.contentDefault
        }
    }

    private func emphasizedColor(for status: OUDSTag.Status) -> MultipleColorSemanticTokens {
        switch status.category {
        case .neutral:
            theme.colors.contentInverse
        case .accent:
            theme.colors.contentOnStatusAccentEmphasized
        case .positive:
            theme.colors.contentOnStatusPositiveEmphasized
        case .warning:
            theme.colors.contentOnStatusWarningEmphasized
        case .negative:
            theme.colors.contentOnStatusNegativeEmphasized
        case .info:
            theme.colors.contentOnStatusInfoEmphasized
        }
    }

    private func mutedColor(for status: OUDSTag.Status) -> MultipleColorSemanticTokens {
        switch status.category {
        case .neutral:
            theme.colors.contentDefault
        case .accent:
            theme.colors.contentOnStatusAccentMuted
        case .positive:
            theme.colors.contentOnStatusPositiveMuted
        case .warning:
            theme.colors.contentOnStatusWarningMuted
        case .negative:
            theme.colors.contentOnStatusNegativeMuted
        case .info:
            theme.colors.contentOnStatusInfoMuted
        }
    }
}

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

import OUDS
import OUDSTokensSemantic

enum NamedColorMode: CaseIterable, CustomStringConvertible {

    case modeOnBrandPrimary
    case modeOnBrandSecondary
    case modeOnBrandTertiary
    case modeOnStatusAccentEmphasized
    case modeOnStatusAccentMuted
    case modeOnStatusInfoEmphasized
    case modeOnStatusInfoMuted
    case modeOnStatusNegativeEmphasized
    case modeOnStatusNegativeMuted
    case modeOnStatusNeutralEmphasized
    case modeOnStatusNeutralMuted
    case modeOnStatusPositiveEmphasized
    case modeOnStatusPositiveMuted
    case modeOnStatusWarningEmphasized
    case modeOnStatusWarningMuted

    func token(from theme: OUDSTheme) -> MultipleColorSemanticTokens {
        switch self {
        case .modeOnBrandPrimary:
            return theme.colorModes.toColor(from: theme.colorModes.modeOnBrandPrimary)
        case .modeOnBrandSecondary:
            return theme.colorModes.toColor(from: theme.colorModes.modeOnBrandSecondary)
        case .modeOnBrandTertiary:
            return theme.colorModes.toColor(from: theme.colorModes.modeOnBrandTertiary)
        case .modeOnStatusAccentEmphasized:
            return theme.colorModes.toColor(from: theme.colorModes.modeOnStatusAccentEmphasized)
        case .modeOnStatusAccentMuted:
            return theme.colorModes.toColor(from: theme.colorModes.modeOnStatusAccentMuted)
        case .modeOnStatusInfoEmphasized:
            return theme.colorModes.toColor(from: theme.colorModes.modeOnStatusInfoEmphasized)
        case .modeOnStatusInfoMuted:
            return theme.colorModes.toColor(from: theme.colorModes.modeOnStatusInfoMuted)
        case .modeOnStatusNegativeEmphasized:
            return theme.colorModes.toColor(from: theme.colorModes.modeOnStatusNegativeEmphasized)
        case .modeOnStatusNegativeMuted:
            return theme.colorModes.toColor(from: theme.colorModes.modeOnStatusNegativeMuted)
        case .modeOnStatusNeutralEmphasized:
            return theme.colorModes.toColor(from: theme.colorModes.modeOnStatusNeutralEmphasized)
        case .modeOnStatusNeutralMuted:
            return theme.colorModes.toColor(from: theme.colorModes.modeOnStatusNeutralMuted)
        case .modeOnStatusPositiveEmphasized:
            return theme.colorModes.toColor(from: theme.colorModes.modeOnStatusPositiveEmphasized)
        case .modeOnStatusPositiveMuted:
            return theme.colorModes.toColor(from: theme.colorModes.modeOnStatusPositiveMuted)
        case .modeOnStatusWarningEmphasized:
            return theme.colorModes.toColor(from: theme.colorModes.modeOnStatusWarningEmphasized)
        case .modeOnStatusWarningMuted:
            return theme.colorModes.toColor(from: theme.colorModes.modeOnStatusWarningMuted)
        }
    }

    func toSurfaceColor(from theme: OUDSTheme) -> OUDSColoredSurface.SurfaceColor {
        switch self {
        case .modeOnBrandPrimary:
            return theme.colorModes.modeOnBrandPrimary
        case .modeOnBrandSecondary:
            return theme.colorModes.modeOnBrandSecondary
        case .modeOnBrandTertiary:
            return theme.colorModes.modeOnBrandTertiary
        case .modeOnStatusAccentEmphasized:
            return theme.colorModes.modeOnStatusAccentEmphasized
        case .modeOnStatusAccentMuted:
            return theme.colorModes.modeOnStatusAccentMuted
        case .modeOnStatusInfoEmphasized:
            return theme.colorModes.modeOnStatusInfoEmphasized
        case .modeOnStatusInfoMuted:
            return theme.colorModes.modeOnStatusInfoMuted
        case .modeOnStatusNegativeEmphasized:
            return theme.colorModes.modeOnStatusNegativeEmphasized
        case .modeOnStatusNegativeMuted:
            return theme.colorModes.modeOnStatusNegativeMuted
        case .modeOnStatusNeutralEmphasized:
            return theme.colorModes.modeOnStatusNeutralEmphasized
        case .modeOnStatusNeutralMuted:
            return theme.colorModes.modeOnStatusNeutralMuted
        case .modeOnStatusPositiveEmphasized:
            return theme.colorModes.modeOnStatusPositiveEmphasized
        case .modeOnStatusPositiveMuted:
            return theme.colorModes.modeOnStatusPositiveMuted
        case .modeOnStatusWarningEmphasized:
            return theme.colorModes.modeOnStatusWarningEmphasized
        case .modeOnStatusWarningMuted:
            return theme.colorModes.modeOnStatusWarningMuted
        }
    }

    // No l10n, tehchnical names
    var formattedName: String {
        switch self {
        case .modeOnBrandPrimary:
            return "Brand Primary"
        case .modeOnBrandSecondary:
            return "Brand Secondary"
        case .modeOnBrandTertiary:
            return "Brand Tertiary"
        case .modeOnStatusAccentEmphasized:
            return "Status Accent Emphasized"
        case .modeOnStatusAccentMuted:
            return "Status Accent Muted"
        case .modeOnStatusInfoEmphasized:
            return "Status Info Emphasized"
        case .modeOnStatusInfoMuted:
            return "Status Info Muted"
        case .modeOnStatusNegativeEmphasized:
            return "Status Negative Emphasized"
        case .modeOnStatusNegativeMuted:
            return "Status Negative Muted"
        case .modeOnStatusNeutralEmphasized:
            return "Status Neutral Emphasized"
        case .modeOnStatusNeutralMuted:
            return "Status Neutral Muted"
        case .modeOnStatusPositiveEmphasized:
            return "Status Positive Emphasized"
        case .modeOnStatusPositiveMuted:
            return "Status Positive Muted"
        case .modeOnStatusWarningEmphasized:
            return "Status Warning Emphasized"
        case .modeOnStatusWarningMuted:
            return "Status Warning Muted"
        }
    }

    public var description: String {
        switch self {
        case .modeOnBrandPrimary:
            return "modeOnBrandPrimary"
        case .modeOnBrandSecondary:
            return "modeOnBrandSecondary"
        case .modeOnBrandTertiary:
            return "modeOnBrandTertiary"
        case .modeOnStatusAccentEmphasized:
            return "modeOnStatusAccentEmphasized"
        case .modeOnStatusAccentMuted:
            return "modeOnStatusAccentMuted"
        case .modeOnStatusInfoEmphasized:
            return "modeOnStatusInfoEmphasized"
        case .modeOnStatusInfoMuted:
            return "modeOnStatusInfoMuted"
        case .modeOnStatusNegativeEmphasized:
            return "modeOnStatusNegativeEmphasized"
        case .modeOnStatusNegativeMuted:
            return "modeOnStatusNegativeMuted"
        case .modeOnStatusNeutralEmphasized:
            return "modeOnStatusNeutralEmphasized"
        case .modeOnStatusNeutralMuted:
            return "modeOnStatusNeutralMuted"
        case .modeOnStatusPositiveEmphasized:
            return "modeOnStatusPositiveEmphasized"
        case .modeOnStatusPositiveMuted:
            return "modeOnStatusPositiveMuted"
        case .modeOnStatusWarningEmphasized:
            return "modeOnStatusWarningEmphasized"
        case .modeOnStatusWarningMuted:
            return "modeOnStatusWarningMuted"
        }
    }

    var id: String { description }
}

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

import Foundation
import OUDSThemesOrange
import OUDSTokensSemantic

// swiftlint:disable required_deinit

/// Overrides **all** the color mode semantic tokens (from its super class, i.e. ``OrangeThemeColorModeSemanticTokensProvider``) so as to test overriding of them (unit tests)
/// and to act like smoke tests with crashing tests if some tokens disappeared.
/// This ``MockThemeColorModeSemanticTokensProvider`` will be asigned in ``MockTheme`` as an ``AllColorModeSemanticTokens`` implementation.
open class MockThemeColorModeSemanticTokensProvider: OrangeThemeColorModeSemanticTokensProvider {

    static let mockThemeColorModeSemanticToken: ColorModeSemanticToken = "dumb value"
    static let mockThemeMultipleColorModeSemanticTokens = MultipleColorModeSemanticTokens("dumber value", mockThemeColorModeSemanticToken)

    // MARK: - Multiple tokens

    override public var onBgPrimary: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var onBgSecondary: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var onBgTertiary: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var onOverlayModal: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var onOverlayDropdown: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var onOverlayTooltip: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var onBrandPrimary: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var onBrandSecondary: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var onBrandTertiary: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var onStatusAccentEmphasized: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var onStatusAccentMuted: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var onStatusInfoEmphasized: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var onStatusInfoMuted: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var onStatusNegativeEmphasized: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var onStatusNegativeMuted: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var onStatusPositiveEmphasized: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var onStatusPositiveMuted: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var onStatusWarningEmphasized: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var onStatusWarningMuted: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var navigationBar: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    // MARK: - Non multiple tokens

    override public var onBgPrimaryLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onBgSecondaryLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onBgTertiaryLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onBrandPrimaryLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onBrandSecondaryLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onBrandTertiaryLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onStatusAccentEmphasizedLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onStatusAccentMutedLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onStatusInfoEmphasizedLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onStatusInfoMutedLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onStatusNegativeEmphasizedLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onStatusNegativeMutedLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onStatusPositiveEmphasizedLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onStatusPositiveMutedLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onStatusWarningEmphasizedLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onStatusWarningMutedLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onOverlayModalLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onOverlayDropdownLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onOverlayTooltipLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var navigationBarLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }

    override public var onBgPrimaryDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onBgSecondaryDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onBgTertiaryDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onBrandPrimaryDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onBrandSecondaryDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onBrandTertiaryDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onStatusAccentEmphasizedDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onStatusAccentMutedDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onStatusInfoEmphasizedDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onStatusInfoMutedDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onStatusNegativeEmphasizedDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onStatusNegativeMutedDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onStatusPositiveEmphasizedDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onStatusPositiveMutedDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onStatusWarningEmphasizedDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onStatusWarningMutedDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onOverlayModalDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onOverlayDropdownDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var onOverlayTooltipDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var navigationBarDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
}

// swiftlint:enable required_deinit

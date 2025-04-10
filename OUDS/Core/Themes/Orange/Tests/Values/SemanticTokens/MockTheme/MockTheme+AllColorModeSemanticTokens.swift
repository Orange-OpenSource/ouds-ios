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
import OUDSTokensRaw
import OUDSTokensSemantic

// swiftlint:disable required_deinit

/// Overrides **all** the color mode semantic tokens (from its super class, i.e. ``OrangeThemeColorModeSemanticTokensProvider``) so as to test overriding of them (unit tests)
/// and to act like smoke tests with crashing tests if some tokens disappeared.
/// This ``MockThemeColorModeSemanticTokensProvider`` will be asigned in ``MockTheme`` as an ``AllColorModeSemanticTokens`` implementation.
open class MockThemeColorModeSemanticTokensProvider: OrangeThemeColorModeSemanticTokensProvider {

    static let mockThemeColorModeSemanticToken: ColorModeSemanticToken = "dumb value"
    static let mockThemeMultipleColorModeSemanticTokens = MultipleColorModeSemanticTokens("dumber value", mockThemeColorModeSemanticToken)

    // MARK: - Multiple tokens

    override public var modeOnBrandPrimary: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var modeOnBrandSecondary: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var modeOnBrandTertiary: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var modeOnStatusAccentEmphasized: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var modeOnStatusAccentMuted: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var modeOnStatusInfoEmphasized: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var modeOnStatusInfoMuted: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var modeOnStatusNegativeEmphasized: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var modeOnStatusNegativeMuted: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var modeOnStatusNeutralEmphasized: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var modeOnStatusNeutralMuted: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var modeOnStatusPositiveEmphasized: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var modeOnStatusPositiveMuted: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var modeOnStatusWarningEmphasized: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    override public var modeOnStatusWarningMuted: MultipleColorModeSemanticTokens { Self.mockThemeMultipleColorModeSemanticTokens }

    // MARK: - Non multiple tokens

    override public var modeOnBrandPrimaryLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnBrandSecondaryLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnBrandTertiaryLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnStatusAccentEmphasizedLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnStatusAccentMutedLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnStatusInfoEmphasizedLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnStatusInfoMutedLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnStatusNegativeEmphasizedLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnStatusNegativeMutedLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnStatusNeutralEmphasizedLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnStatusNeutralMutedLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnStatusPositiveEmphasizedLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnStatusPositiveMutedLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnStatusWarningEmphasizedLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnStatusWarningMutedLight: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnBrandPrimaryDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnBrandSecondaryDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnBrandTertiaryDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnStatusAccentEmphasizedDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnStatusAccentMutedDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnStatusInfoEmphasizedDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnStatusInfoMutedDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnStatusNegativeEmphasizedDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnStatusNegativeMutedDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnStatusNeutralEmphasizedDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnStatusNeutralMutedDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnStatusPositiveEmphasizedDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnStatusPositiveMutedDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnStatusWarningEmphasizedDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
    override public var modeOnStatusWarningMutedDark: ColorModeSemanticToken { Self.mockThemeColorModeSemanticToken }
}

// swiftlint:enable required_deinit

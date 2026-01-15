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

import OUDSThemesWireframe
import OUDSTokensRaw
import OUDSTokensSemantic
import Testing

/// Tests crash scenarios for `WireframeTheme` color mode handling using Swift Testing's `#expect(processExitsWith:)`.
/// These tests verify that the theme correctly enforces constraints by crashing when
/// undefined or unmanaged color mode tokens are used.
struct WireframeThemeColorModeCrashTests {

    /// Verify that `WireframeTheme` crashes when trying to use a color mode token with undefined value.
    /// Undefined values (⛔️) are forbidden and should trigger a fatal error.
    @Test(.enabled(if: ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] == nil))
    func wireframeThemeCrashesWithUndefinedColorModeValue() async {
        #expect(exitsWith: .failure) {
            let provider = WireframeThemeColorModeSemanticTokensProvider()
            let undefinedToken = MultipleColorModeSemanticToken("undefinedTest",
                                                               light: ColorModeRawTokens.undefined,
                                                               dark: ColorModeRawTokens.dark)
            _ = provider.toColor(from: undefinedToken)
        }
    }

    /// Verify that `WireframeTheme` crashes when trying to use an unmanaged color mode token.
    /// All color mode tokens must be explicitly managed in the theme's `toColor(from:)` method.
    @Test(.enabled(if: ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] == nil))
    func wireframeThemeCrashesWithUnmanagedColorModeToken() async {
        #expect(exitsWith: .failure) {
            let provider = WireframeThemeColorModeSemanticTokensProvider()
            let unmanagedToken = MultipleColorModeSemanticToken("unmanagedTest",
                                                               light: ColorModeRawTokens.light,
                                                               dark: ColorModeRawTokens.dark)
            _ = provider.toColor(from: unmanagedToken)
        }
    }
}

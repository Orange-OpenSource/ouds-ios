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

#if os(macOS)
@testable import OUDSThemesOrangeBusinessTools
import OUDSTokensRaw
import OUDSTokensSemantic
import Testing

// swiftlint:disable type_name

/// Tests crash scenarios for `OrangeBusinessToolsTheme` color mode handling using Swift Testing's `#expect(exitsWith:)`.
/// These tests verify that the theme correctly enforces constraints by crashing when
/// undefined or unmanaged color mode tokens are used.
///
/// **Should be run on macOS to catch the failure crash, not possible on iOS yet**
struct OrangeBusinessToolsThemeColorModeCrashTests {

    /// Verify that `OrangeBusinessToolsTheme` crashes when trying to use a color mode token with undefined value.
    /// Undefined values (⛔️) are forbidden and should trigger a fatal error.
    @Test
    func orangeBusinessToolsThemeCrashesWithUndefinedColorModeValue() async {
        await #expect(processExitsWith: .failure) {
            let provider = OrangeBusinessToolsThemeColorModeSemanticTokensProvider()
            let undefinedToken = MultipleColorModeSemanticToken("undefinedTest",
                                                                light: ColorModeRawTokens.undefined,
                                                                dark: ColorModeRawTokens.dark)
            _ = provider.toColor(from: undefinedToken)
        }
    }

    /// Verify that `OrangeBusinessToolsTheme` crashes when trying to use an unmanaged color mode token.
    /// All color mode tokens must be explicitly managed in the theme's `toColor(from:)` method.
    @Test
    func orangeBusinessToolsThemeCrashesWithUnmanagedColorModeToken() async {
        await #expect(processExitsWith: .failure) {
            let provider = OrangeBusinessToolsThemeColorModeSemanticTokensProvider()
            let unmanagedToken = MultipleColorModeSemanticToken("unmanagedTest",
                                                                light: ColorModeRawTokens.light,
                                                                dark: ColorModeRawTokens.dark)
            _ = provider.toColor(from: unmanagedToken)
        }
    }
}

// swiftlint:enable type_name
#endif

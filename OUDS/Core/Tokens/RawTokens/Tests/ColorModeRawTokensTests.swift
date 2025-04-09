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
import OUDSTokensRaw
import Testing
import TestsUtils


/// The aim of this tests class is to look for regressions in **color mode raw tokens**.
///
/// Here are some rules to follow:
/// - a light color mode is defined with "light" value by tokenator
/// - a dark color mode is defined with "dark" value by tokenator
/// - a light monochrome color mode is defined with "monoLight" value by tokenator
/// - a dark monochrome color mode is defined with "monoDark" value by tokenator
/// - an undefined color mode is defined with "⛔️" value by tokenator
struct ColorModeRawTokensTests {

    @Test func colorModeRawTokenLight() throws {
        #expect(ColorModeRawTokens.light == "light")
    }

    @Test func colorModeRawTokenDark() throws {
        #expect(ColorModeRawTokens.dark == "dark")
    }

    @Test func colorModeRawTokenMonochromeDark() throws {
        #expect(ColorModeRawTokens.monochromeLight == "monoLight")
    }
    
    @Test func colorModeRawTokenMonochromeLight() throws {
        #expect(ColorModeRawTokens.monochromeDark == "monoDark")
    }
    
    @Test func colorModeRawTokenUndefined() throws {
        #expect(ColorModeRawTokens.undefined == "⛔️")
    }
}

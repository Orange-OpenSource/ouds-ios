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

import OUDSThemesSosh
import Testing

/// The aim of this tests class is to look for regressions in **Sosh brand font raw tokens**.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// In the semantics of **font raw tokens**, there will be some unchanged things like relationships between tokens.
/// Some of these tokens are also strongly based on their raw tvalues (like font family names) and must be tested.
/// Thus this tests class just checks if such relationships are still here whatever the values at the end.
struct SoshBrandFontRawTokensTests {

    @Test func fontRawTokenFontFamilyDefault() throws {
        #expect(SoshBrandFontRawTokens.familyDefault == "Sosh")
    }
}

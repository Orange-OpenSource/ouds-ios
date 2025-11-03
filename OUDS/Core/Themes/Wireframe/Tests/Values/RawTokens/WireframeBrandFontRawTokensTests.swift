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

import Foundation
import OUDSThemesWireframe
import Testing

/// The aim of this tests class is to look for regressions in **Wriframe brand font raw tokens**.
///
/// Because these values will be at least generated through an external tool, is it not relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **Wireframe brand font raw tokens**, there will be some unchanged things like relationships between tokens.
struct WireframeBrandFontRawTokensTests {

    @Test func wireframeBrandFontRawTokenFontFamilyBrandDefault() throws {
        #expect(WireframeBrandFontRawTokens.familyDefault == "Shantell Sans")
    }
}

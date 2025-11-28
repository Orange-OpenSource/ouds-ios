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

import OUDSTokensRaw
import Testing

/// The aim of this tests class is to look for regressions in **effect raw tokens**.
///
/// Because these values will be at least generated through an external tool, is it not relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **effect raw tokens**, there will be some unchanged things like relationships between tokens.
/// Thus this tests class just checks if such relationships are still here whatever the values at the end.
///
/// Here are some rules to follow:
/// - must not be negative value
/// - must not be integer value
/// - the higher the token name is, the higher its value is
struct EffectRawTokensTests {

    // MARK: - Positive tests

    @Test
    func effectRawTokenBlur160IsNotNegative() throws {
        #expect(EffectRawTokens.blur160 >= 0)
    }

    @Test
    func effectRawTokenBlur320IsNotNegative() throws {
        #expect(EffectRawTokens.blur320 >= 0)
    }

    // MARK: - Integer tests

    @Test
    func effectRawTokenBlur160IsInteger() throws {
        #expect(EffectRawTokens.blur160.truncatingRemainder(dividingBy: 1) == 0)
    }

    @Test
    func effectRawTokenBlur320IsInteger() throws {
        #expect(EffectRawTokens.blur320.truncatingRemainder(dividingBy: 1) == 0)
    }

    // MARK: - Order tests

    @Test
    func effectRawTokenBlur160LowerThan320() throws {
        #expect(EffectRawTokens.blur160 < EffectRawTokens.blur320)
    }
}

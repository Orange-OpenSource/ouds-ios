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

import XCTest
import OUDSTokensRaw

/// The aim of this tests class is to look for regressions in **opacity raw tokens**.
/// Because these values will be at least generated through an external tool, is it not relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of border raw tokens, there will be some unchanged things like relationships between tokens.
/// Thus this tests class just checks if such relationships are still here whatever the values at the end.
final class OpacityRawTokensTests: XCTestCase {

    /// Whathever the values are, opacity raw tokens must keep their order relationships
    func testOrderRelationshipForWidths() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity0, OpacityRawTokens.opacity100)
        XCTAssertLessThan(OpacityRawTokens.opacity100, OpacityRawTokens.opacity200)
        XCTAssertLessThan(OpacityRawTokens.opacity200, OpacityRawTokens.opacity300)
        XCTAssertLessThan(OpacityRawTokens.opacity300, OpacityRawTokens.opacity400)
        XCTAssertLessThan(OpacityRawTokens.opacity400, OpacityRawTokens.opacity500)
        XCTAssertLessThan(OpacityRawTokens.opacity500, OpacityRawTokens.opacity600)
        XCTAssertLessThan(OpacityRawTokens.opacity600, OpacityRawTokens.opacity700)
        XCTAssertLessThan(OpacityRawTokens.opacity700, OpacityRawTokens.opacity800)
        XCTAssertLessThan(OpacityRawTokens.opacity800, OpacityRawTokens.opacity900)
    }
}

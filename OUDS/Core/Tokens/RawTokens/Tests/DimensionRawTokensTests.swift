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

/// The aim of this tests class is to look for regressions in **dimension raw tokens**.
/// Because these values will be at least generated through an external tool, is it not relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of dimension raw tokens, there will be some unchanged things like relationships between tokens.
/// Thus this tests class just checks if such relationships are still here whatever the values at the end.
final class DimensionRawTokensTests: XCTestCase {

    /// Whatever the values are, dimensions must keep their order relationships
    func testOrderRelationshipForWidths() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension0, DimensionRawTokens.dimension25)
        XCTAssertLessThan(DimensionRawTokens.dimension25, DimensionRawTokens.dimension50)
        XCTAssertLessThan(DimensionRawTokens.dimension50, DimensionRawTokens.dimension75)
        XCTAssertLessThan(DimensionRawTokens.dimension75, DimensionRawTokens.dimension100)
        XCTAssertLessThan(DimensionRawTokens.dimension100, DimensionRawTokens.dimension150)
        XCTAssertLessThan(DimensionRawTokens.dimension150, DimensionRawTokens.dimension200)
        XCTAssertLessThan(DimensionRawTokens.dimension200, DimensionRawTokens.dimension250)
        XCTAssertLessThan(DimensionRawTokens.dimension250, DimensionRawTokens.dimension300)
        XCTAssertLessThan(DimensionRawTokens.dimension300, DimensionRawTokens.dimension350)
        XCTAssertLessThan(DimensionRawTokens.dimension350, DimensionRawTokens.dimension400)
        XCTAssertLessThan(DimensionRawTokens.dimension400, DimensionRawTokens.dimension450)
        XCTAssertLessThan(DimensionRawTokens.dimension450, DimensionRawTokens.dimension500)
        XCTAssertLessThan(DimensionRawTokens.dimension500, DimensionRawTokens.dimension550)
        XCTAssertLessThan(DimensionRawTokens.dimension550, DimensionRawTokens.dimension600)
        XCTAssertLessThan(DimensionRawTokens.dimension600, DimensionRawTokens.dimension650)
        XCTAssertLessThan(DimensionRawTokens.dimension650, DimensionRawTokens.dimension700)
        XCTAssertLessThan(DimensionRawTokens.dimension700, DimensionRawTokens.dimension750)
        XCTAssertLessThan(DimensionRawTokens.dimension750, DimensionRawTokens.dimension800)
        XCTAssertLessThan(DimensionRawTokens.dimension800, DimensionRawTokens.dimension900)
        XCTAssertLessThan(DimensionRawTokens.dimension900, DimensionRawTokens.dimension1000)
        XCTAssertLessThan(DimensionRawTokens.dimension1000, DimensionRawTokens.dimension1200)
        XCTAssertLessThan(DimensionRawTokens.dimension1200, DimensionRawTokens.dimension1400)
        XCTAssertLessThan(DimensionRawTokens.dimension1400, DimensionRawTokens.dimension1600)
        XCTAssertLessThan(DimensionRawTokens.dimension1600, DimensionRawTokens.dimension1800)
        XCTAssertLessThan(DimensionRawTokens.dimension1800, DimensionRawTokens.dimension2000)
        XCTAssertLessThan(DimensionRawTokens.dimension2000, DimensionRawTokens.dimension3000)
        XCTAssertLessThan(DimensionRawTokens.dimension3000, DimensionRawTokens.dimension4000)
        XCTAssertLessThan(DimensionRawTokens.dimension4000, DimensionRawTokens.dimension5000)
        XCTAssertLessThan(DimensionRawTokens.dimension5000, DimensionRawTokens.dimension6000)
        XCTAssertLessThan(DimensionRawTokens.dimension6000, DimensionRawTokens.dimension7000)
        XCTAssertLessThan(DimensionRawTokens.dimension7000, DimensionRawTokens.dimension9000)
        XCTAssertLessThan(DimensionRawTokens.dimension9000, DimensionRawTokens.dimension11000)
    }
}

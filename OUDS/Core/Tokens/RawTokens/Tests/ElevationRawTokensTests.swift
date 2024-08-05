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

/// The aim of this tests class is to look for regressions in **elevation raw tokens**.
/// Because these values will be at least generated through an external tool, is it not mandatory and relevant to test each token values.
/// Indeed, each futur generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of elevation raw tokens, there will be some unchanged things like relationships between tokens.
/// Thus this tests class just checks if such relationships are still here whatever the values at the end.
final class ElevationRawTokensTests: XCTestCase {

    /// Whathever the values are, Z Index elevation raw tokens must keep their order relationships
    func testOrderRelationshipZIndex() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationZIndexMinus9999, ElevationRawTokens.elevationZIndex0)
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex0, ElevationRawTokens.elevationZIndex1000)
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex1000, ElevationRawTokens.elevationZIndex1010)
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex1010, ElevationRawTokens.elevationZIndex1020)
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex1020, ElevationRawTokens.elevationZIndex1030)
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex1030, ElevationRawTokens.elevationZIndex1035)
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex1035, ElevationRawTokens.elevationZIndex1038)
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex1038, ElevationRawTokens.elevationZIndex1040)
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex1040, ElevationRawTokens.elevationZIndex1045)
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex1045, ElevationRawTokens.elevationZIndex1050)
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex1050, ElevationRawTokens.elevationZIndex1060)
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex1060, ElevationRawTokens.elevationZIndex1070)
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex1070, ElevationRawTokens.elevationZIndex1080)
        XCTAssertLessThan(ElevationRawTokens.elevationZIndex1080, ElevationRawTokens.elevationZIndex1090)
    }

    /// Whathever the values are, Y elevation raw tokens must keep their order relationships
    func testOrderRelationshipForY() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationY0, ElevationRawTokens.elevationY100)
        XCTAssertLessThan(ElevationRawTokens.elevationY100, ElevationRawTokens.elevationY200)
        XCTAssertLessThan(ElevationRawTokens.elevationY200, ElevationRawTokens.elevationY300)
        XCTAssertLessThan(ElevationRawTokens.elevationY300, ElevationRawTokens.elevationY400)
        XCTAssertLessThan(ElevationRawTokens.elevationY400, ElevationRawTokens.elevationY500)
        XCTAssertLessThan(ElevationRawTokens.elevationY500, ElevationRawTokens.elevationY600)
    }

    /// Whathever the values are, elevation blur raw tokens must keep their order relationships
    func testOrderRelationshipForBlur() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationBlur0, ElevationRawTokens.elevationBlur100)
        XCTAssertLessThan(ElevationRawTokens.elevationBlur100, ElevationRawTokens.elevationBlur200)
        XCTAssertLessThan(ElevationRawTokens.elevationBlur200, ElevationRawTokens.elevationBlur300)
        XCTAssertLessThan(ElevationRawTokens.elevationBlur300, ElevationRawTokens.elevationBlur400)
        XCTAssertLessThan(ElevationRawTokens.elevationBlur400, ElevationRawTokens.elevationBlur500)
        XCTAssertLessThan(ElevationRawTokens.elevationBlur500, ElevationRawTokens.elevationBlur600)
        XCTAssertLessThan(ElevationRawTokens.elevationBlur600, ElevationRawTokens.elevationBlur700)
    }

    /// Whathever the values are, elevation spread raw tokens must keep their order relationships
    func testOrderRelationshipForSpread() throws {
        XCTAssertLessThan(ElevationRawTokens.elevationSpreadMinus400, ElevationRawTokens.elevationSpreadMinus300)
        XCTAssertLessThan(ElevationRawTokens.elevationSpreadMinus300, ElevationRawTokens.elevationSpreadMinus200)
        XCTAssertLessThan(ElevationRawTokens.elevationSpreadMinus200, ElevationRawTokens.elevationSpreadMinus100)
        XCTAssertLessThan(ElevationRawTokens.elevationSpreadMinus100, ElevationRawTokens.elevationSpread0)
        XCTAssertLessThan(ElevationRawTokens.elevationSpread0, ElevationRawTokens.elevationSpread300)
    }
}

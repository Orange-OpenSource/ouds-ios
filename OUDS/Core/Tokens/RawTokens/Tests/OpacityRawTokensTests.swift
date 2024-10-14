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
import XCTest

// swiftlint:disable required_deinit

/// The aim of this tests class is to look for regressions in **opacity raw tokens**.
/// Because these values will be at least generated through an external tool, is it not relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **opacity raw tokens**, there will be some unchanged things like relationships between tokens.
/// Thus this tests class just checks if such relationships are still here whatever the values at the end.
final class OpacityRawTokensTests: XCTestCase {

    func testOpacityRawToken0LessThan100() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity0, OpacityRawTokens.opacity100)
    }

    func testOpacityRawToken0Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity0, max: 1)
    }

    func testOpacityRawToken100LessThan200() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity100, OpacityRawTokens.opacity200)
    }

    func testOpacityRawToken100Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity100, max: 1)
    }

    func testOpacityRawToken200LessThan300() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity200, OpacityRawTokens.opacity300)
    }

    func testOpacityRawToken200Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity200, max: 1)
    }

    func testOpacityRawToken300LessThan400() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity300, OpacityRawTokens.opacity400)
    }

    func testOpacityRawToken300Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity300, max: 1)
    }

    func testOpacityRawToken400LessThan500() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity400, OpacityRawTokens.opacity500)
    }

    func testOpacityRawToken400Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity400, max: 1)
    }

    func testOpacityRawToken500LessThan600() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity500, OpacityRawTokens.opacity600)
    }

    func testOpacityRawToken500Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity500, max: 1)
    }

    func testOpacityRawToken600LessThan700() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity600, OpacityRawTokens.opacity700)
    }

    func testOpacityRawToken600Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity600, max: 1)
    }

    func testOpacityRawToken700LessThan800() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity700, OpacityRawTokens.opacity800)
    }

    func testOpacityRawToken700Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity700, max: 1)
    }

    func testOpacityRawToken800LessThan900() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity800, OpacityRawTokens.opacity900)
    }

    func testOpacityRawToken800Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity800, max: 1)
    }

    func testOpacityRawToken900Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity900, max: 1)
    }
}

// swiftlint:enable required_deinit

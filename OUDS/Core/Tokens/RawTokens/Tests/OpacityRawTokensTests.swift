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

    func testOpacityRawToken0LessThan400() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity0, OpacityRawTokens.opacity40)
    }

    func testOpacityRawToken0Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity0, max: 1)
    }

    func testOpacityRawToken40LessThan80() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity40, OpacityRawTokens.opacity80)
    }

    func testOpacityRawToken40Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity40, max: 1)
    }

    func testOpacityRawToken80LessThan120() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity80, OpacityRawTokens.opacity120)
    }

    func testOpacityRawToken80Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity80, max: 1)
    }

    func testOpacityRawToken120LessThan160() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity120, OpacityRawTokens.opacity160)
    }

    func testOpacityRawToken120Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity120, max: 1)
    }

    func testOpacityRawToken160LessThan200() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity160, OpacityRawTokens.opacity200)
    }

    func testOpacityRawToken160Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity160, max: 1)
    }

    func testOpacityRawToken200LessThan240() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity200, OpacityRawTokens.opacity240)
    }

    func testOpacityRawToken200Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity200, max: 1)
    }

    func testOpacityRawToken240LessThan280() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity240, OpacityRawTokens.opacity280)
    }

    func testOpacityRawToken240Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity240, max: 1)
    }

    func testOpacityRawToken280LessThan320() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity280, OpacityRawTokens.opacity320)
    }

    func testOpacityRawToken280Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity280, max: 1)
    }

    func testOpacityRawToken320LessThan360() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity320, OpacityRawTokens.opacity360)
    }

    func testOpacityRawToken320Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity320, max: 1)
    }

    func testOpacityRawToken360LessThan400() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity360, OpacityRawTokens.opacity400)
    }

    func testOpacityRawToken360Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity360, max: 1)
    }

    func testOpacityRawToken400LessThan440() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity400, OpacityRawTokens.opacity440)
    }

    func testOpacityRawToken400Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity400, max: 1)
    }

    func testOpacityRawToken440LessThan840() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity440, OpacityRawTokens.opacity480)
    }

    func testOpacityRawToken440Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity440, max: 1)
    }

    func testOpacityRawToken480LessThan520() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity480, OpacityRawTokens.opacity520)
    }

    func testOpacityRawToken480Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity480, max: 1)
    }

    func testOpacityRawToken520LessThan560() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity520, OpacityRawTokens.opacity560)
    }

    func testOpacityRawToken520Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity520, max: 1)
    }

    func testOpacityRawToken560LessThan600() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity560, OpacityRawTokens.opacity600)
    }

    func testOpacityRawToken560Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity560, max: 1)
    }

    func testOpacityRawToken600LessThan640() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity600, OpacityRawTokens.opacity640)
    }

    func testOpacityRawToken600Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity600, max: 1)
    }

    func testOpacityRawToken640LessThan680() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity640, OpacityRawTokens.opacity680)
    }

    func testOpacityRawToken640Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity640, max: 1)
    }

    func testOpacityRawToken680LessThan720() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity680, OpacityRawTokens.opacity720)
    }

    func testOpacityRawToken680Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity680, max: 1)
    }

    func testOpacityRawToken720LessThan760() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity720, OpacityRawTokens.opacity760)
    }

    func testOpacityRawToken720Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity720, max: 1)
    }

    func testOpacityRawToken760LessThan800() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity760, OpacityRawTokens.opacity800)
    }

    func testOpacityRawToken760Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity760, max: 1)
    }

    func testOpacityRawToken800LessThan880() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity800, OpacityRawTokens.opacity880)
    }

    func testOpacityRawToken800Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity800, max: 1)
    }

    func testOpacityRawToken880LessThan920() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity880, OpacityRawTokens.opacity920)
    }

    func testOpacityRawToken880etween0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity880, max: 1)
    }

    func testOpacityRawToken920LessThan960() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity920, OpacityRawTokens.opacity960)
    }

    func testOpacityRawToken920Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity920, max: 1)
    }

    func testOpacityRawToken960LessThan1000() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity960, OpacityRawTokens.opacity1000)
    }

    func testOpacityRawToken960Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity960, max: 1)
    }

    func testOpacityRawToken1000Between0and1() throws {
        XCTAssertBetween(min: 0, OpacityRawTokens.opacity1000, max: 1)
    }
}

// swiftlint:enable required_deinit

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
import TestsUtils
import XCTest

// swiftlint:disable required_deinit
// swiftlint:disable type_body_length
// swiftlint:disable function_body_length
// swiftlint:disable file_length

/// The aim of this tests class is to look for regressions in **opacity raw tokens**.
///
/// Because these values will be at least generated through an external tool, is it not relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **opacity raw tokens**, there will be some unchanged things like relationships between tokens.
///
/// Here are some rules to follow:
/// - the higher the opacity token is, the higher its value is
/// - all opacity tokens must be different
/// - all opacity tokens must be between 0 and 1
final class OpacityRawTokensTests: XCTestCase {

    // MARK: - Settings

    /// Minimal value for opacity
    private static let opacityRawTokenMinValue: Double = 0

    /// Maximal value for opacity
    private static let opacityRawTokenMaxValue: Double = 1

    // MARK: - Tests

    func testOpacityRawToken0LessThan400() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity0, OpacityRawTokens.opacity40)
    }

    func testOpacityRawToken0Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity0, max: Self.opacityRawTokenMaxValue)
    }

    func testOpacityRawToken40LessThan80() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity40, OpacityRawTokens.opacity80)
    }

    func testOpacityRawToken40Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity40, max: Self.opacityRawTokenMaxValue)
    }

    func testOpacityRawToken80LessThan120() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity80, OpacityRawTokens.opacity120)
    }

    func testOpacityRawToken80Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity80, max: Self.opacityRawTokenMaxValue)
    }

    func testOpacityRawToken120LessThan160() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity120, OpacityRawTokens.opacity160)
    }

    func testOpacityRawToken120Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity120, max: Self.opacityRawTokenMaxValue)
    }

    func testOpacityRawToken160LessThan200() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity160, OpacityRawTokens.opacity200)
    }

    func testOpacityRawToken160Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity160, max: Self.opacityRawTokenMaxValue)
    }

    func testOpacityRawToken200LessThan240() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity200, OpacityRawTokens.opacity240)
    }

    func testOpacityRawToken200Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity200, max: Self.opacityRawTokenMaxValue)
    }

    func testOpacityRawToken240LessThan280() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity240, OpacityRawTokens.opacity280)
    }

    func testOpacityRawToken240Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity240, max: Self.opacityRawTokenMaxValue)
    }

    func testOpacityRawToken280LessThan320() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity280, OpacityRawTokens.opacity320)
    }

    func testOpacityRawToken280Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity280, max: Self.opacityRawTokenMaxValue)
    }

    func testOpacityRawToken320LessThan360() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity320, OpacityRawTokens.opacity360)
    }

    func testOpacityRawToken320Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity320, max: Self.opacityRawTokenMaxValue)
    }

    func testOpacityRawToken360LessThan400() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity360, OpacityRawTokens.opacity400)
    }

    func testOpacityRawToken360Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity360, max: Self.opacityRawTokenMaxValue)
    }

    func testOpacityRawToken400LessThan440() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity400, OpacityRawTokens.opacity440)
    }

    func testOpacityRawToken400Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity400, max: Self.opacityRawTokenMaxValue)
    }

    func testOpacityRawToken440LessThan840() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity440, OpacityRawTokens.opacity480)
    }

    func testOpacityRawToken440Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity440, max: Self.opacityRawTokenMaxValue)
    }

    func testOpacityRawToken480LessThan520() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity480, OpacityRawTokens.opacity520)
    }

    func testOpacityRawToken480Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity480, max: Self.opacityRawTokenMaxValue)
    }

    func testOpacityRawToken520LessThan560() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity520, OpacityRawTokens.opacity560)
    }

    func testOpacityRawToken520Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity520, max: Self.opacityRawTokenMaxValue)
    }

    func testOpacityRawToken560LessThan600() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity560, OpacityRawTokens.opacity600)
    }

    func testOpacityRawToken560Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity560, max: Self.opacityRawTokenMaxValue)
    }

    func testOpacityRawToken600LessThan640() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity600, OpacityRawTokens.opacity640)
    }

    func testOpacityRawToken600Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity600, max: Self.opacityRawTokenMaxValue)
    }

    func testOpacityRawToken640LessThan680() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity640, OpacityRawTokens.opacity680)
    }

    func testOpacityRawToken640Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity640, max: Self.opacityRawTokenMaxValue)
    }

    func testOpacityRawToken680LessThan720() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity680, OpacityRawTokens.opacity720)
    }

    func testOpacityRawToken680Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity680, max: Self.opacityRawTokenMaxValue)
    }

    func testOpacityRawToken720LessThan760() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity720, OpacityRawTokens.opacity760)
    }

    func testOpacityRawToken720Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity720, max: Self.opacityRawTokenMaxValue)
    }

    func testOpacityRawToken760LessThan800() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity760, OpacityRawTokens.opacity800)
    }

    func testOpacityRawToken760Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity760, max: Self.opacityRawTokenMaxValue)
    }

    func testOpacityRawToken800LessThan880() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity800, OpacityRawTokens.opacity880)
    }

    func testOpacityRawToken800Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity800, max: Self.opacityRawTokenMaxValue)
    }

    func testOpacityRawToken880LessThan920() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity880, OpacityRawTokens.opacity920)
    }

    func testOpacityRawToken880etween0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity880, max: Self.opacityRawTokenMaxValue)
    }

    func testOpacityRawToken920LessThan960() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity920, OpacityRawTokens.opacity960)
    }

    func testOpacityRawToken920Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity920, max: Self.opacityRawTokenMaxValue)
    }

    func testOpacityRawToken960LessThan1000() throws {
        XCTAssertLessThan(OpacityRawTokens.opacity960, OpacityRawTokens.opacity1000)
    }

    func testOpacityRawToken960Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity960, max: Self.opacityRawTokenMaxValue)
    }

    func testOpacityRawToken1000Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity1000, max: Self.opacityRawTokenMaxValue)
    }

    func testNonEqualityForOpacities() throws {
        XCTAssertNotEqual(OpacityRawTokens.opacity0, OpacityRawTokens.opacity40)
        XCTAssertNotEqual(OpacityRawTokens.opacity0, OpacityRawTokens.opacity80)
        XCTAssertNotEqual(OpacityRawTokens.opacity0, OpacityRawTokens.opacity120)
        XCTAssertNotEqual(OpacityRawTokens.opacity0, OpacityRawTokens.opacity160)
        XCTAssertNotEqual(OpacityRawTokens.opacity0, OpacityRawTokens.opacity200)
        XCTAssertNotEqual(OpacityRawTokens.opacity0, OpacityRawTokens.opacity240)
        XCTAssertNotEqual(OpacityRawTokens.opacity0, OpacityRawTokens.opacity280)
        XCTAssertNotEqual(OpacityRawTokens.opacity0, OpacityRawTokens.opacity320)
        XCTAssertNotEqual(OpacityRawTokens.opacity0, OpacityRawTokens.opacity360)
        XCTAssertNotEqual(OpacityRawTokens.opacity0, OpacityRawTokens.opacity400)
        XCTAssertNotEqual(OpacityRawTokens.opacity0, OpacityRawTokens.opacity440)
        XCTAssertNotEqual(OpacityRawTokens.opacity0, OpacityRawTokens.opacity480)
        XCTAssertNotEqual(OpacityRawTokens.opacity0, OpacityRawTokens.opacity520)
        XCTAssertNotEqual(OpacityRawTokens.opacity0, OpacityRawTokens.opacity560)
        XCTAssertNotEqual(OpacityRawTokens.opacity0, OpacityRawTokens.opacity600)
        XCTAssertNotEqual(OpacityRawTokens.opacity0, OpacityRawTokens.opacity640)
        XCTAssertNotEqual(OpacityRawTokens.opacity0, OpacityRawTokens.opacity680)
        XCTAssertNotEqual(OpacityRawTokens.opacity0, OpacityRawTokens.opacity720)
        XCTAssertNotEqual(OpacityRawTokens.opacity0, OpacityRawTokens.opacity760)
        XCTAssertNotEqual(OpacityRawTokens.opacity0, OpacityRawTokens.opacity800)
        XCTAssertNotEqual(OpacityRawTokens.opacity0, OpacityRawTokens.opacity880)
        XCTAssertNotEqual(OpacityRawTokens.opacity0, OpacityRawTokens.opacity920)
        XCTAssertNotEqual(OpacityRawTokens.opacity0, OpacityRawTokens.opacity960)
        XCTAssertNotEqual(OpacityRawTokens.opacity0, OpacityRawTokens.opacity1000)

        XCTAssertNotEqual(OpacityRawTokens.opacity40, OpacityRawTokens.opacity80)
        XCTAssertNotEqual(OpacityRawTokens.opacity40, OpacityRawTokens.opacity120)
        XCTAssertNotEqual(OpacityRawTokens.opacity40, OpacityRawTokens.opacity160)
        XCTAssertNotEqual(OpacityRawTokens.opacity40, OpacityRawTokens.opacity200)
        XCTAssertNotEqual(OpacityRawTokens.opacity40, OpacityRawTokens.opacity240)
        XCTAssertNotEqual(OpacityRawTokens.opacity40, OpacityRawTokens.opacity280)
        XCTAssertNotEqual(OpacityRawTokens.opacity40, OpacityRawTokens.opacity320)
        XCTAssertNotEqual(OpacityRawTokens.opacity40, OpacityRawTokens.opacity360)
        XCTAssertNotEqual(OpacityRawTokens.opacity40, OpacityRawTokens.opacity400)
        XCTAssertNotEqual(OpacityRawTokens.opacity40, OpacityRawTokens.opacity440)
        XCTAssertNotEqual(OpacityRawTokens.opacity40, OpacityRawTokens.opacity480)
        XCTAssertNotEqual(OpacityRawTokens.opacity40, OpacityRawTokens.opacity520)
        XCTAssertNotEqual(OpacityRawTokens.opacity40, OpacityRawTokens.opacity560)
        XCTAssertNotEqual(OpacityRawTokens.opacity40, OpacityRawTokens.opacity600)
        XCTAssertNotEqual(OpacityRawTokens.opacity40, OpacityRawTokens.opacity640)
        XCTAssertNotEqual(OpacityRawTokens.opacity40, OpacityRawTokens.opacity680)
        XCTAssertNotEqual(OpacityRawTokens.opacity40, OpacityRawTokens.opacity720)
        XCTAssertNotEqual(OpacityRawTokens.opacity40, OpacityRawTokens.opacity760)
        XCTAssertNotEqual(OpacityRawTokens.opacity40, OpacityRawTokens.opacity800)
        XCTAssertNotEqual(OpacityRawTokens.opacity40, OpacityRawTokens.opacity880)
        XCTAssertNotEqual(OpacityRawTokens.opacity40, OpacityRawTokens.opacity920)
        XCTAssertNotEqual(OpacityRawTokens.opacity40, OpacityRawTokens.opacity960)
        XCTAssertNotEqual(OpacityRawTokens.opacity40, OpacityRawTokens.opacity1000)

        XCTAssertNotEqual(OpacityRawTokens.opacity80, OpacityRawTokens.opacity120)
        XCTAssertNotEqual(OpacityRawTokens.opacity80, OpacityRawTokens.opacity160)
        XCTAssertNotEqual(OpacityRawTokens.opacity80, OpacityRawTokens.opacity200)
        XCTAssertNotEqual(OpacityRawTokens.opacity80, OpacityRawTokens.opacity240)
        XCTAssertNotEqual(OpacityRawTokens.opacity80, OpacityRawTokens.opacity280)
        XCTAssertNotEqual(OpacityRawTokens.opacity80, OpacityRawTokens.opacity320)
        XCTAssertNotEqual(OpacityRawTokens.opacity80, OpacityRawTokens.opacity360)
        XCTAssertNotEqual(OpacityRawTokens.opacity80, OpacityRawTokens.opacity400)
        XCTAssertNotEqual(OpacityRawTokens.opacity80, OpacityRawTokens.opacity440)
        XCTAssertNotEqual(OpacityRawTokens.opacity80, OpacityRawTokens.opacity480)
        XCTAssertNotEqual(OpacityRawTokens.opacity80, OpacityRawTokens.opacity520)
        XCTAssertNotEqual(OpacityRawTokens.opacity80, OpacityRawTokens.opacity560)
        XCTAssertNotEqual(OpacityRawTokens.opacity80, OpacityRawTokens.opacity600)
        XCTAssertNotEqual(OpacityRawTokens.opacity80, OpacityRawTokens.opacity640)
        XCTAssertNotEqual(OpacityRawTokens.opacity80, OpacityRawTokens.opacity680)
        XCTAssertNotEqual(OpacityRawTokens.opacity80, OpacityRawTokens.opacity720)
        XCTAssertNotEqual(OpacityRawTokens.opacity80, OpacityRawTokens.opacity760)
        XCTAssertNotEqual(OpacityRawTokens.opacity80, OpacityRawTokens.opacity800)
        XCTAssertNotEqual(OpacityRawTokens.opacity80, OpacityRawTokens.opacity880)
        XCTAssertNotEqual(OpacityRawTokens.opacity80, OpacityRawTokens.opacity920)
        XCTAssertNotEqual(OpacityRawTokens.opacity80, OpacityRawTokens.opacity960)
        XCTAssertNotEqual(OpacityRawTokens.opacity80, OpacityRawTokens.opacity1000)

        XCTAssertNotEqual(OpacityRawTokens.opacity120, OpacityRawTokens.opacity160)
        XCTAssertNotEqual(OpacityRawTokens.opacity120, OpacityRawTokens.opacity200)
        XCTAssertNotEqual(OpacityRawTokens.opacity120, OpacityRawTokens.opacity240)
        XCTAssertNotEqual(OpacityRawTokens.opacity120, OpacityRawTokens.opacity280)
        XCTAssertNotEqual(OpacityRawTokens.opacity120, OpacityRawTokens.opacity320)
        XCTAssertNotEqual(OpacityRawTokens.opacity120, OpacityRawTokens.opacity360)
        XCTAssertNotEqual(OpacityRawTokens.opacity120, OpacityRawTokens.opacity400)
        XCTAssertNotEqual(OpacityRawTokens.opacity120, OpacityRawTokens.opacity440)
        XCTAssertNotEqual(OpacityRawTokens.opacity120, OpacityRawTokens.opacity480)
        XCTAssertNotEqual(OpacityRawTokens.opacity120, OpacityRawTokens.opacity520)
        XCTAssertNotEqual(OpacityRawTokens.opacity120, OpacityRawTokens.opacity560)
        XCTAssertNotEqual(OpacityRawTokens.opacity120, OpacityRawTokens.opacity600)
        XCTAssertNotEqual(OpacityRawTokens.opacity120, OpacityRawTokens.opacity640)
        XCTAssertNotEqual(OpacityRawTokens.opacity120, OpacityRawTokens.opacity680)
        XCTAssertNotEqual(OpacityRawTokens.opacity120, OpacityRawTokens.opacity720)
        XCTAssertNotEqual(OpacityRawTokens.opacity120, OpacityRawTokens.opacity760)
        XCTAssertNotEqual(OpacityRawTokens.opacity120, OpacityRawTokens.opacity800)
        XCTAssertNotEqual(OpacityRawTokens.opacity120, OpacityRawTokens.opacity880)
        XCTAssertNotEqual(OpacityRawTokens.opacity120, OpacityRawTokens.opacity920)
        XCTAssertNotEqual(OpacityRawTokens.opacity120, OpacityRawTokens.opacity960)
        XCTAssertNotEqual(OpacityRawTokens.opacity120, OpacityRawTokens.opacity1000)

        XCTAssertNotEqual(OpacityRawTokens.opacity160, OpacityRawTokens.opacity200)
        XCTAssertNotEqual(OpacityRawTokens.opacity160, OpacityRawTokens.opacity240)
        XCTAssertNotEqual(OpacityRawTokens.opacity160, OpacityRawTokens.opacity280)
        XCTAssertNotEqual(OpacityRawTokens.opacity160, OpacityRawTokens.opacity320)
        XCTAssertNotEqual(OpacityRawTokens.opacity160, OpacityRawTokens.opacity360)
        XCTAssertNotEqual(OpacityRawTokens.opacity160, OpacityRawTokens.opacity400)
        XCTAssertNotEqual(OpacityRawTokens.opacity160, OpacityRawTokens.opacity440)
        XCTAssertNotEqual(OpacityRawTokens.opacity160, OpacityRawTokens.opacity480)
        XCTAssertNotEqual(OpacityRawTokens.opacity160, OpacityRawTokens.opacity520)
        XCTAssertNotEqual(OpacityRawTokens.opacity160, OpacityRawTokens.opacity560)
        XCTAssertNotEqual(OpacityRawTokens.opacity160, OpacityRawTokens.opacity600)
        XCTAssertNotEqual(OpacityRawTokens.opacity160, OpacityRawTokens.opacity640)
        XCTAssertNotEqual(OpacityRawTokens.opacity160, OpacityRawTokens.opacity680)
        XCTAssertNotEqual(OpacityRawTokens.opacity160, OpacityRawTokens.opacity720)
        XCTAssertNotEqual(OpacityRawTokens.opacity160, OpacityRawTokens.opacity760)
        XCTAssertNotEqual(OpacityRawTokens.opacity160, OpacityRawTokens.opacity800)
        XCTAssertNotEqual(OpacityRawTokens.opacity160, OpacityRawTokens.opacity880)
        XCTAssertNotEqual(OpacityRawTokens.opacity160, OpacityRawTokens.opacity920)
        XCTAssertNotEqual(OpacityRawTokens.opacity160, OpacityRawTokens.opacity960)
        XCTAssertNotEqual(OpacityRawTokens.opacity160, OpacityRawTokens.opacity1000)

        XCTAssertNotEqual(OpacityRawTokens.opacity200, OpacityRawTokens.opacity240)
        XCTAssertNotEqual(OpacityRawTokens.opacity200, OpacityRawTokens.opacity280)
        XCTAssertNotEqual(OpacityRawTokens.opacity200, OpacityRawTokens.opacity320)
        XCTAssertNotEqual(OpacityRawTokens.opacity200, OpacityRawTokens.opacity360)
        XCTAssertNotEqual(OpacityRawTokens.opacity200, OpacityRawTokens.opacity400)
        XCTAssertNotEqual(OpacityRawTokens.opacity200, OpacityRawTokens.opacity440)
        XCTAssertNotEqual(OpacityRawTokens.opacity200, OpacityRawTokens.opacity480)
        XCTAssertNotEqual(OpacityRawTokens.opacity200, OpacityRawTokens.opacity520)
        XCTAssertNotEqual(OpacityRawTokens.opacity200, OpacityRawTokens.opacity560)
        XCTAssertNotEqual(OpacityRawTokens.opacity200, OpacityRawTokens.opacity600)
        XCTAssertNotEqual(OpacityRawTokens.opacity200, OpacityRawTokens.opacity640)
        XCTAssertNotEqual(OpacityRawTokens.opacity200, OpacityRawTokens.opacity680)
        XCTAssertNotEqual(OpacityRawTokens.opacity200, OpacityRawTokens.opacity720)
        XCTAssertNotEqual(OpacityRawTokens.opacity200, OpacityRawTokens.opacity760)
        XCTAssertNotEqual(OpacityRawTokens.opacity200, OpacityRawTokens.opacity800)
        XCTAssertNotEqual(OpacityRawTokens.opacity200, OpacityRawTokens.opacity880)
        XCTAssertNotEqual(OpacityRawTokens.opacity200, OpacityRawTokens.opacity920)
        XCTAssertNotEqual(OpacityRawTokens.opacity200, OpacityRawTokens.opacity960)
        XCTAssertNotEqual(OpacityRawTokens.opacity200, OpacityRawTokens.opacity1000)

        XCTAssertNotEqual(OpacityRawTokens.opacity240, OpacityRawTokens.opacity280)
        XCTAssertNotEqual(OpacityRawTokens.opacity240, OpacityRawTokens.opacity320)
        XCTAssertNotEqual(OpacityRawTokens.opacity240, OpacityRawTokens.opacity360)
        XCTAssertNotEqual(OpacityRawTokens.opacity240, OpacityRawTokens.opacity400)
        XCTAssertNotEqual(OpacityRawTokens.opacity240, OpacityRawTokens.opacity440)
        XCTAssertNotEqual(OpacityRawTokens.opacity240, OpacityRawTokens.opacity480)
        XCTAssertNotEqual(OpacityRawTokens.opacity240, OpacityRawTokens.opacity520)
        XCTAssertNotEqual(OpacityRawTokens.opacity240, OpacityRawTokens.opacity560)
        XCTAssertNotEqual(OpacityRawTokens.opacity240, OpacityRawTokens.opacity600)
        XCTAssertNotEqual(OpacityRawTokens.opacity240, OpacityRawTokens.opacity640)
        XCTAssertNotEqual(OpacityRawTokens.opacity240, OpacityRawTokens.opacity680)
        XCTAssertNotEqual(OpacityRawTokens.opacity240, OpacityRawTokens.opacity720)
        XCTAssertNotEqual(OpacityRawTokens.opacity240, OpacityRawTokens.opacity760)
        XCTAssertNotEqual(OpacityRawTokens.opacity240, OpacityRawTokens.opacity800)
        XCTAssertNotEqual(OpacityRawTokens.opacity240, OpacityRawTokens.opacity880)
        XCTAssertNotEqual(OpacityRawTokens.opacity240, OpacityRawTokens.opacity920)
        XCTAssertNotEqual(OpacityRawTokens.opacity240, OpacityRawTokens.opacity960)
        XCTAssertNotEqual(OpacityRawTokens.opacity240, OpacityRawTokens.opacity1000)

        XCTAssertNotEqual(OpacityRawTokens.opacity280, OpacityRawTokens.opacity320)
        XCTAssertNotEqual(OpacityRawTokens.opacity280, OpacityRawTokens.opacity360)
        XCTAssertNotEqual(OpacityRawTokens.opacity280, OpacityRawTokens.opacity400)
        XCTAssertNotEqual(OpacityRawTokens.opacity280, OpacityRawTokens.opacity440)
        XCTAssertNotEqual(OpacityRawTokens.opacity280, OpacityRawTokens.opacity480)
        XCTAssertNotEqual(OpacityRawTokens.opacity280, OpacityRawTokens.opacity520)
        XCTAssertNotEqual(OpacityRawTokens.opacity280, OpacityRawTokens.opacity560)
        XCTAssertNotEqual(OpacityRawTokens.opacity280, OpacityRawTokens.opacity600)
        XCTAssertNotEqual(OpacityRawTokens.opacity280, OpacityRawTokens.opacity640)
        XCTAssertNotEqual(OpacityRawTokens.opacity280, OpacityRawTokens.opacity680)
        XCTAssertNotEqual(OpacityRawTokens.opacity280, OpacityRawTokens.opacity720)
        XCTAssertNotEqual(OpacityRawTokens.opacity280, OpacityRawTokens.opacity760)
        XCTAssertNotEqual(OpacityRawTokens.opacity280, OpacityRawTokens.opacity800)
        XCTAssertNotEqual(OpacityRawTokens.opacity280, OpacityRawTokens.opacity880)
        XCTAssertNotEqual(OpacityRawTokens.opacity280, OpacityRawTokens.opacity920)
        XCTAssertNotEqual(OpacityRawTokens.opacity280, OpacityRawTokens.opacity960)
        XCTAssertNotEqual(OpacityRawTokens.opacity280, OpacityRawTokens.opacity1000)

        XCTAssertNotEqual(OpacityRawTokens.opacity320, OpacityRawTokens.opacity360)
        XCTAssertNotEqual(OpacityRawTokens.opacity320, OpacityRawTokens.opacity400)
        XCTAssertNotEqual(OpacityRawTokens.opacity320, OpacityRawTokens.opacity440)
        XCTAssertNotEqual(OpacityRawTokens.opacity320, OpacityRawTokens.opacity480)
        XCTAssertNotEqual(OpacityRawTokens.opacity320, OpacityRawTokens.opacity520)
        XCTAssertNotEqual(OpacityRawTokens.opacity320, OpacityRawTokens.opacity560)
        XCTAssertNotEqual(OpacityRawTokens.opacity320, OpacityRawTokens.opacity600)
        XCTAssertNotEqual(OpacityRawTokens.opacity320, OpacityRawTokens.opacity640)
        XCTAssertNotEqual(OpacityRawTokens.opacity320, OpacityRawTokens.opacity680)
        XCTAssertNotEqual(OpacityRawTokens.opacity320, OpacityRawTokens.opacity720)
        XCTAssertNotEqual(OpacityRawTokens.opacity320, OpacityRawTokens.opacity760)
        XCTAssertNotEqual(OpacityRawTokens.opacity320, OpacityRawTokens.opacity800)
        XCTAssertNotEqual(OpacityRawTokens.opacity320, OpacityRawTokens.opacity880)
        XCTAssertNotEqual(OpacityRawTokens.opacity320, OpacityRawTokens.opacity920)
        XCTAssertNotEqual(OpacityRawTokens.opacity320, OpacityRawTokens.opacity960)
        XCTAssertNotEqual(OpacityRawTokens.opacity320, OpacityRawTokens.opacity1000)

        XCTAssertNotEqual(OpacityRawTokens.opacity360, OpacityRawTokens.opacity400)
        XCTAssertNotEqual(OpacityRawTokens.opacity360, OpacityRawTokens.opacity440)
        XCTAssertNotEqual(OpacityRawTokens.opacity360, OpacityRawTokens.opacity480)
        XCTAssertNotEqual(OpacityRawTokens.opacity360, OpacityRawTokens.opacity520)
        XCTAssertNotEqual(OpacityRawTokens.opacity360, OpacityRawTokens.opacity560)
        XCTAssertNotEqual(OpacityRawTokens.opacity360, OpacityRawTokens.opacity600)
        XCTAssertNotEqual(OpacityRawTokens.opacity360, OpacityRawTokens.opacity640)
        XCTAssertNotEqual(OpacityRawTokens.opacity360, OpacityRawTokens.opacity680)
        XCTAssertNotEqual(OpacityRawTokens.opacity360, OpacityRawTokens.opacity720)
        XCTAssertNotEqual(OpacityRawTokens.opacity360, OpacityRawTokens.opacity760)
        XCTAssertNotEqual(OpacityRawTokens.opacity360, OpacityRawTokens.opacity800)
        XCTAssertNotEqual(OpacityRawTokens.opacity360, OpacityRawTokens.opacity880)
        XCTAssertNotEqual(OpacityRawTokens.opacity360, OpacityRawTokens.opacity920)
        XCTAssertNotEqual(OpacityRawTokens.opacity360, OpacityRawTokens.opacity960)
        XCTAssertNotEqual(OpacityRawTokens.opacity360, OpacityRawTokens.opacity1000)

        XCTAssertNotEqual(OpacityRawTokens.opacity400, OpacityRawTokens.opacity440)
        XCTAssertNotEqual(OpacityRawTokens.opacity400, OpacityRawTokens.opacity480)
        XCTAssertNotEqual(OpacityRawTokens.opacity400, OpacityRawTokens.opacity520)
        XCTAssertNotEqual(OpacityRawTokens.opacity400, OpacityRawTokens.opacity560)
        XCTAssertNotEqual(OpacityRawTokens.opacity400, OpacityRawTokens.opacity600)
        XCTAssertNotEqual(OpacityRawTokens.opacity400, OpacityRawTokens.opacity640)
        XCTAssertNotEqual(OpacityRawTokens.opacity400, OpacityRawTokens.opacity680)
        XCTAssertNotEqual(OpacityRawTokens.opacity400, OpacityRawTokens.opacity720)
        XCTAssertNotEqual(OpacityRawTokens.opacity400, OpacityRawTokens.opacity760)
        XCTAssertNotEqual(OpacityRawTokens.opacity400, OpacityRawTokens.opacity800)
        XCTAssertNotEqual(OpacityRawTokens.opacity400, OpacityRawTokens.opacity880)
        XCTAssertNotEqual(OpacityRawTokens.opacity400, OpacityRawTokens.opacity920)
        XCTAssertNotEqual(OpacityRawTokens.opacity400, OpacityRawTokens.opacity960)
        XCTAssertNotEqual(OpacityRawTokens.opacity400, OpacityRawTokens.opacity1000)

        XCTAssertNotEqual(OpacityRawTokens.opacity440, OpacityRawTokens.opacity480)
        XCTAssertNotEqual(OpacityRawTokens.opacity440, OpacityRawTokens.opacity520)
        XCTAssertNotEqual(OpacityRawTokens.opacity440, OpacityRawTokens.opacity560)
        XCTAssertNotEqual(OpacityRawTokens.opacity440, OpacityRawTokens.opacity600)
        XCTAssertNotEqual(OpacityRawTokens.opacity440, OpacityRawTokens.opacity640)
        XCTAssertNotEqual(OpacityRawTokens.opacity440, OpacityRawTokens.opacity680)
        XCTAssertNotEqual(OpacityRawTokens.opacity440, OpacityRawTokens.opacity720)
        XCTAssertNotEqual(OpacityRawTokens.opacity440, OpacityRawTokens.opacity760)
        XCTAssertNotEqual(OpacityRawTokens.opacity440, OpacityRawTokens.opacity800)
        XCTAssertNotEqual(OpacityRawTokens.opacity440, OpacityRawTokens.opacity880)
        XCTAssertNotEqual(OpacityRawTokens.opacity440, OpacityRawTokens.opacity920)
        XCTAssertNotEqual(OpacityRawTokens.opacity440, OpacityRawTokens.opacity960)
        XCTAssertNotEqual(OpacityRawTokens.opacity440, OpacityRawTokens.opacity1000)

        XCTAssertNotEqual(OpacityRawTokens.opacity480, OpacityRawTokens.opacity520)
        XCTAssertNotEqual(OpacityRawTokens.opacity480, OpacityRawTokens.opacity560)
        XCTAssertNotEqual(OpacityRawTokens.opacity480, OpacityRawTokens.opacity600)
        XCTAssertNotEqual(OpacityRawTokens.opacity480, OpacityRawTokens.opacity640)
        XCTAssertNotEqual(OpacityRawTokens.opacity480, OpacityRawTokens.opacity680)
        XCTAssertNotEqual(OpacityRawTokens.opacity480, OpacityRawTokens.opacity720)
        XCTAssertNotEqual(OpacityRawTokens.opacity480, OpacityRawTokens.opacity760)
        XCTAssertNotEqual(OpacityRawTokens.opacity480, OpacityRawTokens.opacity800)
        XCTAssertNotEqual(OpacityRawTokens.opacity480, OpacityRawTokens.opacity880)
        XCTAssertNotEqual(OpacityRawTokens.opacity480, OpacityRawTokens.opacity920)
        XCTAssertNotEqual(OpacityRawTokens.opacity480, OpacityRawTokens.opacity960)
        XCTAssertNotEqual(OpacityRawTokens.opacity480, OpacityRawTokens.opacity1000)

        XCTAssertNotEqual(OpacityRawTokens.opacity520, OpacityRawTokens.opacity560)
        XCTAssertNotEqual(OpacityRawTokens.opacity520, OpacityRawTokens.opacity600)
        XCTAssertNotEqual(OpacityRawTokens.opacity520, OpacityRawTokens.opacity640)
        XCTAssertNotEqual(OpacityRawTokens.opacity520, OpacityRawTokens.opacity680)
        XCTAssertNotEqual(OpacityRawTokens.opacity520, OpacityRawTokens.opacity720)
        XCTAssertNotEqual(OpacityRawTokens.opacity520, OpacityRawTokens.opacity760)
        XCTAssertNotEqual(OpacityRawTokens.opacity520, OpacityRawTokens.opacity800)
        XCTAssertNotEqual(OpacityRawTokens.opacity520, OpacityRawTokens.opacity880)
        XCTAssertNotEqual(OpacityRawTokens.opacity520, OpacityRawTokens.opacity920)
        XCTAssertNotEqual(OpacityRawTokens.opacity520, OpacityRawTokens.opacity960)
        XCTAssertNotEqual(OpacityRawTokens.opacity520, OpacityRawTokens.opacity1000)

        XCTAssertNotEqual(OpacityRawTokens.opacity560, OpacityRawTokens.opacity600)
        XCTAssertNotEqual(OpacityRawTokens.opacity560, OpacityRawTokens.opacity640)
        XCTAssertNotEqual(OpacityRawTokens.opacity560, OpacityRawTokens.opacity680)
        XCTAssertNotEqual(OpacityRawTokens.opacity560, OpacityRawTokens.opacity720)
        XCTAssertNotEqual(OpacityRawTokens.opacity560, OpacityRawTokens.opacity760)
        XCTAssertNotEqual(OpacityRawTokens.opacity560, OpacityRawTokens.opacity800)
        XCTAssertNotEqual(OpacityRawTokens.opacity560, OpacityRawTokens.opacity880)
        XCTAssertNotEqual(OpacityRawTokens.opacity560, OpacityRawTokens.opacity920)
        XCTAssertNotEqual(OpacityRawTokens.opacity560, OpacityRawTokens.opacity960)
        XCTAssertNotEqual(OpacityRawTokens.opacity560, OpacityRawTokens.opacity1000)

        XCTAssertNotEqual(OpacityRawTokens.opacity600, OpacityRawTokens.opacity640)
        XCTAssertNotEqual(OpacityRawTokens.opacity600, OpacityRawTokens.opacity680)
        XCTAssertNotEqual(OpacityRawTokens.opacity600, OpacityRawTokens.opacity720)
        XCTAssertNotEqual(OpacityRawTokens.opacity600, OpacityRawTokens.opacity760)
        XCTAssertNotEqual(OpacityRawTokens.opacity600, OpacityRawTokens.opacity800)
        XCTAssertNotEqual(OpacityRawTokens.opacity600, OpacityRawTokens.opacity880)
        XCTAssertNotEqual(OpacityRawTokens.opacity600, OpacityRawTokens.opacity920)
        XCTAssertNotEqual(OpacityRawTokens.opacity600, OpacityRawTokens.opacity960)
        XCTAssertNotEqual(OpacityRawTokens.opacity600, OpacityRawTokens.opacity1000)

        XCTAssertNotEqual(OpacityRawTokens.opacity640, OpacityRawTokens.opacity680)
        XCTAssertNotEqual(OpacityRawTokens.opacity640, OpacityRawTokens.opacity720)
        XCTAssertNotEqual(OpacityRawTokens.opacity640, OpacityRawTokens.opacity760)
        XCTAssertNotEqual(OpacityRawTokens.opacity640, OpacityRawTokens.opacity800)
        XCTAssertNotEqual(OpacityRawTokens.opacity640, OpacityRawTokens.opacity880)
        XCTAssertNotEqual(OpacityRawTokens.opacity640, OpacityRawTokens.opacity920)
        XCTAssertNotEqual(OpacityRawTokens.opacity640, OpacityRawTokens.opacity960)
        XCTAssertNotEqual(OpacityRawTokens.opacity640, OpacityRawTokens.opacity1000)

        XCTAssertNotEqual(OpacityRawTokens.opacity680, OpacityRawTokens.opacity720)
        XCTAssertNotEqual(OpacityRawTokens.opacity680, OpacityRawTokens.opacity760)
        XCTAssertNotEqual(OpacityRawTokens.opacity680, OpacityRawTokens.opacity800)
        XCTAssertNotEqual(OpacityRawTokens.opacity680, OpacityRawTokens.opacity880)
        XCTAssertNotEqual(OpacityRawTokens.opacity680, OpacityRawTokens.opacity920)
        XCTAssertNotEqual(OpacityRawTokens.opacity680, OpacityRawTokens.opacity960)
        XCTAssertNotEqual(OpacityRawTokens.opacity680, OpacityRawTokens.opacity1000)

        XCTAssertNotEqual(OpacityRawTokens.opacity720, OpacityRawTokens.opacity760)
        XCTAssertNotEqual(OpacityRawTokens.opacity720, OpacityRawTokens.opacity800)
        XCTAssertNotEqual(OpacityRawTokens.opacity720, OpacityRawTokens.opacity880)
        XCTAssertNotEqual(OpacityRawTokens.opacity720, OpacityRawTokens.opacity920)
        XCTAssertNotEqual(OpacityRawTokens.opacity720, OpacityRawTokens.opacity960)
        XCTAssertNotEqual(OpacityRawTokens.opacity720, OpacityRawTokens.opacity1000)

        XCTAssertNotEqual(OpacityRawTokens.opacity760, OpacityRawTokens.opacity800)
        XCTAssertNotEqual(OpacityRawTokens.opacity760, OpacityRawTokens.opacity880)
        XCTAssertNotEqual(OpacityRawTokens.opacity760, OpacityRawTokens.opacity920)
        XCTAssertNotEqual(OpacityRawTokens.opacity760, OpacityRawTokens.opacity960)
        XCTAssertNotEqual(OpacityRawTokens.opacity760, OpacityRawTokens.opacity1000)

        XCTAssertNotEqual(OpacityRawTokens.opacity800, OpacityRawTokens.opacity880)
        XCTAssertNotEqual(OpacityRawTokens.opacity800, OpacityRawTokens.opacity920)
        XCTAssertNotEqual(OpacityRawTokens.opacity800, OpacityRawTokens.opacity960)
        XCTAssertNotEqual(OpacityRawTokens.opacity800, OpacityRawTokens.opacity1000)

        XCTAssertNotEqual(OpacityRawTokens.opacity880, OpacityRawTokens.opacity920)
        XCTAssertNotEqual(OpacityRawTokens.opacity880, OpacityRawTokens.opacity960)
        XCTAssertNotEqual(OpacityRawTokens.opacity880, OpacityRawTokens.opacity1000)

        XCTAssertNotEqual(OpacityRawTokens.opacity920, OpacityRawTokens.opacity960)
        XCTAssertNotEqual(OpacityRawTokens.opacity920, OpacityRawTokens.opacity1000)

        XCTAssertNotEqual(OpacityRawTokens.opacity960, OpacityRawTokens.opacity1000)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_body_length
// swiftlint:enable function_body_length

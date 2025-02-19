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
import TestsUtils

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
struct OpacityRawTokensTests {

    // MARK: - Settings

    /// Minimal value for opacity
    private static let opacityRawTokenMinValue: Double = 0

    /// Maximal value for opacity
    private static let opacityRawTokenMaxValue: Double = 1

    // MARK: - Tests

    @Test func opacityRawToken0LessThan400() throws {
        #expect(OpacityRawTokens.opacity0 < OpacityRawTokens.opacity40)
    }

    @Test func opacityRawToken0Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity0, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken40LessThan80() throws {
        #expect(OpacityRawTokens.opacity40 < OpacityRawTokens.opacity80)
    }

    @Test func opacityRawToken40Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity40, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken80LessThan120() throws {
        #expect(OpacityRawTokens.opacity80 < OpacityRawTokens.opacity120)
    }

    @Test func opacityRawToken80Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity80, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken120LessThan160() throws {
        #expect(OpacityRawTokens.opacity120 < OpacityRawTokens.opacity160)
    }

    @Test func opacityRawToken120Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity120, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken160LessThan200() throws {
        #expect(OpacityRawTokens.opacity160 < OpacityRawTokens.opacity200)
    }

    @Test func opacityRawToken160Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity160, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken200LessThan240() throws {
        #expect(OpacityRawTokens.opacity200 < OpacityRawTokens.opacity240)
    }

    @Test func opacityRawToken200Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity200, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken240LessThan280() throws {
        #expect(OpacityRawTokens.opacity240 < OpacityRawTokens.opacity280)
    }

    @Test func opacityRawToken240Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity240, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken280LessThan320() throws {
        #expect(OpacityRawTokens.opacity280 < OpacityRawTokens.opacity320)
    }

    @Test func opacityRawToken280Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity280, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken320LessThan360() throws {
        #expect(OpacityRawTokens.opacity320 < OpacityRawTokens.opacity360)
    }

    @Test func opacityRawToken320Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity320, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken360LessThan400() throws {
        #expect(OpacityRawTokens.opacity360 < OpacityRawTokens.opacity400)
    }

    @Test func opacityRawToken360Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity360, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken400LessThan440() throws {
        #expect(OpacityRawTokens.opacity400 < OpacityRawTokens.opacity440)
    }

    @Test func opacityRawToken400Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity400, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken440LessThan840() throws {
        #expect(OpacityRawTokens.opacity440 < OpacityRawTokens.opacity480)
    }

    @Test func opacityRawToken440Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity440, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken480LessThan520() throws {
        #expect(OpacityRawTokens.opacity480 < OpacityRawTokens.opacity520)
    }

    @Test func opacityRawToken480Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity480, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken520LessThan560() throws {
        #expect(OpacityRawTokens.opacity520 < OpacityRawTokens.opacity560)
    }

    @Test func opacityRawToken520Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity520, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken560LessThan600() throws {
        #expect(OpacityRawTokens.opacity560 < OpacityRawTokens.opacity600)
    }

    @Test func opacityRawToken560Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity560, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken600LessThan640() throws {
        #expect(OpacityRawTokens.opacity600 < OpacityRawTokens.opacity640)
    }

    @Test func opacityRawToken600Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity600, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken640LessThan680() throws {
        #expect(OpacityRawTokens.opacity640 < OpacityRawTokens.opacity680)
    }

    @Test func opacityRawToken640Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity640, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken680LessThan720() throws {
        #expect(OpacityRawTokens.opacity680 < OpacityRawTokens.opacity720)
    }

    @Test func opacityRawToken680Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity680, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken720LessThan760() throws {
        #expect(OpacityRawTokens.opacity720 < OpacityRawTokens.opacity760)
    }

    @Test func opacityRawToken720Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity720, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken760LessThan800() throws {
        #expect(OpacityRawTokens.opacity760 < OpacityRawTokens.opacity800)
    }

    @Test func opacityRawToken760Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity760, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken800LessThan880() throws {
        #expect(OpacityRawTokens.opacity800 < OpacityRawTokens.opacity880)
    }

    @Test func opacityRawToken800Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity800, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken880LessThan920() throws {
        #expect(OpacityRawTokens.opacity880 < OpacityRawTokens.opacity920)
    }

    @Test func opacityRawToken880Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity880, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken920LessThan960() throws {
        #expect(OpacityRawTokens.opacity920 < OpacityRawTokens.opacity960)
    }

    @Test func opacityRawToken920Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity920, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken960LessThan1000() throws {
        #expect(OpacityRawTokens.opacity960 < OpacityRawTokens.opacity1000)
    }

    @Test func opacityRawToken960Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity960, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken1000Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens.opacity1000, max: Self.opacityRawTokenMaxValue)
    }

    @Test func nonEqualityForOpacities() throws {
        #expect(OpacityRawTokens.opacity0 != OpacityRawTokens.opacity40)
        #expect(OpacityRawTokens.opacity0 != OpacityRawTokens.opacity80)
        #expect(OpacityRawTokens.opacity0 != OpacityRawTokens.opacity120)
        #expect(OpacityRawTokens.opacity0 != OpacityRawTokens.opacity160)
        #expect(OpacityRawTokens.opacity0 != OpacityRawTokens.opacity200)
        #expect(OpacityRawTokens.opacity0 != OpacityRawTokens.opacity240)
        #expect(OpacityRawTokens.opacity0 != OpacityRawTokens.opacity280)
        #expect(OpacityRawTokens.opacity0 != OpacityRawTokens.opacity320)
        #expect(OpacityRawTokens.opacity0 != OpacityRawTokens.opacity360)
        #expect(OpacityRawTokens.opacity0 != OpacityRawTokens.opacity400)
        #expect(OpacityRawTokens.opacity0 != OpacityRawTokens.opacity440)
        #expect(OpacityRawTokens.opacity0 != OpacityRawTokens.opacity480)
        #expect(OpacityRawTokens.opacity0 != OpacityRawTokens.opacity520)
        #expect(OpacityRawTokens.opacity0 != OpacityRawTokens.opacity560)
        #expect(OpacityRawTokens.opacity0 != OpacityRawTokens.opacity600)
        #expect(OpacityRawTokens.opacity0 != OpacityRawTokens.opacity640)
        #expect(OpacityRawTokens.opacity0 != OpacityRawTokens.opacity680)
        #expect(OpacityRawTokens.opacity0 != OpacityRawTokens.opacity720)
        #expect(OpacityRawTokens.opacity0 != OpacityRawTokens.opacity760)
        #expect(OpacityRawTokens.opacity0 != OpacityRawTokens.opacity800)
        #expect(OpacityRawTokens.opacity0 != OpacityRawTokens.opacity880)
        #expect(OpacityRawTokens.opacity0 != OpacityRawTokens.opacity920)
        #expect(OpacityRawTokens.opacity0 != OpacityRawTokens.opacity960)
        #expect(OpacityRawTokens.opacity0 != OpacityRawTokens.opacity1000)

        #expect(OpacityRawTokens.opacity40 != OpacityRawTokens.opacity80)
        #expect(OpacityRawTokens.opacity40 != OpacityRawTokens.opacity120)
        #expect(OpacityRawTokens.opacity40 != OpacityRawTokens.opacity160)
        #expect(OpacityRawTokens.opacity40 != OpacityRawTokens.opacity200)
        #expect(OpacityRawTokens.opacity40 != OpacityRawTokens.opacity240)
        #expect(OpacityRawTokens.opacity40 != OpacityRawTokens.opacity280)
        #expect(OpacityRawTokens.opacity40 != OpacityRawTokens.opacity320)
        #expect(OpacityRawTokens.opacity40 != OpacityRawTokens.opacity360)
        #expect(OpacityRawTokens.opacity40 != OpacityRawTokens.opacity400)
        #expect(OpacityRawTokens.opacity40 != OpacityRawTokens.opacity440)
        #expect(OpacityRawTokens.opacity40 != OpacityRawTokens.opacity480)
        #expect(OpacityRawTokens.opacity40 != OpacityRawTokens.opacity520)
        #expect(OpacityRawTokens.opacity40 != OpacityRawTokens.opacity560)
        #expect(OpacityRawTokens.opacity40 != OpacityRawTokens.opacity600)
        #expect(OpacityRawTokens.opacity40 != OpacityRawTokens.opacity640)
        #expect(OpacityRawTokens.opacity40 != OpacityRawTokens.opacity680)
        #expect(OpacityRawTokens.opacity40 != OpacityRawTokens.opacity720)
        #expect(OpacityRawTokens.opacity40 != OpacityRawTokens.opacity760)
        #expect(OpacityRawTokens.opacity40 != OpacityRawTokens.opacity800)
        #expect(OpacityRawTokens.opacity40 != OpacityRawTokens.opacity880)
        #expect(OpacityRawTokens.opacity40 != OpacityRawTokens.opacity920)
        #expect(OpacityRawTokens.opacity40 != OpacityRawTokens.opacity960)
        #expect(OpacityRawTokens.opacity40 != OpacityRawTokens.opacity1000)

        #expect(OpacityRawTokens.opacity80 != OpacityRawTokens.opacity120)
        #expect(OpacityRawTokens.opacity80 != OpacityRawTokens.opacity160)
        #expect(OpacityRawTokens.opacity80 != OpacityRawTokens.opacity200)
        #expect(OpacityRawTokens.opacity80 != OpacityRawTokens.opacity240)
        #expect(OpacityRawTokens.opacity80 != OpacityRawTokens.opacity280)
        #expect(OpacityRawTokens.opacity80 != OpacityRawTokens.opacity320)
        #expect(OpacityRawTokens.opacity80 != OpacityRawTokens.opacity360)
        #expect(OpacityRawTokens.opacity80 != OpacityRawTokens.opacity400)
        #expect(OpacityRawTokens.opacity80 != OpacityRawTokens.opacity440)
        #expect(OpacityRawTokens.opacity80 != OpacityRawTokens.opacity480)
        #expect(OpacityRawTokens.opacity80 != OpacityRawTokens.opacity520)
        #expect(OpacityRawTokens.opacity80 != OpacityRawTokens.opacity560)
        #expect(OpacityRawTokens.opacity80 != OpacityRawTokens.opacity600)
        #expect(OpacityRawTokens.opacity80 != OpacityRawTokens.opacity640)
        #expect(OpacityRawTokens.opacity80 != OpacityRawTokens.opacity680)
        #expect(OpacityRawTokens.opacity80 != OpacityRawTokens.opacity720)
        #expect(OpacityRawTokens.opacity80 != OpacityRawTokens.opacity760)
        #expect(OpacityRawTokens.opacity80 != OpacityRawTokens.opacity800)
        #expect(OpacityRawTokens.opacity80 != OpacityRawTokens.opacity880)
        #expect(OpacityRawTokens.opacity80 != OpacityRawTokens.opacity920)
        #expect(OpacityRawTokens.opacity80 != OpacityRawTokens.opacity960)
        #expect(OpacityRawTokens.opacity80 != OpacityRawTokens.opacity1000)

        #expect(OpacityRawTokens.opacity120 != OpacityRawTokens.opacity160)
        #expect(OpacityRawTokens.opacity120 != OpacityRawTokens.opacity200)
        #expect(OpacityRawTokens.opacity120 != OpacityRawTokens.opacity240)
        #expect(OpacityRawTokens.opacity120 != OpacityRawTokens.opacity280)
        #expect(OpacityRawTokens.opacity120 != OpacityRawTokens.opacity320)
        #expect(OpacityRawTokens.opacity120 != OpacityRawTokens.opacity360)
        #expect(OpacityRawTokens.opacity120 != OpacityRawTokens.opacity400)
        #expect(OpacityRawTokens.opacity120 != OpacityRawTokens.opacity440)
        #expect(OpacityRawTokens.opacity120 != OpacityRawTokens.opacity480)
        #expect(OpacityRawTokens.opacity120 != OpacityRawTokens.opacity520)
        #expect(OpacityRawTokens.opacity120 != OpacityRawTokens.opacity560)
        #expect(OpacityRawTokens.opacity120 != OpacityRawTokens.opacity600)
        #expect(OpacityRawTokens.opacity120 != OpacityRawTokens.opacity640)
        #expect(OpacityRawTokens.opacity120 != OpacityRawTokens.opacity680)
        #expect(OpacityRawTokens.opacity120 != OpacityRawTokens.opacity720)
        #expect(OpacityRawTokens.opacity120 != OpacityRawTokens.opacity760)
        #expect(OpacityRawTokens.opacity120 != OpacityRawTokens.opacity800)
        #expect(OpacityRawTokens.opacity120 != OpacityRawTokens.opacity880)
        #expect(OpacityRawTokens.opacity120 != OpacityRawTokens.opacity920)
        #expect(OpacityRawTokens.opacity120 != OpacityRawTokens.opacity960)
        #expect(OpacityRawTokens.opacity120 != OpacityRawTokens.opacity1000)

        #expect(OpacityRawTokens.opacity160 != OpacityRawTokens.opacity200)
        #expect(OpacityRawTokens.opacity160 != OpacityRawTokens.opacity240)
        #expect(OpacityRawTokens.opacity160 != OpacityRawTokens.opacity280)
        #expect(OpacityRawTokens.opacity160 != OpacityRawTokens.opacity320)
        #expect(OpacityRawTokens.opacity160 != OpacityRawTokens.opacity360)
        #expect(OpacityRawTokens.opacity160 != OpacityRawTokens.opacity400)
        #expect(OpacityRawTokens.opacity160 != OpacityRawTokens.opacity440)
        #expect(OpacityRawTokens.opacity160 != OpacityRawTokens.opacity480)
        #expect(OpacityRawTokens.opacity160 != OpacityRawTokens.opacity520)
        #expect(OpacityRawTokens.opacity160 != OpacityRawTokens.opacity560)
        #expect(OpacityRawTokens.opacity160 != OpacityRawTokens.opacity600)
        #expect(OpacityRawTokens.opacity160 != OpacityRawTokens.opacity640)
        #expect(OpacityRawTokens.opacity160 != OpacityRawTokens.opacity680)
        #expect(OpacityRawTokens.opacity160 != OpacityRawTokens.opacity720)
        #expect(OpacityRawTokens.opacity160 != OpacityRawTokens.opacity760)
        #expect(OpacityRawTokens.opacity160 != OpacityRawTokens.opacity800)
        #expect(OpacityRawTokens.opacity160 != OpacityRawTokens.opacity880)
        #expect(OpacityRawTokens.opacity160 != OpacityRawTokens.opacity920)
        #expect(OpacityRawTokens.opacity160 != OpacityRawTokens.opacity960)
        #expect(OpacityRawTokens.opacity160 != OpacityRawTokens.opacity1000)

        #expect(OpacityRawTokens.opacity200 != OpacityRawTokens.opacity240)
        #expect(OpacityRawTokens.opacity200 != OpacityRawTokens.opacity280)
        #expect(OpacityRawTokens.opacity200 != OpacityRawTokens.opacity320)
        #expect(OpacityRawTokens.opacity200 != OpacityRawTokens.opacity360)
        #expect(OpacityRawTokens.opacity200 != OpacityRawTokens.opacity400)
        #expect(OpacityRawTokens.opacity200 != OpacityRawTokens.opacity440)
        #expect(OpacityRawTokens.opacity200 != OpacityRawTokens.opacity480)
        #expect(OpacityRawTokens.opacity200 != OpacityRawTokens.opacity520)
        #expect(OpacityRawTokens.opacity200 != OpacityRawTokens.opacity560)
        #expect(OpacityRawTokens.opacity200 != OpacityRawTokens.opacity600)
        #expect(OpacityRawTokens.opacity200 != OpacityRawTokens.opacity640)
        #expect(OpacityRawTokens.opacity200 != OpacityRawTokens.opacity680)
        #expect(OpacityRawTokens.opacity200 != OpacityRawTokens.opacity720)
        #expect(OpacityRawTokens.opacity200 != OpacityRawTokens.opacity760)
        #expect(OpacityRawTokens.opacity200 != OpacityRawTokens.opacity800)
        #expect(OpacityRawTokens.opacity200 != OpacityRawTokens.opacity880)
        #expect(OpacityRawTokens.opacity200 != OpacityRawTokens.opacity920)
        #expect(OpacityRawTokens.opacity200 != OpacityRawTokens.opacity960)
        #expect(OpacityRawTokens.opacity200 != OpacityRawTokens.opacity1000)

        #expect(OpacityRawTokens.opacity240 != OpacityRawTokens.opacity280)
        #expect(OpacityRawTokens.opacity240 != OpacityRawTokens.opacity320)
        #expect(OpacityRawTokens.opacity240 != OpacityRawTokens.opacity360)
        #expect(OpacityRawTokens.opacity240 != OpacityRawTokens.opacity400)
        #expect(OpacityRawTokens.opacity240 != OpacityRawTokens.opacity440)
        #expect(OpacityRawTokens.opacity240 != OpacityRawTokens.opacity480)
        #expect(OpacityRawTokens.opacity240 != OpacityRawTokens.opacity520)
        #expect(OpacityRawTokens.opacity240 != OpacityRawTokens.opacity560)
        #expect(OpacityRawTokens.opacity240 != OpacityRawTokens.opacity600)
        #expect(OpacityRawTokens.opacity240 != OpacityRawTokens.opacity640)
        #expect(OpacityRawTokens.opacity240 != OpacityRawTokens.opacity680)
        #expect(OpacityRawTokens.opacity240 != OpacityRawTokens.opacity720)
        #expect(OpacityRawTokens.opacity240 != OpacityRawTokens.opacity760)
        #expect(OpacityRawTokens.opacity240 != OpacityRawTokens.opacity800)
        #expect(OpacityRawTokens.opacity240 != OpacityRawTokens.opacity880)
        #expect(OpacityRawTokens.opacity240 != OpacityRawTokens.opacity920)
        #expect(OpacityRawTokens.opacity240 != OpacityRawTokens.opacity960)
        #expect(OpacityRawTokens.opacity240 != OpacityRawTokens.opacity1000)

        #expect(OpacityRawTokens.opacity280 != OpacityRawTokens.opacity320)
        #expect(OpacityRawTokens.opacity280 != OpacityRawTokens.opacity360)
        #expect(OpacityRawTokens.opacity280 != OpacityRawTokens.opacity400)
        #expect(OpacityRawTokens.opacity280 != OpacityRawTokens.opacity440)
        #expect(OpacityRawTokens.opacity280 != OpacityRawTokens.opacity480)
        #expect(OpacityRawTokens.opacity280 != OpacityRawTokens.opacity520)
        #expect(OpacityRawTokens.opacity280 != OpacityRawTokens.opacity560)
        #expect(OpacityRawTokens.opacity280 != OpacityRawTokens.opacity600)
        #expect(OpacityRawTokens.opacity280 != OpacityRawTokens.opacity640)
        #expect(OpacityRawTokens.opacity280 != OpacityRawTokens.opacity680)
        #expect(OpacityRawTokens.opacity280 != OpacityRawTokens.opacity720)
        #expect(OpacityRawTokens.opacity280 != OpacityRawTokens.opacity760)
        #expect(OpacityRawTokens.opacity280 != OpacityRawTokens.opacity800)
        #expect(OpacityRawTokens.opacity280 != OpacityRawTokens.opacity880)
        #expect(OpacityRawTokens.opacity280 != OpacityRawTokens.opacity920)
        #expect(OpacityRawTokens.opacity280 != OpacityRawTokens.opacity960)
        #expect(OpacityRawTokens.opacity280 != OpacityRawTokens.opacity1000)

        #expect(OpacityRawTokens.opacity320 != OpacityRawTokens.opacity360)
        #expect(OpacityRawTokens.opacity320 != OpacityRawTokens.opacity400)
        #expect(OpacityRawTokens.opacity320 != OpacityRawTokens.opacity440)
        #expect(OpacityRawTokens.opacity320 != OpacityRawTokens.opacity480)
        #expect(OpacityRawTokens.opacity320 != OpacityRawTokens.opacity520)
        #expect(OpacityRawTokens.opacity320 != OpacityRawTokens.opacity560)
        #expect(OpacityRawTokens.opacity320 != OpacityRawTokens.opacity600)
        #expect(OpacityRawTokens.opacity320 != OpacityRawTokens.opacity640)
        #expect(OpacityRawTokens.opacity320 != OpacityRawTokens.opacity680)
        #expect(OpacityRawTokens.opacity320 != OpacityRawTokens.opacity720)
        #expect(OpacityRawTokens.opacity320 != OpacityRawTokens.opacity760)
        #expect(OpacityRawTokens.opacity320 != OpacityRawTokens.opacity800)
        #expect(OpacityRawTokens.opacity320 != OpacityRawTokens.opacity880)
        #expect(OpacityRawTokens.opacity320 != OpacityRawTokens.opacity920)
        #expect(OpacityRawTokens.opacity320 != OpacityRawTokens.opacity960)
        #expect(OpacityRawTokens.opacity320 != OpacityRawTokens.opacity1000)

        #expect(OpacityRawTokens.opacity360 != OpacityRawTokens.opacity400)
        #expect(OpacityRawTokens.opacity360 != OpacityRawTokens.opacity440)
        #expect(OpacityRawTokens.opacity360 != OpacityRawTokens.opacity480)
        #expect(OpacityRawTokens.opacity360 != OpacityRawTokens.opacity520)
        #expect(OpacityRawTokens.opacity360 != OpacityRawTokens.opacity560)
        #expect(OpacityRawTokens.opacity360 != OpacityRawTokens.opacity600)
        #expect(OpacityRawTokens.opacity360 != OpacityRawTokens.opacity640)
        #expect(OpacityRawTokens.opacity360 != OpacityRawTokens.opacity680)
        #expect(OpacityRawTokens.opacity360 != OpacityRawTokens.opacity720)
        #expect(OpacityRawTokens.opacity360 != OpacityRawTokens.opacity760)
        #expect(OpacityRawTokens.opacity360 != OpacityRawTokens.opacity800)
        #expect(OpacityRawTokens.opacity360 != OpacityRawTokens.opacity880)
        #expect(OpacityRawTokens.opacity360 != OpacityRawTokens.opacity920)
        #expect(OpacityRawTokens.opacity360 != OpacityRawTokens.opacity960)
        #expect(OpacityRawTokens.opacity360 != OpacityRawTokens.opacity1000)

        #expect(OpacityRawTokens.opacity400 != OpacityRawTokens.opacity440)
        #expect(OpacityRawTokens.opacity400 != OpacityRawTokens.opacity480)
        #expect(OpacityRawTokens.opacity400 != OpacityRawTokens.opacity520)
        #expect(OpacityRawTokens.opacity400 != OpacityRawTokens.opacity560)
        #expect(OpacityRawTokens.opacity400 != OpacityRawTokens.opacity600)
        #expect(OpacityRawTokens.opacity400 != OpacityRawTokens.opacity640)
        #expect(OpacityRawTokens.opacity400 != OpacityRawTokens.opacity680)
        #expect(OpacityRawTokens.opacity400 != OpacityRawTokens.opacity720)
        #expect(OpacityRawTokens.opacity400 != OpacityRawTokens.opacity760)
        #expect(OpacityRawTokens.opacity400 != OpacityRawTokens.opacity800)
        #expect(OpacityRawTokens.opacity400 != OpacityRawTokens.opacity880)
        #expect(OpacityRawTokens.opacity400 != OpacityRawTokens.opacity920)
        #expect(OpacityRawTokens.opacity400 != OpacityRawTokens.opacity960)
        #expect(OpacityRawTokens.opacity400 != OpacityRawTokens.opacity1000)

        #expect(OpacityRawTokens.opacity440 != OpacityRawTokens.opacity480)
        #expect(OpacityRawTokens.opacity440 != OpacityRawTokens.opacity520)
        #expect(OpacityRawTokens.opacity440 != OpacityRawTokens.opacity560)
        #expect(OpacityRawTokens.opacity440 != OpacityRawTokens.opacity600)
        #expect(OpacityRawTokens.opacity440 != OpacityRawTokens.opacity640)
        #expect(OpacityRawTokens.opacity440 != OpacityRawTokens.opacity680)
        #expect(OpacityRawTokens.opacity440 != OpacityRawTokens.opacity720)
        #expect(OpacityRawTokens.opacity440 != OpacityRawTokens.opacity760)
        #expect(OpacityRawTokens.opacity440 != OpacityRawTokens.opacity800)
        #expect(OpacityRawTokens.opacity440 != OpacityRawTokens.opacity880)
        #expect(OpacityRawTokens.opacity440 != OpacityRawTokens.opacity920)
        #expect(OpacityRawTokens.opacity440 != OpacityRawTokens.opacity960)
        #expect(OpacityRawTokens.opacity440 != OpacityRawTokens.opacity1000)

        #expect(OpacityRawTokens.opacity480 != OpacityRawTokens.opacity520)
        #expect(OpacityRawTokens.opacity480 != OpacityRawTokens.opacity560)
        #expect(OpacityRawTokens.opacity480 != OpacityRawTokens.opacity600)
        #expect(OpacityRawTokens.opacity480 != OpacityRawTokens.opacity640)
        #expect(OpacityRawTokens.opacity480 != OpacityRawTokens.opacity680)
        #expect(OpacityRawTokens.opacity480 != OpacityRawTokens.opacity720)
        #expect(OpacityRawTokens.opacity480 != OpacityRawTokens.opacity760)
        #expect(OpacityRawTokens.opacity480 != OpacityRawTokens.opacity800)
        #expect(OpacityRawTokens.opacity480 != OpacityRawTokens.opacity880)
        #expect(OpacityRawTokens.opacity480 != OpacityRawTokens.opacity920)
        #expect(OpacityRawTokens.opacity480 != OpacityRawTokens.opacity960)
        #expect(OpacityRawTokens.opacity480 != OpacityRawTokens.opacity1000)

        #expect(OpacityRawTokens.opacity520 != OpacityRawTokens.opacity560)
        #expect(OpacityRawTokens.opacity520 != OpacityRawTokens.opacity600)
        #expect(OpacityRawTokens.opacity520 != OpacityRawTokens.opacity640)
        #expect(OpacityRawTokens.opacity520 != OpacityRawTokens.opacity680)
        #expect(OpacityRawTokens.opacity520 != OpacityRawTokens.opacity720)
        #expect(OpacityRawTokens.opacity520 != OpacityRawTokens.opacity760)
        #expect(OpacityRawTokens.opacity520 != OpacityRawTokens.opacity800)
        #expect(OpacityRawTokens.opacity520 != OpacityRawTokens.opacity880)
        #expect(OpacityRawTokens.opacity520 != OpacityRawTokens.opacity920)
        #expect(OpacityRawTokens.opacity520 != OpacityRawTokens.opacity960)
        #expect(OpacityRawTokens.opacity520 != OpacityRawTokens.opacity1000)

        #expect(OpacityRawTokens.opacity560 != OpacityRawTokens.opacity600)
        #expect(OpacityRawTokens.opacity560 != OpacityRawTokens.opacity640)
        #expect(OpacityRawTokens.opacity560 != OpacityRawTokens.opacity680)
        #expect(OpacityRawTokens.opacity560 != OpacityRawTokens.opacity720)
        #expect(OpacityRawTokens.opacity560 != OpacityRawTokens.opacity760)
        #expect(OpacityRawTokens.opacity560 != OpacityRawTokens.opacity800)
        #expect(OpacityRawTokens.opacity560 != OpacityRawTokens.opacity880)
        #expect(OpacityRawTokens.opacity560 != OpacityRawTokens.opacity920)
        #expect(OpacityRawTokens.opacity560 != OpacityRawTokens.opacity960)
        #expect(OpacityRawTokens.opacity560 != OpacityRawTokens.opacity1000)

        #expect(OpacityRawTokens.opacity600 != OpacityRawTokens.opacity640)
        #expect(OpacityRawTokens.opacity600 != OpacityRawTokens.opacity680)
        #expect(OpacityRawTokens.opacity600 != OpacityRawTokens.opacity720)
        #expect(OpacityRawTokens.opacity600 != OpacityRawTokens.opacity760)
        #expect(OpacityRawTokens.opacity600 != OpacityRawTokens.opacity800)
        #expect(OpacityRawTokens.opacity600 != OpacityRawTokens.opacity880)
        #expect(OpacityRawTokens.opacity600 != OpacityRawTokens.opacity920)
        #expect(OpacityRawTokens.opacity600 != OpacityRawTokens.opacity960)
        #expect(OpacityRawTokens.opacity600 != OpacityRawTokens.opacity1000)

        #expect(OpacityRawTokens.opacity640 != OpacityRawTokens.opacity680)
        #expect(OpacityRawTokens.opacity640 != OpacityRawTokens.opacity720)
        #expect(OpacityRawTokens.opacity640 != OpacityRawTokens.opacity760)
        #expect(OpacityRawTokens.opacity640 != OpacityRawTokens.opacity800)
        #expect(OpacityRawTokens.opacity640 != OpacityRawTokens.opacity880)
        #expect(OpacityRawTokens.opacity640 != OpacityRawTokens.opacity920)
        #expect(OpacityRawTokens.opacity640 != OpacityRawTokens.opacity960)
        #expect(OpacityRawTokens.opacity640 != OpacityRawTokens.opacity1000)

        #expect(OpacityRawTokens.opacity680 != OpacityRawTokens.opacity720)
        #expect(OpacityRawTokens.opacity680 != OpacityRawTokens.opacity760)
        #expect(OpacityRawTokens.opacity680 != OpacityRawTokens.opacity800)
        #expect(OpacityRawTokens.opacity680 != OpacityRawTokens.opacity880)
        #expect(OpacityRawTokens.opacity680 != OpacityRawTokens.opacity920)
        #expect(OpacityRawTokens.opacity680 != OpacityRawTokens.opacity960)
        #expect(OpacityRawTokens.opacity680 != OpacityRawTokens.opacity1000)

        #expect(OpacityRawTokens.opacity720 != OpacityRawTokens.opacity760)
        #expect(OpacityRawTokens.opacity720 != OpacityRawTokens.opacity800)
        #expect(OpacityRawTokens.opacity720 != OpacityRawTokens.opacity880)
        #expect(OpacityRawTokens.opacity720 != OpacityRawTokens.opacity920)
        #expect(OpacityRawTokens.opacity720 != OpacityRawTokens.opacity960)
        #expect(OpacityRawTokens.opacity720 != OpacityRawTokens.opacity1000)

        #expect(OpacityRawTokens.opacity760 != OpacityRawTokens.opacity800)
        #expect(OpacityRawTokens.opacity760 != OpacityRawTokens.opacity880)
        #expect(OpacityRawTokens.opacity760 != OpacityRawTokens.opacity920)
        #expect(OpacityRawTokens.opacity760 != OpacityRawTokens.opacity960)
        #expect(OpacityRawTokens.opacity760 != OpacityRawTokens.opacity1000)

        #expect(OpacityRawTokens.opacity800 != OpacityRawTokens.opacity880)
        #expect(OpacityRawTokens.opacity800 != OpacityRawTokens.opacity920)
        #expect(OpacityRawTokens.opacity800 != OpacityRawTokens.opacity960)
        #expect(OpacityRawTokens.opacity800 != OpacityRawTokens.opacity1000)

        #expect(OpacityRawTokens.opacity880 != OpacityRawTokens.opacity920)
        #expect(OpacityRawTokens.opacity880 != OpacityRawTokens.opacity960)
        #expect(OpacityRawTokens.opacity880 != OpacityRawTokens.opacity1000)

        #expect(OpacityRawTokens.opacity920 != OpacityRawTokens.opacity960)
        #expect(OpacityRawTokens.opacity920 != OpacityRawTokens.opacity1000)

        #expect(OpacityRawTokens.opacity960 != OpacityRawTokens.opacity1000)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable function_body_length

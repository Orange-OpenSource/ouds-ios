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
        #expect(OpacityRawTokens._0 < OpacityRawTokens._40)
    }

    @Test func opacityRawToken0Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._0, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken40LessThan80() throws {
        #expect(OpacityRawTokens._40 < OpacityRawTokens._80)
    }

    @Test func opacityRawToken40Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._40, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken80LessThan120() throws {
        #expect(OpacityRawTokens._80 < OpacityRawTokens._120)
    }

    @Test func opacityRawToken80Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._80, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken120LessThan160() throws {
        #expect(OpacityRawTokens._120 < OpacityRawTokens._160)
    }

    @Test func opacityRawToken120Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._120, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken160LessThan200() throws {
        #expect(OpacityRawTokens._160 < OpacityRawTokens._200)
    }

    @Test func opacityRawToken160Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._160, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken200LessThan240() throws {
        #expect(OpacityRawTokens._200 < OpacityRawTokens._240)
    }

    @Test func opacityRawToken200Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._200, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken240LessThan280() throws {
        #expect(OpacityRawTokens._240 < OpacityRawTokens._280)
    }

    @Test func opacityRawToken240Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._240, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken280LessThan320() throws {
        #expect(OpacityRawTokens._280 < OpacityRawTokens._320)
    }

    @Test func opacityRawToken280Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._280, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken320LessThan360() throws {
        #expect(OpacityRawTokens._320 < OpacityRawTokens._360)
    }

    @Test func opacityRawToken320Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._320, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken360LessThan400() throws {
        #expect(OpacityRawTokens._360 < OpacityRawTokens._400)
    }

    @Test func opacityRawToken360Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._360, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken400LessThan440() throws {
        #expect(OpacityRawTokens._400 < OpacityRawTokens._440)
    }

    @Test func opacityRawToken400Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._400, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken440LessThan840() throws {
        #expect(OpacityRawTokens._440 < OpacityRawTokens._480)
    }

    @Test func opacityRawToken440Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._440, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken480LessThan520() throws {
        #expect(OpacityRawTokens._480 < OpacityRawTokens._520)
    }

    @Test func opacityRawToken480Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._480, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken520LessThan560() throws {
        #expect(OpacityRawTokens._520 < OpacityRawTokens._560)
    }

    @Test func opacityRawToken520Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._520, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken560LessThan600() throws {
        #expect(OpacityRawTokens._560 < OpacityRawTokens._600)
    }

    @Test func opacityRawToken560Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._560, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken600LessThan640() throws {
        #expect(OpacityRawTokens._600 < OpacityRawTokens._640)
    }

    @Test func opacityRawToken600Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._600, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken640LessThan680() throws {
        #expect(OpacityRawTokens._640 < OpacityRawTokens._680)
    }

    @Test func opacityRawToken640Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._640, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken680LessThan720() throws {
        #expect(OpacityRawTokens._680 < OpacityRawTokens._720)
    }

    @Test func opacityRawToken680Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._680, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken720LessThan760() throws {
        #expect(OpacityRawTokens._720 < OpacityRawTokens._760)
    }

    @Test func opacityRawToken720Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._720, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken760LessThan800() throws {
        #expect(OpacityRawTokens._760 < OpacityRawTokens._800)
    }

    @Test func opacityRawToken760Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._760, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken800LessThan880() throws {
        #expect(OpacityRawTokens._800 < OpacityRawTokens._880)
    }

    @Test func opacityRawToken800Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._800, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken880LessThan920() throws {
        #expect(OpacityRawTokens._880 < OpacityRawTokens._920)
    }

    @Test func opacityRawToken880Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._880, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken920LessThan960() throws {
        #expect(OpacityRawTokens._920 < OpacityRawTokens._960)
    }

    @Test func opacityRawToken920Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._920, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken960LessThan1000() throws {
        #expect(OpacityRawTokens._960 < OpacityRawTokens._1000)
    }

    @Test func opacityRawToken960Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._960, max: Self.opacityRawTokenMaxValue)
    }

    @Test func opacityRawToken1000Between0and1() throws {
        TestsUtils.assertBetween(min: Self.opacityRawTokenMinValue, OpacityRawTokens._1000, max: Self.opacityRawTokenMaxValue)
    }

    @Test func nonEqualityForOpacities() throws {
        #expect(OpacityRawTokens._0 != OpacityRawTokens._40)
        #expect(OpacityRawTokens._0 != OpacityRawTokens._80)
        #expect(OpacityRawTokens._0 != OpacityRawTokens._120)
        #expect(OpacityRawTokens._0 != OpacityRawTokens._160)
        #expect(OpacityRawTokens._0 != OpacityRawTokens._200)
        #expect(OpacityRawTokens._0 != OpacityRawTokens._240)
        #expect(OpacityRawTokens._0 != OpacityRawTokens._280)
        #expect(OpacityRawTokens._0 != OpacityRawTokens._320)
        #expect(OpacityRawTokens._0 != OpacityRawTokens._360)
        #expect(OpacityRawTokens._0 != OpacityRawTokens._400)
        #expect(OpacityRawTokens._0 != OpacityRawTokens._440)
        #expect(OpacityRawTokens._0 != OpacityRawTokens._480)
        #expect(OpacityRawTokens._0 != OpacityRawTokens._520)
        #expect(OpacityRawTokens._0 != OpacityRawTokens._560)
        #expect(OpacityRawTokens._0 != OpacityRawTokens._600)
        #expect(OpacityRawTokens._0 != OpacityRawTokens._640)
        #expect(OpacityRawTokens._0 != OpacityRawTokens._680)
        #expect(OpacityRawTokens._0 != OpacityRawTokens._720)
        #expect(OpacityRawTokens._0 != OpacityRawTokens._760)
        #expect(OpacityRawTokens._0 != OpacityRawTokens._800)
        #expect(OpacityRawTokens._0 != OpacityRawTokens._880)
        #expect(OpacityRawTokens._0 != OpacityRawTokens._920)
        #expect(OpacityRawTokens._0 != OpacityRawTokens._960)
        #expect(OpacityRawTokens._0 != OpacityRawTokens._1000)

        #expect(OpacityRawTokens._40 != OpacityRawTokens._80)
        #expect(OpacityRawTokens._40 != OpacityRawTokens._120)
        #expect(OpacityRawTokens._40 != OpacityRawTokens._160)
        #expect(OpacityRawTokens._40 != OpacityRawTokens._200)
        #expect(OpacityRawTokens._40 != OpacityRawTokens._240)
        #expect(OpacityRawTokens._40 != OpacityRawTokens._280)
        #expect(OpacityRawTokens._40 != OpacityRawTokens._320)
        #expect(OpacityRawTokens._40 != OpacityRawTokens._360)
        #expect(OpacityRawTokens._40 != OpacityRawTokens._400)
        #expect(OpacityRawTokens._40 != OpacityRawTokens._440)
        #expect(OpacityRawTokens._40 != OpacityRawTokens._480)
        #expect(OpacityRawTokens._40 != OpacityRawTokens._520)
        #expect(OpacityRawTokens._40 != OpacityRawTokens._560)
        #expect(OpacityRawTokens._40 != OpacityRawTokens._600)
        #expect(OpacityRawTokens._40 != OpacityRawTokens._640)
        #expect(OpacityRawTokens._40 != OpacityRawTokens._680)
        #expect(OpacityRawTokens._40 != OpacityRawTokens._720)
        #expect(OpacityRawTokens._40 != OpacityRawTokens._760)
        #expect(OpacityRawTokens._40 != OpacityRawTokens._800)
        #expect(OpacityRawTokens._40 != OpacityRawTokens._880)
        #expect(OpacityRawTokens._40 != OpacityRawTokens._920)
        #expect(OpacityRawTokens._40 != OpacityRawTokens._960)
        #expect(OpacityRawTokens._40 != OpacityRawTokens._1000)

        #expect(OpacityRawTokens._80 != OpacityRawTokens._120)
        #expect(OpacityRawTokens._80 != OpacityRawTokens._160)
        #expect(OpacityRawTokens._80 != OpacityRawTokens._200)
        #expect(OpacityRawTokens._80 != OpacityRawTokens._240)
        #expect(OpacityRawTokens._80 != OpacityRawTokens._280)
        #expect(OpacityRawTokens._80 != OpacityRawTokens._320)
        #expect(OpacityRawTokens._80 != OpacityRawTokens._360)
        #expect(OpacityRawTokens._80 != OpacityRawTokens._400)
        #expect(OpacityRawTokens._80 != OpacityRawTokens._440)
        #expect(OpacityRawTokens._80 != OpacityRawTokens._480)
        #expect(OpacityRawTokens._80 != OpacityRawTokens._520)
        #expect(OpacityRawTokens._80 != OpacityRawTokens._560)
        #expect(OpacityRawTokens._80 != OpacityRawTokens._600)
        #expect(OpacityRawTokens._80 != OpacityRawTokens._640)
        #expect(OpacityRawTokens._80 != OpacityRawTokens._680)
        #expect(OpacityRawTokens._80 != OpacityRawTokens._720)
        #expect(OpacityRawTokens._80 != OpacityRawTokens._760)
        #expect(OpacityRawTokens._80 != OpacityRawTokens._800)
        #expect(OpacityRawTokens._80 != OpacityRawTokens._880)
        #expect(OpacityRawTokens._80 != OpacityRawTokens._920)
        #expect(OpacityRawTokens._80 != OpacityRawTokens._960)
        #expect(OpacityRawTokens._80 != OpacityRawTokens._1000)

        #expect(OpacityRawTokens._120 != OpacityRawTokens._160)
        #expect(OpacityRawTokens._120 != OpacityRawTokens._200)
        #expect(OpacityRawTokens._120 != OpacityRawTokens._240)
        #expect(OpacityRawTokens._120 != OpacityRawTokens._280)
        #expect(OpacityRawTokens._120 != OpacityRawTokens._320)
        #expect(OpacityRawTokens._120 != OpacityRawTokens._360)
        #expect(OpacityRawTokens._120 != OpacityRawTokens._400)
        #expect(OpacityRawTokens._120 != OpacityRawTokens._440)
        #expect(OpacityRawTokens._120 != OpacityRawTokens._480)
        #expect(OpacityRawTokens._120 != OpacityRawTokens._520)
        #expect(OpacityRawTokens._120 != OpacityRawTokens._560)
        #expect(OpacityRawTokens._120 != OpacityRawTokens._600)
        #expect(OpacityRawTokens._120 != OpacityRawTokens._640)
        #expect(OpacityRawTokens._120 != OpacityRawTokens._680)
        #expect(OpacityRawTokens._120 != OpacityRawTokens._720)
        #expect(OpacityRawTokens._120 != OpacityRawTokens._760)
        #expect(OpacityRawTokens._120 != OpacityRawTokens._800)
        #expect(OpacityRawTokens._120 != OpacityRawTokens._880)
        #expect(OpacityRawTokens._120 != OpacityRawTokens._920)
        #expect(OpacityRawTokens._120 != OpacityRawTokens._960)
        #expect(OpacityRawTokens._120 != OpacityRawTokens._1000)

        #expect(OpacityRawTokens._160 != OpacityRawTokens._200)
        #expect(OpacityRawTokens._160 != OpacityRawTokens._240)
        #expect(OpacityRawTokens._160 != OpacityRawTokens._280)
        #expect(OpacityRawTokens._160 != OpacityRawTokens._320)
        #expect(OpacityRawTokens._160 != OpacityRawTokens._360)
        #expect(OpacityRawTokens._160 != OpacityRawTokens._400)
        #expect(OpacityRawTokens._160 != OpacityRawTokens._440)
        #expect(OpacityRawTokens._160 != OpacityRawTokens._480)
        #expect(OpacityRawTokens._160 != OpacityRawTokens._520)
        #expect(OpacityRawTokens._160 != OpacityRawTokens._560)
        #expect(OpacityRawTokens._160 != OpacityRawTokens._600)
        #expect(OpacityRawTokens._160 != OpacityRawTokens._640)
        #expect(OpacityRawTokens._160 != OpacityRawTokens._680)
        #expect(OpacityRawTokens._160 != OpacityRawTokens._720)
        #expect(OpacityRawTokens._160 != OpacityRawTokens._760)
        #expect(OpacityRawTokens._160 != OpacityRawTokens._800)
        #expect(OpacityRawTokens._160 != OpacityRawTokens._880)
        #expect(OpacityRawTokens._160 != OpacityRawTokens._920)
        #expect(OpacityRawTokens._160 != OpacityRawTokens._960)
        #expect(OpacityRawTokens._160 != OpacityRawTokens._1000)

        #expect(OpacityRawTokens._200 != OpacityRawTokens._240)
        #expect(OpacityRawTokens._200 != OpacityRawTokens._280)
        #expect(OpacityRawTokens._200 != OpacityRawTokens._320)
        #expect(OpacityRawTokens._200 != OpacityRawTokens._360)
        #expect(OpacityRawTokens._200 != OpacityRawTokens._400)
        #expect(OpacityRawTokens._200 != OpacityRawTokens._440)
        #expect(OpacityRawTokens._200 != OpacityRawTokens._480)
        #expect(OpacityRawTokens._200 != OpacityRawTokens._520)
        #expect(OpacityRawTokens._200 != OpacityRawTokens._560)
        #expect(OpacityRawTokens._200 != OpacityRawTokens._600)
        #expect(OpacityRawTokens._200 != OpacityRawTokens._640)
        #expect(OpacityRawTokens._200 != OpacityRawTokens._680)
        #expect(OpacityRawTokens._200 != OpacityRawTokens._720)
        #expect(OpacityRawTokens._200 != OpacityRawTokens._760)
        #expect(OpacityRawTokens._200 != OpacityRawTokens._800)
        #expect(OpacityRawTokens._200 != OpacityRawTokens._880)
        #expect(OpacityRawTokens._200 != OpacityRawTokens._920)
        #expect(OpacityRawTokens._200 != OpacityRawTokens._960)
        #expect(OpacityRawTokens._200 != OpacityRawTokens._1000)

        #expect(OpacityRawTokens._240 != OpacityRawTokens._280)
        #expect(OpacityRawTokens._240 != OpacityRawTokens._320)
        #expect(OpacityRawTokens._240 != OpacityRawTokens._360)
        #expect(OpacityRawTokens._240 != OpacityRawTokens._400)
        #expect(OpacityRawTokens._240 != OpacityRawTokens._440)
        #expect(OpacityRawTokens._240 != OpacityRawTokens._480)
        #expect(OpacityRawTokens._240 != OpacityRawTokens._520)
        #expect(OpacityRawTokens._240 != OpacityRawTokens._560)
        #expect(OpacityRawTokens._240 != OpacityRawTokens._600)
        #expect(OpacityRawTokens._240 != OpacityRawTokens._640)
        #expect(OpacityRawTokens._240 != OpacityRawTokens._680)
        #expect(OpacityRawTokens._240 != OpacityRawTokens._720)
        #expect(OpacityRawTokens._240 != OpacityRawTokens._760)
        #expect(OpacityRawTokens._240 != OpacityRawTokens._800)
        #expect(OpacityRawTokens._240 != OpacityRawTokens._880)
        #expect(OpacityRawTokens._240 != OpacityRawTokens._920)
        #expect(OpacityRawTokens._240 != OpacityRawTokens._960)
        #expect(OpacityRawTokens._240 != OpacityRawTokens._1000)

        #expect(OpacityRawTokens._280 != OpacityRawTokens._320)
        #expect(OpacityRawTokens._280 != OpacityRawTokens._360)
        #expect(OpacityRawTokens._280 != OpacityRawTokens._400)
        #expect(OpacityRawTokens._280 != OpacityRawTokens._440)
        #expect(OpacityRawTokens._280 != OpacityRawTokens._480)
        #expect(OpacityRawTokens._280 != OpacityRawTokens._520)
        #expect(OpacityRawTokens._280 != OpacityRawTokens._560)
        #expect(OpacityRawTokens._280 != OpacityRawTokens._600)
        #expect(OpacityRawTokens._280 != OpacityRawTokens._640)
        #expect(OpacityRawTokens._280 != OpacityRawTokens._680)
        #expect(OpacityRawTokens._280 != OpacityRawTokens._720)
        #expect(OpacityRawTokens._280 != OpacityRawTokens._760)
        #expect(OpacityRawTokens._280 != OpacityRawTokens._800)
        #expect(OpacityRawTokens._280 != OpacityRawTokens._880)
        #expect(OpacityRawTokens._280 != OpacityRawTokens._920)
        #expect(OpacityRawTokens._280 != OpacityRawTokens._960)
        #expect(OpacityRawTokens._280 != OpacityRawTokens._1000)

        #expect(OpacityRawTokens._320 != OpacityRawTokens._360)
        #expect(OpacityRawTokens._320 != OpacityRawTokens._400)
        #expect(OpacityRawTokens._320 != OpacityRawTokens._440)
        #expect(OpacityRawTokens._320 != OpacityRawTokens._480)
        #expect(OpacityRawTokens._320 != OpacityRawTokens._520)
        #expect(OpacityRawTokens._320 != OpacityRawTokens._560)
        #expect(OpacityRawTokens._320 != OpacityRawTokens._600)
        #expect(OpacityRawTokens._320 != OpacityRawTokens._640)
        #expect(OpacityRawTokens._320 != OpacityRawTokens._680)
        #expect(OpacityRawTokens._320 != OpacityRawTokens._720)
        #expect(OpacityRawTokens._320 != OpacityRawTokens._760)
        #expect(OpacityRawTokens._320 != OpacityRawTokens._800)
        #expect(OpacityRawTokens._320 != OpacityRawTokens._880)
        #expect(OpacityRawTokens._320 != OpacityRawTokens._920)
        #expect(OpacityRawTokens._320 != OpacityRawTokens._960)
        #expect(OpacityRawTokens._320 != OpacityRawTokens._1000)

        #expect(OpacityRawTokens._360 != OpacityRawTokens._400)
        #expect(OpacityRawTokens._360 != OpacityRawTokens._440)
        #expect(OpacityRawTokens._360 != OpacityRawTokens._480)
        #expect(OpacityRawTokens._360 != OpacityRawTokens._520)
        #expect(OpacityRawTokens._360 != OpacityRawTokens._560)
        #expect(OpacityRawTokens._360 != OpacityRawTokens._600)
        #expect(OpacityRawTokens._360 != OpacityRawTokens._640)
        #expect(OpacityRawTokens._360 != OpacityRawTokens._680)
        #expect(OpacityRawTokens._360 != OpacityRawTokens._720)
        #expect(OpacityRawTokens._360 != OpacityRawTokens._760)
        #expect(OpacityRawTokens._360 != OpacityRawTokens._800)
        #expect(OpacityRawTokens._360 != OpacityRawTokens._880)
        #expect(OpacityRawTokens._360 != OpacityRawTokens._920)
        #expect(OpacityRawTokens._360 != OpacityRawTokens._960)
        #expect(OpacityRawTokens._360 != OpacityRawTokens._1000)

        #expect(OpacityRawTokens._400 != OpacityRawTokens._440)
        #expect(OpacityRawTokens._400 != OpacityRawTokens._480)
        #expect(OpacityRawTokens._400 != OpacityRawTokens._520)
        #expect(OpacityRawTokens._400 != OpacityRawTokens._560)
        #expect(OpacityRawTokens._400 != OpacityRawTokens._600)
        #expect(OpacityRawTokens._400 != OpacityRawTokens._640)
        #expect(OpacityRawTokens._400 != OpacityRawTokens._680)
        #expect(OpacityRawTokens._400 != OpacityRawTokens._720)
        #expect(OpacityRawTokens._400 != OpacityRawTokens._760)
        #expect(OpacityRawTokens._400 != OpacityRawTokens._800)
        #expect(OpacityRawTokens._400 != OpacityRawTokens._880)
        #expect(OpacityRawTokens._400 != OpacityRawTokens._920)
        #expect(OpacityRawTokens._400 != OpacityRawTokens._960)
        #expect(OpacityRawTokens._400 != OpacityRawTokens._1000)

        #expect(OpacityRawTokens._440 != OpacityRawTokens._480)
        #expect(OpacityRawTokens._440 != OpacityRawTokens._520)
        #expect(OpacityRawTokens._440 != OpacityRawTokens._560)
        #expect(OpacityRawTokens._440 != OpacityRawTokens._600)
        #expect(OpacityRawTokens._440 != OpacityRawTokens._640)
        #expect(OpacityRawTokens._440 != OpacityRawTokens._680)
        #expect(OpacityRawTokens._440 != OpacityRawTokens._720)
        #expect(OpacityRawTokens._440 != OpacityRawTokens._760)
        #expect(OpacityRawTokens._440 != OpacityRawTokens._800)
        #expect(OpacityRawTokens._440 != OpacityRawTokens._880)
        #expect(OpacityRawTokens._440 != OpacityRawTokens._920)
        #expect(OpacityRawTokens._440 != OpacityRawTokens._960)
        #expect(OpacityRawTokens._440 != OpacityRawTokens._1000)

        #expect(OpacityRawTokens._480 != OpacityRawTokens._520)
        #expect(OpacityRawTokens._480 != OpacityRawTokens._560)
        #expect(OpacityRawTokens._480 != OpacityRawTokens._600)
        #expect(OpacityRawTokens._480 != OpacityRawTokens._640)
        #expect(OpacityRawTokens._480 != OpacityRawTokens._680)
        #expect(OpacityRawTokens._480 != OpacityRawTokens._720)
        #expect(OpacityRawTokens._480 != OpacityRawTokens._760)
        #expect(OpacityRawTokens._480 != OpacityRawTokens._800)
        #expect(OpacityRawTokens._480 != OpacityRawTokens._880)
        #expect(OpacityRawTokens._480 != OpacityRawTokens._920)
        #expect(OpacityRawTokens._480 != OpacityRawTokens._960)
        #expect(OpacityRawTokens._480 != OpacityRawTokens._1000)

        #expect(OpacityRawTokens._520 != OpacityRawTokens._560)
        #expect(OpacityRawTokens._520 != OpacityRawTokens._600)
        #expect(OpacityRawTokens._520 != OpacityRawTokens._640)
        #expect(OpacityRawTokens._520 != OpacityRawTokens._680)
        #expect(OpacityRawTokens._520 != OpacityRawTokens._720)
        #expect(OpacityRawTokens._520 != OpacityRawTokens._760)
        #expect(OpacityRawTokens._520 != OpacityRawTokens._800)
        #expect(OpacityRawTokens._520 != OpacityRawTokens._880)
        #expect(OpacityRawTokens._520 != OpacityRawTokens._920)
        #expect(OpacityRawTokens._520 != OpacityRawTokens._960)
        #expect(OpacityRawTokens._520 != OpacityRawTokens._1000)

        #expect(OpacityRawTokens._560 != OpacityRawTokens._600)
        #expect(OpacityRawTokens._560 != OpacityRawTokens._640)
        #expect(OpacityRawTokens._560 != OpacityRawTokens._680)
        #expect(OpacityRawTokens._560 != OpacityRawTokens._720)
        #expect(OpacityRawTokens._560 != OpacityRawTokens._760)
        #expect(OpacityRawTokens._560 != OpacityRawTokens._800)
        #expect(OpacityRawTokens._560 != OpacityRawTokens._880)
        #expect(OpacityRawTokens._560 != OpacityRawTokens._920)
        #expect(OpacityRawTokens._560 != OpacityRawTokens._960)
        #expect(OpacityRawTokens._560 != OpacityRawTokens._1000)

        #expect(OpacityRawTokens._600 != OpacityRawTokens._640)
        #expect(OpacityRawTokens._600 != OpacityRawTokens._680)
        #expect(OpacityRawTokens._600 != OpacityRawTokens._720)
        #expect(OpacityRawTokens._600 != OpacityRawTokens._760)
        #expect(OpacityRawTokens._600 != OpacityRawTokens._800)
        #expect(OpacityRawTokens._600 != OpacityRawTokens._880)
        #expect(OpacityRawTokens._600 != OpacityRawTokens._920)
        #expect(OpacityRawTokens._600 != OpacityRawTokens._960)
        #expect(OpacityRawTokens._600 != OpacityRawTokens._1000)

        #expect(OpacityRawTokens._640 != OpacityRawTokens._680)
        #expect(OpacityRawTokens._640 != OpacityRawTokens._720)
        #expect(OpacityRawTokens._640 != OpacityRawTokens._760)
        #expect(OpacityRawTokens._640 != OpacityRawTokens._800)
        #expect(OpacityRawTokens._640 != OpacityRawTokens._880)
        #expect(OpacityRawTokens._640 != OpacityRawTokens._920)
        #expect(OpacityRawTokens._640 != OpacityRawTokens._960)
        #expect(OpacityRawTokens._640 != OpacityRawTokens._1000)

        #expect(OpacityRawTokens._680 != OpacityRawTokens._720)
        #expect(OpacityRawTokens._680 != OpacityRawTokens._760)
        #expect(OpacityRawTokens._680 != OpacityRawTokens._800)
        #expect(OpacityRawTokens._680 != OpacityRawTokens._880)
        #expect(OpacityRawTokens._680 != OpacityRawTokens._920)
        #expect(OpacityRawTokens._680 != OpacityRawTokens._960)
        #expect(OpacityRawTokens._680 != OpacityRawTokens._1000)

        #expect(OpacityRawTokens._720 != OpacityRawTokens._760)
        #expect(OpacityRawTokens._720 != OpacityRawTokens._800)
        #expect(OpacityRawTokens._720 != OpacityRawTokens._880)
        #expect(OpacityRawTokens._720 != OpacityRawTokens._920)
        #expect(OpacityRawTokens._720 != OpacityRawTokens._960)
        #expect(OpacityRawTokens._720 != OpacityRawTokens._1000)

        #expect(OpacityRawTokens._760 != OpacityRawTokens._800)
        #expect(OpacityRawTokens._760 != OpacityRawTokens._880)
        #expect(OpacityRawTokens._760 != OpacityRawTokens._920)
        #expect(OpacityRawTokens._760 != OpacityRawTokens._960)
        #expect(OpacityRawTokens._760 != OpacityRawTokens._1000)

        #expect(OpacityRawTokens._800 != OpacityRawTokens._880)
        #expect(OpacityRawTokens._800 != OpacityRawTokens._920)
        #expect(OpacityRawTokens._800 != OpacityRawTokens._960)
        #expect(OpacityRawTokens._800 != OpacityRawTokens._1000)

        #expect(OpacityRawTokens._880 != OpacityRawTokens._920)
        #expect(OpacityRawTokens._880 != OpacityRawTokens._960)
        #expect(OpacityRawTokens._880 != OpacityRawTokens._1000)

        #expect(OpacityRawTokens._920 != OpacityRawTokens._960)
        #expect(OpacityRawTokens._920 != OpacityRawTokens._1000)

        #expect(OpacityRawTokens._960 != OpacityRawTokens._1000)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable function_body_length

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

/// The aim of this tests class is to look for regressions in **grid raw tokens**.
///
/// Because these values will be at least generated through an external tool, is it not mandatory and relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **grid raw tokens**, there will be some unchanged things like relationships between tokens.
///
/// Here are some rules to follow:
/// - the higher the grid margin token is, the higher its value is
/// - the higher the grid column count token is, the higher its value is
/// - the higher the grid column gap token is, the higher its value is
/// - grid column gap tokens must be factor of `DimensionRawTokens.dimensionBase`
/// - grid column count tokens must be all different
/// - grid column count tokens must be greater than 0
/// - grid column gap tokens must be all different
/// - grid column gap tokens must be greater than 0
/// - grid max width tokens must be all different
/// - grid max width otkens values must be the expected ones
/// - grid min width tokens must be all different
/// - grid min width otkens values must be the expected ones
struct GridRawTokensTests {

    // MARK: - Primitive token - Grid - Min and max Width

    /*
     Values are defined using Apple guidelines in desig team side.
     See https://developer.apple.com/design/human-interface-guidelines/layout
     */

    @Test func gridRawTokenMaxWidthCompactValue() {
        #expect(GridRawTokens.gridMaxWidthCompact == 852)
    }

    @Test func gridRawTokenMaxWidthExtraCompactValue() {
        #expect(GridRawTokens.gridMaxWidthExtraCompact == 389)
    }

    @Test func gridRawTokenMaxWidthRegularValue() {
        #expect(GridRawTokens.gridMaxWidthRegular == 1_336)
    }

    @Test func gridRawTokenMinWidthCompactValue() {
        #expect(GridRawTokens.gridMinWidthCompact == 390)
    }

    @Test func gridRawTokenMinWidthExtraCompactValue() {
        #expect(GridRawTokens.gridMinWidthExtraCompact == 320)
    }

    @Test func gridRawTokenMinWidthRegularValue() {
        #expect(GridRawTokens.gridMinWidthRegular == 736)
    }

    // MARK: - Primitive token - Grid - Margin

    @Test func gridRawTokenGridMargin100GreaterThan0() throws {
        #expect(GridRawTokens.gridMargin100 > 0)
    }

    @Test func gridRawTokenGridMargin100LessThanGridMargin300() throws {
        #expect(GridRawTokens.gridMargin100 < GridRawTokens.gridMargin300)
    }

    @Test func gridRawTokenMargin100MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.gridMargin100, factor: DimensionRawTokens.dimensionBase)
    }

    @Test func gridRawTokenGridMargin300GreaterThan0() throws {
        #expect(GridRawTokens.gridMargin300 > 0)
    }

    @Test func gridRawTokenGridMargin300LessThanGridMargin400() throws {
        #expect(GridRawTokens.gridMargin300 < GridRawTokens.gridMargin400)
    }

    @Test func gridRawTokenMargin300MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.gridMargin300, factor: DimensionRawTokens.dimensionBase)
    }

    @Test func gridRawTokenGridMargin400GreaterThan0() throws {
        #expect(GridRawTokens.gridMargin400 > 0)
    }

    @Test func gridRawTokenGridMargin400LessThanGridMargin500() throws {
        #expect(GridRawTokens.gridMargin400 < GridRawTokens.gridMargin500)
    }

    @Test func gridRawTokenMargin400MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.gridMargin400, factor: DimensionRawTokens.dimensionBase)
    }

    @Test func gridRawTokenGridMargin500GreaterThan0() throws {
        #expect(GridRawTokens.gridMargin500 > 0)
    }

    @Test func gridRawTokenGridMargin500LessThanGridMargin600() throws {
        #expect(GridRawTokens.gridMargin500 < GridRawTokens.gridMargin600)
    }

    @Test func gridRawTokenMargin500MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.gridMargin500, factor: DimensionRawTokens.dimensionBase)
    }

    @Test func gridRawTokenGridMargin600GreaterThan0() throws {
        #expect(GridRawTokens.gridMargin600 > 0)
    }

    @Test func gridRawTokenGridMargin600LessThanGridMargin700() throws {
        #expect(GridRawTokens.gridMargin600 < GridRawTokens.gridMargin700)
    }

    @Test func gridRawTokenMargin600MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.gridMargin600, factor: DimensionRawTokens.dimensionBase)
    }

    @Test func gridRawTokenGridMargin700GreaterThan0() throws {
        #expect(GridRawTokens.gridMargin700 > 0)
    }

    @Test func gridRawTokenGridMargin700LessThanGridMargin1000() throws {
        #expect(GridRawTokens.gridMargin700 < GridRawTokens.gridMargin1000)
    }

    @Test func gridRawTokenMargin700MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.gridMargin700, factor: DimensionRawTokens.dimensionBase)
    }

    @Test func gridRawTokenGridMargin1000GreaterThan0() throws {
        #expect(GridRawTokens.gridMargin1000 > 0)
    }

    @Test func gridRawTokenGridMargin1000LessThanGridMargin1100() throws {
        #expect(GridRawTokens.gridMargin1000 < GridRawTokens.gridMargin1100)
    }

    @Test func gridRawTokenMargin1000MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.gridMargin1000, factor: DimensionRawTokens.dimensionBase)
    }

    @Test func gridRawTokenGridMargin1100GreaterThan0() throws {
        #expect(GridRawTokens.gridMargin1100 > 0)
    }

    @Test func gridRawTokenGridMargin1100LessThanGridMargin1700() throws {
        #expect(GridRawTokens.gridMargin1100 < GridRawTokens.gridMargin1700)
    }

    @Test func gridRawTokenMargin1100MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.gridMargin1000, factor: DimensionRawTokens.dimensionBase)
    }

    @Test func gridRawTokenGridMargin1700GreaterThan0() throws {
        #expect(GridRawTokens.gridMargin1700 > 0)
    }

    @Test func gridRawTokenGridMargin1700LessThanGridMargin2500() throws {
        #expect(GridRawTokens.gridMargin1700 < GridRawTokens.gridMargin2500)
    }

    @Test func gridRawTokenMargin1700MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.gridMargin1700, factor: DimensionRawTokens.dimensionBase)
    }

    @Test func gridRawTokenGridMargin250GreaterThan0() throws {
        #expect(GridRawTokens.gridMargin2500 > 0)
    }

    @Test func gridRawTokenMargin2500MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.gridMargin2500, factor: DimensionRawTokens.dimensionBase)
    }

    @Test func nonEqualityForGridMargins() throws {
        #expect(GridRawTokens.gridMargin100 != GridRawTokens.gridMargin300)
        #expect(GridRawTokens.gridMargin100 != GridRawTokens.gridMargin400)
        #expect(GridRawTokens.gridMargin100 != GridRawTokens.gridMargin500)
        #expect(GridRawTokens.gridMargin100 != GridRawTokens.gridMargin600)
        #expect(GridRawTokens.gridMargin100 != GridRawTokens.gridMargin700)
        #expect(GridRawTokens.gridMargin100 != GridRawTokens.gridMargin1000)
        #expect(GridRawTokens.gridMargin100 != GridRawTokens.gridMargin1100)
        #expect(GridRawTokens.gridMargin100 != GridRawTokens.gridMargin1700)
        #expect(GridRawTokens.gridMargin100 != GridRawTokens.gridMargin2500)

        #expect(GridRawTokens.gridMargin300 != GridRawTokens.gridMargin400)
        #expect(GridRawTokens.gridMargin300 != GridRawTokens.gridMargin500)
        #expect(GridRawTokens.gridMargin300 != GridRawTokens.gridMargin600)
        #expect(GridRawTokens.gridMargin300 != GridRawTokens.gridMargin700)
        #expect(GridRawTokens.gridMargin300 != GridRawTokens.gridMargin1000)
        #expect(GridRawTokens.gridMargin300 != GridRawTokens.gridMargin1100)
        #expect(GridRawTokens.gridMargin300 != GridRawTokens.gridMargin1700)
        #expect(GridRawTokens.gridMargin300 != GridRawTokens.gridMargin2500)

        #expect(GridRawTokens.gridMargin400 != GridRawTokens.gridMargin500)
        #expect(GridRawTokens.gridMargin400 != GridRawTokens.gridMargin600)
        #expect(GridRawTokens.gridMargin400 != GridRawTokens.gridMargin700)
        #expect(GridRawTokens.gridMargin400 != GridRawTokens.gridMargin1000)
        #expect(GridRawTokens.gridMargin400 != GridRawTokens.gridMargin1100)
        #expect(GridRawTokens.gridMargin400 != GridRawTokens.gridMargin1700)
        #expect(GridRawTokens.gridMargin400 != GridRawTokens.gridMargin2500)

        #expect(GridRawTokens.gridMargin500 != GridRawTokens.gridMargin600)
        #expect(GridRawTokens.gridMargin500 != GridRawTokens.gridMargin700)
        #expect(GridRawTokens.gridMargin500 != GridRawTokens.gridMargin1000)
        #expect(GridRawTokens.gridMargin500 != GridRawTokens.gridMargin1100)
        #expect(GridRawTokens.gridMargin500 != GridRawTokens.gridMargin1700)
        #expect(GridRawTokens.gridMargin500 != GridRawTokens.gridMargin2500)

        #expect(GridRawTokens.gridMargin600 != GridRawTokens.gridMargin700)
        #expect(GridRawTokens.gridMargin600 != GridRawTokens.gridMargin1000)
        #expect(GridRawTokens.gridMargin600 != GridRawTokens.gridMargin1100)
        #expect(GridRawTokens.gridMargin600 != GridRawTokens.gridMargin1700)
        #expect(GridRawTokens.gridMargin600 != GridRawTokens.gridMargin2500)

        #expect(GridRawTokens.gridMargin700 != GridRawTokens.gridMargin1000)
        #expect(GridRawTokens.gridMargin700 != GridRawTokens.gridMargin1100)
        #expect(GridRawTokens.gridMargin700 != GridRawTokens.gridMargin1700)
        #expect(GridRawTokens.gridMargin700 != GridRawTokens.gridMargin2500)

        #expect(GridRawTokens.gridMargin1000 != GridRawTokens.gridMargin1100)
        #expect(GridRawTokens.gridMargin1000 != GridRawTokens.gridMargin1700)
        #expect(GridRawTokens.gridMargin1000 != GridRawTokens.gridMargin2500)

        #expect(GridRawTokens.gridMargin1100 != GridRawTokens.gridMargin1700)
        #expect(GridRawTokens.gridMargin1100 != GridRawTokens.gridMargin2500)

        #expect(GridRawTokens.gridMargin1700 != GridRawTokens.gridMargin2500)
    }

    // MARK: - Primitive token - Grid - Column gap

    @Test func gridRawTokenGridColumnGap10GreaterThan0() throws {
        #expect(GridRawTokens.gridColumnGap10 > 0)
    }

    @Test func gridRawTokenGridColumnGap10LessThanGridColumnGap100() throws {
        #expect(GridRawTokens.gridColumnGap10 < GridRawTokens.gridColumnGap100)
    }

    @Test func gridRawTokenColumnGap10MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.gridColumnGap10, factor: DimensionRawTokens.dimensionBase)
    }

    @Test func gridRawTokenGridColumnGap100GreaterThan0() throws {
        #expect(GridRawTokens.gridColumnGap100 > 0)
    }

    @Test func gridRawTokenGridColumnGap100LessThanGridColumnGap200() throws {
        #expect(GridRawTokens.gridColumnGap100 < GridRawTokens.gridColumnGap200)
    }

    @Test func gridRawTokenColumnGap100MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.gridColumnGap100, factor: DimensionRawTokens.dimensionBase)
    }

    @Test func gridRawTokenGridColumnGap200GreaterThan0() throws {
        #expect(GridRawTokens.gridColumnGap200 > 0)
    }

    @Test func gridRawTokenGridColumnGap200LessThanGridColumnGap300() throws {
        #expect(GridRawTokens.gridColumnGap200 < GridRawTokens.gridColumnGap300)
    }

    @Test func gridRawTokenColumnGap200MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.gridColumnGap200, factor: DimensionRawTokens.dimensionBase)
    }

    @Test func gridRawTokenGridColumnGap300GreaterThan0() throws {
        #expect(GridRawTokens.gridColumnGap300 > 0)
    }

    @Test func gridRawTokenGridColumnGap300LessThanGridColumnGap400() throws {
        #expect(GridRawTokens.gridColumnGap300 < GridRawTokens.gridColumnGap400)
    }

    @Test func gridRawTokenColumnGap300MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.gridColumnGap300, factor: DimensionRawTokens.dimensionBase)
    }

    @Test func gridRawTokenGridColumnGap400GreaterThan0() throws {
        #expect(GridRawTokens.gridColumnGap400 > 0)
    }

    @Test func gridRawTokenGridColumnGap400LessThanGridColumnGap600() throws {
        #expect(GridRawTokens.gridColumnGap400 < GridRawTokens.gridColumnGap600)
    }

    @Test func gridRawTokenColumnGap400MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.gridColumnGap400, factor: DimensionRawTokens.dimensionBase)
    }

    @Test func gridRawTokenGridColumnGap600GreaterThan0() throws {
        #expect(GridRawTokens.gridColumnGap600 > 0)
    }

    @Test func gridRawTokenGridColumnGap600LessThanGridColumnGap800() throws {
        #expect(GridRawTokens.gridColumnGap600 < GridRawTokens.gridColumnGap800)
    }

    @Test func gridRawTokenColumnGap600MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.gridColumnGap600, factor: DimensionRawTokens.dimensionBase)
    }

    @Test func gridRawTokenGridColumnGap800GreaterThan0() throws {
        #expect(GridRawTokens.gridColumnGap800 > 0)
    }

    @Test func gridRawTokenColumnGap800MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.gridColumnGap800, factor: DimensionRawTokens.dimensionBase)
    }

    @Test func nonEqualityForGridColumnGaps() throws {
        #expect(GridRawTokens.gridColumnGap10 != GridRawTokens.gridColumnGap100)
        #expect(GridRawTokens.gridColumnGap10 != GridRawTokens.gridColumnGap200)
        #expect(GridRawTokens.gridColumnGap10 != GridRawTokens.gridColumnGap300)
        #expect(GridRawTokens.gridColumnGap10 != GridRawTokens.gridColumnGap400)
        #expect(GridRawTokens.gridColumnGap10 != GridRawTokens.gridColumnGap600)
        #expect(GridRawTokens.gridColumnGap10 != GridRawTokens.gridColumnGap800)

        #expect(GridRawTokens.gridColumnGap100 != GridRawTokens.gridColumnGap200)
        #expect(GridRawTokens.gridColumnGap100 != GridRawTokens.gridColumnGap300)
        #expect(GridRawTokens.gridColumnGap100 != GridRawTokens.gridColumnGap400)
        #expect(GridRawTokens.gridColumnGap100 != GridRawTokens.gridColumnGap600)
        #expect(GridRawTokens.gridColumnGap100 != GridRawTokens.gridColumnGap800)

        #expect(GridRawTokens.gridColumnGap200 != GridRawTokens.gridColumnGap300)
        #expect(GridRawTokens.gridColumnGap200 != GridRawTokens.gridColumnGap400)
        #expect(GridRawTokens.gridColumnGap200 != GridRawTokens.gridColumnGap600)
        #expect(GridRawTokens.gridColumnGap200 != GridRawTokens.gridColumnGap800)

        #expect(GridRawTokens.gridColumnGap300 != GridRawTokens.gridColumnGap400)
        #expect(GridRawTokens.gridColumnGap300 != GridRawTokens.gridColumnGap600)
        #expect(GridRawTokens.gridColumnGap300 != GridRawTokens.gridColumnGap800)

        #expect(GridRawTokens.gridColumnGap400 != GridRawTokens.gridColumnGap600)
        #expect(GridRawTokens.gridColumnGap400 != GridRawTokens.gridColumnGap800)

        #expect(GridRawTokens.gridColumnGap600 != GridRawTokens.gridColumnGap800)
    }

    // MARK: - Primitive token - Grid - Column count

    @Test func gridRawTokenGridColumnCount100GreaterThan0() throws {
        #expect(GridRawTokens.gridColumnCount100 > 0)
    }

    @Test func gridRawTokenGridColumnCount100LessThanGridColumnCount200() throws {
        #expect(GridRawTokens.gridColumnCount100 < GridRawTokens.gridColumnCount200)
    }

    @Test func gridRawTokenGridColumnCount200GreaterThan0() throws {
        #expect(GridRawTokens.gridColumnCount200 > 0)
    }

    @Test func gridRawTokenGridColumnCount200LessThanGridColumnCount400() throws {
        #expect(GridRawTokens.gridColumnCount200 < GridRawTokens.gridColumnCount400)
    }

    @Test func gridRawTokenGridColumnCount400GreaterThan0() throws {
        #expect(GridRawTokens.gridColumnCount400 > 0)
    }

    @Test func gridRawTokenGridColumnCount400LessThanGridColumnCount600() throws {
        #expect(GridRawTokens.gridColumnCount400 < GridRawTokens.gridColumnCount600)
    }

    @Test func gridRawTokenGridColumnCount600GreaterThan0() throws {
        #expect(GridRawTokens.gridColumnCount600 > 0)
    }

    @Test func gridRawTokenGridColumnCount600LessThanGridColumnCount800() throws {
        #expect(GridRawTokens.gridColumnCount600 < GridRawTokens.gridColumnCount800)
    }

    @Test func gridRawTokenGridColumnCount800GreaterThan0() throws {
        #expect(GridRawTokens.gridColumnCount800 > 0)
    }

    @Test func gridRawTokenGridColumnCount800LessThanGridColumnCount1000() throws {
        #expect(GridRawTokens.gridColumnCount800 < GridRawTokens.gridColumnCount1000)
    }

    @Test func gridRawTokenGridColumnCount1000GreaterThan0() throws {
        #expect(GridRawTokens.gridColumnCount1000 > 0)
    }

    @Test func gridRawTokenGridColumnCount1000LessThanGridColumnCount1200() throws {
        #expect(GridRawTokens.gridColumnCount1000 < GridRawTokens.gridColumnCount1200)
    }

    @Test func nonEqualityForGridColumnCounts() throws {
        #expect(GridRawTokens.gridColumnCount100 != GridRawTokens.gridColumnCount200)
        #expect(GridRawTokens.gridColumnCount100 != GridRawTokens.gridColumnCount400)
        #expect(GridRawTokens.gridColumnCount100 != GridRawTokens.gridColumnCount600)
        #expect(GridRawTokens.gridColumnCount100 != GridRawTokens.gridColumnCount800)
        #expect(GridRawTokens.gridColumnCount100 != GridRawTokens.gridColumnCount1000)
        #expect(GridRawTokens.gridColumnCount100 != GridRawTokens.gridColumnCount1200)

        #expect(GridRawTokens.gridColumnCount200 != GridRawTokens.gridColumnCount400)
        #expect(GridRawTokens.gridColumnCount200 != GridRawTokens.gridColumnCount600)
        #expect(GridRawTokens.gridColumnCount200 != GridRawTokens.gridColumnCount800)
        #expect(GridRawTokens.gridColumnCount200 != GridRawTokens.gridColumnCount1000)
        #expect(GridRawTokens.gridColumnCount200 != GridRawTokens.gridColumnCount1200)

        #expect(GridRawTokens.gridColumnCount400 != GridRawTokens.gridColumnCount600)
        #expect(GridRawTokens.gridColumnCount400 != GridRawTokens.gridColumnCount800)
        #expect(GridRawTokens.gridColumnCount400 != GridRawTokens.gridColumnCount1000)
        #expect(GridRawTokens.gridColumnCount400 != GridRawTokens.gridColumnCount1200)

        #expect(GridRawTokens.gridColumnCount600 != GridRawTokens.gridColumnCount800)
        #expect(GridRawTokens.gridColumnCount600 != GridRawTokens.gridColumnCount1000)
        #expect(GridRawTokens.gridColumnCount600 != GridRawTokens.gridColumnCount1200)

        #expect(GridRawTokens.gridColumnCount800 != GridRawTokens.gridColumnCount1000)
        #expect(GridRawTokens.gridColumnCount800 != GridRawTokens.gridColumnCount1200)

        #expect(GridRawTokens.gridColumnCount1000 != GridRawTokens.gridColumnCount1200)
    }
}

// swiftlint:enable type_body_length

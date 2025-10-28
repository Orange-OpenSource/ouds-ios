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
/// - grid column gap tokens must be factor of `DimensionRawTokens.base`
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
        #expect(GridRawTokens.maxWidthCompact == 852)
    }

    @Test func gridRawTokenMaxWidthExtraCompactValue() {
        #expect(GridRawTokens.maxWidthExtraCompact == 389)
    }

    @Test func gridRawTokenMaxWidthRegularValue() {
        #expect(GridRawTokens.maxWidthRegular == 1_336)
    }

    @Test func gridRawTokenMinWidthCompactValue() {
        #expect(GridRawTokens.minWidthCompact == 390)
    }

    @Test func gridRawTokenMinWidthExtraCompactValue() {
        #expect(GridRawTokens.minWidthExtraCompact == 320)
    }

    @Test func gridRawTokenMinWidthRegularValue() {
        #expect(GridRawTokens.minWidthRegular == 736)
    }

    // MARK: - Primitive token - Grid - Margin

    @Test func gridRawTokenGridMargin100GreaterThan0() throws {
        #expect(GridRawTokens.margin100 > 0)
    }

    @Test func gridRawTokenGridMargin100LessThanGridMargin300() throws {
        #expect(GridRawTokens.margin100 < GridRawTokens.margin300)
    }

    @Test func gridRawTokenMargin100MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.margin100, factor: DimensionRawTokens.base)
    }

    @Test func gridRawTokenGridMargin300GreaterThan0() throws {
        #expect(GridRawTokens.margin300 > 0)
    }

    @Test func gridRawTokenGridMargin300LessThanGridMargin400() throws {
        #expect(GridRawTokens.margin300 < GridRawTokens.margin400)
    }

    @Test func gridRawTokenMargin300MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.margin300, factor: DimensionRawTokens.base)
    }

    @Test func gridRawTokenGridMargin400GreaterThan0() throws {
        #expect(GridRawTokens.margin400 > 0)
    }

    @Test func gridRawTokenGridMargin400LessThanGridMargin500() throws {
        #expect(GridRawTokens.margin400 < GridRawTokens.margin500)
    }

    @Test func gridRawTokenMargin400MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.margin400, factor: DimensionRawTokens.base)
    }

    @Test func gridRawTokenGridMargin500GreaterThan0() throws {
        #expect(GridRawTokens.margin500 > 0)
    }

    @Test func gridRawTokenGridMargin500LessThanGridMargin600() throws {
        #expect(GridRawTokens.margin500 < GridRawTokens.margin600)
    }

    @Test func gridRawTokenMargin500MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.margin500, factor: DimensionRawTokens.base)
    }

    @Test func gridRawTokenGridMargin600GreaterThan0() throws {
        #expect(GridRawTokens.margin600 > 0)
    }

    @Test func gridRawTokenGridMargin600LessThanGridMargin700() throws {
        #expect(GridRawTokens.margin600 < GridRawTokens.margin700)
    }

    @Test func gridRawTokenMargin600MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.margin600, factor: DimensionRawTokens.base)
    }

    @Test func gridRawTokenGridMargin700GreaterThan0() throws {
        #expect(GridRawTokens.margin700 > 0)
    }

    @Test func gridRawTokenGridMargin700LessThanGridMargin1000() throws {
        #expect(GridRawTokens.margin700 < GridRawTokens.margin1000)
    }

    @Test func gridRawTokenMargin700MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.margin700, factor: DimensionRawTokens.base)
    }

    @Test func gridRawTokenGridMargin1000GreaterThan0() throws {
        #expect(GridRawTokens.margin1000 > 0)
    }

    @Test func gridRawTokenGridMargin1000LessThanGridMargin1100() throws {
        #expect(GridRawTokens.margin1000 < GridRawTokens.margin1100)
    }

    @Test func gridRawTokenMargin1000MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.margin1000, factor: DimensionRawTokens.base)
    }

    @Test func gridRawTokenGridMargin1100GreaterThan0() throws {
        #expect(GridRawTokens.margin1100 > 0)
    }

    @Test func gridRawTokenGridMargin1100LessThanGridMargin1700() throws {
        #expect(GridRawTokens.margin1100 < GridRawTokens.margin1700)
    }

    @Test func gridRawTokenMargin1100MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.margin1000, factor: DimensionRawTokens.base)
    }

    @Test func gridRawTokenGridMargin1700GreaterThan0() throws {
        #expect(GridRawTokens.margin1700 > 0)
    }

    @Test func gridRawTokenGridMargin1700LessThanGridMargin2500() throws {
        #expect(GridRawTokens.margin1700 < GridRawTokens.margin2500)
    }

    @Test func gridRawTokenMargin1700MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.margin1700, factor: DimensionRawTokens.base)
    }

    @Test func gridRawTokenGridMargin250GreaterThan0() throws {
        #expect(GridRawTokens.margin2500 > 0)
    }

    @Test func gridRawTokenMargin2500MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.margin2500, factor: DimensionRawTokens.base)
    }

    @Test func nonEqualityForGridMargins() throws {
        #expect(GridRawTokens.margin100 != GridRawTokens.margin300)
        #expect(GridRawTokens.margin100 != GridRawTokens.margin400)
        #expect(GridRawTokens.margin100 != GridRawTokens.margin500)
        #expect(GridRawTokens.margin100 != GridRawTokens.margin600)
        #expect(GridRawTokens.margin100 != GridRawTokens.margin700)
        #expect(GridRawTokens.margin100 != GridRawTokens.margin1000)
        #expect(GridRawTokens.margin100 != GridRawTokens.margin1100)
        #expect(GridRawTokens.margin100 != GridRawTokens.margin1700)
        #expect(GridRawTokens.margin100 != GridRawTokens.margin2500)

        #expect(GridRawTokens.margin300 != GridRawTokens.margin400)
        #expect(GridRawTokens.margin300 != GridRawTokens.margin500)
        #expect(GridRawTokens.margin300 != GridRawTokens.margin600)
        #expect(GridRawTokens.margin300 != GridRawTokens.margin700)
        #expect(GridRawTokens.margin300 != GridRawTokens.margin1000)
        #expect(GridRawTokens.margin300 != GridRawTokens.margin1100)
        #expect(GridRawTokens.margin300 != GridRawTokens.margin1700)
        #expect(GridRawTokens.margin300 != GridRawTokens.margin2500)

        #expect(GridRawTokens.margin400 != GridRawTokens.margin500)
        #expect(GridRawTokens.margin400 != GridRawTokens.margin600)
        #expect(GridRawTokens.margin400 != GridRawTokens.margin700)
        #expect(GridRawTokens.margin400 != GridRawTokens.margin1000)
        #expect(GridRawTokens.margin400 != GridRawTokens.margin1100)
        #expect(GridRawTokens.margin400 != GridRawTokens.margin1700)
        #expect(GridRawTokens.margin400 != GridRawTokens.margin2500)

        #expect(GridRawTokens.margin500 != GridRawTokens.margin600)
        #expect(GridRawTokens.margin500 != GridRawTokens.margin700)
        #expect(GridRawTokens.margin500 != GridRawTokens.margin1000)
        #expect(GridRawTokens.margin500 != GridRawTokens.margin1100)
        #expect(GridRawTokens.margin500 != GridRawTokens.margin1700)
        #expect(GridRawTokens.margin500 != GridRawTokens.margin2500)

        #expect(GridRawTokens.margin600 != GridRawTokens.margin700)
        #expect(GridRawTokens.margin600 != GridRawTokens.margin1000)
        #expect(GridRawTokens.margin600 != GridRawTokens.margin1100)
        #expect(GridRawTokens.margin600 != GridRawTokens.margin1700)
        #expect(GridRawTokens.margin600 != GridRawTokens.margin2500)

        #expect(GridRawTokens.margin700 != GridRawTokens.margin1000)
        #expect(GridRawTokens.margin700 != GridRawTokens.margin1100)
        #expect(GridRawTokens.margin700 != GridRawTokens.margin1700)
        #expect(GridRawTokens.margin700 != GridRawTokens.margin2500)

        #expect(GridRawTokens.margin1000 != GridRawTokens.margin1100)
        #expect(GridRawTokens.margin1000 != GridRawTokens.margin1700)
        #expect(GridRawTokens.margin1000 != GridRawTokens.margin2500)

        #expect(GridRawTokens.margin1100 != GridRawTokens.margin1700)
        #expect(GridRawTokens.margin1100 != GridRawTokens.margin2500)

        #expect(GridRawTokens.margin1700 != GridRawTokens.margin2500)
    }

    // MARK: - Primitive token - Grid - Column gap

    @Test func gridRawTokenGridColumnGap10GreaterThan0() throws {
        #expect(GridRawTokens.columnGap10 > 0)
    }

    @Test func gridRawTokenGridColumnGap10LessThanGridColumnGap100() throws {
        #expect(GridRawTokens.columnGap10 < GridRawTokens.columnGap100)
    }

    @Test func gridRawTokenColumnGap10MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.columnGap10, factor: DimensionRawTokens.base)
    }

    @Test func gridRawTokenGridColumnGap100GreaterThan0() throws {
        #expect(GridRawTokens.columnGap100 > 0)
    }

    @Test func gridRawTokenGridColumnGap100LessThanGridColumnGap200() throws {
        #expect(GridRawTokens.columnGap100 < GridRawTokens.columnGap200)
    }

    @Test func gridRawTokenColumnGap100MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.columnGap100, factor: DimensionRawTokens.base)
    }

    @Test func gridRawTokenGridColumnGap200GreaterThan0() throws {
        #expect(GridRawTokens.columnGap200 > 0)
    }

    @Test func gridRawTokenGridColumnGap200LessThanGridColumnGap300() throws {
        #expect(GridRawTokens.columnGap200 < GridRawTokens.columnGap300)
    }

    @Test func gridRawTokenColumnGap200MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.columnGap200, factor: DimensionRawTokens.base)
    }

    @Test func gridRawTokenGridColumnGap300GreaterThan0() throws {
        #expect(GridRawTokens.columnGap300 > 0)
    }

    @Test func gridRawTokenGridColumnGap300LessThanGridColumnGap400() throws {
        #expect(GridRawTokens.columnGap300 < GridRawTokens.columnGap400)
    }

    @Test func gridRawTokenColumnGap300MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.columnGap300, factor: DimensionRawTokens.base)
    }

    @Test func gridRawTokenGridColumnGap400GreaterThan0() throws {
        #expect(GridRawTokens.columnGap400 > 0)
    }

    @Test func gridRawTokenGridColumnGap400LessThanGridColumnGap600() throws {
        #expect(GridRawTokens.columnGap400 < GridRawTokens.columnGap600)
    }

    @Test func gridRawTokenColumnGap400MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.columnGap400, factor: DimensionRawTokens.base)
    }

    @Test func gridRawTokenGridColumnGap600GreaterThan0() throws {
        #expect(GridRawTokens.columnGap600 > 0)
    }

    @Test func gridRawTokenGridColumnGap600LessThanGridColumnGap800() throws {
        #expect(GridRawTokens.columnGap600 < GridRawTokens.columnGap800)
    }

    @Test func gridRawTokenColumnGap600MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.columnGap600, factor: DimensionRawTokens.base)
    }

    @Test func gridRawTokenGridColumnGap800GreaterThan0() throws {
        #expect(GridRawTokens.columnGap800 > 0)
    }

    @Test func gridRawTokenColumnGap800MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(GridRawTokens.columnGap800, factor: DimensionRawTokens.base)
    }

    @Test func nonEqualityForGridColumnGaps() throws {
        #expect(GridRawTokens.columnGap10 != GridRawTokens.columnGap100)
        #expect(GridRawTokens.columnGap10 != GridRawTokens.columnGap200)
        #expect(GridRawTokens.columnGap10 != GridRawTokens.columnGap300)
        #expect(GridRawTokens.columnGap10 != GridRawTokens.columnGap400)
        #expect(GridRawTokens.columnGap10 != GridRawTokens.columnGap600)
        #expect(GridRawTokens.columnGap10 != GridRawTokens.columnGap800)

        #expect(GridRawTokens.columnGap100 != GridRawTokens.columnGap200)
        #expect(GridRawTokens.columnGap100 != GridRawTokens.columnGap300)
        #expect(GridRawTokens.columnGap100 != GridRawTokens.columnGap400)
        #expect(GridRawTokens.columnGap100 != GridRawTokens.columnGap600)
        #expect(GridRawTokens.columnGap100 != GridRawTokens.columnGap800)

        #expect(GridRawTokens.columnGap200 != GridRawTokens.columnGap300)
        #expect(GridRawTokens.columnGap200 != GridRawTokens.columnGap400)
        #expect(GridRawTokens.columnGap200 != GridRawTokens.columnGap600)
        #expect(GridRawTokens.columnGap200 != GridRawTokens.columnGap800)

        #expect(GridRawTokens.columnGap300 != GridRawTokens.columnGap400)
        #expect(GridRawTokens.columnGap300 != GridRawTokens.columnGap600)
        #expect(GridRawTokens.columnGap300 != GridRawTokens.columnGap800)

        #expect(GridRawTokens.columnGap400 != GridRawTokens.columnGap600)
        #expect(GridRawTokens.columnGap400 != GridRawTokens.columnGap800)

        #expect(GridRawTokens.columnGap600 != GridRawTokens.columnGap800)
    }

    // MARK: - Primitive token - Grid - Column count

    @Test func gridRawTokenGridColumnCount100GreaterThan0() throws {
        #expect(GridRawTokens.columnCount100 > 0)
    }

    @Test func gridRawTokenGridColumnCount100LessThanGridColumnCount200() throws {
        #expect(GridRawTokens.columnCount100 < GridRawTokens.columnCount200)
    }

    @Test func gridRawTokenGridColumnCount200GreaterThan0() throws {
        #expect(GridRawTokens.columnCount200 > 0)
    }

    @Test func gridRawTokenGridColumnCount200LessThanGridColumnCount400() throws {
        #expect(GridRawTokens.columnCount200 < GridRawTokens.columnCount400)
    }

    @Test func gridRawTokenGridColumnCount400GreaterThan0() throws {
        #expect(GridRawTokens.columnCount400 > 0)
    }

    @Test func gridRawTokenGridColumnCount400LessThanGridColumnCount600() throws {
        #expect(GridRawTokens.columnCount400 < GridRawTokens.columnCount600)
    }

    @Test func gridRawTokenGridColumnCount600GreaterThan0() throws {
        #expect(GridRawTokens.columnCount600 > 0)
    }

    @Test func gridRawTokenGridColumnCount600LessThanGridColumnCount800() throws {
        #expect(GridRawTokens.columnCount600 < GridRawTokens.columnCount800)
    }

    @Test func gridRawTokenGridColumnCount800GreaterThan0() throws {
        #expect(GridRawTokens.columnCount800 > 0)
    }

    @Test func gridRawTokenGridColumnCount800LessThanGridColumnCount1000() throws {
        #expect(GridRawTokens.columnCount800 < GridRawTokens.columnCount1000)
    }

    @Test func gridRawTokenGridColumnCount1000GreaterThan0() throws {
        #expect(GridRawTokens.columnCount1000 > 0)
    }

    @Test func gridRawTokenGridColumnCount1000LessThanGridColumnCount1200() throws {
        #expect(GridRawTokens.columnCount1000 < GridRawTokens.columnCount1200)
    }

    @Test func nonEqualityForGridColumnCounts() throws {
        #expect(GridRawTokens.columnCount100 != GridRawTokens.columnCount200)
        #expect(GridRawTokens.columnCount100 != GridRawTokens.columnCount400)
        #expect(GridRawTokens.columnCount100 != GridRawTokens.columnCount600)
        #expect(GridRawTokens.columnCount100 != GridRawTokens.columnCount800)
        #expect(GridRawTokens.columnCount100 != GridRawTokens.columnCount1000)
        #expect(GridRawTokens.columnCount100 != GridRawTokens.columnCount1200)

        #expect(GridRawTokens.columnCount200 != GridRawTokens.columnCount400)
        #expect(GridRawTokens.columnCount200 != GridRawTokens.columnCount600)
        #expect(GridRawTokens.columnCount200 != GridRawTokens.columnCount800)
        #expect(GridRawTokens.columnCount200 != GridRawTokens.columnCount1000)
        #expect(GridRawTokens.columnCount200 != GridRawTokens.columnCount1200)

        #expect(GridRawTokens.columnCount400 != GridRawTokens.columnCount600)
        #expect(GridRawTokens.columnCount400 != GridRawTokens.columnCount800)
        #expect(GridRawTokens.columnCount400 != GridRawTokens.columnCount1000)
        #expect(GridRawTokens.columnCount400 != GridRawTokens.columnCount1200)

        #expect(GridRawTokens.columnCount600 != GridRawTokens.columnCount800)
        #expect(GridRawTokens.columnCount600 != GridRawTokens.columnCount1000)
        #expect(GridRawTokens.columnCount600 != GridRawTokens.columnCount1200)

        #expect(GridRawTokens.columnCount800 != GridRawTokens.columnCount1000)
        #expect(GridRawTokens.columnCount800 != GridRawTokens.columnCount1200)

        #expect(GridRawTokens.columnCount1000 != GridRawTokens.columnCount1200)
    }
}

// swiftlint:enable type_body_length

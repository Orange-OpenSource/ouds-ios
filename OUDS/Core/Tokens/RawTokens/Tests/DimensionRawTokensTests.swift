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

/// The aim of this tests class is to look for regressions in **_ raw tokens**.
///
/// Because these values will be at least generated through an external tool, is it not relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **_ raw tokens**, there will be some unchanged things like relationships between tokens.
/// Thus this tests class just checks if such relationships are still here whatever the values at the end.
///
/// Here are some rules to follow:
/// - _ must not be negative value
/// - _ value must be a factor of `DimensionRawTokens.base`
/// - _ values must be all different
/// - the "bigger" the _ token is, the higher the value is
struct DimensionRawTokensTests {

    @Test
    func dimensionRawToken0NotNegativeValue() throws {
        #expect(DimensionRawTokens._0 >= 0)
    }

    @Test
    func dimensionRawToken0LessThan25() throws {
        #expect(DimensionRawTokens._0 < DimensionRawTokens.outOfSystem50)
    }

    @Test func dimensionRawToken0MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._0, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken25NotNegativeValue() throws {
        #expect(DimensionRawTokens.outOfSystem50 >= 0)
    }

    @Test
    func dimensionRawToken25LessThan50() throws {
        #expect(DimensionRawTokens.outOfSystem50 < DimensionRawTokens._50)
    }

    @Test func dimensionRawToken25MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens.outOfSystem50, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken50NotNegativeValue() throws {
        #expect(DimensionRawTokens._50 >= 0)
    }

    @Test
    func dimensionRawToken50LessThan75() throws {
        #expect(DimensionRawTokens._50 < DimensionRawTokens.outOfSystem150)
    }

    @Test func dimensionRawToken50MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._50, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken75NotNegativeValue() throws {
        #expect(DimensionRawTokens.outOfSystem150 >= 0)
    }

    @Test
    func dimensionRawToken75LessThan100() throws {
        #expect(DimensionRawTokens.outOfSystem150 < DimensionRawTokens._100)
    }

    @Test func dimensionRawToken75MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens.outOfSystem150, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken100NotNegativeValue() throws {
        #expect(DimensionRawTokens._100 >= 0)
    }

    @Test
    func dimensionRawToken100LessThan125() throws {
        #expect(DimensionRawTokens._100 < DimensionRawTokens.outOfSystem250)
    }

    @Test func dimensionRawToken100MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._100, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken125NotNegativeValue() throws {
        #expect(DimensionRawTokens.outOfSystem250 >= 0)
    }

    @Test
    func dimensionRawToken125LessThan150() throws {
        #expect(DimensionRawTokens.outOfSystem250 < DimensionRawTokens._150)
    }

    @Test func dimensionRawToken125MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens.outOfSystem250, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken150NotNegativeValue() throws {
        #expect(DimensionRawTokens._150 >= 0)
    }

    @Test
    func dimensionRawToken150LessThan200() throws {
        #expect(DimensionRawTokens._150 < DimensionRawTokens._200)
    }

    @Test func dimensionRawToken150MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._150, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken200NotNegativeValue() throws {
        #expect(DimensionRawTokens._200 >= 0)
    }

    @Test
    func dimensionRawToken200LessThan250() throws {
        #expect(DimensionRawTokens._200 < DimensionRawTokens._250)
    }

    @Test func dimensionRawToken200MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._200, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken250NotNegativeValue() throws {
        #expect(DimensionRawTokens._250 >= 0)
    }

    @Test
    func dimensionRawToken250LessThan300() throws {
        #expect(DimensionRawTokens._250 < DimensionRawTokens._300)
    }

    @Test func dimensionRawToken250MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._250, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken300NotNegativeValue() throws {
        #expect(DimensionRawTokens._300 >= 0)
    }

    @Test
    func dimensionRawToken300LessThan350() throws {
        #expect(DimensionRawTokens._300 < DimensionRawTokens._350)
    }

    @Test func dimensionRawToken300MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._300, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken350NotNegativeValue() throws {
        #expect(DimensionRawTokens._350 >= 0)
    }

    @Test
    func dimensionRawToken350LessThan400() throws {
        #expect(DimensionRawTokens._350 < DimensionRawTokens._400)
    }

    @Test func dimensionRawToken350MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._350, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken400NotNegativeValue() throws {
        #expect(DimensionRawTokens._400 >= 0)
    }

    @Test
    func dimensionRawToken400LessThan450() throws {
        #expect(DimensionRawTokens._400 < DimensionRawTokens._450)
    }

    @Test func dimensionRawToken400MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._400, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken450NotNegativeValue() throws {
        #expect(DimensionRawTokens._450 >= 0)
    }

    @Test
    func dimensionRawToken450LessThan500() throws {
        #expect(DimensionRawTokens._450 < DimensionRawTokens._500)
    }

    @Test func dimensionRawToken450MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._450, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken500NotNegativeValue() throws {
        #expect(DimensionRawTokens._500 >= 0)
    }

    @Test
    func dimensionRawToken500LessThan550() throws {
        #expect(DimensionRawTokens._500 < DimensionRawTokens._550)
    }

    @Test func dimensionRawToken500MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._500, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken550NotNegativeValue() throws {
        #expect(DimensionRawTokens._550 >= 0)
    }

    @Test
    func dimensionRawToken550LessThan600() throws {
        #expect(DimensionRawTokens._550 < DimensionRawTokens._600)
    }

    @Test func dimensionRawToken550MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._550, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken600NotNegativeValue() throws {
        #expect(DimensionRawTokens._600 >= 0)
    }

    @Test
    func dimensionRawToken600LessThan650() throws {
        #expect(DimensionRawTokens._600 < DimensionRawTokens._650)
    }

    @Test func dimensionRawToken600MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._600, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken650NotNegativeValue() throws {
        #expect(DimensionRawTokens._650 >= 0)
    }

    @Test
    func dimensionRawToken650LessThan700() throws {
        #expect(DimensionRawTokens._650 < DimensionRawTokens._700)
    }

    @Test func dimensionRawToken650MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._650, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken700NotNegativeValue() throws {
        #expect(DimensionRawTokens._700 >= 0)
    }

    @Test
    func dimensionRawToken700LessThan750() throws {
        #expect(DimensionRawTokens._700 < DimensionRawTokens._750)
    }

    @Test func dimensionRawToken700MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._700, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken750NotNegativeValue() throws {
        #expect(DimensionRawTokens._750 >= 0)
    }

    @Test
    func dimensionRawToken750LessThan800() throws {
        #expect(DimensionRawTokens._750 < DimensionRawTokens._800)
    }

    @Test func dimensionRawToken750MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._750, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken800NotNegativeValue() throws {
        #expect(DimensionRawTokens._800 >= 0)
    }

    @Test
    func dimensionRawToken800LessThan850() throws {
        #expect(DimensionRawTokens._800 < DimensionRawTokens._850)
    }

    @Test func dimensionRawToken800MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._800, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken850NotNegativeValue() throws {
        #expect(DimensionRawTokens._850 >= 0)
    }

    @Test
    func dimensionRawToken850LessThan900() throws {
        #expect(DimensionRawTokens._850 < DimensionRawTokens._900)
    }

    @Test func dimensionRawToken850MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._850, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken900NotNegativeValue() throws {
        #expect(DimensionRawTokens._900 >= 0)
    }

    @Test
    func dimensionRawToken900LessThan1000() throws {
        #expect(DimensionRawTokens._900 < DimensionRawTokens._1000)
    }

    @Test func dimensionRawToken900MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._900, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken1000NotNegativeValue() throws {
        #expect(DimensionRawTokens._1000 >= 0)
    }

    @Test
    func dimensionRawToken1000LessThan1200() throws {
        #expect(DimensionRawTokens._1000 < DimensionRawTokens._1200)
    }

    @Test func dimensionRawToken1000MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._1000, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken1200NotNegativeValue() throws {
        #expect(DimensionRawTokens._1200 >= 0)
    }

    @Test
    func dimensionRawToken1200LessThan1250() throws {
        #expect(DimensionRawTokens._1200 < DimensionRawTokens._1250)
    }

    @Test func dimensionRawToken1200MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._1200, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken1250NotNegativeValue() throws {
        #expect(DimensionRawTokens._1250 >= 0)
    }

    @Test
    func dimensionRawToken1250LessThan1400() throws {
        #expect(DimensionRawTokens._1250 < DimensionRawTokens._1400)
    }

    @Test func dimensionRawToken1250MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._1250, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken1400NotNegativeValue() throws {
        #expect(DimensionRawTokens._1400 >= 0)
    }

    @Test
    func dimensionRawToken1400LessThan1600() throws {
        #expect(DimensionRawTokens._1400 < DimensionRawTokens._1600)
    }

    @Test func dimensionRawToken1400MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._1400, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken1600NotNegativeValue() throws {
        #expect(DimensionRawTokens._1600 >= 0)
    }

    @Test
    func dimensionRawToken1600LessThan1800() throws {
        #expect(DimensionRawTokens._1600 < DimensionRawTokens._1800)
    }

    @Test func dimensionRawToken1600MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._1600, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken1800NotNegativeValue() throws {
        #expect(DimensionRawTokens._1800 >= 0)
    }

    @Test
    func dimensionRawToken1800LessThan2000() throws {
        #expect(DimensionRawTokens._1800 < DimensionRawTokens._2000)
    }

    @Test func dimensionRawToken1800MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._1800, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken2000NotNegativeValue() throws {
        #expect(DimensionRawTokens._2000 >= 0)
    }

    @Test
    func dimensionRawToken2000LessThan3000() throws {
        #expect(DimensionRawTokens._2000 < DimensionRawTokens._3000)
    }

    @Test func dimensionRawToken2000MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._2000, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken3000NotNegativeValue() throws {
        #expect(DimensionRawTokens._3000 >= 0)
    }

    @Test
    func dimensionRawToken3000LessThan4000() throws {
        #expect(DimensionRawTokens._3000 < DimensionRawTokens._4000)
    }

    @Test func dimensionRawToken3000MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._3000, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken4000NotNegativeValue() throws {
        #expect(DimensionRawTokens._4000 >= 0)
    }

    @Test
    func dimensionRawToken4000LessThan5000() throws {
        #expect(DimensionRawTokens._4000 < DimensionRawTokens._5000)
    }

    @Test func dimensionRawToken4000MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._4000, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken5000NotNegativeValue() throws {
        #expect(DimensionRawTokens._5000 >= 0)
    }

    @Test
    func dimensionRawToken5000LessThan6000() throws {
        #expect(DimensionRawTokens._5000 < DimensionRawTokens._6000)
    }

    @Test func dimensionRawToken5000MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._5000, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken6000NotNegativeValue() throws {
        #expect(DimensionRawTokens._6000 >= 0)
    }

    @Test
    func dimensionRawToken6000LessThan7000() throws {
        #expect(DimensionRawTokens._6000 < DimensionRawTokens._7000)
    }

    @Test func dimensionRawToken6000MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._6000, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken7000NotNegativeValue() throws {
        #expect(DimensionRawTokens._7000 >= 0)
    }

    @Test
    func dimensionRawToken7000LessThan9000() throws {
        #expect(DimensionRawTokens._7000 < DimensionRawTokens._9000)
    }

    @Test func dimensionRawToken7000MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._7000, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken9000NotNegativeValue() throws {
        #expect(DimensionRawTokens._9000 >= 0)
    }

    @Test
    func dimensionRawToken9000LessThan11000() throws {
        #expect(DimensionRawTokens._9000 < DimensionRawTokens._11000)
    }

    @Test func dimensionRawToken9000MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._9000, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawToken11000NotNegativeValue() throws {
        #expect(DimensionRawTokens._11000 >= 0)
    }

    @Test func dimensionRawToken11000MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens._11000, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawTokenOutOfSystem25NotNegativeValue() throws {
        #expect(DimensionRawTokens.outOfSystem25 >= 0)
    }

    @Test func dimensionRawTokenOutOfSystem25MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens.outOfSystem25, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawTokenOutOfSystem25LessThanOutOfSystem50() throws {
        #expect(DimensionRawTokens.outOfSystem25 < DimensionRawTokens.outOfSystem50)
    }

    @Test
    func dimensionRawTokenOutOfSystem50NotNegativeValue() throws {
        #expect(DimensionRawTokens.outOfSystem50 >= 0)
    }

    @Test func dimensionRawTokenOutOfSystem50MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens.outOfSystem50, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawTokenOutOfSystem50LessThanOutOfSystem75() throws {
        #expect(DimensionRawTokens.outOfSystem50 < DimensionRawTokens.outOfSystem75)
    }

    @Test
    func dimensionRawTokenOutOfSystem75NotNegativeValue() throws {
        #expect(DimensionRawTokens.outOfSystem75 >= 0)
    }

    @Test func dimensionRawTokenOutOfSystem75MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens.outOfSystem75, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawTokenOutOfSystem75LessThanOutOfSystem150() throws {
        #expect(DimensionRawTokens.outOfSystem75 < DimensionRawTokens.outOfSystem150)
    }

    @Test
    func dimensionRawTokenOutOfSystem150NotNegativeValue() throws {
        #expect(DimensionRawTokens.outOfSystem150 >= 0)
    }

    @Test func dimensionRawTokenOutOfSystem150MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens.outOfSystem150, factor: DimensionRawTokens.base)
    }

    @Test
    func dimensionRawTokenOutOfSystem150LessThanOutOfSystem520() throws {
        #expect(DimensionRawTokens.outOfSystem150 < DimensionRawTokens.outOfSystem250)
    }

    @Test
    func dimensionRawTokenOutOfSystem250NotNegativeValue() throws {
        #expect(DimensionRawTokens.outOfSystem25 >= 0)
    }

    @Test func dimensionRawTokenOutOfSystem250MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(DimensionRawTokens.outOfSystem25, factor: DimensionRawTokens.base)
    }

    @Test
    func nonEqualityForDimensions() throws {
        #expect(DimensionRawTokens._0 != DimensionRawTokens._50)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._100)
        #expect(DimensionRawTokens._0 != DimensionRawTokens.outOfSystem250)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._150)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._200)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._250)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._300)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._350)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._400)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._450)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._500)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._550)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._600)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._650)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._700)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._750)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._800)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._850)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._900)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._1000)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._1200)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._1400)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._0 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._0 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._0 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._0 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._0 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._0 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._50)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._100)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens.outOfSystem250)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._150)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._200)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._250)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._300)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._350)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._400)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._450)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._500)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._550)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._600)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._650)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._700)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._750)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._800)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._850)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._900)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._1000)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._1200)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._1400)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens._11000)

        #expect(DimensionRawTokens._50 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._100)
        #expect(DimensionRawTokens._50 != DimensionRawTokens.outOfSystem250)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._150)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._200)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._250)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._300)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._350)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._400)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._450)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._500)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._550)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._600)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._650)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._700)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._750)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._800)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._850)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._900)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._1000)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._1200)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._1400)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._50 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._50 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._50 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._50 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._50 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._50 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._100)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens.outOfSystem250)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._150)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._200)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._250)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._300)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._350)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._400)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._450)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._500)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._550)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._600)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._650)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._700)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._750)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._800)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._850)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._900)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._1000)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._1200)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._1400)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens._11000)

        #expect(DimensionRawTokens._100 != DimensionRawTokens.outOfSystem250)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._150)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._200)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._250)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._300)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._350)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._400)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._450)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._500)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._550)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._600)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._650)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._700)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._750)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._800)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._850)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._900)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._1000)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._1200)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._1400)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._100 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._100 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._100 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._100 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._100 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._100 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._150)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._200)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._250)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._300)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._350)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._400)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._450)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._500)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._550)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._600)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._650)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._700)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._750)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._800)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._850)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._900)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._1000)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._1200)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._1400)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens.outOfSystem250 != DimensionRawTokens._11000)

        #expect(DimensionRawTokens._150 != DimensionRawTokens._200)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._250)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._300)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._350)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._400)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._450)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._500)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._550)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._600)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._650)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._700)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._750)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._800)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._850)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._900)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._1000)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._1200)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._1400)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._150 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._150 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._150 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._150 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._150 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._150 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._200 != DimensionRawTokens._250)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._300)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._350)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._400)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._450)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._500)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._550)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._600)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._650)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._700)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._750)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._800)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._850)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._900)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._1000)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._1200)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._1400)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._200 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._200 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._200 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._200 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._200 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._200 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._250 != DimensionRawTokens._300)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._350)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._400)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._450)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._500)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._550)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._600)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._650)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._700)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._750)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._800)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._850)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._900)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._1000)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._1200)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._1400)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._250 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._250 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._250 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._250 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._250 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._250 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._300 != DimensionRawTokens._350)
        #expect(DimensionRawTokens._300 != DimensionRawTokens._400)
        #expect(DimensionRawTokens._300 != DimensionRawTokens._450)
        #expect(DimensionRawTokens._300 != DimensionRawTokens._500)
        #expect(DimensionRawTokens._300 != DimensionRawTokens._550)
        #expect(DimensionRawTokens._300 != DimensionRawTokens._600)
        #expect(DimensionRawTokens._300 != DimensionRawTokens._650)
        #expect(DimensionRawTokens._300 != DimensionRawTokens._700)
        #expect(DimensionRawTokens._300 != DimensionRawTokens._750)
        #expect(DimensionRawTokens._300 != DimensionRawTokens._800)
        #expect(DimensionRawTokens._300 != DimensionRawTokens._850)
        #expect(DimensionRawTokens._300 != DimensionRawTokens._900)
        #expect(DimensionRawTokens._300 != DimensionRawTokens._1000)
        #expect(DimensionRawTokens._300 != DimensionRawTokens._1200)
        #expect(DimensionRawTokens._300 != DimensionRawTokens._1400)
        #expect(DimensionRawTokens._300 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens._300 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens._300 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens._300 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._300 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._300 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._300 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._300 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._300 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._300 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._300 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._300 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._300 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._300 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._300 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._350 != DimensionRawTokens._400)
        #expect(DimensionRawTokens._350 != DimensionRawTokens._450)
        #expect(DimensionRawTokens._350 != DimensionRawTokens._500)
        #expect(DimensionRawTokens._350 != DimensionRawTokens._550)
        #expect(DimensionRawTokens._350 != DimensionRawTokens._600)
        #expect(DimensionRawTokens._350 != DimensionRawTokens._650)
        #expect(DimensionRawTokens._350 != DimensionRawTokens._700)
        #expect(DimensionRawTokens._350 != DimensionRawTokens._750)
        #expect(DimensionRawTokens._350 != DimensionRawTokens._800)
        #expect(DimensionRawTokens._350 != DimensionRawTokens._850)
        #expect(DimensionRawTokens._350 != DimensionRawTokens._900)
        #expect(DimensionRawTokens._350 != DimensionRawTokens._1000)
        #expect(DimensionRawTokens._350 != DimensionRawTokens._1200)
        #expect(DimensionRawTokens._350 != DimensionRawTokens._1400)
        #expect(DimensionRawTokens._350 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens._350 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens._350 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens._350 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._350 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._350 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._350 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._350 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._350 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._350 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._350 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._350 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._350 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._350 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._350 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._400 != DimensionRawTokens._450)
        #expect(DimensionRawTokens._400 != DimensionRawTokens._500)
        #expect(DimensionRawTokens._400 != DimensionRawTokens._550)
        #expect(DimensionRawTokens._400 != DimensionRawTokens._600)
        #expect(DimensionRawTokens._400 != DimensionRawTokens._650)
        #expect(DimensionRawTokens._400 != DimensionRawTokens._700)
        #expect(DimensionRawTokens._400 != DimensionRawTokens._750)
        #expect(DimensionRawTokens._400 != DimensionRawTokens._800)
        #expect(DimensionRawTokens._400 != DimensionRawTokens._850)
        #expect(DimensionRawTokens._400 != DimensionRawTokens._900)
        #expect(DimensionRawTokens._400 != DimensionRawTokens._1000)
        #expect(DimensionRawTokens._400 != DimensionRawTokens._1200)
        #expect(DimensionRawTokens._400 != DimensionRawTokens._1400)
        #expect(DimensionRawTokens._400 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens._400 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens._400 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens._400 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._400 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._400 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._400 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._400 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._400 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._400 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._400 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._400 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._400 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._400 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._400 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._450 != DimensionRawTokens._500)
        #expect(DimensionRawTokens._450 != DimensionRawTokens._550)
        #expect(DimensionRawTokens._450 != DimensionRawTokens._600)
        #expect(DimensionRawTokens._450 != DimensionRawTokens._650)
        #expect(DimensionRawTokens._450 != DimensionRawTokens._700)
        #expect(DimensionRawTokens._450 != DimensionRawTokens._750)
        #expect(DimensionRawTokens._450 != DimensionRawTokens._800)
        #expect(DimensionRawTokens._450 != DimensionRawTokens._850)
        #expect(DimensionRawTokens._450 != DimensionRawTokens._900)
        #expect(DimensionRawTokens._450 != DimensionRawTokens._1000)
        #expect(DimensionRawTokens._450 != DimensionRawTokens._1200)
        #expect(DimensionRawTokens._450 != DimensionRawTokens._1400)
        #expect(DimensionRawTokens._450 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens._450 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens._450 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens._450 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._450 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._450 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._450 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._450 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._450 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._450 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._450 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._450 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._450 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._450 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._450 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._500 != DimensionRawTokens._550)
        #expect(DimensionRawTokens._500 != DimensionRawTokens._600)
        #expect(DimensionRawTokens._500 != DimensionRawTokens._650)
        #expect(DimensionRawTokens._500 != DimensionRawTokens._700)
        #expect(DimensionRawTokens._500 != DimensionRawTokens._750)
        #expect(DimensionRawTokens._500 != DimensionRawTokens._800)
        #expect(DimensionRawTokens._500 != DimensionRawTokens._850)
        #expect(DimensionRawTokens._500 != DimensionRawTokens._900)
        #expect(DimensionRawTokens._500 != DimensionRawTokens._1000)
        #expect(DimensionRawTokens._500 != DimensionRawTokens._1200)
        #expect(DimensionRawTokens._500 != DimensionRawTokens._1400)
        #expect(DimensionRawTokens._500 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens._500 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens._500 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens._500 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._500 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._500 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._500 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._500 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._500 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._500 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._500 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._500 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._500 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._500 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._500 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._550 != DimensionRawTokens._600)
        #expect(DimensionRawTokens._550 != DimensionRawTokens._650)
        #expect(DimensionRawTokens._550 != DimensionRawTokens._700)
        #expect(DimensionRawTokens._550 != DimensionRawTokens._750)
        #expect(DimensionRawTokens._550 != DimensionRawTokens._800)
        #expect(DimensionRawTokens._550 != DimensionRawTokens._850)
        #expect(DimensionRawTokens._550 != DimensionRawTokens._900)
        #expect(DimensionRawTokens._550 != DimensionRawTokens._1000)
        #expect(DimensionRawTokens._550 != DimensionRawTokens._1200)
        #expect(DimensionRawTokens._550 != DimensionRawTokens._1400)
        #expect(DimensionRawTokens._550 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens._550 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens._550 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens._550 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._550 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._550 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._550 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._550 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._550 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._550 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._550 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._550 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._550 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._550 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._550 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._600 != DimensionRawTokens._650)
        #expect(DimensionRawTokens._600 != DimensionRawTokens._700)
        #expect(DimensionRawTokens._600 != DimensionRawTokens._750)
        #expect(DimensionRawTokens._600 != DimensionRawTokens._800)
        #expect(DimensionRawTokens._600 != DimensionRawTokens._850)
        #expect(DimensionRawTokens._600 != DimensionRawTokens._900)
        #expect(DimensionRawTokens._600 != DimensionRawTokens._1000)
        #expect(DimensionRawTokens._600 != DimensionRawTokens._1200)
        #expect(DimensionRawTokens._600 != DimensionRawTokens._1400)
        #expect(DimensionRawTokens._600 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens._600 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens._600 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens._600 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._600 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._600 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._600 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._600 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._600 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._600 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._600 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._600 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._600 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._600 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._600 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._650 != DimensionRawTokens._700)
        #expect(DimensionRawTokens._650 != DimensionRawTokens._750)
        #expect(DimensionRawTokens._650 != DimensionRawTokens._800)
        #expect(DimensionRawTokens._650 != DimensionRawTokens._850)
        #expect(DimensionRawTokens._650 != DimensionRawTokens._900)
        #expect(DimensionRawTokens._650 != DimensionRawTokens._1000)
        #expect(DimensionRawTokens._650 != DimensionRawTokens._1200)
        #expect(DimensionRawTokens._650 != DimensionRawTokens._1400)
        #expect(DimensionRawTokens._650 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens._650 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens._650 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens._650 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._650 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._650 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._650 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._650 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._650 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._650 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._650 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._650 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._650 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._650 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._650 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._700 != DimensionRawTokens._750)
        #expect(DimensionRawTokens._700 != DimensionRawTokens._800)
        #expect(DimensionRawTokens._700 != DimensionRawTokens._850)
        #expect(DimensionRawTokens._700 != DimensionRawTokens._900)
        #expect(DimensionRawTokens._700 != DimensionRawTokens._1000)
        #expect(DimensionRawTokens._700 != DimensionRawTokens._1200)
        #expect(DimensionRawTokens._700 != DimensionRawTokens._1400)
        #expect(DimensionRawTokens._700 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens._700 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens._700 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens._700 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._700 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._700 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._700 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._700 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._700 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._700 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._700 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._700 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._700 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._700 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._700 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._750 != DimensionRawTokens._800)
        #expect(DimensionRawTokens._750 != DimensionRawTokens._850)
        #expect(DimensionRawTokens._750 != DimensionRawTokens._900)
        #expect(DimensionRawTokens._750 != DimensionRawTokens._1000)
        #expect(DimensionRawTokens._750 != DimensionRawTokens._1200)
        #expect(DimensionRawTokens._750 != DimensionRawTokens._1400)
        #expect(DimensionRawTokens._750 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens._750 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens._750 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens._750 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._750 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._750 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._750 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._750 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._750 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._750 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._750 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._750 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._750 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._750 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._750 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._800 != DimensionRawTokens._850)
        #expect(DimensionRawTokens._800 != DimensionRawTokens._900)
        #expect(DimensionRawTokens._800 != DimensionRawTokens._1000)
        #expect(DimensionRawTokens._800 != DimensionRawTokens._1200)
        #expect(DimensionRawTokens._800 != DimensionRawTokens._1400)
        #expect(DimensionRawTokens._800 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens._800 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens._800 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens._800 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._800 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._800 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._800 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._800 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._800 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._800 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._800 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._800 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._800 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._800 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._800 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._850 != DimensionRawTokens._900)
        #expect(DimensionRawTokens._850 != DimensionRawTokens._1000)
        #expect(DimensionRawTokens._850 != DimensionRawTokens._1200)
        #expect(DimensionRawTokens._850 != DimensionRawTokens._1400)
        #expect(DimensionRawTokens._850 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens._850 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens._850 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens._850 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._850 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._850 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._850 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._850 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._850 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._850 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._850 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._850 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._850 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._850 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._850 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._900 != DimensionRawTokens._1000)
        #expect(DimensionRawTokens._900 != DimensionRawTokens._1200)
        #expect(DimensionRawTokens._900 != DimensionRawTokens._1400)
        #expect(DimensionRawTokens._900 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens._900 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens._900 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens._900 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._900 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._900 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._900 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._900 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._900 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._900 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._900 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._900 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._900 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._900 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._900 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._1000 != DimensionRawTokens._1200)
        #expect(DimensionRawTokens._1000 != DimensionRawTokens._1400)
        #expect(DimensionRawTokens._1000 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens._1000 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens._1000 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens._1000 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._1000 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._1000 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._1000 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._1000 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._1000 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._1000 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._1000 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._1000 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._1000 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._1000 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._1000 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._1200 != DimensionRawTokens._1400)
        #expect(DimensionRawTokens._1200 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens._1200 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens._1200 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens._1200 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._1200 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._1200 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._1200 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._1200 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._1200 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._1200 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._1200 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._1200 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._1200 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._1200 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._1200 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._1400 != DimensionRawTokens._1600)
        #expect(DimensionRawTokens._1400 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens._1400 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens._1400 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._1400 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._1400 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._1400 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._1400 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._1400 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._1400 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._1400 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._1400 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._1400 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._1400 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._1400 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._1600 != DimensionRawTokens._1800)
        #expect(DimensionRawTokens._1600 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens._1600 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._1600 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._1600 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._1600 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._1600 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._1600 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._1600 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._1600 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._1600 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._1600 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._1600 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._1600 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._1800 != DimensionRawTokens._2000)
        #expect(DimensionRawTokens._1800 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._1800 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._1800 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._1800 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._1800 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._1800 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._1800 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._1800 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._1800 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._1800 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._1800 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._1800 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._2000 != DimensionRawTokens._3000)
        #expect(DimensionRawTokens._2000 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._2000 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._2000 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._2000 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._2000 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._2000 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._2000 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._2000 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._2000 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._2000 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._2000 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._3000 != DimensionRawTokens._4000)
        #expect(DimensionRawTokens._3000 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._3000 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._3000 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._3000 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._3000 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._3000 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._3000 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._3000 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._3000 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._3000 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._4000 != DimensionRawTokens._5000)
        #expect(DimensionRawTokens._4000 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._4000 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._4000 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._4000 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._4000 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._4000 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._4000 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._4000 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._4000 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._5000 != DimensionRawTokens._6000)
        #expect(DimensionRawTokens._5000 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._5000 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._5000 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._5000 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._5000 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._5000 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._5000 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._5000 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._6000 != DimensionRawTokens._7000)
        #expect(DimensionRawTokens._6000 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._6000 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._6000 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._6000 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._6000 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._6000 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._6000 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._7000 != DimensionRawTokens._9000)
        #expect(DimensionRawTokens._7000 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._7000 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._7000 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._7000 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._7000 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._7000 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._9000 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._9000 != DimensionRawTokens._11000)
        #expect(DimensionRawTokens._9000 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._9000 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._9000 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._9000 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._9000 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens._11000 != DimensionRawTokens.outOfSystem25)
        #expect(DimensionRawTokens._11000 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens._11000 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens._11000 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens._11000 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens.outOfSystem25 != DimensionRawTokens.outOfSystem50)
        #expect(DimensionRawTokens.outOfSystem25 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens.outOfSystem25 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens.outOfSystem25 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens.outOfSystem75)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens.outOfSystem50 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens.outOfSystem75 != DimensionRawTokens.outOfSystem150)
        #expect(DimensionRawTokens.outOfSystem75 != DimensionRawTokens.outOfSystem250)

        #expect(DimensionRawTokens.outOfSystem150 != DimensionRawTokens.outOfSystem250)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable function_body_length

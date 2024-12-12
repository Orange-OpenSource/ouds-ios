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
// swiftlint:disable type_body_length
// swiftlint:disable function_body_length
// swiftlint:disable file_length

/// The aim of this tests class is to look for regressions in **dimension raw tokens**.
///
/// Because these values will be at least generated through an external tool, is it not relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **dimension raw tokens**, there will be some unchanged things like relationships between tokens.
/// Thus this tests class just checks if such relationships are still here whatever the values at the end.
///
/// Here are some rules to follow:
/// - dimension must not be negative value
/// - dimension value must be a factor of `DimensionRawTokens.borderBase`
/// - dimension values must be all different
/// - the "bigger" the dimension token is, the higher the value is
final class DimensionRawTokensTests: XCTestCase {

    func testDimensionRawToken0NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension0 >= 0)
    }

    func testDimensionRawToken0LessThan25() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension0, DimensionRawTokens.dimension25)
    }

    func testDimensionRawToken0MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension0, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken25NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension25 >= 0)
    }

    func testDimensionRawToken25LessThan50() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension25, DimensionRawTokens.dimension50)
    }

    func testDimensionRawToken25MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension25, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken50NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension50 >= 0)
    }

    func testDimensionRawToken50LessThan75() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension50, DimensionRawTokens.dimension75)
    }

    func testDimensionRawToken50MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension50, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken75NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension75 >= 0)
    }

    func testDimensionRawToken75LessThan100() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension75, DimensionRawTokens.dimension100)
    }

    func testDimensionRawToken75MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension75, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken100NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension100 >= 0)
    }

    func testDimensionRawToken100LessThan125() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension100, DimensionRawTokens.dimension125)
    }

    func testDimensionRawToken100MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension100, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken125NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension125 >= 0)
    }

    func testDimensionRawToken125LessThan150() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension125, DimensionRawTokens.dimension150)
    }

    func testDimensionRawToken125MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension125, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken150NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension150 >= 0)
    }

    func testDimensionRawToken150LessThan200() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension150, DimensionRawTokens.dimension200)
    }

    func testDimensionRawToken150MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension150, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken200NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension200 >= 0)
    }

    func testDimensionRawToken200LessThan250() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension200, DimensionRawTokens.dimension250)
    }

    func testDimensionRawToken200MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension200, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken250NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension250 >= 0)
    }

    func testDimensionRawToken250LessThan300() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension250, DimensionRawTokens.dimension300)
    }

    func testDimensionRawToken250MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension250, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken300NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension300 >= 0)
    }

    func testDimensionRawToken300LessThan350() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension300, DimensionRawTokens.dimension350)
    }

    func testDimensionRawToken300MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension300, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken350NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension350 >= 0)
    }

    func testDimensionRawToken350LessThan400() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension350, DimensionRawTokens.dimension400)
    }

    func testDimensionRawToken350MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension350, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken400NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension400 >= 0)
    }

    func testDimensionRawToken400LessThan450() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension400, DimensionRawTokens.dimension450)
    }

    func testDimensionRawToken400MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension400, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken450NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension450 >= 0)
    }

    func testDimensionRawToken450LessThan500() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension450, DimensionRawTokens.dimension500)
    }

    func testDimensionRawToken450MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension450, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken500NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension500 >= 0)
    }

    func testDimensionRawToken500LessThan550() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension500, DimensionRawTokens.dimension550)
    }

    func testDimensionRawToken500MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension500, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken550NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension550 >= 0)
    }

    func testDimensionRawToken550LessThan600() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension550, DimensionRawTokens.dimension600)
    }

    func testDimensionRawToken550MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension550, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken600NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension600 >= 0)
    }

    func testDimensionRawToken600LessThan650() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension600, DimensionRawTokens.dimension650)
    }

    func testDimensionRawToken600MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension600, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken650NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension650 >= 0)
    }

    func testDimensionRawToken650LessThan700() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension650, DimensionRawTokens.dimension700)
    }

    func testDimensionRawToken650MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension650, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken700NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension700 >= 0)
    }

    func testDimensionRawToken700LessThan750() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension700, DimensionRawTokens.dimension750)
    }

    func testDimensionRawToken700MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension700, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken750NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension750 >= 0)
    }

    func testDimensionRawToken750LessThan800() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension750, DimensionRawTokens.dimension800)
    }

    func testDimensionRawToken750MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension750, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken800NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension800 >= 0)
    }

    func testDimensionRawToken800LessThan850() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension800, DimensionRawTokens.dimension850)
    }

    func testDimensionRawToken800MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension800, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken850NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension850 >= 0)
    }

    func testDimensionRawToken850LessThan900() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension850, DimensionRawTokens.dimension900)
    }

    func testDimensionRawToken850MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension850, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken900NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension900 >= 0)
    }

    func testDimensionRawToken900LessThan1000() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension900, DimensionRawTokens.dimension1000)
    }

    func testDimensionRawToken900MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension900, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken1000NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension1000 >= 0)
    }

    func testDimensionRawToken1000LessThan1200() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension1000, DimensionRawTokens.dimension1200)
    }

    func testDimensionRawToken1000MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension1000, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken1200NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension1200 >= 0)
    }

    func testDimensionRawToken1200LessThan1400() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension1200, DimensionRawTokens.dimension1400)
    }

    func testDimensionRawToken1200MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension1200, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken1400NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension1400 >= 0)
    }

    func testDimensionRawToken1400LessThan1600() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension1400, DimensionRawTokens.dimension1600)
    }

    func testDimensionRawToken1400MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension1400, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken1600NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension1600 >= 0)
    }

    func testDimensionRawToken1600LessThan1800() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension1600, DimensionRawTokens.dimension1800)
    }

    func testDimensionRawToken1600MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension1600, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken1800NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension1800 >= 0)
    }

    func testDimensionRawToken1800LessThan2000() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension1800, DimensionRawTokens.dimension2000)
    }

    func testDimensionRawToken1800MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension1800, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken2000NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension2000 >= 0)
    }

    func testDimensionRawToken2000LessThan3000() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension2000, DimensionRawTokens.dimension3000)
    }

    func testDimensionRawToken2000MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension2000, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken3000NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension3000 >= 0)
    }

    func testDimensionRawToken3000LessThan4000() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension3000, DimensionRawTokens.dimension4000)
    }

    func testDimensionRawToken3000MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension3000, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken4000NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension4000 >= 0)
    }

    func testDimensionRawToken4000LessThan5000() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension4000, DimensionRawTokens.dimension5000)
    }

    func testDimensionRawToken4000MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension4000, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken5000NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension5000 >= 0)
    }

    func testDimensionRawToken5000LessThan6000() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension5000, DimensionRawTokens.dimension6000)
    }

    func testDimensionRawToken5000MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension5000, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken6000NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension6000 >= 0)
    }

    func testDimensionRawToken6000LessThan7000() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension6000, DimensionRawTokens.dimension7000)
    }

    func testDimensionRawToken6000MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension6000, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken7000NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension7000 >= 0)
    }

    func testDimensionRawToken7000LessThan9000() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension7000, DimensionRawTokens.dimension9000)
    }

    func testDimensionRawToken7000MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension7000, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken9000NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension9000 >= 0)
    }

    func testDimensionRawToken9000LessThan11000() throws {
        XCTAssertLessThan(DimensionRawTokens.dimension9000, DimensionRawTokens.dimension11000)
    }

    func testDimensionRawToken9000MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension9000, factor: DimensionRawTokens.dimensionBase)
    }

    func testDimensionRawToken11000NotNegativeValue() throws {
        XCTAssertTrue(DimensionRawTokens.dimension11000 >= 0)
    }

    func testDimensionRawToken11000MultipleOfBase() throws {
        XCTAssertMultipleOf(DimensionRawTokens.dimension11000, factor: DimensionRawTokens.dimensionBase)
    }

    func testNonEqualityForDimensions() throws {
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension25)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension50)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension75)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension100)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension125)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension150)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension200)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension250)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension300)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension350)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension400)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension450)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension500)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension550)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension600)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension650)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension700)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension750)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension800)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension850)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension900)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension1000)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension1200)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension1400)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension0, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension50)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension75)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension100)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension125)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension150)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension200)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension250)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension300)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension350)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension400)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension450)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension500)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension550)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension600)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension650)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension700)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension750)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension800)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension850)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension900)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension1000)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension1200)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension1400)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension25, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension75)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension100)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension125)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension150)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension200)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension250)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension300)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension350)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension400)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension450)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension500)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension550)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension600)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension650)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension700)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension750)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension800)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension850)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension900)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension1000)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension1200)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension1400)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension50, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension100)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension125)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension150)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension200)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension250)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension300)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension350)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension400)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension450)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension500)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension550)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension600)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension650)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension700)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension750)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension800)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension850)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension900)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension1000)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension1200)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension1400)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension75, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension125)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension150)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension200)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension250)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension300)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension350)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension400)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension450)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension500)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension550)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension600)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension650)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension700)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension750)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension800)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension850)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension900)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension1000)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension1200)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension1400)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension100, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension150)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension200)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension250)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension300)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension350)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension400)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension450)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension500)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension550)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension600)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension650)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension700)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension750)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension800)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension850)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension900)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension1000)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension1200)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension1400)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension125, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension200)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension250)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension300)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension350)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension400)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension450)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension500)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension550)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension600)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension650)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension700)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension750)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension800)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension850)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension900)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension1000)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension1200)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension1400)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension150, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension250)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension300)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension350)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension400)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension450)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension500)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension550)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension600)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension650)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension700)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension750)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension800)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension850)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension900)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension1000)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension1200)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension1400)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension200, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension300)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension350)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension400)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension450)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension500)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension550)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension600)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension650)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension700)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension750)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension800)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension850)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension900)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension1000)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension1200)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension1400)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension250, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension350)
        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension400)
        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension450)
        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension500)
        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension550)
        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension600)
        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension650)
        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension700)
        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension750)
        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension800)
        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension850)
        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension900)
        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension1000)
        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension1200)
        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension1400)
        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension300, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension350, DimensionRawTokens.dimension400)
        XCTAssertNotEqual(DimensionRawTokens.dimension350, DimensionRawTokens.dimension450)
        XCTAssertNotEqual(DimensionRawTokens.dimension350, DimensionRawTokens.dimension500)
        XCTAssertNotEqual(DimensionRawTokens.dimension350, DimensionRawTokens.dimension550)
        XCTAssertNotEqual(DimensionRawTokens.dimension350, DimensionRawTokens.dimension600)
        XCTAssertNotEqual(DimensionRawTokens.dimension350, DimensionRawTokens.dimension650)
        XCTAssertNotEqual(DimensionRawTokens.dimension350, DimensionRawTokens.dimension700)
        XCTAssertNotEqual(DimensionRawTokens.dimension350, DimensionRawTokens.dimension750)
        XCTAssertNotEqual(DimensionRawTokens.dimension350, DimensionRawTokens.dimension800)
        XCTAssertNotEqual(DimensionRawTokens.dimension350, DimensionRawTokens.dimension850)
        XCTAssertNotEqual(DimensionRawTokens.dimension350, DimensionRawTokens.dimension900)
        XCTAssertNotEqual(DimensionRawTokens.dimension350, DimensionRawTokens.dimension1000)
        XCTAssertNotEqual(DimensionRawTokens.dimension350, DimensionRawTokens.dimension1200)
        XCTAssertNotEqual(DimensionRawTokens.dimension350, DimensionRawTokens.dimension1400)
        XCTAssertNotEqual(DimensionRawTokens.dimension350, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension350, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension350, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension350, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension350, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension350, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension350, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension350, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension350, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension350, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension400, DimensionRawTokens.dimension450)
        XCTAssertNotEqual(DimensionRawTokens.dimension400, DimensionRawTokens.dimension500)
        XCTAssertNotEqual(DimensionRawTokens.dimension400, DimensionRawTokens.dimension550)
        XCTAssertNotEqual(DimensionRawTokens.dimension400, DimensionRawTokens.dimension600)
        XCTAssertNotEqual(DimensionRawTokens.dimension400, DimensionRawTokens.dimension650)
        XCTAssertNotEqual(DimensionRawTokens.dimension400, DimensionRawTokens.dimension700)
        XCTAssertNotEqual(DimensionRawTokens.dimension400, DimensionRawTokens.dimension750)
        XCTAssertNotEqual(DimensionRawTokens.dimension400, DimensionRawTokens.dimension800)
        XCTAssertNotEqual(DimensionRawTokens.dimension400, DimensionRawTokens.dimension850)
        XCTAssertNotEqual(DimensionRawTokens.dimension400, DimensionRawTokens.dimension900)
        XCTAssertNotEqual(DimensionRawTokens.dimension400, DimensionRawTokens.dimension1000)
        XCTAssertNotEqual(DimensionRawTokens.dimension400, DimensionRawTokens.dimension1200)
        XCTAssertNotEqual(DimensionRawTokens.dimension400, DimensionRawTokens.dimension1400)
        XCTAssertNotEqual(DimensionRawTokens.dimension400, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension400, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension400, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension400, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension400, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension400, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension400, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension400, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension400, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension400, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension450, DimensionRawTokens.dimension500)
        XCTAssertNotEqual(DimensionRawTokens.dimension450, DimensionRawTokens.dimension550)
        XCTAssertNotEqual(DimensionRawTokens.dimension450, DimensionRawTokens.dimension600)
        XCTAssertNotEqual(DimensionRawTokens.dimension450, DimensionRawTokens.dimension650)
        XCTAssertNotEqual(DimensionRawTokens.dimension450, DimensionRawTokens.dimension700)
        XCTAssertNotEqual(DimensionRawTokens.dimension450, DimensionRawTokens.dimension750)
        XCTAssertNotEqual(DimensionRawTokens.dimension450, DimensionRawTokens.dimension800)
        XCTAssertNotEqual(DimensionRawTokens.dimension450, DimensionRawTokens.dimension850)
        XCTAssertNotEqual(DimensionRawTokens.dimension450, DimensionRawTokens.dimension900)
        XCTAssertNotEqual(DimensionRawTokens.dimension450, DimensionRawTokens.dimension1000)
        XCTAssertNotEqual(DimensionRawTokens.dimension450, DimensionRawTokens.dimension1200)
        XCTAssertNotEqual(DimensionRawTokens.dimension450, DimensionRawTokens.dimension1400)
        XCTAssertNotEqual(DimensionRawTokens.dimension450, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension450, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension450, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension450, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension450, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension450, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension450, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension450, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension450, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension450, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension500, DimensionRawTokens.dimension550)
        XCTAssertNotEqual(DimensionRawTokens.dimension500, DimensionRawTokens.dimension600)
        XCTAssertNotEqual(DimensionRawTokens.dimension500, DimensionRawTokens.dimension650)
        XCTAssertNotEqual(DimensionRawTokens.dimension500, DimensionRawTokens.dimension700)
        XCTAssertNotEqual(DimensionRawTokens.dimension500, DimensionRawTokens.dimension750)
        XCTAssertNotEqual(DimensionRawTokens.dimension500, DimensionRawTokens.dimension800)
        XCTAssertNotEqual(DimensionRawTokens.dimension500, DimensionRawTokens.dimension850)
        XCTAssertNotEqual(DimensionRawTokens.dimension500, DimensionRawTokens.dimension900)
        XCTAssertNotEqual(DimensionRawTokens.dimension500, DimensionRawTokens.dimension1000)
        XCTAssertNotEqual(DimensionRawTokens.dimension500, DimensionRawTokens.dimension1200)
        XCTAssertNotEqual(DimensionRawTokens.dimension500, DimensionRawTokens.dimension1400)
        XCTAssertNotEqual(DimensionRawTokens.dimension500, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension500, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension500, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension500, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension500, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension500, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension500, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension500, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension500, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension500, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension550, DimensionRawTokens.dimension600)
        XCTAssertNotEqual(DimensionRawTokens.dimension550, DimensionRawTokens.dimension650)
        XCTAssertNotEqual(DimensionRawTokens.dimension550, DimensionRawTokens.dimension700)
        XCTAssertNotEqual(DimensionRawTokens.dimension550, DimensionRawTokens.dimension750)
        XCTAssertNotEqual(DimensionRawTokens.dimension550, DimensionRawTokens.dimension800)
        XCTAssertNotEqual(DimensionRawTokens.dimension550, DimensionRawTokens.dimension850)
        XCTAssertNotEqual(DimensionRawTokens.dimension550, DimensionRawTokens.dimension900)
        XCTAssertNotEqual(DimensionRawTokens.dimension550, DimensionRawTokens.dimension1000)
        XCTAssertNotEqual(DimensionRawTokens.dimension550, DimensionRawTokens.dimension1200)
        XCTAssertNotEqual(DimensionRawTokens.dimension550, DimensionRawTokens.dimension1400)
        XCTAssertNotEqual(DimensionRawTokens.dimension550, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension550, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension550, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension550, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension550, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension550, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension550, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension550, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension550, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension550, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension600, DimensionRawTokens.dimension650)
        XCTAssertNotEqual(DimensionRawTokens.dimension600, DimensionRawTokens.dimension700)
        XCTAssertNotEqual(DimensionRawTokens.dimension600, DimensionRawTokens.dimension750)
        XCTAssertNotEqual(DimensionRawTokens.dimension600, DimensionRawTokens.dimension800)
        XCTAssertNotEqual(DimensionRawTokens.dimension600, DimensionRawTokens.dimension850)
        XCTAssertNotEqual(DimensionRawTokens.dimension600, DimensionRawTokens.dimension900)
        XCTAssertNotEqual(DimensionRawTokens.dimension600, DimensionRawTokens.dimension1000)
        XCTAssertNotEqual(DimensionRawTokens.dimension600, DimensionRawTokens.dimension1200)
        XCTAssertNotEqual(DimensionRawTokens.dimension600, DimensionRawTokens.dimension1400)
        XCTAssertNotEqual(DimensionRawTokens.dimension600, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension600, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension600, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension600, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension600, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension600, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension600, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension600, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension600, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension600, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension650, DimensionRawTokens.dimension700)
        XCTAssertNotEqual(DimensionRawTokens.dimension650, DimensionRawTokens.dimension750)
        XCTAssertNotEqual(DimensionRawTokens.dimension650, DimensionRawTokens.dimension800)
        XCTAssertNotEqual(DimensionRawTokens.dimension650, DimensionRawTokens.dimension850)
        XCTAssertNotEqual(DimensionRawTokens.dimension650, DimensionRawTokens.dimension900)
        XCTAssertNotEqual(DimensionRawTokens.dimension650, DimensionRawTokens.dimension1000)
        XCTAssertNotEqual(DimensionRawTokens.dimension650, DimensionRawTokens.dimension1200)
        XCTAssertNotEqual(DimensionRawTokens.dimension650, DimensionRawTokens.dimension1400)
        XCTAssertNotEqual(DimensionRawTokens.dimension650, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension650, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension650, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension650, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension650, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension650, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension650, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension650, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension650, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension650, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension700, DimensionRawTokens.dimension750)
        XCTAssertNotEqual(DimensionRawTokens.dimension700, DimensionRawTokens.dimension800)
        XCTAssertNotEqual(DimensionRawTokens.dimension700, DimensionRawTokens.dimension850)
        XCTAssertNotEqual(DimensionRawTokens.dimension700, DimensionRawTokens.dimension900)
        XCTAssertNotEqual(DimensionRawTokens.dimension700, DimensionRawTokens.dimension1000)
        XCTAssertNotEqual(DimensionRawTokens.dimension700, DimensionRawTokens.dimension1200)
        XCTAssertNotEqual(DimensionRawTokens.dimension700, DimensionRawTokens.dimension1400)
        XCTAssertNotEqual(DimensionRawTokens.dimension700, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension700, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension700, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension700, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension700, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension700, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension700, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension700, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension700, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension700, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension750, DimensionRawTokens.dimension800)
        XCTAssertNotEqual(DimensionRawTokens.dimension750, DimensionRawTokens.dimension850)
        XCTAssertNotEqual(DimensionRawTokens.dimension750, DimensionRawTokens.dimension900)
        XCTAssertNotEqual(DimensionRawTokens.dimension750, DimensionRawTokens.dimension1000)
        XCTAssertNotEqual(DimensionRawTokens.dimension750, DimensionRawTokens.dimension1200)
        XCTAssertNotEqual(DimensionRawTokens.dimension750, DimensionRawTokens.dimension1400)
        XCTAssertNotEqual(DimensionRawTokens.dimension750, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension750, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension750, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension750, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension750, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension750, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension750, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension750, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension750, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension750, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension800, DimensionRawTokens.dimension850)
        XCTAssertNotEqual(DimensionRawTokens.dimension800, DimensionRawTokens.dimension900)
        XCTAssertNotEqual(DimensionRawTokens.dimension800, DimensionRawTokens.dimension1000)
        XCTAssertNotEqual(DimensionRawTokens.dimension800, DimensionRawTokens.dimension1200)
        XCTAssertNotEqual(DimensionRawTokens.dimension800, DimensionRawTokens.dimension1400)
        XCTAssertNotEqual(DimensionRawTokens.dimension800, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension800, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension800, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension800, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension800, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension800, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension800, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension800, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension800, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension800, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension850, DimensionRawTokens.dimension900)
        XCTAssertNotEqual(DimensionRawTokens.dimension850, DimensionRawTokens.dimension1000)
        XCTAssertNotEqual(DimensionRawTokens.dimension850, DimensionRawTokens.dimension1200)
        XCTAssertNotEqual(DimensionRawTokens.dimension850, DimensionRawTokens.dimension1400)
        XCTAssertNotEqual(DimensionRawTokens.dimension850, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension850, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension850, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension850, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension850, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension850, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension850, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension850, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension850, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension850, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension900, DimensionRawTokens.dimension1000)
        XCTAssertNotEqual(DimensionRawTokens.dimension900, DimensionRawTokens.dimension1200)
        XCTAssertNotEqual(DimensionRawTokens.dimension900, DimensionRawTokens.dimension1400)
        XCTAssertNotEqual(DimensionRawTokens.dimension900, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension900, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension900, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension900, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension900, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension900, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension900, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension900, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension900, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension900, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension1000, DimensionRawTokens.dimension1200)
        XCTAssertNotEqual(DimensionRawTokens.dimension1000, DimensionRawTokens.dimension1400)
        XCTAssertNotEqual(DimensionRawTokens.dimension1000, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension1000, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension1000, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1000, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1000, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1000, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1000, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1000, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1000, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1000, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension1200, DimensionRawTokens.dimension1400)
        XCTAssertNotEqual(DimensionRawTokens.dimension1200, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension1200, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension1200, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1200, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1200, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1200, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1200, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1200, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1200, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1200, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension1400, DimensionRawTokens.dimension1600)
        XCTAssertNotEqual(DimensionRawTokens.dimension1400, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension1400, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1400, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1400, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1400, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1400, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1400, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1400, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1400, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension1600, DimensionRawTokens.dimension1800)
        XCTAssertNotEqual(DimensionRawTokens.dimension1600, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1600, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1600, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1600, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1600, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1600, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1600, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1600, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension1800, DimensionRawTokens.dimension2000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1800, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1800, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1800, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1800, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1800, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1800, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension1800, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension2000, DimensionRawTokens.dimension3000)
        XCTAssertNotEqual(DimensionRawTokens.dimension2000, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension2000, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension2000, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension2000, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension2000, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension2000, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension3000, DimensionRawTokens.dimension4000)
        XCTAssertNotEqual(DimensionRawTokens.dimension3000, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension3000, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension3000, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension3000, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension3000, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension4000, DimensionRawTokens.dimension5000)
        XCTAssertNotEqual(DimensionRawTokens.dimension4000, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension4000, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension4000, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension4000, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension5000, DimensionRawTokens.dimension6000)
        XCTAssertNotEqual(DimensionRawTokens.dimension5000, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension5000, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension5000, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension6000, DimensionRawTokens.dimension7000)
        XCTAssertNotEqual(DimensionRawTokens.dimension6000, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension6000, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension7000, DimensionRawTokens.dimension9000)
        XCTAssertNotEqual(DimensionRawTokens.dimension7000, DimensionRawTokens.dimension11000)

        XCTAssertNotEqual(DimensionRawTokens.dimension9000, DimensionRawTokens.dimension11000)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_body_length
// swiftlint:enable function_body_length

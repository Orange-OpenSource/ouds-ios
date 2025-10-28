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

// swiftlint:disable function_body_length
// swiftlint:disable type_body_length

/// The aim of this tests class is to look for regressions in **border raw tokens**.
///
/// Because these values will be at least generated through an external tool, is it not relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **border raw tokens**, there will be some unchanged things like relationships between tokens.
/// Thus this tests class checks if such relationships are still here whatever the values at the end.
///
/// Here are some rules to follow:
/// - border radius must not be negative value
/// - border radius value must be a factor of `BorderRawTokens.borderBase`
/// - border radius values must be all different
/// - border width must not be negative value
/// - border width value must be a factor of `BorderRawTokens.borderBase`
/// - border with values must be all different
/// - border style must have some specific value
/// - border style values must have be all different
/// - the "bigger" the border width token is, the higher the value is
/// - the "bigger" the border radius token is, the higher the value is
struct BorderRawTokensTests {

    // MARK: - Primitive token - Border - Width

    @Test func widthRawToken0NotNegativeValue() throws {
        #expect(BorderRawTokens.width0 >= 0)
    }

    @Test func widthRawToken0LessThan25() throws {
        #expect(BorderRawTokens.width0 < BorderRawTokens.width25)
    }

    @Test func widthRawToken0MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(BorderRawTokens.width0, factor: BorderRawTokens.borderBase)
    }

    @Test func widthRawToken25NotNegativeValue() throws {
        #expect(BorderRawTokens.width25 >= 0)
    }

    @Test func widthRawToken25LessThan50() throws {
        #expect(BorderRawTokens.width25 < BorderRawTokens.width50)
    }

    @Test func widthRawToken25MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(BorderRawTokens.width25, factor: BorderRawTokens.borderBase)
    }

    @Test func widthRawToken50NotNegativeValue() throws {
        #expect(BorderRawTokens.width50 >= 0)
    }

    @Test func widthRawToken50LessThan75() throws {
        #expect(BorderRawTokens.width50 < BorderRawTokens.width75)
    }

    @Test func widthRawToken50MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(BorderRawTokens.width50, factor: BorderRawTokens.borderBase)
    }

    @Test func widthRawToken75NotNegativeValue() throws {
        #expect(BorderRawTokens.width75 >= 0)
    }

    @Test func widthRawToken75LessThan100() throws {
        #expect(BorderRawTokens.width75 < BorderRawTokens.width100)
    }

    @Test func widthRawToken75MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(BorderRawTokens.width75, factor: BorderRawTokens.borderBase)
    }

    @Test func widthRawToken100NotNegativeValue() throws {
        #expect(BorderRawTokens.width100 >= 0)
    }

    @Test func widthRawToken100LessThan125() throws {
        #expect(BorderRawTokens.width100 < BorderRawTokens.width125)
    }

    @Test func widthRawToken100MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(BorderRawTokens.width100, factor: BorderRawTokens.borderBase)
    }

    @Test func widthRawToken125NotNegativeValue() throws {
        #expect(BorderRawTokens.width125 >= 0)
    }

    @Test func widthRawToken125LessThan150() throws {
        #expect(BorderRawTokens.width125 < BorderRawTokens.width150)
    }

    @Test func widthRawToken125MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(BorderRawTokens.width125, factor: BorderRawTokens.borderBase)
    }

    @Test func widthRawToken150NotNegativeValue() throws {
        #expect(BorderRawTokens.width150 >= 0)
    }

    @Test func widthRawToken150LessThan200() throws {
        #expect(BorderRawTokens.width150 < BorderRawTokens.width200)
    }

    @Test func widthRawToken150MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(BorderRawTokens.width150, factor: BorderRawTokens.borderBase)
    }

    @Test func widthRawToken200NotNegativeValue() throws {
        #expect(BorderRawTokens.width200 >= 0)
    }

    @Test func widthRawToken200MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(BorderRawTokens.width200, factor: BorderRawTokens.borderBase)
    }

    /// Border width raw tokens must be different
    @Test func nonEqualityForBorderWidths() throws {
        #expect(BorderRawTokens.width0 != BorderRawTokens.width25)
        #expect(BorderRawTokens.width0 != BorderRawTokens.width50)
        #expect(BorderRawTokens.width0 != BorderRawTokens.width75)
        #expect(BorderRawTokens.width0 != BorderRawTokens.width100)
        #expect(BorderRawTokens.width0 != BorderRawTokens.width125)
        #expect(BorderRawTokens.width0 != BorderRawTokens.width150)
        #expect(BorderRawTokens.width0 != BorderRawTokens.width200)

        #expect(BorderRawTokens.width50 != BorderRawTokens.width75)
        #expect(BorderRawTokens.width50 != BorderRawTokens.width100)
        #expect(BorderRawTokens.width50 != BorderRawTokens.width125)
        #expect(BorderRawTokens.width50 != BorderRawTokens.width150)
        #expect(BorderRawTokens.width50 != BorderRawTokens.width200)

        #expect(BorderRawTokens.width75 != BorderRawTokens.width100)
        #expect(BorderRawTokens.width75 != BorderRawTokens.width125)
        #expect(BorderRawTokens.width75 != BorderRawTokens.width150)
        #expect(BorderRawTokens.width75 != BorderRawTokens.width200)

        #expect(BorderRawTokens.width100 != BorderRawTokens.width125)
        #expect(BorderRawTokens.width100 != BorderRawTokens.width150)
        #expect(BorderRawTokens.width100 != BorderRawTokens.width200)

        #expect(BorderRawTokens.width125 != BorderRawTokens.width150)
        #expect(BorderRawTokens.width125 != BorderRawTokens.width200)

        #expect(BorderRawTokens.width150 != BorderRawTokens.width200)
    }

    // MARK: - Primitive token - Border - Radius

    @Test func radiusRawToken0NotNegativeValue() throws {
        #expect(BorderRawTokens.radius0 >= 0)
    }

    @Test func radiusRawToken0LessThan25() throws {
        #expect(BorderRawTokens.radius0 < BorderRawTokens.radius25)
    }

    @Test func radiusRawToken0MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(BorderRawTokens.radius0, factor: BorderRawTokens.borderBase)
    }

    @Test func radiusRawToken25NotNegativeValue() throws {
        #expect(BorderRawTokens.radius25 >= 0)
    }

    @Test func radiusRawToken25LessThan50() throws {
        #expect(BorderRawTokens.radius25 < BorderRawTokens.radius50)
    }

    @Test func radiusRawToken25MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(BorderRawTokens.radius25, factor: BorderRawTokens.borderBase)
    }

    @Test func radiusRawToken50NotNegativeValue() throws {
        #expect(BorderRawTokens.radius50 >= 0)
    }

    @Test func radiusRawToken50LessThan75() throws {
        #expect(BorderRawTokens.radius50 < BorderRawTokens.radius75)
    }

    @Test func radiusRawToken50MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(BorderRawTokens.radius50, factor: BorderRawTokens.borderBase)
    }

    @Test func radiusRawToken75NotNegativeValue() throws {
        #expect(BorderRawTokens.radius75 >= 0)
    }

    @Test func radiusRawToken75LessThan100() throws {
        #expect(BorderRawTokens.radius75 < BorderRawTokens.radius100)
    }

    @Test func radiusRawToken75MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(BorderRawTokens.radius75, factor: BorderRawTokens.borderBase)
    }

    @Test func radiusRawToken100NotNegativeValue() throws {
        #expect(BorderRawTokens.radius100 >= 0)
    }

    @Test func radiusRawToken100LessThan150() throws {
        #expect(BorderRawTokens.radius100 < BorderRawTokens.radius150)
    }

    @Test func radiusRawToken100MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(BorderRawTokens.radius100, factor: BorderRawTokens.borderBase)
    }

    @Test func radiusRawToken150NotNegativeValue() throws {
        #expect(BorderRawTokens.radius150 >= 0)
    }

    @Test func radiusRawToken150LessThan200() throws {
        #expect(BorderRawTokens.radius150 < BorderRawTokens.radius200)
    }

    @Test func radiusRawToken150MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(BorderRawTokens.radius150, factor: BorderRawTokens.borderBase)
    }

    @Test func radiusRawToken200NotNegativeValue() throws {
        #expect(BorderRawTokens.radius200 >= 0)
    }

    @Test func radiusRawToken200LessThan300() throws {
        #expect(BorderRawTokens.radius200 < BorderRawTokens.radius300)
    }

    @Test func radiusRawToken200MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(BorderRawTokens.radius200, factor: BorderRawTokens.borderBase)
    }

    @Test func radiusRawToken300NotNegativeValue() throws {
        #expect(BorderRawTokens.radius300 >= 0)
    }

    @Test func radiusRawToken300LessThan400() throws {
        #expect(BorderRawTokens.radius300 < BorderRawTokens.radius400)
    }

    @Test func radiusRawToken300MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(BorderRawTokens.radius300, factor: BorderRawTokens.borderBase)
    }

    @Test func radiusRawToken400NotNegativeValue() throws {
        #expect(BorderRawTokens.radius400 >= 0)
    }

    @Test func radiusRawToken400LessThan500() throws {
        #expect(BorderRawTokens.radius400 < BorderRawTokens.radius500)
    }

    @Test func radiusRawToken400MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(BorderRawTokens.radius400, factor: BorderRawTokens.borderBase)
    }

    @Test func radiusRawToken500NotNegativeValue() throws {
        #expect(BorderRawTokens.radius500 >= 0)
    }

    @Test func radiusRawToken500LessThan600() throws {
        #expect(BorderRawTokens.radius500 < BorderRawTokens.radius600)
    }

    @Test func radiusRawToken500MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(BorderRawTokens.radius500, factor: BorderRawTokens.borderBase)
    }

    @Test func radiusRawToken600NotNegativeValue() throws {
        #expect(BorderRawTokens.radius600 >= 0)
    }

    @Test func radiusRawToken600LessThan800() throws {
        #expect(BorderRawTokens.radius600 < BorderRawTokens.radius800)
    }

    @Test func radiusRawToken600MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(BorderRawTokens.radius600, factor: BorderRawTokens.borderBase)
    }

    @Test func radiusRawToken800NotNegativeValue() throws {
        #expect(BorderRawTokens.radius800 >= 0)
    }

    @Test func radiusRawToken800MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(BorderRawTokens.radius800, factor: BorderRawTokens.borderBase)
    }

    @Test func radiusRawToken800LessThan9999() throws {
        #expect(BorderRawTokens.radius800 < BorderRawTokens.radius9999)
    }

    @Test func radiusRawToken9999NotNegativeValue() throws {
        #expect(BorderRawTokens.radius9999 >= 0)
    }

    /// Border radius raw tokens must be different
    @Test func nonEqualityForBorderRadiuses() throws {
        #expect(BorderRawTokens.radius0 != BorderRawTokens.radius25)
        #expect(BorderRawTokens.radius0 != BorderRawTokens.radius50)
        #expect(BorderRawTokens.radius0 != BorderRawTokens.radius75)
        #expect(BorderRawTokens.radius0 != BorderRawTokens.radius100)
        #expect(BorderRawTokens.radius0 != BorderRawTokens.radius150)
        #expect(BorderRawTokens.radius0 != BorderRawTokens.radius200)
        #expect(BorderRawTokens.radius0 != BorderRawTokens.radius300)
        #expect(BorderRawTokens.radius0 != BorderRawTokens.radius400)
        #expect(BorderRawTokens.radius0 != BorderRawTokens.radius500)
        #expect(BorderRawTokens.radius0 != BorderRawTokens.radius600)
        #expect(BorderRawTokens.radius0 != BorderRawTokens.radius800)
        #expect(BorderRawTokens.radius0 != BorderRawTokens.radius9999)

        #expect(BorderRawTokens.radius25 != BorderRawTokens.radius50)
        #expect(BorderRawTokens.radius25 != BorderRawTokens.radius75)
        #expect(BorderRawTokens.radius25 != BorderRawTokens.radius100)
        #expect(BorderRawTokens.radius25 != BorderRawTokens.radius150)
        #expect(BorderRawTokens.radius25 != BorderRawTokens.radius200)
        #expect(BorderRawTokens.radius25 != BorderRawTokens.radius300)
        #expect(BorderRawTokens.radius25 != BorderRawTokens.radius400)
        #expect(BorderRawTokens.radius25 != BorderRawTokens.radius500)
        #expect(BorderRawTokens.radius25 != BorderRawTokens.radius600)
        #expect(BorderRawTokens.radius25 != BorderRawTokens.radius800)
        #expect(BorderRawTokens.radius25 != BorderRawTokens.radius9999)

        #expect(BorderRawTokens.radius50 != BorderRawTokens.radius75)
        #expect(BorderRawTokens.radius50 != BorderRawTokens.radius100)
        #expect(BorderRawTokens.radius50 != BorderRawTokens.radius150)
        #expect(BorderRawTokens.radius50 != BorderRawTokens.radius200)
        #expect(BorderRawTokens.radius50 != BorderRawTokens.radius300)
        #expect(BorderRawTokens.radius50 != BorderRawTokens.radius400)
        #expect(BorderRawTokens.radius50 != BorderRawTokens.radius500)
        #expect(BorderRawTokens.radius50 != BorderRawTokens.radius600)
        #expect(BorderRawTokens.radius50 != BorderRawTokens.radius800)
        #expect(BorderRawTokens.radius50 != BorderRawTokens.radius9999)

        #expect(BorderRawTokens.radius75 != BorderRawTokens.radius100)
        #expect(BorderRawTokens.radius75 != BorderRawTokens.radius150)
        #expect(BorderRawTokens.radius75 != BorderRawTokens.radius200)
        #expect(BorderRawTokens.radius75 != BorderRawTokens.radius300)
        #expect(BorderRawTokens.radius75 != BorderRawTokens.radius400)
        #expect(BorderRawTokens.radius75 != BorderRawTokens.radius500)
        #expect(BorderRawTokens.radius75 != BorderRawTokens.radius600)
        #expect(BorderRawTokens.radius75 != BorderRawTokens.radius800)
        #expect(BorderRawTokens.radius75 != BorderRawTokens.radius9999)

        #expect(BorderRawTokens.radius100 != BorderRawTokens.radius150)
        #expect(BorderRawTokens.radius100 != BorderRawTokens.radius200)
        #expect(BorderRawTokens.radius100 != BorderRawTokens.radius300)
        #expect(BorderRawTokens.radius100 != BorderRawTokens.radius400)
        #expect(BorderRawTokens.radius100 != BorderRawTokens.radius500)
        #expect(BorderRawTokens.radius100 != BorderRawTokens.radius600)
        #expect(BorderRawTokens.radius100 != BorderRawTokens.radius800)
        #expect(BorderRawTokens.radius100 != BorderRawTokens.radius9999)

        #expect(BorderRawTokens.radius150 != BorderRawTokens.radius200)
        #expect(BorderRawTokens.radius150 != BorderRawTokens.radius300)
        #expect(BorderRawTokens.radius150 != BorderRawTokens.radius400)
        #expect(BorderRawTokens.radius150 != BorderRawTokens.radius500)
        #expect(BorderRawTokens.radius150 != BorderRawTokens.radius600)
        #expect(BorderRawTokens.radius150 != BorderRawTokens.radius800)
        #expect(BorderRawTokens.radius150 != BorderRawTokens.radius9999)

        #expect(BorderRawTokens.radius200 != BorderRawTokens.radius300)
        #expect(BorderRawTokens.radius200 != BorderRawTokens.radius400)
        #expect(BorderRawTokens.radius200 != BorderRawTokens.radius500)
        #expect(BorderRawTokens.radius200 != BorderRawTokens.radius600)
        #expect(BorderRawTokens.radius200 != BorderRawTokens.radius800)
        #expect(BorderRawTokens.radius200 != BorderRawTokens.radius9999)

        #expect(BorderRawTokens.radius300 != BorderRawTokens.radius400)
        #expect(BorderRawTokens.radius300 != BorderRawTokens.radius500)
        #expect(BorderRawTokens.radius300 != BorderRawTokens.radius600)
        #expect(BorderRawTokens.radius300 != BorderRawTokens.radius800)
        #expect(BorderRawTokens.radius300 != BorderRawTokens.radius9999)

        #expect(BorderRawTokens.radius400 != BorderRawTokens.radius500)
        #expect(BorderRawTokens.radius400 != BorderRawTokens.radius600)
        #expect(BorderRawTokens.radius400 != BorderRawTokens.radius800)
        #expect(BorderRawTokens.radius400 != BorderRawTokens.radius9999)

        #expect(BorderRawTokens.radius500 != BorderRawTokens.radius600)
        #expect(BorderRawTokens.radius500 != BorderRawTokens.radius800)
        #expect(BorderRawTokens.radius500 != BorderRawTokens.radius9999)

        #expect(BorderRawTokens.radius600 != BorderRawTokens.radius800)
        #expect(BorderRawTokens.radius600 != BorderRawTokens.radius9999)

        #expect(BorderRawTokens.radius800 != BorderRawTokens.radius9999)
    }

    // MARK: - Primitive token - Border - Style

    @Test func styeDashed() throws {
        #expect(BorderRawTokens.styeDashed == "dashed")
    }

    @Test func styeDotted() throws {
        #expect(BorderRawTokens.styeDotted == "dotted")
    }

    @Test func styeNone() throws {
        #expect(BorderRawTokens.styeNone == "none")
    }

    @Test func styeSolid() throws {
        #expect(BorderRawTokens.styeSolid == "solid")
    }

    /// Border styles raw tokens must be different
    @Test func nonEqualityForBorderStyles() throws {
        #expect(BorderRawTokens.styeNone != BorderRawTokens.styeSolid)
        #expect(BorderRawTokens.styeNone != BorderRawTokens.styeDashed)
        #expect(BorderRawTokens.styeNone != BorderRawTokens.styeDotted)

        #expect(BorderRawTokens.styeSolid != BorderRawTokens.styeDashed)
        #expect(BorderRawTokens.styeSolid != BorderRawTokens.styeDotted)

        #expect(BorderRawTokens.styeDashed != BorderRawTokens.styeDotted)
    }
}

// swiftlint:enable function_body_length
// swiftlint:enable type_body_length

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

@testable import OUDSTokensRaw
import XCTest

// swiftlint:disable type_body_length
// swiftlint:disable required_deinit

/// The aim of this tests class is to look for regressions in **typography raw tokens**.
/// Because these values will be at least generated through an external tool, is it not relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **typography raw tokens**, there will be some unchanged things like relationships between tokens.
/// Thus this tests class just checks if such relationships are still here whatever the values at the end.
final class TypographyRawTokensTests: XCTestCase {

    // MARK: - Primitive token - Typography - Font family

    // Just to ensure the font families in tokens are the ones in system with the same name
    func testTypographyRawTokenFontFamilyBrandDefault() throws {
        XCTAssertEqual(TypographyRawTokens.fontFamilyBrandDefault, "Helvetica Neue")
    }

    func testTypographyRawTokenFontFamilyBrandTV() throws {
        XCTAssertEqual(TypographyRawTokens.fontFamilyBrandTV, "Helvetica Neue LT")
    }

    func testTypographyRawTokenFontFamilySystemArial() throws {
        XCTAssertEqual(TypographyRawTokens.fontFamilySystemArial, "Arial")
    }

    func testTypographyRawTokenFontFamilySystemHelvetica() throws {
        XCTAssertEqual(TypographyRawTokens.fontFamilySystemHelvetica, "Helvetica")
    }

    func testTypographyRawTokenFontFamilySystemNotoSans() throws {
        XCTAssertEqual(TypographyRawTokens.fontFamilySystemNotoSans, "Noto sans")
    }

    func testTypographyRawTokenFontFamilySystemSFProText() throws {
        XCTAssertEqual(TypographyRawTokens.fontFamilySystemSFPro, "SF Pro")
    }

    func testTypographyRawTokenFontFamilySystemRoboto() throws {
        XCTAssertEqual(TypographyRawTokens.fontFamilySystemRoboto, "Roboto")
    }

    func testTypographyRawTokenFontFamilyMonospaceMenlo() throws {
        XCTAssertEqual(TypographyRawTokens.fontFamilyMonospaceMenlo, "Menlo")
    }

    func testTypographyRawTokenFontFamilyMonospaceMonaco() throws {
        XCTAssertEqual(TypographyRawTokens.fontFamilyMonospaceMonaco, "Monaco")
    }

    func testTypographyRawTokenFontFamilyCourrierNew() throws {
        XCTAssertEqual(TypographyRawTokens.fontFamilyMonospaceCourierNew, "Courier New")
    }

    // MARK: - Primitive token - Typography - Font size

    func testTypographyRawTokensFontSize100LessThanFontSize150() throws {
        XCTAssertLessThan(TypographyRawTokens.fontSize100, TypographyRawTokens.fontSize150)
    }

    func testTypographyRawTokensFontSize150LessThanFontSize175() throws {
        XCTAssertLessThan(TypographyRawTokens.fontSize150, TypographyRawTokens.fontSize175)
    }

    func testTypographyRawTokensFontSize175LessThanFontSize200() throws {
        XCTAssertLessThan(TypographyRawTokens.fontSize175, TypographyRawTokens.fontSize200)
    }

    func testTypographyRawTokensFontSize200LessThanFontSize250() throws {
        XCTAssertLessThan(TypographyRawTokens.fontSize200, TypographyRawTokens.fontSize250)
    }

    func testTypographyRawTokensFontSize250LessThanFontSize300() throws {
        XCTAssertLessThan(TypographyRawTokens.fontSize250, TypographyRawTokens.fontSize300)
    }

    func testTypographyRawTokensFontSize300LessThanFontSize350() throws {
        XCTAssertLessThan(TypographyRawTokens.fontSize300, TypographyRawTokens.fontSize350)
    }

    func testTypographyRawTokensFontSize350LessThanFontSize450() throws {
        XCTAssertLessThan(TypographyRawTokens.fontSize350, TypographyRawTokens.fontSize450)
    }

    func testTypographyRawTokensFontSize450LessThanFontSize550() throws {
        XCTAssertLessThan(TypographyRawTokens.fontSize450, TypographyRawTokens.fontSize550)
    }

    func testTypographyRawTokensFontSize550LessThanFontSize650() throws {
        XCTAssertLessThan(TypographyRawTokens.fontSize550, TypographyRawTokens.fontSize650)
    }

    func testTypographyRawTokensFontSize650LessThanFontSize750() throws {
        XCTAssertLessThan(TypographyRawTokens.fontSize650, TypographyRawTokens.fontSize750)
    }

    func testTypographyRawTokensFontSize750LessThanFontSize850() throws {
        XCTAssertLessThan(TypographyRawTokens.fontSize750, TypographyRawTokens.fontSize850)
    }

    func testTypographyRawTokensFontSize850LessThanFontSize950() throws {
        XCTAssertLessThan(TypographyRawTokens.fontSize850, TypographyRawTokens.fontSize950)
    }

    func testTypographyRawTokensFontSize950LessThanFontSize1050() throws {
        XCTAssertLessThan(TypographyRawTokens.fontSize950, TypographyRawTokens.fontSize1050)
    }

    func testTypographyRawTokensFontSize1050LessThanFontSize1150() throws {
        XCTAssertLessThan(TypographyRawTokens.fontSize1050, TypographyRawTokens.fontSize1150)
    }

    func testTypographyRawTokensFontSize1150LessThanFontSize1250() throws {
        XCTAssertLessThan(TypographyRawTokens.fontSize1150, TypographyRawTokens.fontSize1250)
    }

    func testTypographyRawTokensFontSize1250LessThanFontSize1450() throws {
        XCTAssertLessThan(TypographyRawTokens.fontSize1250, TypographyRawTokens.fontSize1450)
    }

    func testTypographyRawTokensFontSize1450LessThanFontSize1850() throws {
        XCTAssertLessThan(TypographyRawTokens.fontSize1450, TypographyRawTokens.fontSize1850)
    }

    // MARK: - Primitive token - Typography - Line height

    func testTypographyRawTokensFontLineHeight250LessThanFontLineHeight350() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight250, TypographyRawTokens.fontLineHeight350)
    }

    func testTypographyRawTokensFontLineHeight350LessThanFontLineHeight450() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight350, TypographyRawTokens.fontLineHeight450)
    }

    func testTypographyRawTokensFontLineHeight450LessThanFontLineHeight550() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight450, TypographyRawTokens.fontLineHeight550)
    }

    func testTypographyRawTokensFontLineHeight550LessThanFontLineHeight650() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight550, TypographyRawTokens.fontLineHeight650)
    }

    func testTypographyRawTokensFontLineHeight650LessThanFontLineHeight750() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight650, TypographyRawTokens.fontLineHeight750)
    }

    func testTypographyRawTokensFontLineHeight750LessThanFontLineHeight850() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight750, TypographyRawTokens.fontLineHeight850)
    }

    func testTypographyRawTokensFontLineHeight850LessThanFontLineHeight950() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight850, TypographyRawTokens.fontLineHeight950)
    }

    func testTypographyRawTokensFontLineHeight950LessThanFontLineHeight1050() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight950, TypographyRawTokens.fontLineHeight1050)
    }

    func testTypographyRawTokensFontLineHeight1050LessThanFontLineHeight1150() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight1050, TypographyRawTokens.fontLineHeight1150)
    }

    func testTypographyRawTokensFontLineHeight1150LessThanFontLineHeight1250() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight1150, TypographyRawTokens.fontLineHeight1250)
    }

    func testTypographyRawTokensFontLineHeight1250LessThanFontLineHeight1350() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight1250, TypographyRawTokens.fontLineHeight1350)
    }

    func testTypographyRawTokensFontLineHeight1350LessThanFontLineHeight1450() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight1350, TypographyRawTokens.fontLineHeight1450)
    }

    func testTypographyRawTokensFontLineHeight1450LessThanFontLineHeight1850() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight1450, TypographyRawTokens.fontLineHeight1850)
    }

    func testTypographyRawTokensFontLineHeight1850LessThanFontLineHeight2050() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight1850, TypographyRawTokens.fontLineHeight2050)
    }

    // MARK: - Primitive token - Typography - Letter spacong

    func testTypographyRawTokensFontLetterSpacing150LessThanFontLetterSpacing175() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLetterSpacing150, TypographyRawTokens.fontLetterSpacing175)
    }

    func testTypographyRawTokensFontLetterSpacing175LessThanFontLetterSpacing200() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLetterSpacing175, TypographyRawTokens.fontLetterSpacing200)
    }

    func testTypographyRawTokensFontLetterSpacing200LessThanFontLetterSpacing250() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLetterSpacing200, TypographyRawTokens.fontLetterSpacing250)
    }

    func testTypographyRawTokensFontLetterSpacing250LessThanFontLetterSpacing300() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLetterSpacing250, TypographyRawTokens.fontLetterSpacing300)
    }

    func testTypographyRawTokensFontLetterSpacing300LessThanFontLetterSpacing350() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLetterSpacing300, TypographyRawTokens.fontLetterSpacing350)
    }

    func testTypographyRawTokensFontLetterSpacing350LessThanFontLetterSpacing450() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLetterSpacing350, TypographyRawTokens.fontLetterSpacing450)
    }

    func testTypographyRawTokensFontLetterSpacing450LessThanFontLetterSpacing550() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLetterSpacing450, TypographyRawTokens.fontLetterSpacing550)
    }

    func testTypographyRawTokensFontLetterSpacing550LessThanFontLetterSpacing650() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLetterSpacing550, TypographyRawTokens.fontLetterSpacing650)
    }

    func testTypographyRawTokensFontLetterSpacing650LessThanFontLetterSpacing750() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLetterSpacing650, TypographyRawTokens.fontLetterSpacing750)
    }

    func testTypographyRawTokensFontLetterSpacing750LessThanFontLetterSpacing850() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLetterSpacing750, TypographyRawTokens.fontLetterSpacing850)
    }

    func testTypographyRawTokensFontLetterSpacing850LessThanFontLetterSpacing950() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLetterSpacing850, TypographyRawTokens.fontLetterSpacing950)
    }

    func testTypographyRawTokensFontLetterSpacing950LessThanFontLetterSpacing1050() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLetterSpacing950, TypographyRawTokens.fontLetterSpacing1050)
    }

    func testTypographyRawTokensFontLetterSpacing1050LessThanFontLetterSpacing1150() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLetterSpacing1050, TypographyRawTokens.fontLetterSpacing1150)
    }

    func testTypographyRawTokensFontLetterSpacing1150LessThanFontLetterSpacing1250() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLetterSpacing1150, TypographyRawTokens.fontLetterSpacing1250)
    }

    func testTypographyRawTokensFontLetterSpacing1250LessThanFontLetterSpacing1450() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLetterSpacing1250, TypographyRawTokens.fontLetterSpacing1450)
    }

    func testTypographyRawTokensFontLetterSpacing1450LessThanFontLetterSpacing1850() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLetterSpacing1450, TypographyRawTokens.fontLetterSpacing1850)
    }

    // MARK: - Primitive token - Typography - Font family

    func testTypographyRawTokensFontFamiliesAreAllDifferent() throws {
        XCTAssertNotEqual(TypographyRawTokens.fontFamilyBrandDefault, TypographyRawTokens.fontFamilySystemArial)
        XCTAssertNotEqual(TypographyRawTokens.fontFamilySystemArial, TypographyRawTokens.fontFamilySystemHelvetica)
        XCTAssertNotEqual(TypographyRawTokens.fontFamilySystemHelvetica, TypographyRawTokens.fontFamilyMonospaceMenlo)
        XCTAssertNotEqual(TypographyRawTokens.fontFamilyMonospaceMenlo, TypographyRawTokens.fontFamilyMonospaceCourierNew)
    }

    // MARK: - Primitive token - Typography - Font weight

    func testTypographyRawTokensFontWeightsAreAllDifferent() throws {
        XCTAssertNotEqual(TypographyRawTokens.fontWeight100, TypographyRawTokens.fontWeight200)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight100, TypographyRawTokens.fontWeight300)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight100, TypographyRawTokens.fontWeight400)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight100, TypographyRawTokens.fontWeight500)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight100, TypographyRawTokens.fontWeight600)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight100, TypographyRawTokens.fontWeight700)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight100, TypographyRawTokens.fontWeight800)

        XCTAssertNotEqual(TypographyRawTokens.fontWeight200, TypographyRawTokens.fontWeight300)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight200, TypographyRawTokens.fontWeight400)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight200, TypographyRawTokens.fontWeight500)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight200, TypographyRawTokens.fontWeight600)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight200, TypographyRawTokens.fontWeight700)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight200, TypographyRawTokens.fontWeight800)

        XCTAssertNotEqual(TypographyRawTokens.fontWeight300, TypographyRawTokens.fontWeight400)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight300, TypographyRawTokens.fontWeight500)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight300, TypographyRawTokens.fontWeight600)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight300, TypographyRawTokens.fontWeight700)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight300, TypographyRawTokens.fontWeight800)

        XCTAssertNotEqual(TypographyRawTokens.fontWeight400, TypographyRawTokens.fontWeight500)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight400, TypographyRawTokens.fontWeight600)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight400, TypographyRawTokens.fontWeight700)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight400, TypographyRawTokens.fontWeight800)

        XCTAssertNotEqual(TypographyRawTokens.fontWeight500, TypographyRawTokens.fontWeight600)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight500, TypographyRawTokens.fontWeight700)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight500, TypographyRawTokens.fontWeight800)

        XCTAssertNotEqual(TypographyRawTokens.fontWeight600, TypographyRawTokens.fontWeight700)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight600, TypographyRawTokens.fontWeight800)

        XCTAssertNotEqual(TypographyRawTokens.fontWeight700, TypographyRawTokens.fontWeight800)
    }

    // MARK: - Primitive token - Typography - Composite

    func testTypographyRawTokensTypeRegular150LessThanTypeRegular175() throws {
        XCTAssertTrue(TypographyRawTokens.typeRegular150 <| TypographyRawTokens.typeRegular175)
    }

    func testTypographyRawTokensTypeRegular175LessThanTypeRegular200() throws {
        XCTAssertTrue(TypographyRawTokens.typeRegular175 <| TypographyRawTokens.typeRegular200)
    }

    func testTypographyRawTokensTypeRegular200LessThanTypeRegular250() throws {
        XCTAssertTrue(TypographyRawTokens.typeRegular200 <| TypographyRawTokens.typeRegular250)
    }

    func testTypographyRawTokensTypeBold150LessThanTypeBold175() throws {
        XCTAssertTrue(TypographyRawTokens.typeBold150 <| TypographyRawTokens.typeBold175)
    }

    func testTypographyRawTokensTypeBold175LessThanTypeBold200() throws {
        XCTAssertTrue(TypographyRawTokens.typeBold175 <| TypographyRawTokens.typeBold200)
    }

    func testTypographyRawTokensTypeBold200LessThanTypeBold250() throws {
        XCTAssertTrue(TypographyRawTokens.typeBold200 <| TypographyRawTokens.typeBold250)
    }

    func testTypographyRawTokensTypeBold250LessThanTypeBold300() throws {
        XCTAssertTrue(TypographyRawTokens.typeBold250 <| TypographyRawTokens.typeBold300)
    }

    func testTypographyRawTokensTypeBold300LessThanTypeBold350() throws {
        XCTAssertTrue(TypographyRawTokens.typeBold300 <| TypographyRawTokens.typeBold350)
    }

    func testTypographyRawTokensTypeBold350LessThanTypeBold450() throws {
        XCTAssertTrue(TypographyRawTokens.typeBold350 <| TypographyRawTokens.typeBold450)
    }

    func testTypographyRawTokensTypeBold450LessThanTypeBold550() throws {
        XCTAssertTrue(TypographyRawTokens.typeBold450 <| TypographyRawTokens.typeBold550)
    }

    func testTypographyRawTokensTypeBold550LessThanTypeBold650() throws {
        XCTAssertTrue(TypographyRawTokens.typeBold550 <| TypographyRawTokens.typeBold650)
    }

    func testTypographyRawTokensTypeBold650LessThanTypeBold750() throws {
        XCTAssertTrue(TypographyRawTokens.typeBold650 <| TypographyRawTokens.typeBold750)
    }

    func testTypographyRawTokensTypeBold750LessThanTypeBold850() throws {
        XCTAssertTrue(TypographyRawTokens.typeBold750 <| TypographyRawTokens.typeBold850)
    }

    func testTypographyRawTokensTypeBold850LessThanTypeBold950() throws {
        XCTAssertTrue(TypographyRawTokens.typeBold850 <| TypographyRawTokens.typeBold950)
    }

    func testTypographyRawTokensTypeBold950LessThanTypeBold1050() throws {
        XCTAssertTrue(TypographyRawTokens.typeBold950 <| TypographyRawTokens.typeBold1050)
    }

    func testTypographyRawTokensTypeBold1050LessThanTypeBold1150() throws {
        XCTAssertTrue(TypographyRawTokens.typeBold1050 <| TypographyRawTokens.typeBold1150)
    }

    func testTypographyRawTokensTypeBold1150LessThanTypeBold1250() throws {
        XCTAssertTrue(TypographyRawTokens.typeBold1150 <| TypographyRawTokens.typeBold1250)
    }

    func testTypographyRawTokensTypeBold1250LessThanTypeBold1450() throws {
        XCTAssertTrue(TypographyRawTokens.typeBold1250 <| TypographyRawTokens.typeBold1450)
    }

    func testTypographyRawTokensTypeBold1450LessThanTypeBold1850() throws {
        XCTAssertTrue(TypographyRawTokens.typeBold1450 <| TypographyRawTokens.typeBold1850)
    }
}
// swiftlint:enable type_body_length
// swiftlint:enable required_deinit

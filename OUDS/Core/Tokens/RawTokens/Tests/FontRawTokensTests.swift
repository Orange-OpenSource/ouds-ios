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
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// In the semantics of **typography raw tokens**, there will be some unchanged things like relationships between tokens.
/// Some of these tokens are also strongly based on their raw tvalues (like font family names) and must be tested.
/// Thus this tests class just checks if such relationships are still here whatever the values at the end.
final class FontRawTokensTests: XCTestCase {

    // MARK: - Primitive token - Typography - Font family

    // Just to ensure the font families in tokens are the ones in system with the same name

    func testTypographyRawTokenFontFamilyBrandDefault() throws {
        XCTAssertEqual(FontRawTokens.fontFamilyBrandDefault, "Helvetica Neue")
    }

    func testTypographyRawTokenFontFamilyBrandTV() throws {
        XCTAssertEqual(FontRawTokens.fontFamilyBrandTV, "Helvetica Neue LT")
    }

    func testTypographyRawTokenFontFamilySystemArial() throws {
        XCTAssertEqual(FontRawTokens.fontFamilySystemArial, "Arial")
    }

    func testTypographyRawTokenFontFamilySystemHelvetica() throws {
        XCTAssertEqual(FontRawTokens.fontFamilySystemHelvetica, "Helvetica")
    }

    func testTypographyRawTokenFontFamilySystemNotoSans() throws {
        XCTAssertEqual(FontRawTokens.fontFamilySystemNotoSans, "Noto sans")
    }

    func testTypographyRawTokenFontFamilySystemSFProText() throws {
        XCTAssertEqual(FontRawTokens.fontFamilySystemSFPro, "SF Pro")
    }

    func testTypographyRawTokenFontFamilySystemRoboto() throws {
        XCTAssertEqual(FontRawTokens.fontFamilySystemRoboto, "Roboto")
    }

    func testTypographyRawTokenFontFamilyMonospaceMenlo() throws {
        XCTAssertEqual(FontRawTokens.fontFamilyMonospaceMenlo, "Menlo")
    }

    func testTypographyRawTokenFontFamilyMonospaceMonaco() throws {
        XCTAssertEqual(FontRawTokens.fontFamilyMonospaceMonaco, "Monaco")
    }

    func testTypographyRawTokenFontFamilyCourrierNew() throws {
        XCTAssertEqual(FontRawTokens.fontFamilyMonospaceCourierNew, "Courier New")
    }

    // MARK: - Primitive token - Typography - Font size

    func testFontRawTokensFontSize150LessThanFontSize175() throws {
        XCTAssertLessThan(FontRawTokens.fontSize150, FontRawTokens.fontSize175)
    }

    func testFontRawTokensFontSize175LessThanFontSize200() throws {
        XCTAssertLessThan(FontRawTokens.fontSize175, FontRawTokens.fontSize200)
    }

    func testFontRawTokensFontSize200LessThanFontSize250() throws {
        XCTAssertLessThan(FontRawTokens.fontSize200, FontRawTokens.fontSize250)
    }

    func testFontRawTokensFontSize250LessThanFontSize300() throws {
        XCTAssertLessThan(FontRawTokens.fontSize250, FontRawTokens.fontSize300)
    }

    func testFontRawTokensFontSize300LessThanFontSize350() throws {
        XCTAssertLessThan(FontRawTokens.fontSize300, FontRawTokens.fontSize350)
    }

    func testFontRawTokensFontSize350LessThanFontSize450() throws {
        XCTAssertLessThan(FontRawTokens.fontSize350, FontRawTokens.fontSize450)
    }

    func testFontRawTokensFontSize450LessThanFontSize550() throws {
        XCTAssertLessThan(FontRawTokens.fontSize450, FontRawTokens.fontSize550)
    }

    func testFontRawTokensFontSize550LessThanFontSize650() throws {
        XCTAssertLessThan(FontRawTokens.fontSize550, FontRawTokens.fontSize650)
    }

    func testFontRawTokensFontSize650LessThanFontSize750() throws {
        XCTAssertLessThan(FontRawTokens.fontSize650, FontRawTokens.fontSize750)
    }

    func testFontRawTokensFontSize750LessThanFontSize850() throws {
        XCTAssertLessThan(FontRawTokens.fontSize750, FontRawTokens.fontSize850)
    }

    func testFontRawTokensFontSize850LessThanFontSize950() throws {
        XCTAssertLessThan(FontRawTokens.fontSize850, FontRawTokens.fontSize950)
    }

    func testFontRawTokensFontSize950LessThanFontSize1050() throws {
        XCTAssertLessThan(FontRawTokens.fontSize950, FontRawTokens.fontSize1050)
    }

    func testFontRawTokensFontSize1050LessThanFontSize1150() throws {
        XCTAssertLessThan(FontRawTokens.fontSize1050, FontRawTokens.fontSize1150)
    }

    func testFontRawTokensFontSize1150LessThanFontSize1250() throws {
        XCTAssertLessThan(FontRawTokens.fontSize1150, FontRawTokens.fontSize1250)
    }

    func testFontRawTokensFontSize1250LessThanFontSize1450() throws {
        XCTAssertLessThan(FontRawTokens.fontSize1250, FontRawTokens.fontSize1450)
    }

    func testFontRawTokensFontSize1450LessThanFontSize1850() throws {
        XCTAssertLessThan(FontRawTokens.fontSize1450, FontRawTokens.fontSize1850)
    }

    // MARK: - Primitive token - Typography - Line height

    func testFontRawTokensFontLineHeight250LessThanFontLineHeight350() throws {
        XCTAssertLessThan(FontRawTokens.fontLineHeight250, FontRawTokens.fontLineHeight350)
    }

    func testFontRawTokensFontLineHeight350LessThanFontLineHeight450() throws {
        XCTAssertLessThan(FontRawTokens.fontLineHeight350, FontRawTokens.fontLineHeight450)
    }

    func testFontRawTokensFontLineHeight450LessThanFontLineHeight550() throws {
        XCTAssertLessThan(FontRawTokens.fontLineHeight450, FontRawTokens.fontLineHeight550)
    }

    func testFontRawTokensFontLineHeight550LessThanFontLineHeight650() throws {
        XCTAssertLessThan(FontRawTokens.fontLineHeight550, FontRawTokens.fontLineHeight650)
    }

    func testFontRawTokensFontLineHeight650LessThanFontLineHeight750() throws {
        XCTAssertLessThan(FontRawTokens.fontLineHeight650, FontRawTokens.fontLineHeight750)
    }

    func testFontRawTokensFontLineHeight750LessThanFontLineHeight850() throws {
        XCTAssertLessThan(FontRawTokens.fontLineHeight750, FontRawTokens.fontLineHeight850)
    }

    func testFontRawTokensFontLineHeight850LessThanFontLineHeight950() throws {
        XCTAssertLessThan(FontRawTokens.fontLineHeight850, FontRawTokens.fontLineHeight950)
    }

    func testFontRawTokensFontLineHeight950LessThanFontLineHeight1050() throws {
        XCTAssertLessThan(FontRawTokens.fontLineHeight950, FontRawTokens.fontLineHeight1050)
    }

    func testFontRawTokensFontLineHeight1050LessThanFontLineHeight1150() throws {
        XCTAssertLessThan(FontRawTokens.fontLineHeight1050, FontRawTokens.fontLineHeight1150)
    }

    func testFontRawTokensFontLineHeight1150LessThanFontLineHeight1250() throws {
        XCTAssertLessThan(FontRawTokens.fontLineHeight1150, FontRawTokens.fontLineHeight1250)
    }

    func testFontRawTokensFontLineHeight1250LessThanFontLineHeight1350() throws {
        XCTAssertLessThan(FontRawTokens.fontLineHeight1250, FontRawTokens.fontLineHeight1350)
    }

    func testFontRawTokensFontLineHeight1350LessThanFontLineHeight1450() throws {
        XCTAssertLessThan(FontRawTokens.fontLineHeight1350, FontRawTokens.fontLineHeight1450)
    }

    func testFontRawTokensFontLineHeight1450LessThanFontLineHeight1850() throws {
        XCTAssertLessThan(FontRawTokens.fontLineHeight1450, FontRawTokens.fontLineHeight1850)
    }

    func testFontRawTokensFontLineHeight1850LessThanFontLineHeight2050() throws {
        XCTAssertLessThan(FontRawTokens.fontLineHeight1850, FontRawTokens.fontLineHeight2050)
    }

    // MARK: - Primitive token - Typography - Letter spacong

    func testFontRawTokensFontLetterSpacing150LessThanFontLetterSpacing175() throws {
        XCTAssertLessThan(FontRawTokens.fontLetterSpacing150, FontRawTokens.fontLetterSpacing175)
    }

    func testFontRawTokensFontLetterSpacing175LessThanFontLetterSpacing200() throws {
        XCTAssertLessThan(FontRawTokens.fontLetterSpacing175, FontRawTokens.fontLetterSpacing200)
    }

    func testFontRawTokensFontLetterSpacing200LessThanFontLetterSpacing250() throws {
        XCTAssertLessThan(FontRawTokens.fontLetterSpacing200, FontRawTokens.fontLetterSpacing250)
    }

    func testFontRawTokensFontLetterSpacing250LessThanFontLetterSpacing300() throws {
        XCTAssertLessThan(FontRawTokens.fontLetterSpacing250, FontRawTokens.fontLetterSpacing300)
    }

    func testFontRawTokensFontLetterSpacing300LessThanFontLetterSpacing350() throws {
        XCTAssertLessThan(FontRawTokens.fontLetterSpacing300, FontRawTokens.fontLetterSpacing350)
    }

    func testFontRawTokensFontLetterSpacing350LessThanFontLetterSpacing450() throws {
        XCTAssertLessThan(FontRawTokens.fontLetterSpacing350, FontRawTokens.fontLetterSpacing450)
    }

    func testFontRawTokensFontLetterSpacing450LessThanFontLetterSpacing550() throws {
        XCTAssertLessThan(FontRawTokens.fontLetterSpacing450, FontRawTokens.fontLetterSpacing550)
    }

    func testFontRawTokensFontLetterSpacing550LessThanFontLetterSpacing650() throws {
        XCTAssertLessThan(FontRawTokens.fontLetterSpacing550, FontRawTokens.fontLetterSpacing650)
    }

    func testFontRawTokensFontLetterSpacing650LessThanFontLetterSpacing750() throws {
        XCTAssertLessThan(FontRawTokens.fontLetterSpacing650, FontRawTokens.fontLetterSpacing750)
    }

    func testFontRawTokensFontLetterSpacing750LessThanFontLetterSpacing850() throws {
        XCTAssertLessThan(FontRawTokens.fontLetterSpacing750, FontRawTokens.fontLetterSpacing850)
    }

    func testFontRawTokensFontLetterSpacing850LessThanFontLetterSpacing950() throws {
        XCTAssertLessThan(FontRawTokens.fontLetterSpacing850, FontRawTokens.fontLetterSpacing950)
    }

    func testFontRawTokensFontLetterSpacing950LessThanFontLetterSpacing1050() throws {
        XCTAssertLessThan(FontRawTokens.fontLetterSpacing950, FontRawTokens.fontLetterSpacing1050)
    }

    func testFontRawTokensFontLetterSpacing1050LessThanFontLetterSpacing1150() throws {
        XCTAssertLessThan(FontRawTokens.fontLetterSpacing1050, FontRawTokens.fontLetterSpacing1150)
    }

    func testFontRawTokensFontLetterSpacing1150LessThanFontLetterSpacing1250() throws {
        XCTAssertLessThan(FontRawTokens.fontLetterSpacing1150, FontRawTokens.fontLetterSpacing1250)
    }

    func testFontRawTokensFontLetterSpacing1250LessThanFontLetterSpacing1450() throws {
        XCTAssertLessThan(FontRawTokens.fontLetterSpacing1250, FontRawTokens.fontLetterSpacing1450)
    }

    func testFontRawTokensFontLetterSpacing1450LessThanFontLetterSpacing1850() throws {
        XCTAssertLessThan(FontRawTokens.fontLetterSpacing1450, FontRawTokens.fontLetterSpacing1850)
    }

    // MARK: - Primitive token - Typography - Font family

    func testFontRawTokensFontFamiliesAreAllDifferent() throws {
        XCTAssertNotEqual(FontRawTokens.fontFamilyBrandDefault, FontRawTokens.fontFamilySystemArial)
        XCTAssertNotEqual(FontRawTokens.fontFamilySystemArial, FontRawTokens.fontFamilySystemHelvetica)
        XCTAssertNotEqual(FontRawTokens.fontFamilySystemHelvetica, FontRawTokens.fontFamilyMonospaceMenlo)
        XCTAssertNotEqual(FontRawTokens.fontFamilyMonospaceMenlo, FontRawTokens.fontFamilyMonospaceCourierNew)
    }

    // MARK: - Primitive token - Typography - Font weight

    func testFontRawTokensFontWeightsAreAllDifferent() throws {
        XCTAssertNotEqual(FontRawTokens.fontWeight100, FontRawTokens.fontWeight200)
        XCTAssertNotEqual(FontRawTokens.fontWeight100, FontRawTokens.fontWeight300)
        XCTAssertNotEqual(FontRawTokens.fontWeight100, FontRawTokens.fontWeight400)
        XCTAssertNotEqual(FontRawTokens.fontWeight100, FontRawTokens.fontWeight500)
        XCTAssertNotEqual(FontRawTokens.fontWeight100, FontRawTokens.fontWeight600)
        XCTAssertNotEqual(FontRawTokens.fontWeight100, FontRawTokens.fontWeight700)
        XCTAssertNotEqual(FontRawTokens.fontWeight100, FontRawTokens.fontWeight800)

        XCTAssertNotEqual(FontRawTokens.fontWeight200, FontRawTokens.fontWeight300)
        XCTAssertNotEqual(FontRawTokens.fontWeight200, FontRawTokens.fontWeight400)
        XCTAssertNotEqual(FontRawTokens.fontWeight200, FontRawTokens.fontWeight500)
        XCTAssertNotEqual(FontRawTokens.fontWeight200, FontRawTokens.fontWeight600)
        XCTAssertNotEqual(FontRawTokens.fontWeight200, FontRawTokens.fontWeight700)
        XCTAssertNotEqual(FontRawTokens.fontWeight200, FontRawTokens.fontWeight800)

        XCTAssertNotEqual(FontRawTokens.fontWeight300, FontRawTokens.fontWeight400)
        XCTAssertNotEqual(FontRawTokens.fontWeight300, FontRawTokens.fontWeight500)
        XCTAssertNotEqual(FontRawTokens.fontWeight300, FontRawTokens.fontWeight600)
        XCTAssertNotEqual(FontRawTokens.fontWeight300, FontRawTokens.fontWeight700)
        XCTAssertNotEqual(FontRawTokens.fontWeight300, FontRawTokens.fontWeight800)

        XCTAssertNotEqual(FontRawTokens.fontWeight400, FontRawTokens.fontWeight500)
        XCTAssertNotEqual(FontRawTokens.fontWeight400, FontRawTokens.fontWeight600)
        XCTAssertNotEqual(FontRawTokens.fontWeight400, FontRawTokens.fontWeight700)
        XCTAssertNotEqual(FontRawTokens.fontWeight400, FontRawTokens.fontWeight800)

        XCTAssertNotEqual(FontRawTokens.fontWeight500, FontRawTokens.fontWeight600)
        XCTAssertNotEqual(FontRawTokens.fontWeight500, FontRawTokens.fontWeight700)
        XCTAssertNotEqual(FontRawTokens.fontWeight500, FontRawTokens.fontWeight800)

        XCTAssertNotEqual(FontRawTokens.fontWeight600, FontRawTokens.fontWeight700)
        XCTAssertNotEqual(FontRawTokens.fontWeight600, FontRawTokens.fontWeight800)

        XCTAssertNotEqual(FontRawTokens.fontWeight700, FontRawTokens.fontWeight800)
    }

    // MARK: - Primitive token - Typography - Composite

    func testFontRawTokensTypeRegular150LessThanTypeRegular175() throws {
        XCTAssertTrue(FontRawTokens.typeRegular150 <| FontRawTokens.typeRegular175)
    }

    func testFontRawTokensTypeRegular175LessThanTypeRegular200() throws {
        XCTAssertTrue(FontRawTokens.typeRegular175 <| FontRawTokens.typeRegular200)
    }

    func testFontRawTokensTypeRegular200LessThanTypeRegular250() throws {
        XCTAssertTrue(FontRawTokens.typeRegular200 <| FontRawTokens.typeRegular250)
    }

    func testFontRawTokensTypeBold150LessThanTypeBold175() throws {
        XCTAssertTrue(FontRawTokens.typeBold150 <| FontRawTokens.typeBold175)
    }

    func testFontRawTokensTypeBold175LessThanTypeBold200() throws {
        XCTAssertTrue(FontRawTokens.typeBold175 <| FontRawTokens.typeBold200)
    }

    func testFontRawTokensTypeBold200LessThanTypeBold250() throws {
        XCTAssertTrue(FontRawTokens.typeBold200 <| FontRawTokens.typeBold250)
    }

    func testFontRawTokensTypeBold250LessThanTypeBold300() throws {
        XCTAssertTrue(FontRawTokens.typeBold250 <| FontRawTokens.typeBold300)
    }

    func testFontRawTokensTypeBold300LessThanTypeBold350() throws {
        XCTAssertTrue(FontRawTokens.typeBold300 <| FontRawTokens.typeBold350)
    }

    func testFontRawTokensTypeBold350LessThanTypeBold450() throws {
        XCTAssertTrue(FontRawTokens.typeBold350 <| FontRawTokens.typeBold450)
    }

    func testFontRawTokensTypeBold450LessThanTypeBold550() throws {
        XCTAssertTrue(FontRawTokens.typeBold450 <| FontRawTokens.typeBold550)
    }

    func testFontRawTokensTypeBold550LessThanTypeBold650() throws {
        XCTAssertTrue(FontRawTokens.typeBold550 <| FontRawTokens.typeBold650)
    }

    func testFontRawTokensTypeBold650LessThanTypeBold750() throws {
        XCTAssertTrue(FontRawTokens.typeBold650 <| FontRawTokens.typeBold750)
    }

    func testFontRawTokensTypeBold750LessThanTypeBold850() throws {
        XCTAssertTrue(FontRawTokens.typeBold750 <| FontRawTokens.typeBold850)
    }

    func testFontRawTokensTypeBold850LessThanTypeBold950() throws {
        XCTAssertTrue(FontRawTokens.typeBold850 <| FontRawTokens.typeBold950)
    }

    func testFontRawTokensTypeBold950LessThanTypeBold1050() throws {
        XCTAssertTrue(FontRawTokens.typeBold950 <| FontRawTokens.typeBold1050)
    }

    func testFontRawTokensTypeBold1050LessThanTypeBold1150() throws {
        XCTAssertTrue(FontRawTokens.typeBold1050 <| FontRawTokens.typeBold1150)
    }

    func testFontRawTokensTypeBold1150LessThanTypeBold1250() throws {
        XCTAssertTrue(FontRawTokens.typeBold1150 <| FontRawTokens.typeBold1250)
    }

    func testFontRawTokensTypeBold1250LessThanTypeBold1450() throws {
        XCTAssertTrue(FontRawTokens.typeBold1250 <| FontRawTokens.typeBold1450)
    }

    func testFontRawTokensTypeBold1450LessThanTypeBold1850() throws {
        XCTAssertTrue(FontRawTokens.typeBold1450 <| FontRawTokens.typeBold1850)
    }
}
// swiftlint:enable type_body_length
// swiftlint:enable required_deinit

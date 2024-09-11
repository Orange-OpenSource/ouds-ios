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

import XCTest
import OUDSTokensRaw

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

    func testTypographyRawTokenFontFamilySystemArial() throws {
        XCTAssertEqual(TypographyRawTokens.fontFamilySystemArial, "Arial")
    }

    func testTypographyRawTokenFontFamilySystemHelvetica() throws {
        XCTAssertEqual(TypographyRawTokens.fontFamilySystemHelvetica, "Helvetica")
    }

    func testTypographyRawTokenFontFamilyMonospaceMenlo() throws {
        XCTAssertEqual(TypographyRawTokens.fontFamilyMonospaceMenlo, "Menlo")
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

    // MARK: - Primitive token - Typography - Paragraph spacing

    func testTypographyRawTokensFontParagraphSpacing100LessThanFontParagraphSpacing200() throws {
        XCTAssertLessThan(TypographyRawTokens.fontParagraphSpacing100, TypographyRawTokens.fontParagraphSpacing200)
    }

    func testTypographyRawTokensFontParagraphSpacing200LessThanFontParagraphSpacing300() throws {
        XCTAssertLessThan(TypographyRawTokens.fontParagraphSpacing200, TypographyRawTokens.fontParagraphSpacing300)
    }

    func testTypographyRawTokensFontParagraphSpacing300LessThanFontParagraphSpacing400() throws {
        XCTAssertLessThan(TypographyRawTokens.fontParagraphSpacing300, TypographyRawTokens.fontParagraphSpacing400)
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
        XCTAssertNotEqual(TypographyRawTokens.fontWeight100, TypographyRawTokens.fontWeight900)

        XCTAssertNotEqual(TypographyRawTokens.fontWeight200, TypographyRawTokens.fontWeight300)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight200, TypographyRawTokens.fontWeight400)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight200, TypographyRawTokens.fontWeight500)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight200, TypographyRawTokens.fontWeight600)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight200, TypographyRawTokens.fontWeight700)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight200, TypographyRawTokens.fontWeight900)

        XCTAssertNotEqual(TypographyRawTokens.fontWeight300, TypographyRawTokens.fontWeight400)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight300, TypographyRawTokens.fontWeight500)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight300, TypographyRawTokens.fontWeight600)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight300, TypographyRawTokens.fontWeight700)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight300, TypographyRawTokens.fontWeight900)

        XCTAssertNotEqual(TypographyRawTokens.fontWeight400, TypographyRawTokens.fontWeight500)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight400, TypographyRawTokens.fontWeight600)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight400, TypographyRawTokens.fontWeight700)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight400, TypographyRawTokens.fontWeight900)

        XCTAssertNotEqual(TypographyRawTokens.fontWeight500, TypographyRawTokens.fontWeight600)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight500, TypographyRawTokens.fontWeight700)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight500, TypographyRawTokens.fontWeight900)

        XCTAssertNotEqual(TypographyRawTokens.fontWeight600, TypographyRawTokens.fontWeight700)
        XCTAssertNotEqual(TypographyRawTokens.fontWeight600, TypographyRawTokens.fontWeight900)

        XCTAssertNotEqual(TypographyRawTokens.fontWeight700, TypographyRawTokens.fontWeight900)
    }

    // MARK: - Primitive token - Typography - Composite

    func testTypographyRawTokensTypeRegular150LessThanTypeRegular175() throws {
        XCTAssertLessThan(TypographyRawTokens.typeRegular150.size, TypographyRawTokens.typeRegular175.size)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeRegular150.lineHeight, TypographyRawTokens.typeRegular175.lineHeight)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeRegular150.weight, TypographyRawTokens.typeRegular175.weight)
    }

    func testTypographyRawTokensTypeRegular175LessThanTypeRegular200() throws {
        XCTAssertLessThan(TypographyRawTokens.typeRegular175.size, TypographyRawTokens.typeRegular200.size)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeRegular175.lineHeight, TypographyRawTokens.typeRegular200.lineHeight)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeRegular175.weight, TypographyRawTokens.typeRegular200.weight)
    }

    func testTypographyRawTokensTypeRegular200LessThanTypeRegular250() throws {
        XCTAssertLessThan(TypographyRawTokens.typeRegular200.size, TypographyRawTokens.typeRegular250.size)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeRegular200.lineHeight, TypographyRawTokens.typeRegular250.lineHeight)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeRegular200.weight, TypographyRawTokens.typeRegular250.weight)
    }

    func testTypographyRawTokensTypeBold150LessThanTypeBold175() throws {
        XCTAssertLessThan(TypographyRawTokens.typeBold150.size, TypographyRawTokens.typeBold175.size)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold150.lineHeight, TypographyRawTokens.typeBold175.lineHeight)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold150.weight, TypographyRawTokens.typeBold175.weight)
    }

    func testTypographyRawTokensTypeBold175LessThanTypeBold200() throws {
        XCTAssertLessThan(TypographyRawTokens.typeBold175.size, TypographyRawTokens.typeBold200.size)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold175.lineHeight, TypographyRawTokens.typeBold200.lineHeight)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold175.weight, TypographyRawTokens.typeBold200.weight)
    }

    func testTypographyRawTokensTypeBold200LessThanTypeBold250() throws {
        XCTAssertLessThan(TypographyRawTokens.typeBold200.size, TypographyRawTokens.typeBold250.size)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold200.lineHeight, TypographyRawTokens.typeBold250.lineHeight)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold200.weight, TypographyRawTokens.typeBold250.weight)
    }

    func testTypographyRawTokensTypeBold250LessThanTypeBold300() throws {
        XCTAssertLessThan(TypographyRawTokens.typeBold250.size, TypographyRawTokens.typeBold300.size)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold250.lineHeight, TypographyRawTokens.typeBold300.lineHeight)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold250.weight, TypographyRawTokens.typeBold300.weight)
    }

    func testTypographyRawTokensTypeBold300LessThanTypeBold350() throws {
        XCTAssertLessThan(TypographyRawTokens.typeBold300.size, TypographyRawTokens.typeBold350.size)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold300.lineHeight, TypographyRawTokens.typeBold350.lineHeight)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold300.weight, TypographyRawTokens.typeBold350.weight)
    }

    func testTypographyRawTokensTypeBold350LessThanTypeBold450() throws {
        XCTAssertLessThan(TypographyRawTokens.typeBold350.size, TypographyRawTokens.typeBold450.size)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold350.lineHeight, TypographyRawTokens.typeBold450.lineHeight)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold350.weight, TypographyRawTokens.typeBold450.weight)
    }

    func testTypographyRawTokensTypeBold450LessThanTypeBold550() throws {
        XCTAssertLessThan(TypographyRawTokens.typeBold450.size, TypographyRawTokens.typeBold550.size)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold450.lineHeight, TypographyRawTokens.typeBold550.lineHeight)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold450.weight, TypographyRawTokens.typeBold550.weight)
    }

    func testTypographyRawTokensTypeBold550LessThanTypeBold650() throws {
        XCTAssertLessThan(TypographyRawTokens.typeBold550.size, TypographyRawTokens.typeBold650.size)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold550.lineHeight, TypographyRawTokens.typeBold650.lineHeight)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold550.weight, TypographyRawTokens.typeBold650.weight)
    }

    func testTypographyRawTokensTypeBold650LessThanTypeBold750() throws {
        XCTAssertLessThan(TypographyRawTokens.typeBold650.size, TypographyRawTokens.typeBold750.size)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold650.lineHeight, TypographyRawTokens.typeBold750.lineHeight)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold650.weight, TypographyRawTokens.typeBold750.weight)
    }

    func testTypographyRawTokensTypeBold750LessThanTypeBold850() throws {
        XCTAssertLessThan(TypographyRawTokens.typeBold750.size, TypographyRawTokens.typeBold850.size)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold750.lineHeight, TypographyRawTokens.typeBold850.lineHeight)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold750.weight, TypographyRawTokens.typeBold850.weight)
    }

    func testTypographyRawTokensTypeBold850LessThanTypeBold950() throws {
        XCTAssertLessThan(TypographyRawTokens.typeBold850.size, TypographyRawTokens.typeBold950.size)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold850.lineHeight, TypographyRawTokens.typeBold950.lineHeight)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold850.weight, TypographyRawTokens.typeBold950.weight)
    }

    func testTypographyRawTokensTypeBold950LessThanTypeBold1050() throws {
        XCTAssertLessThan(TypographyRawTokens.typeBold950.size, TypographyRawTokens.typeBold1050.size)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold950.lineHeight, TypographyRawTokens.typeBold1050.lineHeight)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold950.weight, TypographyRawTokens.typeBold1050.weight)
    }

    func testTypographyRawTokensTypeBold1050LessThanTypeBold1150() throws {
        XCTAssertLessThan(TypographyRawTokens.typeBold1050.size, TypographyRawTokens.typeBold1150.size)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold1050.lineHeight, TypographyRawTokens.typeBold1150.lineHeight)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold1050.weight, TypographyRawTokens.typeBold1150.weight)
    }

    func testTypographyRawTokensTypeBold1150LessThanTypeBold1250() throws {
        XCTAssertLessThan(TypographyRawTokens.typeBold1150.size, TypographyRawTokens.typeBold1250.size)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold1150.lineHeight, TypographyRawTokens.typeBold1250.lineHeight)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold1150.weight, TypographyRawTokens.typeBold1250.weight)
    }

    func testTypographyRawTokensTypeBold1250LessThanTypeBold1450() throws {
        XCTAssertLessThan(TypographyRawTokens.typeBold1250.size, TypographyRawTokens.typeBold1450.size)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold1250.lineHeight, TypographyRawTokens.typeBold1450.lineHeight)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold1250.weight, TypographyRawTokens.typeBold1450.weight)
    }

    func testTypographyRawTokensTypeBold1450LessThanTypeBold1850() throws {
        XCTAssertLessThan(TypographyRawTokens.typeBold1450.size, TypographyRawTokens.typeBold1850.size)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold1450.lineHeight, TypographyRawTokens.typeBold1850.lineHeight)
        XCTAssertLessThanOrEqual(TypographyRawTokens.typeBold1450.weight, TypographyRawTokens.typeBold1850.weight)
    }
}

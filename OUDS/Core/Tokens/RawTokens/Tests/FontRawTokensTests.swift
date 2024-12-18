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

// swiftlint:disable required_deinit
// swiftlint:disable type_body_length
// swiftlint:disable file_length
// swiftlint:disable function_body_length

/// The aim of this tests class is to look for regressions in **font raw tokens**.
///
/// Indeed, each generation of Swift code by the *tokenator* may break theses tests because there are new values.
/// In the semantics of **font raw tokens**, there will be some unchanged things like relationships between tokens.
/// Some of these tokens are also strongly based on their raw values (like font family names) and must be tested.
/// Some tokens must noe be nul, or must be factor of some values. Or grater or lower than others.
/// Tokens must be all different.
///
/// Here are some rules to follow:
/// - font family tokens values must be the expected ones
/// - font letter spacing should be between 0.5 and 1.5
/// - the higher the font line height token is, the higher the value is
/// - the higher the font size token is, the higher the value is
/// - the higher the font weight token is, the higher the value is
/// - font size must not be nul
/// - all font size tokens must be different
/// - font line height values are factor of 4
/// - font line height must not be nul
/// - all font line height tokens must be different
/// - font weight values are factor of 50
/// - font weight must not be nul
/// - all font weight tokens must be different
final class FontRawTokensTests: XCTestCase {

    /// By looking all the values, it appears all line height raw tokens are factor of 4
    private static let fontLineHeightBase: Double = 4

    /// By looking all the values, it appears all line height raw tokens are factor of 50
    private static let fontWeightBase: Int = 50

    /// Supposed minimal value for font letter spacing
    private static let fontLetterSpacingMinValue: Double = -1.5

    /// Supposed maximal value for font letter spacing
    private static let fontLetterSpacingMaxValue: Double = 0.5

    // MARK: - Primitive token - Typography - Font family

    func testFontRawTokenFontFamilyMonospaceMenlo() throws {
        XCTAssertEqual(FontRawTokens.fontFamilyMonospaceMenlo, "Menlo")
    }

    func testFontRawTokenFontFamilySystemSfPro() throws {
        XCTAssertEqual(FontRawTokens.fontFamilySystemSfPro, "SF Pro")
    }

    func testFontRawTokensFontFamilyAreAllDifferent() throws {
        XCTAssertNotEqual(FontRawTokens.fontFamilySystemSfPro, FontRawTokens.fontFamilyMonospaceMenlo)
    }

    // MARK: - Primitive token - Typography - Font size

    /*
     Ensure tokens will be never 0
     */

    func testFontRawTokensFontSize150NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontSize150, 0)
    }

    func testFontRawTokensFontSize175NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontSize175, 0)
    }

    func testFontRawTokensFontSize200NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontSize200, 0)
    }

    func testFontRawTokensFontSize250NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontSize250, 0)
    }

    func testFontRawTokensFontSize300NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontSize300, 0)
    }

    func testFontRawTokensFontSize350NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontSize350, 0)
    }

    func testFontRawTokensFontSize450NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontSize450, 0)
    }

    func testFontRawTokensFontSize550NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontSize550, 0)
    }

    func testFontRawTokensFontSize650NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontSize650, 0)
    }

    func testFontRawTokensFontSize750NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontSize750, 0)
    }

    func testFontRawTokensFontSize850NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontSize850, 0)
    }

    func testFontRawTokensFontSize1050NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontSize1050, 0)
    }

    func testFontRawTokensFontSize1150NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontSize1150, 0)
    }

    func testFontRawTokensFontSize1250NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontSize1250, 0)
    }

    func testFontRawTokensFontSize1450NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontSize1450, 0)
    }

    func testFontRawTokensFontSize1850NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontSize1850, 0)
    }

    /*
     Comparisons between tokens one by one
     */

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

    /*
     Check there is no duplicate
     */

    func testFontRawTokensFontSizesAreAllDifferent() throws {
        XCTAssertNotEqual(FontRawTokens.fontSize150, FontRawTokens.fontSize175)
        XCTAssertNotEqual(FontRawTokens.fontSize150, FontRawTokens.fontSize200)
        XCTAssertNotEqual(FontRawTokens.fontSize150, FontRawTokens.fontSize250)
        XCTAssertNotEqual(FontRawTokens.fontSize150, FontRawTokens.fontSize300)
        XCTAssertNotEqual(FontRawTokens.fontSize150, FontRawTokens.fontSize350)
        XCTAssertNotEqual(FontRawTokens.fontSize150, FontRawTokens.fontSize450)
        XCTAssertNotEqual(FontRawTokens.fontSize150, FontRawTokens.fontSize550)
        XCTAssertNotEqual(FontRawTokens.fontSize150, FontRawTokens.fontSize650)
        XCTAssertNotEqual(FontRawTokens.fontSize150, FontRawTokens.fontSize750)
        XCTAssertNotEqual(FontRawTokens.fontSize150, FontRawTokens.fontSize850)
        XCTAssertNotEqual(FontRawTokens.fontSize150, FontRawTokens.fontSize950)
        XCTAssertNotEqual(FontRawTokens.fontSize150, FontRawTokens.fontSize1050)
        XCTAssertNotEqual(FontRawTokens.fontSize150, FontRawTokens.fontSize1150)
        XCTAssertNotEqual(FontRawTokens.fontSize150, FontRawTokens.fontSize1250)
        XCTAssertNotEqual(FontRawTokens.fontSize150, FontRawTokens.fontSize1450)
        XCTAssertNotEqual(FontRawTokens.fontSize150, FontRawTokens.fontSize1850)

        XCTAssertNotEqual(FontRawTokens.fontSize175, FontRawTokens.fontSize200)
        XCTAssertNotEqual(FontRawTokens.fontSize175, FontRawTokens.fontSize250)
        XCTAssertNotEqual(FontRawTokens.fontSize175, FontRawTokens.fontSize300)
        XCTAssertNotEqual(FontRawTokens.fontSize175, FontRawTokens.fontSize350)
        XCTAssertNotEqual(FontRawTokens.fontSize175, FontRawTokens.fontSize450)
        XCTAssertNotEqual(FontRawTokens.fontSize175, FontRawTokens.fontSize550)
        XCTAssertNotEqual(FontRawTokens.fontSize175, FontRawTokens.fontSize650)
        XCTAssertNotEqual(FontRawTokens.fontSize175, FontRawTokens.fontSize750)
        XCTAssertNotEqual(FontRawTokens.fontSize175, FontRawTokens.fontSize850)
        XCTAssertNotEqual(FontRawTokens.fontSize175, FontRawTokens.fontSize950)
        XCTAssertNotEqual(FontRawTokens.fontSize175, FontRawTokens.fontSize1050)
        XCTAssertNotEqual(FontRawTokens.fontSize175, FontRawTokens.fontSize1150)
        XCTAssertNotEqual(FontRawTokens.fontSize175, FontRawTokens.fontSize1250)
        XCTAssertNotEqual(FontRawTokens.fontSize175, FontRawTokens.fontSize1450)
        XCTAssertNotEqual(FontRawTokens.fontSize175, FontRawTokens.fontSize1850)

        XCTAssertNotEqual(FontRawTokens.fontSize200, FontRawTokens.fontSize250)
        XCTAssertNotEqual(FontRawTokens.fontSize200, FontRawTokens.fontSize300)
        XCTAssertNotEqual(FontRawTokens.fontSize200, FontRawTokens.fontSize350)
        XCTAssertNotEqual(FontRawTokens.fontSize200, FontRawTokens.fontSize450)
        XCTAssertNotEqual(FontRawTokens.fontSize200, FontRawTokens.fontSize550)
        XCTAssertNotEqual(FontRawTokens.fontSize200, FontRawTokens.fontSize650)
        XCTAssertNotEqual(FontRawTokens.fontSize200, FontRawTokens.fontSize750)
        XCTAssertNotEqual(FontRawTokens.fontSize200, FontRawTokens.fontSize850)
        XCTAssertNotEqual(FontRawTokens.fontSize200, FontRawTokens.fontSize950)
        XCTAssertNotEqual(FontRawTokens.fontSize200, FontRawTokens.fontSize1050)
        XCTAssertNotEqual(FontRawTokens.fontSize200, FontRawTokens.fontSize1150)
        XCTAssertNotEqual(FontRawTokens.fontSize200, FontRawTokens.fontSize1250)
        XCTAssertNotEqual(FontRawTokens.fontSize200, FontRawTokens.fontSize1450)
        XCTAssertNotEqual(FontRawTokens.fontSize200, FontRawTokens.fontSize1850)

        XCTAssertNotEqual(FontRawTokens.fontSize250, FontRawTokens.fontSize300)
        XCTAssertNotEqual(FontRawTokens.fontSize250, FontRawTokens.fontSize350)
        XCTAssertNotEqual(FontRawTokens.fontSize250, FontRawTokens.fontSize450)
        XCTAssertNotEqual(FontRawTokens.fontSize250, FontRawTokens.fontSize550)
        XCTAssertNotEqual(FontRawTokens.fontSize250, FontRawTokens.fontSize650)
        XCTAssertNotEqual(FontRawTokens.fontSize250, FontRawTokens.fontSize750)
        XCTAssertNotEqual(FontRawTokens.fontSize250, FontRawTokens.fontSize850)
        XCTAssertNotEqual(FontRawTokens.fontSize250, FontRawTokens.fontSize950)
        XCTAssertNotEqual(FontRawTokens.fontSize250, FontRawTokens.fontSize1050)
        XCTAssertNotEqual(FontRawTokens.fontSize250, FontRawTokens.fontSize1150)
        XCTAssertNotEqual(FontRawTokens.fontSize250, FontRawTokens.fontSize1250)
        XCTAssertNotEqual(FontRawTokens.fontSize250, FontRawTokens.fontSize1450)
        XCTAssertNotEqual(FontRawTokens.fontSize250, FontRawTokens.fontSize1850)

        XCTAssertNotEqual(FontRawTokens.fontSize300, FontRawTokens.fontSize350)
        XCTAssertNotEqual(FontRawTokens.fontSize300, FontRawTokens.fontSize450)
        XCTAssertNotEqual(FontRawTokens.fontSize300, FontRawTokens.fontSize550)
        XCTAssertNotEqual(FontRawTokens.fontSize300, FontRawTokens.fontSize650)
        XCTAssertNotEqual(FontRawTokens.fontSize300, FontRawTokens.fontSize750)
        XCTAssertNotEqual(FontRawTokens.fontSize300, FontRawTokens.fontSize850)
        XCTAssertNotEqual(FontRawTokens.fontSize300, FontRawTokens.fontSize950)
        XCTAssertNotEqual(FontRawTokens.fontSize300, FontRawTokens.fontSize1050)
        XCTAssertNotEqual(FontRawTokens.fontSize300, FontRawTokens.fontSize1150)
        XCTAssertNotEqual(FontRawTokens.fontSize300, FontRawTokens.fontSize1250)
        XCTAssertNotEqual(FontRawTokens.fontSize300, FontRawTokens.fontSize1450)
        XCTAssertNotEqual(FontRawTokens.fontSize300, FontRawTokens.fontSize1850)

        XCTAssertNotEqual(FontRawTokens.fontSize350, FontRawTokens.fontSize450)
        XCTAssertNotEqual(FontRawTokens.fontSize350, FontRawTokens.fontSize550)
        XCTAssertNotEqual(FontRawTokens.fontSize350, FontRawTokens.fontSize650)
        XCTAssertNotEqual(FontRawTokens.fontSize350, FontRawTokens.fontSize750)
        XCTAssertNotEqual(FontRawTokens.fontSize350, FontRawTokens.fontSize850)
        XCTAssertNotEqual(FontRawTokens.fontSize350, FontRawTokens.fontSize950)
        XCTAssertNotEqual(FontRawTokens.fontSize350, FontRawTokens.fontSize1050)
        XCTAssertNotEqual(FontRawTokens.fontSize350, FontRawTokens.fontSize1150)
        XCTAssertNotEqual(FontRawTokens.fontSize350, FontRawTokens.fontSize1250)
        XCTAssertNotEqual(FontRawTokens.fontSize350, FontRawTokens.fontSize1450)
        XCTAssertNotEqual(FontRawTokens.fontSize350, FontRawTokens.fontSize1850)

        XCTAssertNotEqual(FontRawTokens.fontSize450, FontRawTokens.fontSize550)
        XCTAssertNotEqual(FontRawTokens.fontSize450, FontRawTokens.fontSize650)
        XCTAssertNotEqual(FontRawTokens.fontSize450, FontRawTokens.fontSize750)
        XCTAssertNotEqual(FontRawTokens.fontSize450, FontRawTokens.fontSize850)
        XCTAssertNotEqual(FontRawTokens.fontSize450, FontRawTokens.fontSize950)
        XCTAssertNotEqual(FontRawTokens.fontSize450, FontRawTokens.fontSize1050)
        XCTAssertNotEqual(FontRawTokens.fontSize450, FontRawTokens.fontSize1150)
        XCTAssertNotEqual(FontRawTokens.fontSize450, FontRawTokens.fontSize1250)
        XCTAssertNotEqual(FontRawTokens.fontSize450, FontRawTokens.fontSize1450)
        XCTAssertNotEqual(FontRawTokens.fontSize450, FontRawTokens.fontSize1850)

        XCTAssertNotEqual(FontRawTokens.fontSize550, FontRawTokens.fontSize650)
        XCTAssertNotEqual(FontRawTokens.fontSize550, FontRawTokens.fontSize750)
        XCTAssertNotEqual(FontRawTokens.fontSize550, FontRawTokens.fontSize850)
        XCTAssertNotEqual(FontRawTokens.fontSize550, FontRawTokens.fontSize950)
        XCTAssertNotEqual(FontRawTokens.fontSize550, FontRawTokens.fontSize1050)
        XCTAssertNotEqual(FontRawTokens.fontSize550, FontRawTokens.fontSize1150)
        XCTAssertNotEqual(FontRawTokens.fontSize550, FontRawTokens.fontSize1250)
        XCTAssertNotEqual(FontRawTokens.fontSize550, FontRawTokens.fontSize1450)
        XCTAssertNotEqual(FontRawTokens.fontSize550, FontRawTokens.fontSize1850)

        XCTAssertNotEqual(FontRawTokens.fontSize650, FontRawTokens.fontSize750)
        XCTAssertNotEqual(FontRawTokens.fontSize650, FontRawTokens.fontSize850)
        XCTAssertNotEqual(FontRawTokens.fontSize650, FontRawTokens.fontSize950)
        XCTAssertNotEqual(FontRawTokens.fontSize650, FontRawTokens.fontSize1050)
        XCTAssertNotEqual(FontRawTokens.fontSize650, FontRawTokens.fontSize1150)
        XCTAssertNotEqual(FontRawTokens.fontSize650, FontRawTokens.fontSize1250)
        XCTAssertNotEqual(FontRawTokens.fontSize650, FontRawTokens.fontSize1450)
        XCTAssertNotEqual(FontRawTokens.fontSize650, FontRawTokens.fontSize1850)

        XCTAssertNotEqual(FontRawTokens.fontSize750, FontRawTokens.fontSize850)
        XCTAssertNotEqual(FontRawTokens.fontSize750, FontRawTokens.fontSize950)
        XCTAssertNotEqual(FontRawTokens.fontSize750, FontRawTokens.fontSize1050)
        XCTAssertNotEqual(FontRawTokens.fontSize750, FontRawTokens.fontSize1150)
        XCTAssertNotEqual(FontRawTokens.fontSize750, FontRawTokens.fontSize1250)
        XCTAssertNotEqual(FontRawTokens.fontSize750, FontRawTokens.fontSize1450)
        XCTAssertNotEqual(FontRawTokens.fontSize750, FontRawTokens.fontSize1850)

        XCTAssertNotEqual(FontRawTokens.fontSize850, FontRawTokens.fontSize950)
        XCTAssertNotEqual(FontRawTokens.fontSize850, FontRawTokens.fontSize1050)
        XCTAssertNotEqual(FontRawTokens.fontSize850, FontRawTokens.fontSize1150)
        XCTAssertNotEqual(FontRawTokens.fontSize850, FontRawTokens.fontSize1250)
        XCTAssertNotEqual(FontRawTokens.fontSize850, FontRawTokens.fontSize1450)
        XCTAssertNotEqual(FontRawTokens.fontSize850, FontRawTokens.fontSize1850)

        XCTAssertNotEqual(FontRawTokens.fontSize950, FontRawTokens.fontSize1050)
        XCTAssertNotEqual(FontRawTokens.fontSize950, FontRawTokens.fontSize1150)
        XCTAssertNotEqual(FontRawTokens.fontSize950, FontRawTokens.fontSize1250)
        XCTAssertNotEqual(FontRawTokens.fontSize950, FontRawTokens.fontSize1450)
        XCTAssertNotEqual(FontRawTokens.fontSize950, FontRawTokens.fontSize1850)

        XCTAssertNotEqual(FontRawTokens.fontSize1150, FontRawTokens.fontSize1250)
        XCTAssertNotEqual(FontRawTokens.fontSize1150, FontRawTokens.fontSize1450)
        XCTAssertNotEqual(FontRawTokens.fontSize1150, FontRawTokens.fontSize1850)

        XCTAssertNotEqual(FontRawTokens.fontSize1250, FontRawTokens.fontSize1450)
        XCTAssertNotEqual(FontRawTokens.fontSize1250, FontRawTokens.fontSize1850)

        XCTAssertNotEqual(FontRawTokens.fontSize1450, FontRawTokens.fontSize1850)
    }

    // MARK: - Primitive token - Typography - Line height

    /*
     Ensure tokens will be never 0
     */

    func testFontRawTokensFontLineHeight250NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLineHeight250, 0)
    }

    func testFontRawTokensFontLineHeight350NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLineHeight350, 0)
    }

    func testFontRawTokensFontLineHeight450NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLineHeight450, 0)
    }

    func testFontRawTokensFontLineHeight550NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLineHeight550, 0)
    }

    func testFontRawTokensFontLineHeight650NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLineHeight650, 0)
    }

    func testFontRawTokensFontLineHeight750NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLineHeight750, 0)
    }

    func testFontRawTokensFontLineHeight850NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLineHeight850, 0)
    }

    func testFontRawTokensFontLineHeight950NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLineHeight950, 0)
    }

    func testFontRawTokensFontLineHeight1050NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLineHeight1050, 0)
    }

    func testFontRawTokensFontLineHeight1150NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLineHeight1150, 0)
    }

    func testFontRawTokensFontLineHeight1250NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLineHeight1250, 0)
    }

    func testFontRawTokensFontLineHeight1350NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLineHeight1350, 0)
    }

    func testFontRawTokensFontLineHeight1450NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLineHeight1450, 0)
    }

    func testFontRawTokensFontLineHeight1850NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLineHeight1850, 0)
    }

    func testFontRawTokensFontLineHeight2050NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLineHeight2050, 0)
    }

    /*
     Comparisons one by one
     */

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

    /*
     Check if factors are the same
     */

    func testFontRawTokenLineHeight250MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontLineHeight250, factor: Self.fontLineHeightBase)
    }

    func testFontRawTokenLineHeight350MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontLineHeight350, factor: Self.fontLineHeightBase)
    }

    func testFontRawTokenLineHeight450MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontLineHeight450, factor: Self.fontLineHeightBase)
    }

    func testFontRawTokenLineHeight550MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontLineHeight550, factor: Self.fontLineHeightBase)
    }

    func testFontRawTokenLineHeight650MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontLineHeight650, factor: Self.fontLineHeightBase)
    }

    func testFontRawTokenLineHeight750MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontLineHeight750, factor: Self.fontLineHeightBase)
    }

    func testFontRawTokenLineHeight850MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontLineHeight850, factor: Self.fontLineHeightBase)
    }

    func testFontRawTokenFontLineHeight950MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontLineHeight950, factor: Self.fontLineHeightBase)
    }

    func testFontRawTokenFontLineHeight1050MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontLineHeight1050, factor: Self.fontLineHeightBase)
    }

    func testFontRawTokenFontLineHeight1150MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontLineHeight1150, factor: Self.fontLineHeightBase)
    }

    func testFontRawTokenFontLineHeight1250MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontLineHeight1250, factor: Self.fontLineHeightBase)
    }

    func testFontRawTokenFontLineHeight1350MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontLineHeight1350, factor: Self.fontLineHeightBase)
    }

    func testFontRawTokenFontLineHeight1450MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontLineHeight1450, factor: Self.fontLineHeightBase)
    }

    func testFontRawTokenFontLineHeight1850MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontLineHeight1850, factor: Self.fontLineHeightBase)
    }

    func testFontRawTokenFontLineHeight2050MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontLineHeight2050, factor: Self.fontLineHeightBase)
    }

    /*
     Check there is no duplicate
     */

    func testFontRawTokensFontLineHeightAreAllDifferent() throws {
        XCTAssertNotEqual(FontRawTokens.fontLineHeight250, FontRawTokens.fontLineHeight350)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight250, FontRawTokens.fontLineHeight450)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight250, FontRawTokens.fontLineHeight550)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight250, FontRawTokens.fontLineHeight650)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight250, FontRawTokens.fontLineHeight750)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight250, FontRawTokens.fontLineHeight850)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight250, FontRawTokens.fontLineHeight950)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight250, FontRawTokens.fontLineHeight1050)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight250, FontRawTokens.fontLineHeight1150)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight250, FontRawTokens.fontLineHeight1250)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight250, FontRawTokens.fontLineHeight1350)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight250, FontRawTokens.fontLineHeight1450)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight250, FontRawTokens.fontLineHeight1850)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight250, FontRawTokens.fontLineHeight2050)

        XCTAssertNotEqual(FontRawTokens.fontLineHeight350, FontRawTokens.fontLineHeight450)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight350, FontRawTokens.fontLineHeight550)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight350, FontRawTokens.fontLineHeight650)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight350, FontRawTokens.fontLineHeight750)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight350, FontRawTokens.fontLineHeight850)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight350, FontRawTokens.fontLineHeight950)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight350, FontRawTokens.fontLineHeight1050)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight350, FontRawTokens.fontLineHeight1150)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight350, FontRawTokens.fontLineHeight1250)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight350, FontRawTokens.fontLineHeight1350)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight350, FontRawTokens.fontLineHeight1450)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight350, FontRawTokens.fontLineHeight1850)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight350, FontRawTokens.fontLineHeight2050)

        XCTAssertNotEqual(FontRawTokens.fontLineHeight450, FontRawTokens.fontLineHeight550)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight450, FontRawTokens.fontLineHeight650)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight450, FontRawTokens.fontLineHeight750)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight450, FontRawTokens.fontLineHeight850)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight450, FontRawTokens.fontLineHeight950)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight450, FontRawTokens.fontLineHeight1050)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight450, FontRawTokens.fontLineHeight1150)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight450, FontRawTokens.fontLineHeight1250)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight450, FontRawTokens.fontLineHeight1350)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight450, FontRawTokens.fontLineHeight1450)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight450, FontRawTokens.fontLineHeight1850)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight450, FontRawTokens.fontLineHeight2050)

        XCTAssertNotEqual(FontRawTokens.fontLineHeight550, FontRawTokens.fontLineHeight650)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight550, FontRawTokens.fontLineHeight750)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight550, FontRawTokens.fontLineHeight850)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight550, FontRawTokens.fontLineHeight950)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight550, FontRawTokens.fontLineHeight1050)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight550, FontRawTokens.fontLineHeight1150)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight550, FontRawTokens.fontLineHeight1250)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight550, FontRawTokens.fontLineHeight1350)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight550, FontRawTokens.fontLineHeight1450)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight550, FontRawTokens.fontLineHeight1850)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight550, FontRawTokens.fontLineHeight2050)

        XCTAssertNotEqual(FontRawTokens.fontLineHeight650, FontRawTokens.fontLineHeight750)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight650, FontRawTokens.fontLineHeight850)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight650, FontRawTokens.fontLineHeight950)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight650, FontRawTokens.fontLineHeight1050)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight650, FontRawTokens.fontLineHeight1150)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight650, FontRawTokens.fontLineHeight1250)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight650, FontRawTokens.fontLineHeight1350)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight650, FontRawTokens.fontLineHeight1450)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight650, FontRawTokens.fontLineHeight1850)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight650, FontRawTokens.fontLineHeight2050)

        XCTAssertNotEqual(FontRawTokens.fontLineHeight750, FontRawTokens.fontLineHeight850)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight750, FontRawTokens.fontLineHeight950)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight750, FontRawTokens.fontLineHeight1050)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight750, FontRawTokens.fontLineHeight1150)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight750, FontRawTokens.fontLineHeight1250)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight750, FontRawTokens.fontLineHeight1350)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight750, FontRawTokens.fontLineHeight1450)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight750, FontRawTokens.fontLineHeight1850)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight750, FontRawTokens.fontLineHeight2050)

        XCTAssertNotEqual(FontRawTokens.fontLineHeight850, FontRawTokens.fontLineHeight950)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight850, FontRawTokens.fontLineHeight1050)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight850, FontRawTokens.fontLineHeight1150)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight850, FontRawTokens.fontLineHeight1250)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight850, FontRawTokens.fontLineHeight1350)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight850, FontRawTokens.fontLineHeight1450)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight850, FontRawTokens.fontLineHeight1850)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight850, FontRawTokens.fontLineHeight2050)

        XCTAssertNotEqual(FontRawTokens.fontLineHeight950, FontRawTokens.fontLineHeight1050)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight950, FontRawTokens.fontLineHeight1150)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight950, FontRawTokens.fontLineHeight1250)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight950, FontRawTokens.fontLineHeight1350)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight950, FontRawTokens.fontLineHeight1450)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight950, FontRawTokens.fontLineHeight1850)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight950, FontRawTokens.fontLineHeight2050)

        XCTAssertNotEqual(FontRawTokens.fontLineHeight1050, FontRawTokens.fontLineHeight1150)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight1050, FontRawTokens.fontLineHeight1250)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight1050, FontRawTokens.fontLineHeight1350)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight1050, FontRawTokens.fontLineHeight1450)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight1050, FontRawTokens.fontLineHeight1850)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight1050, FontRawTokens.fontLineHeight2050)

        XCTAssertNotEqual(FontRawTokens.fontLineHeight1150, FontRawTokens.fontLineHeight1250)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight1150, FontRawTokens.fontLineHeight1350)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight1150, FontRawTokens.fontLineHeight1450)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight1150, FontRawTokens.fontLineHeight1850)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight1150, FontRawTokens.fontLineHeight2050)

        XCTAssertNotEqual(FontRawTokens.fontLineHeight1250, FontRawTokens.fontLineHeight1350)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight1250, FontRawTokens.fontLineHeight1450)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight1250, FontRawTokens.fontLineHeight1850)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight1250, FontRawTokens.fontLineHeight2050)

        XCTAssertNotEqual(FontRawTokens.fontLineHeight1350, FontRawTokens.fontLineHeight1450)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight1350, FontRawTokens.fontLineHeight1850)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight1350, FontRawTokens.fontLineHeight2050)

        XCTAssertNotEqual(FontRawTokens.fontLineHeight1450, FontRawTokens.fontLineHeight1850)
        XCTAssertNotEqual(FontRawTokens.fontLineHeight1450, FontRawTokens.fontLineHeight2050)

        XCTAssertNotEqual(FontRawTokens.fontLineHeight1850, FontRawTokens.fontLineHeight2050)
    }

    // MARK: - Primitive token - Typography - Letter spacing

    /*
     fontLetterSpacing150 = fontSize150 * Figma fontLetterSpacing600
     fontLetterSpacing175 = fontSize175 * Figma fontLetterSpacing600
     These tokens are both based on factor fontLetterSpacing600, so they can be compared
     */

    func testFontRawTokensFontLetterSpacing150LessThanFontLetterSpacing175() throws {
        XCTAssertLessThan(FontRawTokens.fontLetterSpacing150, FontRawTokens.fontLetterSpacing175)
    }

    /*
     fontLetterSpacing200 = fontSize200 * Figma fontLetterSpacing500
     fontLetterSpacing250 = fontSize250 * Figma fontLetterSpacing500
     These tokens are both based on factor fontLetterSpacing500, so they can be compared
     */

    func testFontRawTokensFontLetterSpacing200LessThanFontLetterSpacing250() throws {
        XCTAssertLessThan(FontRawTokens.fontLetterSpacing200, FontRawTokens.fontLetterSpacing250)
    }

    /*
     fontLetterSpacing350 has a 0 value
     The bigger fontLetterSpacing* tokens are, the lower their values will be (negative).
     */

    func testFontRawTokensFontLetterSpacing350GreaterThanFontLetterSpacing450() throws {
        XCTAssertGreaterThan(FontRawTokens.fontLetterSpacing350, FontRawTokens.fontLetterSpacing450)
    }

    func testFontRawTokensFontLetterSpacing450GreaterThanFontLetterSpacing550() throws {
        XCTAssertGreaterThan(FontRawTokens.fontLetterSpacing450, FontRawTokens.fontLetterSpacing550)
    }

    func testFontRawTokensFontLetterSpacing550GreaterThanFontLetterSpacing650() throws {
        XCTAssertGreaterThan(FontRawTokens.fontLetterSpacing550, FontRawTokens.fontLetterSpacing650)
    }

    func testFontRawTokensFontLetterSpacing650GreaterThanFontLetterSpacing750() throws {
        XCTAssertGreaterThan(FontRawTokens.fontLetterSpacing650, FontRawTokens.fontLetterSpacing750)
    }

    func testFontRawTokensFontLetterSpacing750GreaterThanFontLetterSpacing850() throws {
        XCTAssertGreaterThan(FontRawTokens.fontLetterSpacing750, FontRawTokens.fontLetterSpacing850)
    }

    func testFontRawTokensFontLetterSpacing850GreaterThanFontLetterSpacing950() throws {
        XCTAssertGreaterThan(FontRawTokens.fontLetterSpacing850, FontRawTokens.fontLetterSpacing950)
    }

    func testFontRawTokensFontLetterSpacing950GreaterThanFontLetterSpacing1050() throws {
        XCTAssertGreaterThan(FontRawTokens.fontLetterSpacing950, FontRawTokens.fontLetterSpacing1050)
    }

    func testFontRawTokensFontLetterSpacing1050GreaterThanFontLetterSpacing1150() throws {
        XCTAssertGreaterThan(FontRawTokens.fontLetterSpacing1050, FontRawTokens.fontLetterSpacing1150)
    }

    func testFontRawTokensFontLetterSpacing1150GreaterThanFontLetterSpacing1250() throws {
        XCTAssertGreaterThan(FontRawTokens.fontLetterSpacing1150, FontRawTokens.fontLetterSpacing1250)
    }

    func testFontRawTokensFontLetterSpacing1250GreaterThanFontLetterSpacing1450() throws {
        XCTAssertGreaterThan(FontRawTokens.fontLetterSpacing1250, FontRawTokens.fontLetterSpacing1450)
    }

    func testFontRawTokensFontLetterSpacing1450GreaterThanFontLetterSpacing1850() throws {
        XCTAssertGreaterThan(FontRawTokens.fontLetterSpacing1450, FontRawTokens.fontLetterSpacing1850)
    }

    func testFontRawTokensFontLetterSpacingAreInSuitableRange() {
        XCTAssertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing150, max: Self.fontLetterSpacingMaxValue)
        XCTAssertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing175, max: Self.fontLetterSpacingMaxValue)
        XCTAssertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing200, max: Self.fontLetterSpacingMaxValue)
        XCTAssertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing250, max: Self.fontLetterSpacingMaxValue)
        XCTAssertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing300, max: Self.fontLetterSpacingMaxValue)
        XCTAssertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing350, max: Self.fontLetterSpacingMaxValue)
        XCTAssertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing450, max: Self.fontLetterSpacingMaxValue)
        XCTAssertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing550, max: Self.fontLetterSpacingMaxValue)
        XCTAssertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing650, max: Self.fontLetterSpacingMaxValue)
        XCTAssertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing750, max: Self.fontLetterSpacingMaxValue)
        XCTAssertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing850, max: Self.fontLetterSpacingMaxValue)
        XCTAssertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing950, max: Self.fontLetterSpacingMaxValue)
        XCTAssertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing1050, max: Self.fontLetterSpacingMaxValue)
        XCTAssertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing1150, max: Self.fontLetterSpacingMaxValue)
        XCTAssertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing1250, max: Self.fontLetterSpacingMaxValue)
        XCTAssertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing1450, max: Self.fontLetterSpacingMaxValue)
        XCTAssertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing1850, max: Self.fontLetterSpacingMaxValue)
    }

    /*
     Ensure tokens will never be 0 (except fontLetterSpacing350)
     */

    func testFontRawTokensFontLetterSpacing150NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLetterSpacing150, 0)
    }

    func testFontRawTokensFontLetterSpacing175NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLetterSpacing175, 0)
    }

    func testFontRawTokensFontLetterSpacing200NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLetterSpacing200, 0)
    }

    func testFontRawTokensFontLetterSpacing250NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLetterSpacing250, 0)
    }

    func testFontRawTokensFontLetterSpacing300NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLetterSpacing300, 0)
    }

    func testFontRawTokensFontLetterSpacing350IsNull() throws {
        XCTAssertEqual(FontRawTokens.fontLetterSpacing350, 0)
    }

    func testFontRawTokensFontLetterSpacing450NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLetterSpacing450, 0)
    }

    func testFontRawTokensFontLetterSpacing550NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLetterSpacing550, 0)
    }

    func testFontRawTokensFontLetterSpacing650NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLetterSpacing650, 0)
    }

    func testFontRawTokensFontLetterSpacing750NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLetterSpacing750, 0)
    }

    func testFontRawTokensFontLetterSpacing850NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLetterSpacing850, 0)
    }

    func testFontRawTokensFontLetterSpacing950NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLetterSpacing950, 0)
    }

    func testFontRawTokensFontLetterSpacing1050NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLetterSpacing1050, 0)
    }

    func testFontRawTokensFontLetterSpacing1150NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLetterSpacing1150, 0)
    }

    func testFontRawTokensFontLetterSpacing1250NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLetterSpacing1250, 0)
    }

    func testFontRawTokensFontLetterSpacing1450NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLetterSpacing1450, 0)
    }

    func testFontRawTokensFontLetterSpacing1850NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontLetterSpacing1850, 0)
    }

    /*
     Not test to ensure all font letter spacing tokens are different because
     theire values are computed in Figma side using fontSize and leter spacing not
     exposed here
     */

    // MARK: - Primitive token - Typography - Font weight

    /*
     Ensure no font weight is 0
     */

    func testFontRawTokensFontWeight100NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontWeight100, 0)
    }

    func testFontRawTokensFontWeight200NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontWeight200, 0)
    }

    func testFontRawTokensFontWeight300NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontWeight300, 0)
    }

    func testFontRawTokensFontWeight400NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontWeight400, 0)
    }

    func testFontRawTokensFontWeight500NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontWeight500, 0)
    }

    func testFontRawTokensFontWeight600NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontWeight600, 0)
    }

    func testFontRawTokensFontWeight700NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontWeight700, 0)
    }

    func testFontRawTokensFontWeight800NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontWeight800, 0)
    }

    func testFontRawTokensFontWeight900NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontWeight900, 0)
    }

    func testFontRawTokensFontWeight950NotNull() throws {
        XCTAssertNotEqual(FontRawTokens.fontWeight950, 0)
    }

    /*
     Check if factors are the same
     */

    func testFontRawTokenFontWeight100MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontWeight100, factor: Self.fontWeightBase)
    }

    func testFontRawTokenFontWeight200MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontWeight200, factor: Self.fontWeightBase)
    }

    func testFontRawTokenFontWeight300MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontWeight300, factor: Self.fontWeightBase)
    }

    func testFontRawTokenFontWeight400MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontWeight400, factor: Self.fontWeightBase)
    }

    func testFontRawTokenFontWeight500MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontWeight500, factor: Self.fontWeightBase)
    }

    func testFontRawTokenFontWeight600MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontWeight600, factor: Self.fontWeightBase)
    }

    func testFontRawTokenFontWeight700MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontWeight700, factor: Self.fontWeightBase)
    }

    func testFontRawTokenFontWeight800MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontWeight800, factor: Self.fontWeightBase)
    }

    func testFontRawTokenFontWeight900MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontWeight900, factor: Self.fontWeightBase)
    }

    func testFontRawTokenFontWeight950MultipleOfBase() throws {
        XCTAssertMultipleOf(FontRawTokens.fontWeight950, factor: Self.fontWeightBase)
    }

    /*
     Comparisons between tokens one by one
     */

    func testFontRawTokensWeight100LessThanFontWeight200() throws {
        XCTAssertLessThan(FontRawTokens.fontWeight100, FontRawTokens.fontWeight200)
    }

    func testFontRawTokensWeight200LessThanFontWeight300() throws {
        XCTAssertLessThan(FontRawTokens.fontWeight200, FontRawTokens.fontWeight300)
    }

    func testFontRawTokensWeight300LessThanFontWeight400() throws {
        XCTAssertLessThan(FontRawTokens.fontWeight300, FontRawTokens.fontWeight400)
    }

    func testFontRawTokensWeight400LessThanFontWeight500() throws {
        XCTAssertLessThan(FontRawTokens.fontWeight400, FontRawTokens.fontWeight500)
    }

    func testFontRawTokensWeight500LessThanFontWeight600() throws {
        XCTAssertLessThan(FontRawTokens.fontWeight500, FontRawTokens.fontWeight600)
    }

    func testFontRawTokensWeight600LessThanFontWeight700() throws {
        XCTAssertLessThan(FontRawTokens.fontWeight600, FontRawTokens.fontWeight700)
    }

    func testFontRawTokensWeight700LessThanFontWeight800() throws {
        XCTAssertLessThan(FontRawTokens.fontWeight700, FontRawTokens.fontWeight800)
    }

    func testFontRawTokensWeight800LessThanFontWeight900() throws {
        XCTAssertLessThan(FontRawTokens.fontWeight800, FontRawTokens.fontWeight900)
    }

    func testFontRawTokensWeight900LessThanFontWeight950() throws {
        XCTAssertLessThan(FontRawTokens.fontWeight900, FontRawTokens.fontWeight950)
    }

    /*
     Ensure all tokens are different
     */

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

    /*
     Ensure all tokens are different
     */

    func testFontRawTokensCompositesAreAllDifferent() throws {
        XCTAssertNotEqual(FontRawTokens.typeRegular150, FontRawTokens.typeRegular175)
        XCTAssertNotEqual(FontRawTokens.typeRegular150, FontRawTokens.typeRegular200)
        XCTAssertNotEqual(FontRawTokens.typeRegular150, FontRawTokens.typeRegular250)
        XCTAssertNotEqual(FontRawTokens.typeRegular150, FontRawTokens.typeBold150)
        XCTAssertNotEqual(FontRawTokens.typeRegular150, FontRawTokens.typeBold175)
        XCTAssertNotEqual(FontRawTokens.typeRegular150, FontRawTokens.typeBold200)
        XCTAssertNotEqual(FontRawTokens.typeRegular150, FontRawTokens.typeBold250)
        XCTAssertNotEqual(FontRawTokens.typeRegular150, FontRawTokens.typeBold300)
        XCTAssertNotEqual(FontRawTokens.typeRegular150, FontRawTokens.typeBold350)
        XCTAssertNotEqual(FontRawTokens.typeRegular150, FontRawTokens.typeBold450)
        XCTAssertNotEqual(FontRawTokens.typeRegular150, FontRawTokens.typeBold550)
        XCTAssertNotEqual(FontRawTokens.typeRegular150, FontRawTokens.typeBold650)
        XCTAssertNotEqual(FontRawTokens.typeRegular150, FontRawTokens.typeBold750)
        XCTAssertNotEqual(FontRawTokens.typeRegular150, FontRawTokens.typeBold850)
        XCTAssertNotEqual(FontRawTokens.typeRegular150, FontRawTokens.typeBold950)
        XCTAssertNotEqual(FontRawTokens.typeRegular150, FontRawTokens.typeBold1050)
        XCTAssertNotEqual(FontRawTokens.typeRegular150, FontRawTokens.typeBold1150)
        XCTAssertNotEqual(FontRawTokens.typeRegular150, FontRawTokens.typeBold1250)
        XCTAssertNotEqual(FontRawTokens.typeRegular150, FontRawTokens.typeBold1450)
        XCTAssertNotEqual(FontRawTokens.typeRegular150, FontRawTokens.typeBold1850)

        XCTAssertNotEqual(FontRawTokens.typeRegular175, FontRawTokens.typeRegular200)
        XCTAssertNotEqual(FontRawTokens.typeRegular175, FontRawTokens.typeRegular250)
        XCTAssertNotEqual(FontRawTokens.typeRegular175, FontRawTokens.typeBold150)
        XCTAssertNotEqual(FontRawTokens.typeRegular175, FontRawTokens.typeBold175)
        XCTAssertNotEqual(FontRawTokens.typeRegular175, FontRawTokens.typeBold200)
        XCTAssertNotEqual(FontRawTokens.typeRegular175, FontRawTokens.typeBold250)
        XCTAssertNotEqual(FontRawTokens.typeRegular175, FontRawTokens.typeBold300)
        XCTAssertNotEqual(FontRawTokens.typeRegular175, FontRawTokens.typeBold350)
        XCTAssertNotEqual(FontRawTokens.typeRegular175, FontRawTokens.typeBold450)
        XCTAssertNotEqual(FontRawTokens.typeRegular175, FontRawTokens.typeBold550)
        XCTAssertNotEqual(FontRawTokens.typeRegular175, FontRawTokens.typeBold650)
        XCTAssertNotEqual(FontRawTokens.typeRegular175, FontRawTokens.typeBold750)
        XCTAssertNotEqual(FontRawTokens.typeRegular175, FontRawTokens.typeBold850)
        XCTAssertNotEqual(FontRawTokens.typeRegular175, FontRawTokens.typeBold950)
        XCTAssertNotEqual(FontRawTokens.typeRegular175, FontRawTokens.typeBold1050)
        XCTAssertNotEqual(FontRawTokens.typeRegular175, FontRawTokens.typeBold1150)
        XCTAssertNotEqual(FontRawTokens.typeRegular175, FontRawTokens.typeBold1250)
        XCTAssertNotEqual(FontRawTokens.typeRegular175, FontRawTokens.typeBold1450)
        XCTAssertNotEqual(FontRawTokens.typeRegular175, FontRawTokens.typeBold1850)

        XCTAssertNotEqual(FontRawTokens.typeRegular200, FontRawTokens.typeRegular250)
        XCTAssertNotEqual(FontRawTokens.typeRegular200, FontRawTokens.typeBold150)
        XCTAssertNotEqual(FontRawTokens.typeRegular200, FontRawTokens.typeBold175)
        XCTAssertNotEqual(FontRawTokens.typeRegular200, FontRawTokens.typeBold200)
        XCTAssertNotEqual(FontRawTokens.typeRegular200, FontRawTokens.typeBold250)
        XCTAssertNotEqual(FontRawTokens.typeRegular200, FontRawTokens.typeBold300)
        XCTAssertNotEqual(FontRawTokens.typeRegular200, FontRawTokens.typeBold350)
        XCTAssertNotEqual(FontRawTokens.typeRegular200, FontRawTokens.typeBold450)
        XCTAssertNotEqual(FontRawTokens.typeRegular200, FontRawTokens.typeBold550)
        XCTAssertNotEqual(FontRawTokens.typeRegular200, FontRawTokens.typeBold650)
        XCTAssertNotEqual(FontRawTokens.typeRegular200, FontRawTokens.typeBold750)
        XCTAssertNotEqual(FontRawTokens.typeRegular200, FontRawTokens.typeBold850)
        XCTAssertNotEqual(FontRawTokens.typeRegular200, FontRawTokens.typeBold950)
        XCTAssertNotEqual(FontRawTokens.typeRegular200, FontRawTokens.typeBold1050)
        XCTAssertNotEqual(FontRawTokens.typeRegular200, FontRawTokens.typeBold1150)
        XCTAssertNotEqual(FontRawTokens.typeRegular200, FontRawTokens.typeBold1250)
        XCTAssertNotEqual(FontRawTokens.typeRegular200, FontRawTokens.typeBold1450)
        XCTAssertNotEqual(FontRawTokens.typeRegular200, FontRawTokens.typeBold1850)

        XCTAssertNotEqual(FontRawTokens.typeRegular250, FontRawTokens.typeBold150)
        XCTAssertNotEqual(FontRawTokens.typeRegular250, FontRawTokens.typeBold175)
        XCTAssertNotEqual(FontRawTokens.typeRegular250, FontRawTokens.typeBold200)
        XCTAssertNotEqual(FontRawTokens.typeRegular250, FontRawTokens.typeBold250)
        XCTAssertNotEqual(FontRawTokens.typeRegular250, FontRawTokens.typeBold300)
        XCTAssertNotEqual(FontRawTokens.typeRegular250, FontRawTokens.typeBold350)
        XCTAssertNotEqual(FontRawTokens.typeRegular250, FontRawTokens.typeBold450)
        XCTAssertNotEqual(FontRawTokens.typeRegular250, FontRawTokens.typeBold550)
        XCTAssertNotEqual(FontRawTokens.typeRegular250, FontRawTokens.typeBold650)
        XCTAssertNotEqual(FontRawTokens.typeRegular250, FontRawTokens.typeBold750)
        XCTAssertNotEqual(FontRawTokens.typeRegular250, FontRawTokens.typeBold850)
        XCTAssertNotEqual(FontRawTokens.typeRegular250, FontRawTokens.typeBold950)
        XCTAssertNotEqual(FontRawTokens.typeRegular250, FontRawTokens.typeBold1050)
        XCTAssertNotEqual(FontRawTokens.typeRegular250, FontRawTokens.typeBold1150)
        XCTAssertNotEqual(FontRawTokens.typeRegular250, FontRawTokens.typeBold1250)
        XCTAssertNotEqual(FontRawTokens.typeRegular250, FontRawTokens.typeBold1450)
        XCTAssertNotEqual(FontRawTokens.typeRegular250, FontRawTokens.typeBold1850)

        XCTAssertNotEqual(FontRawTokens.typeBold150, FontRawTokens.typeBold175)
        XCTAssertNotEqual(FontRawTokens.typeBold150, FontRawTokens.typeBold200)
        XCTAssertNotEqual(FontRawTokens.typeBold150, FontRawTokens.typeBold250)
        XCTAssertNotEqual(FontRawTokens.typeBold150, FontRawTokens.typeBold300)
        XCTAssertNotEqual(FontRawTokens.typeBold150, FontRawTokens.typeBold350)
        XCTAssertNotEqual(FontRawTokens.typeBold150, FontRawTokens.typeBold450)
        XCTAssertNotEqual(FontRawTokens.typeBold150, FontRawTokens.typeBold550)
        XCTAssertNotEqual(FontRawTokens.typeBold150, FontRawTokens.typeBold650)
        XCTAssertNotEqual(FontRawTokens.typeBold150, FontRawTokens.typeBold750)
        XCTAssertNotEqual(FontRawTokens.typeBold150, FontRawTokens.typeBold850)
        XCTAssertNotEqual(FontRawTokens.typeBold150, FontRawTokens.typeBold950)
        XCTAssertNotEqual(FontRawTokens.typeBold150, FontRawTokens.typeBold1050)
        XCTAssertNotEqual(FontRawTokens.typeBold150, FontRawTokens.typeBold1150)
        XCTAssertNotEqual(FontRawTokens.typeBold150, FontRawTokens.typeBold1250)
        XCTAssertNotEqual(FontRawTokens.typeBold150, FontRawTokens.typeBold1450)
        XCTAssertNotEqual(FontRawTokens.typeBold150, FontRawTokens.typeBold1850)

        XCTAssertNotEqual(FontRawTokens.typeBold175, FontRawTokens.typeBold200)
        XCTAssertNotEqual(FontRawTokens.typeBold175, FontRawTokens.typeBold250)
        XCTAssertNotEqual(FontRawTokens.typeBold175, FontRawTokens.typeBold300)
        XCTAssertNotEqual(FontRawTokens.typeBold175, FontRawTokens.typeBold350)
        XCTAssertNotEqual(FontRawTokens.typeBold175, FontRawTokens.typeBold450)
        XCTAssertNotEqual(FontRawTokens.typeBold175, FontRawTokens.typeBold550)
        XCTAssertNotEqual(FontRawTokens.typeBold175, FontRawTokens.typeBold650)
        XCTAssertNotEqual(FontRawTokens.typeBold175, FontRawTokens.typeBold750)
        XCTAssertNotEqual(FontRawTokens.typeBold175, FontRawTokens.typeBold850)
        XCTAssertNotEqual(FontRawTokens.typeBold175, FontRawTokens.typeBold950)
        XCTAssertNotEqual(FontRawTokens.typeBold175, FontRawTokens.typeBold1050)
        XCTAssertNotEqual(FontRawTokens.typeBold175, FontRawTokens.typeBold1150)
        XCTAssertNotEqual(FontRawTokens.typeBold175, FontRawTokens.typeBold1250)
        XCTAssertNotEqual(FontRawTokens.typeBold175, FontRawTokens.typeBold1450)
        XCTAssertNotEqual(FontRawTokens.typeBold175, FontRawTokens.typeBold1850)

        XCTAssertNotEqual(FontRawTokens.typeBold200, FontRawTokens.typeBold250)
        XCTAssertNotEqual(FontRawTokens.typeBold200, FontRawTokens.typeBold300)
        XCTAssertNotEqual(FontRawTokens.typeBold200, FontRawTokens.typeBold350)
        XCTAssertNotEqual(FontRawTokens.typeBold200, FontRawTokens.typeBold450)
        XCTAssertNotEqual(FontRawTokens.typeBold200, FontRawTokens.typeBold550)
        XCTAssertNotEqual(FontRawTokens.typeBold200, FontRawTokens.typeBold650)
        XCTAssertNotEqual(FontRawTokens.typeBold200, FontRawTokens.typeBold750)
        XCTAssertNotEqual(FontRawTokens.typeBold200, FontRawTokens.typeBold850)
        XCTAssertNotEqual(FontRawTokens.typeBold200, FontRawTokens.typeBold950)
        XCTAssertNotEqual(FontRawTokens.typeBold200, FontRawTokens.typeBold1050)
        XCTAssertNotEqual(FontRawTokens.typeBold200, FontRawTokens.typeBold1150)
        XCTAssertNotEqual(FontRawTokens.typeBold200, FontRawTokens.typeBold1250)
        XCTAssertNotEqual(FontRawTokens.typeBold200, FontRawTokens.typeBold1450)
        XCTAssertNotEqual(FontRawTokens.typeBold200, FontRawTokens.typeBold1850)

        XCTAssertNotEqual(FontRawTokens.typeBold250, FontRawTokens.typeBold300)
        XCTAssertNotEqual(FontRawTokens.typeBold250, FontRawTokens.typeBold350)
        XCTAssertNotEqual(FontRawTokens.typeBold250, FontRawTokens.typeBold450)
        XCTAssertNotEqual(FontRawTokens.typeBold250, FontRawTokens.typeBold550)
        XCTAssertNotEqual(FontRawTokens.typeBold250, FontRawTokens.typeBold650)
        XCTAssertNotEqual(FontRawTokens.typeBold250, FontRawTokens.typeBold750)
        XCTAssertNotEqual(FontRawTokens.typeBold250, FontRawTokens.typeBold850)
        XCTAssertNotEqual(FontRawTokens.typeBold250, FontRawTokens.typeBold950)
        XCTAssertNotEqual(FontRawTokens.typeBold250, FontRawTokens.typeBold1050)
        XCTAssertNotEqual(FontRawTokens.typeBold250, FontRawTokens.typeBold1150)
        XCTAssertNotEqual(FontRawTokens.typeBold250, FontRawTokens.typeBold1250)
        XCTAssertNotEqual(FontRawTokens.typeBold250, FontRawTokens.typeBold1450)
        XCTAssertNotEqual(FontRawTokens.typeBold250, FontRawTokens.typeBold1850)

        XCTAssertNotEqual(FontRawTokens.typeBold300, FontRawTokens.typeBold350)
        XCTAssertNotEqual(FontRawTokens.typeBold300, FontRawTokens.typeBold450)
        XCTAssertNotEqual(FontRawTokens.typeBold300, FontRawTokens.typeBold550)
        XCTAssertNotEqual(FontRawTokens.typeBold300, FontRawTokens.typeBold650)
        XCTAssertNotEqual(FontRawTokens.typeBold300, FontRawTokens.typeBold750)
        XCTAssertNotEqual(FontRawTokens.typeBold300, FontRawTokens.typeBold850)
        XCTAssertNotEqual(FontRawTokens.typeBold300, FontRawTokens.typeBold950)
        XCTAssertNotEqual(FontRawTokens.typeBold300, FontRawTokens.typeBold1050)
        XCTAssertNotEqual(FontRawTokens.typeBold300, FontRawTokens.typeBold1150)
        XCTAssertNotEqual(FontRawTokens.typeBold300, FontRawTokens.typeBold1250)
        XCTAssertNotEqual(FontRawTokens.typeBold300, FontRawTokens.typeBold1450)
        XCTAssertNotEqual(FontRawTokens.typeBold300, FontRawTokens.typeBold1850)

        XCTAssertNotEqual(FontRawTokens.typeBold350, FontRawTokens.typeBold450)
        XCTAssertNotEqual(FontRawTokens.typeBold350, FontRawTokens.typeBold550)
        XCTAssertNotEqual(FontRawTokens.typeBold350, FontRawTokens.typeBold650)
        XCTAssertNotEqual(FontRawTokens.typeBold350, FontRawTokens.typeBold750)
        XCTAssertNotEqual(FontRawTokens.typeBold350, FontRawTokens.typeBold850)
        XCTAssertNotEqual(FontRawTokens.typeBold350, FontRawTokens.typeBold950)
        XCTAssertNotEqual(FontRawTokens.typeBold350, FontRawTokens.typeBold1050)
        XCTAssertNotEqual(FontRawTokens.typeBold350, FontRawTokens.typeBold1150)
        XCTAssertNotEqual(FontRawTokens.typeBold350, FontRawTokens.typeBold1250)
        XCTAssertNotEqual(FontRawTokens.typeBold350, FontRawTokens.typeBold1450)
        XCTAssertNotEqual(FontRawTokens.typeBold350, FontRawTokens.typeBold1850)

        XCTAssertNotEqual(FontRawTokens.typeBold450, FontRawTokens.typeBold550)
        XCTAssertNotEqual(FontRawTokens.typeBold450, FontRawTokens.typeBold650)
        XCTAssertNotEqual(FontRawTokens.typeBold450, FontRawTokens.typeBold750)
        XCTAssertNotEqual(FontRawTokens.typeBold450, FontRawTokens.typeBold850)
        XCTAssertNotEqual(FontRawTokens.typeBold450, FontRawTokens.typeBold950)
        XCTAssertNotEqual(FontRawTokens.typeBold450, FontRawTokens.typeBold1050)
        XCTAssertNotEqual(FontRawTokens.typeBold450, FontRawTokens.typeBold1150)
        XCTAssertNotEqual(FontRawTokens.typeBold450, FontRawTokens.typeBold1250)
        XCTAssertNotEqual(FontRawTokens.typeBold450, FontRawTokens.typeBold1450)
        XCTAssertNotEqual(FontRawTokens.typeBold450, FontRawTokens.typeBold1850)

        XCTAssertNotEqual(FontRawTokens.typeBold550, FontRawTokens.typeBold650)
        XCTAssertNotEqual(FontRawTokens.typeBold550, FontRawTokens.typeBold750)
        XCTAssertNotEqual(FontRawTokens.typeBold550, FontRawTokens.typeBold850)
        XCTAssertNotEqual(FontRawTokens.typeBold550, FontRawTokens.typeBold950)
        XCTAssertNotEqual(FontRawTokens.typeBold550, FontRawTokens.typeBold1050)
        XCTAssertNotEqual(FontRawTokens.typeBold550, FontRawTokens.typeBold1150)
        XCTAssertNotEqual(FontRawTokens.typeBold550, FontRawTokens.typeBold1250)
        XCTAssertNotEqual(FontRawTokens.typeBold550, FontRawTokens.typeBold1450)
        XCTAssertNotEqual(FontRawTokens.typeBold550, FontRawTokens.typeBold1850)

        XCTAssertNotEqual(FontRawTokens.typeBold650, FontRawTokens.typeBold750)
        XCTAssertNotEqual(FontRawTokens.typeBold650, FontRawTokens.typeBold850)
        XCTAssertNotEqual(FontRawTokens.typeBold650, FontRawTokens.typeBold950)
        XCTAssertNotEqual(FontRawTokens.typeBold650, FontRawTokens.typeBold1050)
        XCTAssertNotEqual(FontRawTokens.typeBold650, FontRawTokens.typeBold1150)
        XCTAssertNotEqual(FontRawTokens.typeBold650, FontRawTokens.typeBold1250)
        XCTAssertNotEqual(FontRawTokens.typeBold650, FontRawTokens.typeBold1450)
        XCTAssertNotEqual(FontRawTokens.typeBold650, FontRawTokens.typeBold1850)

        XCTAssertNotEqual(FontRawTokens.typeBold750, FontRawTokens.typeBold850)
        XCTAssertNotEqual(FontRawTokens.typeBold750, FontRawTokens.typeBold950)
        XCTAssertNotEqual(FontRawTokens.typeBold750, FontRawTokens.typeBold1050)
        XCTAssertNotEqual(FontRawTokens.typeBold750, FontRawTokens.typeBold1150)
        XCTAssertNotEqual(FontRawTokens.typeBold750, FontRawTokens.typeBold1250)
        XCTAssertNotEqual(FontRawTokens.typeBold750, FontRawTokens.typeBold1450)
        XCTAssertNotEqual(FontRawTokens.typeBold750, FontRawTokens.typeBold1850)

        XCTAssertNotEqual(FontRawTokens.typeBold850, FontRawTokens.typeBold950)
        XCTAssertNotEqual(FontRawTokens.typeBold850, FontRawTokens.typeBold1050)
        XCTAssertNotEqual(FontRawTokens.typeBold850, FontRawTokens.typeBold1150)
        XCTAssertNotEqual(FontRawTokens.typeBold850, FontRawTokens.typeBold1250)
        XCTAssertNotEqual(FontRawTokens.typeBold850, FontRawTokens.typeBold1450)
        XCTAssertNotEqual(FontRawTokens.typeBold850, FontRawTokens.typeBold1850)

        XCTAssertNotEqual(FontRawTokens.typeBold950, FontRawTokens.typeBold1050)
        XCTAssertNotEqual(FontRawTokens.typeBold950, FontRawTokens.typeBold1150)
        XCTAssertNotEqual(FontRawTokens.typeBold950, FontRawTokens.typeBold1250)
        XCTAssertNotEqual(FontRawTokens.typeBold950, FontRawTokens.typeBold1450)
        XCTAssertNotEqual(FontRawTokens.typeBold950, FontRawTokens.typeBold1850)

        XCTAssertNotEqual(FontRawTokens.typeBold1050, FontRawTokens.typeBold1150)
        XCTAssertNotEqual(FontRawTokens.typeBold1050, FontRawTokens.typeBold1250)
        XCTAssertNotEqual(FontRawTokens.typeBold1050, FontRawTokens.typeBold1450)
        XCTAssertNotEqual(FontRawTokens.typeBold1050, FontRawTokens.typeBold1850)

        XCTAssertNotEqual(FontRawTokens.typeBold1150, FontRawTokens.typeBold1250)
        XCTAssertNotEqual(FontRawTokens.typeBold1150, FontRawTokens.typeBold1450)
        XCTAssertNotEqual(FontRawTokens.typeBold1150, FontRawTokens.typeBold1850)

        XCTAssertNotEqual(FontRawTokens.typeBold1250, FontRawTokens.typeBold1450)
        XCTAssertNotEqual(FontRawTokens.typeBold1250, FontRawTokens.typeBold1850)

        XCTAssertNotEqual(FontRawTokens.typeBold1450, FontRawTokens.typeBold1850)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_body_length
// swiftlint:enable function_body_length

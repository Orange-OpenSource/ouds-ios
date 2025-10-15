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
import Testing
import TestsUtils

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
struct FontRawTokensTests {

    /// By looking all the values, it appears all line height raw tokens are factor of 4
    private static let fontLineHeightBase: Double = 4

    /// By looking all the values, it appears all line height raw tokens are factor of 50
    private static let fontWeightBase: Int = 50

    /// Supposed minimal value for font letter spacing
    private static let fontLetterSpacingMinValue: Double = -1.5

    /// Supposed maximal value for font letter spacing
    private static let fontLetterSpacingMaxValue: Double = 0.5

    // MARK: - Primitive token - Typography - Font family

    @Test
    func fontRawTokenFontFamilyMonospaceMenlo() throws {
        #expect(FontRawTokens.fontFamilyMonospaceMenlo == "Menlo")
    }

    @Test
    func fontRawTokenFontFamilySystemSfMono() throws {
        #expect(FontRawTokens.fontFamilyMonospaceSfMono == "SF Mono")
    }

    @Test
    func fontRawTokenFontFamilySystemSfPro() throws {
        #expect(FontRawTokens.fontFamilySystemSfPro == "SF Pro")
    }

    @Test
    func fontRawTokensFontFamilyAreAllDifferent() throws {
        #expect(FontRawTokens.fontFamilySystemSfPro != FontRawTokens.fontFamilyMonospaceMenlo)
    }

    // MARK: - Primitive token - Typography - Font size

    /*
     Ensure tokens will be never 0
     */

    @Test
    func fontRawTokensFontSize150NotNull() throws {
        #expect(FontRawTokens.fontSize150 != 0)
    }

    @Test
    func fontRawTokensFontSize175NotNull() throws {
        #expect(FontRawTokens.fontSize175 != 0)
    }

    @Test
    func fontRawTokensFontSize200NotNull() throws {
        #expect(FontRawTokens.fontSize200 != 0)
    }

    @Test
    func fontRawTokensFontSize250NotNull() throws {
        #expect(FontRawTokens.fontSize250 != 0)
    }

    @Test
    func fontRawTokensFontSize300NotNull() throws {
        #expect(FontRawTokens.fontSize300 != 0)
    }

    @Test
    func fontRawTokensFontSize350NotNull() throws {
        #expect(FontRawTokens.fontSize350 != 0)
    }

    @Test
    func fontRawTokensFontSize450NotNull() throws {
        #expect(FontRawTokens.fontSize450 != 0)
    }

    @Test
    func fontRawTokensFontSize550NotNull() throws {
        #expect(FontRawTokens.fontSize550 != 0)
    }

    @Test
    func fontRawTokensFontSize650NotNull() throws {
        #expect(FontRawTokens.fontSize650 != 0)
    }

    @Test
    func fontRawTokensFontSize750NotNull() throws {
        #expect(FontRawTokens.fontSize750 != 0)
    }

    @Test
    func fontRawTokensFontSize850NotNull() throws {
        #expect(FontRawTokens.fontSize850 != 0)
    }

    @Test
    func fontRawTokensFontSize1050NotNull() throws {
        #expect(FontRawTokens.fontSize1050 != 0)
    }

    @Test
    func fontRawTokensFontSize1150NotNull() throws {
        #expect(FontRawTokens.fontSize1150 != 0)
    }

    @Test
    func fontRawTokensFontSize1250NotNull() throws {
        #expect(FontRawTokens.fontSize1250 != 0)
    }

    @Test
    func fontRawTokensFontSize1450NotNull() throws {
        #expect(FontRawTokens.fontSize1450 != 0)
    }

    @Test
    func fontRawTokensFontSize1850NotNull() throws {
        #expect(FontRawTokens.fontSize1850 != 0)
    }

    /*
     Comparisons between tokens one by one
     */

    @Test
    func fontRawTokensFontSize150LessThanFontSize175() throws {
        #expect(FontRawTokens.fontSize150 < FontRawTokens.fontSize175)
    }

    @Test
    func fontRawTokensFontSize175LessThanFontSize200() throws {
        #expect(FontRawTokens.fontSize175 < FontRawTokens.fontSize200)
    }

    @Test
    func fontRawTokensFontSize200LessThanFontSize250() throws {
        #expect(FontRawTokens.fontSize200 < FontRawTokens.fontSize250)
    }

    @Test
    func fontRawTokensFontSize250LessThanFontSize300() throws {
        #expect(FontRawTokens.fontSize250 < FontRawTokens.fontSize300)
    }

    @Test
    func fontRawTokensFontSize300LessThanFontSize350() throws {
        #expect(FontRawTokens.fontSize300 < FontRawTokens.fontSize350)
    }

    @Test
    func fontRawTokensFontSize350LessThanFontSize450() throws {
        #expect(FontRawTokens.fontSize350 < FontRawTokens.fontSize450)
    }

    @Test
    func fontRawTokensFontSize450LessThanFontSize550() throws {
        #expect(FontRawTokens.fontSize450 < FontRawTokens.fontSize550)
    }

    @Test
    func fontRawTokensFontSize550LessThanFontSize650() throws {
        #expect(FontRawTokens.fontSize550 < FontRawTokens.fontSize650)
    }

    @Test
    func fontRawTokensFontSize650LessThanFontSize750() throws {
        #expect(FontRawTokens.fontSize650 < FontRawTokens.fontSize750)
    }

    @Test
    func fontRawTokensFontSize750LessThanFontSize850() throws {
        #expect(FontRawTokens.fontSize750 < FontRawTokens.fontSize850)
    }

    @Test
    func fontRawTokensFontSize850LessThanFontSize950() throws {
        #expect(FontRawTokens.fontSize850 < FontRawTokens.fontSize950)
    }

    @Test
    func fontRawTokensFontSize950LessThanFontSize1050() throws {
        #expect(FontRawTokens.fontSize950 < FontRawTokens.fontSize1050)
    }

    @Test
    func fontRawTokensFontSize1050LessThanFontSize1150() throws {
        #expect(FontRawTokens.fontSize1050 < FontRawTokens.fontSize1150)
    }

    @Test
    func fontRawTokensFontSize1150LessThanFontSize1250() throws {
        #expect(FontRawTokens.fontSize1150 < FontRawTokens.fontSize1250)
    }

    @Test
    func fontRawTokensFontSize1250LessThanFontSize1450() throws {
        #expect(FontRawTokens.fontSize1250 < FontRawTokens.fontSize1450)
    }

    @Test
    func fontRawTokensFontSize1450LessThanFontSize1850() throws {
        #expect(FontRawTokens.fontSize1450 < FontRawTokens.fontSize1850)
    }

    /*
     Check there is no duplicate
     */

    @Test
    func fontRawTokensFontSizesAreAllDifferent() throws {
        #expect(FontRawTokens.fontSize150 != FontRawTokens.fontSize175)
        #expect(FontRawTokens.fontSize150 != FontRawTokens.fontSize200)
        #expect(FontRawTokens.fontSize150 != FontRawTokens.fontSize250)
        #expect(FontRawTokens.fontSize150 != FontRawTokens.fontSize300)
        #expect(FontRawTokens.fontSize150 != FontRawTokens.fontSize350)
        #expect(FontRawTokens.fontSize150 != FontRawTokens.fontSize450)
        #expect(FontRawTokens.fontSize150 != FontRawTokens.fontSize550)
        #expect(FontRawTokens.fontSize150 != FontRawTokens.fontSize650)
        #expect(FontRawTokens.fontSize150 != FontRawTokens.fontSize750)
        #expect(FontRawTokens.fontSize150 != FontRawTokens.fontSize850)
        #expect(FontRawTokens.fontSize150 != FontRawTokens.fontSize950)
        #expect(FontRawTokens.fontSize150 != FontRawTokens.fontSize1050)
        #expect(FontRawTokens.fontSize150 != FontRawTokens.fontSize1150)
        #expect(FontRawTokens.fontSize150 != FontRawTokens.fontSize1250)
        #expect(FontRawTokens.fontSize150 != FontRawTokens.fontSize1450)
        #expect(FontRawTokens.fontSize150 != FontRawTokens.fontSize1850)

        #expect(FontRawTokens.fontSize175 != FontRawTokens.fontSize200)
        #expect(FontRawTokens.fontSize175 != FontRawTokens.fontSize250)
        #expect(FontRawTokens.fontSize175 != FontRawTokens.fontSize300)
        #expect(FontRawTokens.fontSize175 != FontRawTokens.fontSize350)
        #expect(FontRawTokens.fontSize175 != FontRawTokens.fontSize450)
        #expect(FontRawTokens.fontSize175 != FontRawTokens.fontSize550)
        #expect(FontRawTokens.fontSize175 != FontRawTokens.fontSize650)
        #expect(FontRawTokens.fontSize175 != FontRawTokens.fontSize750)
        #expect(FontRawTokens.fontSize175 != FontRawTokens.fontSize850)
        #expect(FontRawTokens.fontSize175 != FontRawTokens.fontSize950)
        #expect(FontRawTokens.fontSize175 != FontRawTokens.fontSize1050)
        #expect(FontRawTokens.fontSize175 != FontRawTokens.fontSize1150)
        #expect(FontRawTokens.fontSize175 != FontRawTokens.fontSize1250)
        #expect(FontRawTokens.fontSize175 != FontRawTokens.fontSize1450)
        #expect(FontRawTokens.fontSize175 != FontRawTokens.fontSize1850)

        #expect(FontRawTokens.fontSize200 != FontRawTokens.fontSize250)
        #expect(FontRawTokens.fontSize200 != FontRawTokens.fontSize300)
        #expect(FontRawTokens.fontSize200 != FontRawTokens.fontSize350)
        #expect(FontRawTokens.fontSize200 != FontRawTokens.fontSize450)
        #expect(FontRawTokens.fontSize200 != FontRawTokens.fontSize550)
        #expect(FontRawTokens.fontSize200 != FontRawTokens.fontSize650)
        #expect(FontRawTokens.fontSize200 != FontRawTokens.fontSize750)
        #expect(FontRawTokens.fontSize200 != FontRawTokens.fontSize850)
        #expect(FontRawTokens.fontSize200 != FontRawTokens.fontSize950)
        #expect(FontRawTokens.fontSize200 != FontRawTokens.fontSize1050)
        #expect(FontRawTokens.fontSize200 != FontRawTokens.fontSize1150)
        #expect(FontRawTokens.fontSize200 != FontRawTokens.fontSize1250)
        #expect(FontRawTokens.fontSize200 != FontRawTokens.fontSize1450)
        #expect(FontRawTokens.fontSize200 != FontRawTokens.fontSize1850)

        #expect(FontRawTokens.fontSize250 != FontRawTokens.fontSize300)
        #expect(FontRawTokens.fontSize250 != FontRawTokens.fontSize350)
        #expect(FontRawTokens.fontSize250 != FontRawTokens.fontSize450)
        #expect(FontRawTokens.fontSize250 != FontRawTokens.fontSize550)
        #expect(FontRawTokens.fontSize250 != FontRawTokens.fontSize650)
        #expect(FontRawTokens.fontSize250 != FontRawTokens.fontSize750)
        #expect(FontRawTokens.fontSize250 != FontRawTokens.fontSize850)
        #expect(FontRawTokens.fontSize250 != FontRawTokens.fontSize950)
        #expect(FontRawTokens.fontSize250 != FontRawTokens.fontSize1050)
        #expect(FontRawTokens.fontSize250 != FontRawTokens.fontSize1150)
        #expect(FontRawTokens.fontSize250 != FontRawTokens.fontSize1250)
        #expect(FontRawTokens.fontSize250 != FontRawTokens.fontSize1450)
        #expect(FontRawTokens.fontSize250 != FontRawTokens.fontSize1850)

        #expect(FontRawTokens.fontSize300 != FontRawTokens.fontSize350)
        #expect(FontRawTokens.fontSize300 != FontRawTokens.fontSize450)
        #expect(FontRawTokens.fontSize300 != FontRawTokens.fontSize550)
        #expect(FontRawTokens.fontSize300 != FontRawTokens.fontSize650)
        #expect(FontRawTokens.fontSize300 != FontRawTokens.fontSize750)
        #expect(FontRawTokens.fontSize300 != FontRawTokens.fontSize850)
        #expect(FontRawTokens.fontSize300 != FontRawTokens.fontSize950)
        #expect(FontRawTokens.fontSize300 != FontRawTokens.fontSize1050)
        #expect(FontRawTokens.fontSize300 != FontRawTokens.fontSize1150)
        #expect(FontRawTokens.fontSize300 != FontRawTokens.fontSize1250)
        #expect(FontRawTokens.fontSize300 != FontRawTokens.fontSize1450)
        #expect(FontRawTokens.fontSize300 != FontRawTokens.fontSize1850)

        #expect(FontRawTokens.fontSize350 != FontRawTokens.fontSize450)
        #expect(FontRawTokens.fontSize350 != FontRawTokens.fontSize550)
        #expect(FontRawTokens.fontSize350 != FontRawTokens.fontSize650)
        #expect(FontRawTokens.fontSize350 != FontRawTokens.fontSize750)
        #expect(FontRawTokens.fontSize350 != FontRawTokens.fontSize850)
        #expect(FontRawTokens.fontSize350 != FontRawTokens.fontSize950)
        #expect(FontRawTokens.fontSize350 != FontRawTokens.fontSize1050)
        #expect(FontRawTokens.fontSize350 != FontRawTokens.fontSize1150)
        #expect(FontRawTokens.fontSize350 != FontRawTokens.fontSize1250)
        #expect(FontRawTokens.fontSize350 != FontRawTokens.fontSize1450)
        #expect(FontRawTokens.fontSize350 != FontRawTokens.fontSize1850)

        #expect(FontRawTokens.fontSize450 != FontRawTokens.fontSize550)
        #expect(FontRawTokens.fontSize450 != FontRawTokens.fontSize650)
        #expect(FontRawTokens.fontSize450 != FontRawTokens.fontSize750)
        #expect(FontRawTokens.fontSize450 != FontRawTokens.fontSize850)
        #expect(FontRawTokens.fontSize450 != FontRawTokens.fontSize950)
        #expect(FontRawTokens.fontSize450 != FontRawTokens.fontSize1050)
        #expect(FontRawTokens.fontSize450 != FontRawTokens.fontSize1150)
        #expect(FontRawTokens.fontSize450 != FontRawTokens.fontSize1250)
        #expect(FontRawTokens.fontSize450 != FontRawTokens.fontSize1450)
        #expect(FontRawTokens.fontSize450 != FontRawTokens.fontSize1850)

        #expect(FontRawTokens.fontSize550 != FontRawTokens.fontSize650)
        #expect(FontRawTokens.fontSize550 != FontRawTokens.fontSize750)
        #expect(FontRawTokens.fontSize550 != FontRawTokens.fontSize850)
        #expect(FontRawTokens.fontSize550 != FontRawTokens.fontSize950)
        #expect(FontRawTokens.fontSize550 != FontRawTokens.fontSize1050)
        #expect(FontRawTokens.fontSize550 != FontRawTokens.fontSize1150)
        #expect(FontRawTokens.fontSize550 != FontRawTokens.fontSize1250)
        #expect(FontRawTokens.fontSize550 != FontRawTokens.fontSize1450)
        #expect(FontRawTokens.fontSize550 != FontRawTokens.fontSize1850)

        #expect(FontRawTokens.fontSize650 != FontRawTokens.fontSize750)
        #expect(FontRawTokens.fontSize650 != FontRawTokens.fontSize850)
        #expect(FontRawTokens.fontSize650 != FontRawTokens.fontSize950)
        #expect(FontRawTokens.fontSize650 != FontRawTokens.fontSize1050)
        #expect(FontRawTokens.fontSize650 != FontRawTokens.fontSize1150)
        #expect(FontRawTokens.fontSize650 != FontRawTokens.fontSize1250)
        #expect(FontRawTokens.fontSize650 != FontRawTokens.fontSize1450)
        #expect(FontRawTokens.fontSize650 != FontRawTokens.fontSize1850)

        #expect(FontRawTokens.fontSize750 != FontRawTokens.fontSize850)
        #expect(FontRawTokens.fontSize750 != FontRawTokens.fontSize950)
        #expect(FontRawTokens.fontSize750 != FontRawTokens.fontSize1050)
        #expect(FontRawTokens.fontSize750 != FontRawTokens.fontSize1150)
        #expect(FontRawTokens.fontSize750 != FontRawTokens.fontSize1250)
        #expect(FontRawTokens.fontSize750 != FontRawTokens.fontSize1450)
        #expect(FontRawTokens.fontSize750 != FontRawTokens.fontSize1850)

        #expect(FontRawTokens.fontSize850 != FontRawTokens.fontSize950)
        #expect(FontRawTokens.fontSize850 != FontRawTokens.fontSize1050)
        #expect(FontRawTokens.fontSize850 != FontRawTokens.fontSize1150)
        #expect(FontRawTokens.fontSize850 != FontRawTokens.fontSize1250)
        #expect(FontRawTokens.fontSize850 != FontRawTokens.fontSize1450)
        #expect(FontRawTokens.fontSize850 != FontRawTokens.fontSize1850)

        #expect(FontRawTokens.fontSize950 != FontRawTokens.fontSize1050)
        #expect(FontRawTokens.fontSize950 != FontRawTokens.fontSize1150)
        #expect(FontRawTokens.fontSize950 != FontRawTokens.fontSize1250)
        #expect(FontRawTokens.fontSize950 != FontRawTokens.fontSize1450)
        #expect(FontRawTokens.fontSize950 != FontRawTokens.fontSize1850)

        #expect(FontRawTokens.fontSize1150 != FontRawTokens.fontSize1250)
        #expect(FontRawTokens.fontSize1150 != FontRawTokens.fontSize1450)
        #expect(FontRawTokens.fontSize1150 != FontRawTokens.fontSize1850)

        #expect(FontRawTokens.fontSize1250 != FontRawTokens.fontSize1450)
        #expect(FontRawTokens.fontSize1250 != FontRawTokens.fontSize1850)

        #expect(FontRawTokens.fontSize1450 != FontRawTokens.fontSize1850)
    }

    // MARK: - Primitive token - Typography - Line height

    /*
     Ensure tokens will be never 0
     */

    @Test
    func fontRawTokensFontLineHeight250NotNull() throws {
        #expect(FontRawTokens.fontLineHeight250 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight350NotNull() throws {
        #expect(FontRawTokens.fontLineHeight350 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight450NotNull() throws {
        #expect(FontRawTokens.fontLineHeight450 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight550NotNull() throws {
        #expect(FontRawTokens.fontLineHeight550 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight650NotNull() throws {
        #expect(FontRawTokens.fontLineHeight650 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight750NotNull() throws {
        #expect(FontRawTokens.fontLineHeight750 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight850NotNull() throws {
        #expect(FontRawTokens.fontLineHeight850 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight950NotNull() throws {
        #expect(FontRawTokens.fontLineHeight950 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight1050NotNull() throws {
        #expect(FontRawTokens.fontLineHeight1050 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight1150NotNull() throws {
        #expect(FontRawTokens.fontLineHeight1150 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight1250NotNull() throws {
        #expect(FontRawTokens.fontLineHeight1250 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight1350NotNull() throws {
        #expect(FontRawTokens.fontLineHeight1350 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight1450NotNull() throws {
        #expect(FontRawTokens.fontLineHeight1450 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight1850NotNull() throws {
        #expect(FontRawTokens.fontLineHeight1850 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight2050NotNull() throws {
        #expect(FontRawTokens.fontLineHeight2050 != 0)
    }

    /*
     Comparisons one by one
     */

    @Test
    func fontRawTokensFontLineHeight250LessThanFontLineHeight350() throws {
        #expect(FontRawTokens.fontLineHeight250 < FontRawTokens.fontLineHeight350)
    }

    @Test
    func fontRawTokensFontLineHeight350LessThanFontLineHeight450() throws {
        #expect(FontRawTokens.fontLineHeight350 < FontRawTokens.fontLineHeight450)
    }

    @Test
    func fontRawTokensFontLineHeight450LessThanFontLineHeight550() throws {
        #expect(FontRawTokens.fontLineHeight450 < FontRawTokens.fontLineHeight550)
    }

    @Test
    func fontRawTokensFontLineHeight550LessThanFontLineHeight650() throws {
        #expect(FontRawTokens.fontLineHeight550 < FontRawTokens.fontLineHeight650)
    }

    @Test
    func fontRawTokensFontLineHeight650LessThanFontLineHeight750() throws {
        #expect(FontRawTokens.fontLineHeight650 < FontRawTokens.fontLineHeight750)
    }

    @Test
    func fontRawTokensFontLineHeight750LessThanFontLineHeight850() throws {
        #expect(FontRawTokens.fontLineHeight750 < FontRawTokens.fontLineHeight850)
    }

    @Test
    func fontRawTokensFontLineHeight850LessThanFontLineHeight950() throws {
        #expect(FontRawTokens.fontLineHeight850 < FontRawTokens.fontLineHeight950)
    }

    @Test
    func fontRawTokensFontLineHeight950LessThanFontLineHeight1050() throws {
        #expect(FontRawTokens.fontLineHeight950 < FontRawTokens.fontLineHeight1050)
    }

    @Test
    func fontRawTokensFontLineHeight1050LessThanFontLineHeight1150() throws {
        #expect(FontRawTokens.fontLineHeight1050 < FontRawTokens.fontLineHeight1150)
    }

    @Test
    func fontRawTokensFontLineHeight1150LessThanFontLineHeight1250() throws {
        #expect(FontRawTokens.fontLineHeight1150 < FontRawTokens.fontLineHeight1250)
    }

    @Test
    func fontRawTokensFontLineHeight1250LessThanFontLineHeight1350() throws {
        #expect(FontRawTokens.fontLineHeight1250 < FontRawTokens.fontLineHeight1350)
    }

    @Test
    func fontRawTokensFontLineHeight1350LessThanFontLineHeight1450() throws {
        #expect(FontRawTokens.fontLineHeight1350 < FontRawTokens.fontLineHeight1450)
    }

    @Test
    func fontRawTokensFontLineHeight1450LessThanFontLineHeight1850() throws {
        #expect(FontRawTokens.fontLineHeight1450 < FontRawTokens.fontLineHeight1850)
    }

    @Test
    func fontRawTokensFontLineHeight1850LessThanFontLineHeight2050() throws {
        #expect(FontRawTokens.fontLineHeight1850 < FontRawTokens.fontLineHeight2050)
    }

    /*
     Check if factors are the same
     */

    @Test func fontRawTokenLineHeight250MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontLineHeight250, factor: Self.fontLineHeightBase)
    }

    @Test func fontRawTokenLineHeight350MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontLineHeight350, factor: Self.fontLineHeightBase)
    }

    @Test func fontRawTokenLineHeight450MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontLineHeight450, factor: Self.fontLineHeightBase)
    }

    @Test func fontRawTokenLineHeight550MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontLineHeight550, factor: Self.fontLineHeightBase)
    }

    @Test func fontRawTokenLineHeight650MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontLineHeight650, factor: Self.fontLineHeightBase)
    }

    @Test func fontRawTokenLineHeight750MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontLineHeight750, factor: Self.fontLineHeightBase)
    }

    @Test func fontRawTokenLineHeight850MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontLineHeight850, factor: Self.fontLineHeightBase)
    }

    @Test func fontRawTokenFontLineHeight950MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontLineHeight950, factor: Self.fontLineHeightBase)
    }

    @Test func fontRawTokenFontLineHeight1050MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontLineHeight1050, factor: Self.fontLineHeightBase)
    }

    @Test func fontRawTokenFontLineHeight1150MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontLineHeight1150, factor: Self.fontLineHeightBase)
    }

    @Test func fontRawTokenFontLineHeight1250MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontLineHeight1250, factor: Self.fontLineHeightBase)
    }

    @Test func fontRawTokenFontLineHeight1350MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontLineHeight1350, factor: Self.fontLineHeightBase)
    }

    @Test func fontRawTokenFontLineHeight1450MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontLineHeight1450, factor: Self.fontLineHeightBase)
    }

    @Test func fontRawTokenFontLineHeight1850MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontLineHeight1850, factor: Self.fontLineHeightBase)
    }

    @Test func fontRawTokenFontLineHeight2050MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontLineHeight2050, factor: Self.fontLineHeightBase)
    }

    /*
     Check there is no duplicate
     */

    @Test
    func fontRawTokensFontLineHeightAreAllDifferent() throws {
        #expect(FontRawTokens.fontLineHeight250 != FontRawTokens.fontLineHeight350)
        #expect(FontRawTokens.fontLineHeight250 != FontRawTokens.fontLineHeight450)
        #expect(FontRawTokens.fontLineHeight250 != FontRawTokens.fontLineHeight550)
        #expect(FontRawTokens.fontLineHeight250 != FontRawTokens.fontLineHeight650)
        #expect(FontRawTokens.fontLineHeight250 != FontRawTokens.fontLineHeight750)
        #expect(FontRawTokens.fontLineHeight250 != FontRawTokens.fontLineHeight850)
        #expect(FontRawTokens.fontLineHeight250 != FontRawTokens.fontLineHeight950)
        #expect(FontRawTokens.fontLineHeight250 != FontRawTokens.fontLineHeight1050)
        #expect(FontRawTokens.fontLineHeight250 != FontRawTokens.fontLineHeight1150)
        #expect(FontRawTokens.fontLineHeight250 != FontRawTokens.fontLineHeight1250)
        #expect(FontRawTokens.fontLineHeight250 != FontRawTokens.fontLineHeight1350)
        #expect(FontRawTokens.fontLineHeight250 != FontRawTokens.fontLineHeight1450)
        #expect(FontRawTokens.fontLineHeight250 != FontRawTokens.fontLineHeight1850)
        #expect(FontRawTokens.fontLineHeight250 != FontRawTokens.fontLineHeight2050)

        #expect(FontRawTokens.fontLineHeight350 != FontRawTokens.fontLineHeight450)
        #expect(FontRawTokens.fontLineHeight350 != FontRawTokens.fontLineHeight550)
        #expect(FontRawTokens.fontLineHeight350 != FontRawTokens.fontLineHeight650)
        #expect(FontRawTokens.fontLineHeight350 != FontRawTokens.fontLineHeight750)
        #expect(FontRawTokens.fontLineHeight350 != FontRawTokens.fontLineHeight850)
        #expect(FontRawTokens.fontLineHeight350 != FontRawTokens.fontLineHeight950)
        #expect(FontRawTokens.fontLineHeight350 != FontRawTokens.fontLineHeight1050)
        #expect(FontRawTokens.fontLineHeight350 != FontRawTokens.fontLineHeight1150)
        #expect(FontRawTokens.fontLineHeight350 != FontRawTokens.fontLineHeight1250)
        #expect(FontRawTokens.fontLineHeight350 != FontRawTokens.fontLineHeight1350)
        #expect(FontRawTokens.fontLineHeight350 != FontRawTokens.fontLineHeight1450)
        #expect(FontRawTokens.fontLineHeight350 != FontRawTokens.fontLineHeight1850)
        #expect(FontRawTokens.fontLineHeight350 != FontRawTokens.fontLineHeight2050)

        #expect(FontRawTokens.fontLineHeight450 != FontRawTokens.fontLineHeight550)
        #expect(FontRawTokens.fontLineHeight450 != FontRawTokens.fontLineHeight650)
        #expect(FontRawTokens.fontLineHeight450 != FontRawTokens.fontLineHeight750)
        #expect(FontRawTokens.fontLineHeight450 != FontRawTokens.fontLineHeight850)
        #expect(FontRawTokens.fontLineHeight450 != FontRawTokens.fontLineHeight950)
        #expect(FontRawTokens.fontLineHeight450 != FontRawTokens.fontLineHeight1050)
        #expect(FontRawTokens.fontLineHeight450 != FontRawTokens.fontLineHeight1150)
        #expect(FontRawTokens.fontLineHeight450 != FontRawTokens.fontLineHeight1250)
        #expect(FontRawTokens.fontLineHeight450 != FontRawTokens.fontLineHeight1350)
        #expect(FontRawTokens.fontLineHeight450 != FontRawTokens.fontLineHeight1450)
        #expect(FontRawTokens.fontLineHeight450 != FontRawTokens.fontLineHeight1850)
        #expect(FontRawTokens.fontLineHeight450 != FontRawTokens.fontLineHeight2050)

        #expect(FontRawTokens.fontLineHeight550 != FontRawTokens.fontLineHeight650)
        #expect(FontRawTokens.fontLineHeight550 != FontRawTokens.fontLineHeight750)
        #expect(FontRawTokens.fontLineHeight550 != FontRawTokens.fontLineHeight850)
        #expect(FontRawTokens.fontLineHeight550 != FontRawTokens.fontLineHeight950)
        #expect(FontRawTokens.fontLineHeight550 != FontRawTokens.fontLineHeight1050)
        #expect(FontRawTokens.fontLineHeight550 != FontRawTokens.fontLineHeight1150)
        #expect(FontRawTokens.fontLineHeight550 != FontRawTokens.fontLineHeight1250)
        #expect(FontRawTokens.fontLineHeight550 != FontRawTokens.fontLineHeight1350)
        #expect(FontRawTokens.fontLineHeight550 != FontRawTokens.fontLineHeight1450)
        #expect(FontRawTokens.fontLineHeight550 != FontRawTokens.fontLineHeight1850)
        #expect(FontRawTokens.fontLineHeight550 != FontRawTokens.fontLineHeight2050)

        #expect(FontRawTokens.fontLineHeight650 != FontRawTokens.fontLineHeight750)
        #expect(FontRawTokens.fontLineHeight650 != FontRawTokens.fontLineHeight850)
        #expect(FontRawTokens.fontLineHeight650 != FontRawTokens.fontLineHeight950)
        #expect(FontRawTokens.fontLineHeight650 != FontRawTokens.fontLineHeight1050)
        #expect(FontRawTokens.fontLineHeight650 != FontRawTokens.fontLineHeight1150)
        #expect(FontRawTokens.fontLineHeight650 != FontRawTokens.fontLineHeight1250)
        #expect(FontRawTokens.fontLineHeight650 != FontRawTokens.fontLineHeight1350)
        #expect(FontRawTokens.fontLineHeight650 != FontRawTokens.fontLineHeight1450)
        #expect(FontRawTokens.fontLineHeight650 != FontRawTokens.fontLineHeight1850)
        #expect(FontRawTokens.fontLineHeight650 != FontRawTokens.fontLineHeight2050)

        #expect(FontRawTokens.fontLineHeight750 != FontRawTokens.fontLineHeight850)
        #expect(FontRawTokens.fontLineHeight750 != FontRawTokens.fontLineHeight950)
        #expect(FontRawTokens.fontLineHeight750 != FontRawTokens.fontLineHeight1050)
        #expect(FontRawTokens.fontLineHeight750 != FontRawTokens.fontLineHeight1150)
        #expect(FontRawTokens.fontLineHeight750 != FontRawTokens.fontLineHeight1250)
        #expect(FontRawTokens.fontLineHeight750 != FontRawTokens.fontLineHeight1350)
        #expect(FontRawTokens.fontLineHeight750 != FontRawTokens.fontLineHeight1450)
        #expect(FontRawTokens.fontLineHeight750 != FontRawTokens.fontLineHeight1850)
        #expect(FontRawTokens.fontLineHeight750 != FontRawTokens.fontLineHeight2050)

        #expect(FontRawTokens.fontLineHeight850 != FontRawTokens.fontLineHeight950)
        #expect(FontRawTokens.fontLineHeight850 != FontRawTokens.fontLineHeight1050)
        #expect(FontRawTokens.fontLineHeight850 != FontRawTokens.fontLineHeight1150)
        #expect(FontRawTokens.fontLineHeight850 != FontRawTokens.fontLineHeight1250)
        #expect(FontRawTokens.fontLineHeight850 != FontRawTokens.fontLineHeight1350)
        #expect(FontRawTokens.fontLineHeight850 != FontRawTokens.fontLineHeight1450)
        #expect(FontRawTokens.fontLineHeight850 != FontRawTokens.fontLineHeight1850)
        #expect(FontRawTokens.fontLineHeight850 != FontRawTokens.fontLineHeight2050)

        #expect(FontRawTokens.fontLineHeight950 != FontRawTokens.fontLineHeight1050)
        #expect(FontRawTokens.fontLineHeight950 != FontRawTokens.fontLineHeight1150)
        #expect(FontRawTokens.fontLineHeight950 != FontRawTokens.fontLineHeight1250)
        #expect(FontRawTokens.fontLineHeight950 != FontRawTokens.fontLineHeight1350)
        #expect(FontRawTokens.fontLineHeight950 != FontRawTokens.fontLineHeight1450)
        #expect(FontRawTokens.fontLineHeight950 != FontRawTokens.fontLineHeight1850)
        #expect(FontRawTokens.fontLineHeight950 != FontRawTokens.fontLineHeight2050)

        #expect(FontRawTokens.fontLineHeight1050 != FontRawTokens.fontLineHeight1150)
        #expect(FontRawTokens.fontLineHeight1050 != FontRawTokens.fontLineHeight1250)
        #expect(FontRawTokens.fontLineHeight1050 != FontRawTokens.fontLineHeight1350)
        #expect(FontRawTokens.fontLineHeight1050 != FontRawTokens.fontLineHeight1450)
        #expect(FontRawTokens.fontLineHeight1050 != FontRawTokens.fontLineHeight1850)
        #expect(FontRawTokens.fontLineHeight1050 != FontRawTokens.fontLineHeight2050)

        #expect(FontRawTokens.fontLineHeight1150 != FontRawTokens.fontLineHeight1250)
        #expect(FontRawTokens.fontLineHeight1150 != FontRawTokens.fontLineHeight1350)
        #expect(FontRawTokens.fontLineHeight1150 != FontRawTokens.fontLineHeight1450)
        #expect(FontRawTokens.fontLineHeight1150 != FontRawTokens.fontLineHeight1850)
        #expect(FontRawTokens.fontLineHeight1150 != FontRawTokens.fontLineHeight2050)

        #expect(FontRawTokens.fontLineHeight1250 != FontRawTokens.fontLineHeight1350)
        #expect(FontRawTokens.fontLineHeight1250 != FontRawTokens.fontLineHeight1450)
        #expect(FontRawTokens.fontLineHeight1250 != FontRawTokens.fontLineHeight1850)
        #expect(FontRawTokens.fontLineHeight1250 != FontRawTokens.fontLineHeight2050)

        #expect(FontRawTokens.fontLineHeight1350 != FontRawTokens.fontLineHeight1450)
        #expect(FontRawTokens.fontLineHeight1350 != FontRawTokens.fontLineHeight1850)
        #expect(FontRawTokens.fontLineHeight1350 != FontRawTokens.fontLineHeight2050)

        #expect(FontRawTokens.fontLineHeight1450 != FontRawTokens.fontLineHeight1850)
        #expect(FontRawTokens.fontLineHeight1450 != FontRawTokens.fontLineHeight2050)

        #expect(FontRawTokens.fontLineHeight1850 != FontRawTokens.fontLineHeight2050)
    }

    // MARK: - Primitive token - Typography - Letter spacing

    /*
     fontLetterSpacing150 = fontSize150 * Figma fontLetterSpacing600
     fontLetterSpacing175 = fontSize175 * Figma fontLetterSpacing600
     These tokens are both based on factor fontLetterSpacing600, so they can be compared
     */

    @Test
    func fontRawTokensFontLetterSpacing150LessThanFontLetterSpacing175() throws {
        #expect(FontRawTokens.fontLetterSpacing150 < FontRawTokens.fontLetterSpacing175)
    }

    /*
     fontLetterSpacing200 = fontSize200 * Figma fontLetterSpacing500
     fontLetterSpacing250 = fontSize250 * Figma fontLetterSpacing500
     These tokens are both based on factor fontLetterSpacing500, so they can be compared
     */

    @Test
    func fontRawTokensFontLetterSpacing200LessThanFontLetterSpacing250() throws {
        #expect(FontRawTokens.fontLetterSpacing200 < FontRawTokens.fontLetterSpacing250)
    }

    /*
     fontLetterSpacing350 has a 0 value
     The bigger fontLetterSpacing* tokens are, the lower their values will be (negative).
     */

    @Test
    func fontRawTokensFontLetterSpacing350GreaterThanFontLetterSpacing450() throws {
        #expect(FontRawTokens.fontLetterSpacing350 > FontRawTokens.fontLetterSpacing450)
    }

    @Test
    func fontRawTokensFontLetterSpacing450GreaterThanFontLetterSpacing550() throws {
        #expect(FontRawTokens.fontLetterSpacing450 > FontRawTokens.fontLetterSpacing550)
    }

    @Test
    func fontRawTokensFontLetterSpacing550GreaterThanFontLetterSpacing650() throws {
        #expect(FontRawTokens.fontLetterSpacing550 > FontRawTokens.fontLetterSpacing650)
    }

    @Test
    func fontRawTokensFontLetterSpacing650GreaterThanFontLetterSpacing750() throws {
        #expect(FontRawTokens.fontLetterSpacing650 > FontRawTokens.fontLetterSpacing750)
    }

    @Test
    func fontRawTokensFontLetterSpacing750GreaterThanFontLetterSpacing850() throws {
        #expect(FontRawTokens.fontLetterSpacing750 > FontRawTokens.fontLetterSpacing850)
    }

    @Test
    func fontRawTokensFontLetterSpacing850GreaterThanFontLetterSpacing950() throws {
        #expect(FontRawTokens.fontLetterSpacing850 > FontRawTokens.fontLetterSpacing950)
    }

    @Test
    func fontRawTokensFontLetterSpacing950GreaterThanFontLetterSpacing1050() throws {
        #expect(FontRawTokens.fontLetterSpacing950 > FontRawTokens.fontLetterSpacing1050)
    }

    @Test
    func fontRawTokensFontLetterSpacing1050GreaterThanFontLetterSpacing1150() throws {
        #expect(FontRawTokens.fontLetterSpacing1050 > FontRawTokens.fontLetterSpacing1150)
    }

    @Test
    func fontRawTokensFontLetterSpacing1150GreaterThanFontLetterSpacing1250() throws {
        #expect(FontRawTokens.fontLetterSpacing1150 > FontRawTokens.fontLetterSpacing1250)
    }

    @Test
    func fontRawTokensFontLetterSpacing1250GreaterThanFontLetterSpacing1450() throws {
        #expect(FontRawTokens.fontLetterSpacing1250 > FontRawTokens.fontLetterSpacing1450)
    }

    @Test
    func fontRawTokensFontLetterSpacing1450GreaterThanFontLetterSpacing1850() throws {
        #expect(FontRawTokens.fontLetterSpacing1450 > FontRawTokens.fontLetterSpacing1850)
    }

    @Test func fontRawTokensFontLetterSpacingAreInSuitableRange() {
        TestsUtils.assertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing150, max: Self.fontLetterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing175, max: Self.fontLetterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing200, max: Self.fontLetterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing250, max: Self.fontLetterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing300, max: Self.fontLetterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing350, max: Self.fontLetterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing450, max: Self.fontLetterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing550, max: Self.fontLetterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing650, max: Self.fontLetterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing750, max: Self.fontLetterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing850, max: Self.fontLetterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing950, max: Self.fontLetterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing1050, max: Self.fontLetterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing1150, max: Self.fontLetterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing1250, max: Self.fontLetterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing1450, max: Self.fontLetterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.fontLetterSpacingMinValue, FontRawTokens.fontLetterSpacing1850, max: Self.fontLetterSpacingMaxValue)
    }

    /*
     Ensure tokens will never be 0 (except fontLetterSpacing350)
     */

    @Test
    func fontRawTokensFontLetterSpacing150NotNull() throws {
        #expect(FontRawTokens.fontLetterSpacing150 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing175NotNull() throws {
        #expect(FontRawTokens.fontLetterSpacing175 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing200NotNull() throws {
        #expect(FontRawTokens.fontLetterSpacing200 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing250NotNull() throws {
        #expect(FontRawTokens.fontLetterSpacing250 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing300NotNull() throws {
        #expect(FontRawTokens.fontLetterSpacing300 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing350IsNull() throws {
        #expect(FontRawTokens.fontLetterSpacing350 == 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing450NotNull() throws {
        #expect(FontRawTokens.fontLetterSpacing450 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing550NotNull() throws {
        #expect(FontRawTokens.fontLetterSpacing550 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing650NotNull() throws {
        #expect(FontRawTokens.fontLetterSpacing650 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing750NotNull() throws {
        #expect(FontRawTokens.fontLetterSpacing750 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing850NotNull() throws {
        #expect(FontRawTokens.fontLetterSpacing850 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing950NotNull() throws {
        #expect(FontRawTokens.fontLetterSpacing950 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing1050NotNull() throws {
        #expect(FontRawTokens.fontLetterSpacing1050 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing1150NotNull() throws {
        #expect(FontRawTokens.fontLetterSpacing1150 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing1250NotNull() throws {
        #expect(FontRawTokens.fontLetterSpacing1250 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing1450NotNull() throws {
        #expect(FontRawTokens.fontLetterSpacing1450 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing1850NotNull() throws {
        #expect(FontRawTokens.fontLetterSpacing1850 != 0)
    }

    /*
     Not test to ensure all font letter spacing tokens are different because
     their values are computed in Figma side using fontSize and letter spacing not
     exposed here
     */

    // MARK: - Primitive token - Typography - Font weight

    /*
     Ensure no font weight is 0
     */

    @Test
    func fontRawTokensFontWeight100NotNull() throws {
        #expect(FontRawTokens.fontWeight100 != 0)
    }

    @Test
    func fontRawTokensFontWeight200NotNull() throws {
        #expect(FontRawTokens.fontWeight200 != 0)
    }

    @Test
    func fontRawTokensFontWeight300NotNull() throws {
        #expect(FontRawTokens.fontWeight300 != 0)
    }

    @Test
    func fontRawTokensFontWeight400NotNull() throws {
        #expect(FontRawTokens.fontWeight400 != 0)
    }

    @Test
    func fontRawTokensFontWeight500NotNull() throws {
        #expect(FontRawTokens.fontWeight500 != 0)
    }

    @Test
    func fontRawTokensFontWeight600NotNull() throws {
        #expect(FontRawTokens.fontWeight600 != 0)
    }

    @Test
    func fontRawTokensFontWeight700NotNull() throws {
        #expect(FontRawTokens.fontWeight700 != 0)
    }

    @Test
    func fontRawTokensFontWeight800NotNull() throws {
        #expect(FontRawTokens.fontWeight800 != 0)
    }

    @Test
    func fontRawTokensFontWeight900NotNull() throws {
        #expect(FontRawTokens.fontWeight900 != 0)
    }

    @Test
    func fontRawTokensFontWeight950NotNull() throws {
        #expect(FontRawTokens.fontWeight950 != 0)
    }

    /*
     Check if factors are the same
     */

    @Test func fontRawTokenFontWeight100MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontWeight100, factor: Self.fontWeightBase)
    }

    @Test func fontRawTokenFontWeight200MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontWeight200, factor: Self.fontWeightBase)
    }

    @Test func fontRawTokenFontWeight300MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontWeight300, factor: Self.fontWeightBase)
    }

    @Test func fontRawTokenFontWeight400MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontWeight400, factor: Self.fontWeightBase)
    }

    @Test func fontRawTokenFontWeight500MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontWeight500, factor: Self.fontWeightBase)
    }

    @Test func fontRawTokenFontWeight600MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontWeight600, factor: Self.fontWeightBase)
    }

    @Test func fontRawTokenFontWeight700MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontWeight700, factor: Self.fontWeightBase)
    }

    @Test func fontRawTokenFontWeight800MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontWeight800, factor: Self.fontWeightBase)
    }

    @Test func fontRawTokenFontWeight900MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontWeight900, factor: Self.fontWeightBase)
    }

    @Test func fontRawTokenFontWeight950MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.fontWeight950, factor: Self.fontWeightBase)
    }

    /*
     Comparisons between tokens one by one
     */

    @Test
    func fontRawTokensWeight100LessThanFontWeight200() throws {
        #expect(FontRawTokens.fontWeight100 < FontRawTokens.fontWeight200)
    }

    @Test
    func fontRawTokensWeight200LessThanFontWeight300() throws {
        #expect(FontRawTokens.fontWeight200 < FontRawTokens.fontWeight300)
    }

    @Test
    func fontRawTokensWeight300LessThanFontWeight400() throws {
        #expect(FontRawTokens.fontWeight300 < FontRawTokens.fontWeight400)
    }

    @Test
    func fontRawTokensWeight400LessThanFontWeight500() throws {
        #expect(FontRawTokens.fontWeight400 < FontRawTokens.fontWeight500)
    }

    @Test
    func fontRawTokensWeight500LessThanFontWeight600() throws {
        #expect(FontRawTokens.fontWeight500 < FontRawTokens.fontWeight600)
    }

    @Test
    func fontRawTokensWeight600LessThanFontWeight700() throws {
        #expect(FontRawTokens.fontWeight600 < FontRawTokens.fontWeight700)
    }

    @Test
    func fontRawTokensWeight700LessThanFontWeight800() throws {
        #expect(FontRawTokens.fontWeight700 < FontRawTokens.fontWeight800)
    }

    @Test
    func fontRawTokensWeight800LessThanFontWeight900() throws {
        #expect(FontRawTokens.fontWeight800 < FontRawTokens.fontWeight900)
    }

    @Test
    func fontRawTokensWeight900LessThanFontWeight950() throws {
        #expect(FontRawTokens.fontWeight900 < FontRawTokens.fontWeight950)
    }

    /*
     Ensure all tokens are different
     */

    @Test
    func fontRawTokensFontWeightsAreAllDifferent() throws {
        #expect(FontRawTokens.fontWeight100 != FontRawTokens.fontWeight200)
        #expect(FontRawTokens.fontWeight100 != FontRawTokens.fontWeight300)
        #expect(FontRawTokens.fontWeight100 != FontRawTokens.fontWeight400)
        #expect(FontRawTokens.fontWeight100 != FontRawTokens.fontWeight500)
        #expect(FontRawTokens.fontWeight100 != FontRawTokens.fontWeight600)
        #expect(FontRawTokens.fontWeight100 != FontRawTokens.fontWeight700)
        #expect(FontRawTokens.fontWeight100 != FontRawTokens.fontWeight800)

        #expect(FontRawTokens.fontWeight200 != FontRawTokens.fontWeight300)
        #expect(FontRawTokens.fontWeight200 != FontRawTokens.fontWeight400)
        #expect(FontRawTokens.fontWeight200 != FontRawTokens.fontWeight500)
        #expect(FontRawTokens.fontWeight200 != FontRawTokens.fontWeight600)
        #expect(FontRawTokens.fontWeight200 != FontRawTokens.fontWeight700)
        #expect(FontRawTokens.fontWeight200 != FontRawTokens.fontWeight800)

        #expect(FontRawTokens.fontWeight300 != FontRawTokens.fontWeight400)
        #expect(FontRawTokens.fontWeight300 != FontRawTokens.fontWeight500)
        #expect(FontRawTokens.fontWeight300 != FontRawTokens.fontWeight600)
        #expect(FontRawTokens.fontWeight300 != FontRawTokens.fontWeight700)
        #expect(FontRawTokens.fontWeight300 != FontRawTokens.fontWeight800)

        #expect(FontRawTokens.fontWeight400 != FontRawTokens.fontWeight500)
        #expect(FontRawTokens.fontWeight400 != FontRawTokens.fontWeight600)
        #expect(FontRawTokens.fontWeight400 != FontRawTokens.fontWeight700)
        #expect(FontRawTokens.fontWeight400 != FontRawTokens.fontWeight800)

        #expect(FontRawTokens.fontWeight500 != FontRawTokens.fontWeight600)
        #expect(FontRawTokens.fontWeight500 != FontRawTokens.fontWeight700)
        #expect(FontRawTokens.fontWeight500 != FontRawTokens.fontWeight800)

        #expect(FontRawTokens.fontWeight600 != FontRawTokens.fontWeight700)
        #expect(FontRawTokens.fontWeight600 != FontRawTokens.fontWeight800)

        #expect(FontRawTokens.fontWeight700 != FontRawTokens.fontWeight800)
    }

    // MARK: - Primitive token - Typography - Composite

    @Test func fontRawTokensTypeRegular150LessThanTypeRegular175() throws {
        #expect(FontRawTokens.typeRegular150 <| FontRawTokens.typeRegular175)
    }

    @Test func fontRawTokensTypeRegular175LessThanTypeRegular200() throws {
        #expect(FontRawTokens.typeRegular175 <| FontRawTokens.typeRegular200)
    }

    @Test func fontRawTokensTypeRegular200LessThanTypeRegular250() throws {
        #expect(FontRawTokens.typeRegular200 <| FontRawTokens.typeRegular250)
    }

    @Test func fontRawTokensTypeRegular250LessThanTypeRegular300() throws {
        #expect(FontRawTokens.typeRegular250 <| FontRawTokens.typeRegular300)
    }

    @Test func fontRawTokensTypeMedium150LessThanTypeMedium175() throws {
        #expect(FontRawTokens.typeMedium150 <| FontRawTokens.typeMedium175)
    }

    @Test func fontRawTokensTypeMedium175LessThanTypeMedium200() throws {
        #expect(FontRawTokens.typeMedium175 <| FontRawTokens.typeMedium200)
    }

    @Test func fontRawTokensTypeMedium200LessThanTypeMedium250() throws {
        #expect(FontRawTokens.typeMedium200 <| FontRawTokens.typeMedium250)
    }

    @Test func fontRawTokensTypeMedium250LessThanTypeMedium300() throws {
        #expect(FontRawTokens.typeMedium250 <| FontRawTokens.typeMedium300)
    }

    @Test func fontRawTokensTypeBold150LessThanTypeBold175() throws {
        #expect(FontRawTokens.typeBold150 <| FontRawTokens.typeBold175)
    }

    @Test func fontRawTokensTypeBold175LessThanTypeBold200() throws {
        #expect(FontRawTokens.typeBold175 <| FontRawTokens.typeBold200)
    }

    @Test func fontRawTokensTypeBold200LessThanTypeBold250() throws {
        #expect(FontRawTokens.typeBold200 <| FontRawTokens.typeBold250)
    }

    @Test func fontRawTokensTypeBold250LessThanTypeBold300() throws {
        #expect(FontRawTokens.typeBold250 <| FontRawTokens.typeBold300)
    }

    @Test func fontRawTokensTypeBold300LessThanTypeBold350() throws {
        #expect(FontRawTokens.typeBold300 <| FontRawTokens.typeBold350)
    }

    @Test func fontRawTokensTypeBold350LessThanTypeBold450() throws {
        #expect(FontRawTokens.typeBold350 <| FontRawTokens.typeBold450)
    }

    @Test func fontRawTokensTypeBold450LessThanTypeBold550() throws {
        #expect(FontRawTokens.typeBold450 <| FontRawTokens.typeBold550)
    }

    @Test func fontRawTokensTypeBold550LessThanTypeBold650() throws {
        #expect(FontRawTokens.typeBold550 <| FontRawTokens.typeBold650)
    }

    @Test func fontRawTokensTypeBold650LessThanTypeBold750() throws {
        #expect(FontRawTokens.typeBold650 <| FontRawTokens.typeBold750)
    }

    @Test func fontRawTokensTypeBold750LessThanTypeBold850() throws {
        #expect(FontRawTokens.typeBold750 <| FontRawTokens.typeBold850)
    }

    @Test func fontRawTokensTypeBold850LessThanTypeBold950() throws {
        #expect(FontRawTokens.typeBold850 <| FontRawTokens.typeBold950)
    }

    @Test func fontRawTokensTypeBold950LessThanTypeBold1050() throws {
        #expect(FontRawTokens.typeBold950 <| FontRawTokens.typeBold1050)
    }

    @Test func fontRawTokensTypeBold1050LessThanTypeBold1150() throws {
        #expect(FontRawTokens.typeBold1050 <| FontRawTokens.typeBold1150)
    }

    @Test func fontRawTokensTypeBold1150LessThanTypeBold1250() throws {
        #expect(FontRawTokens.typeBold1150 <| FontRawTokens.typeBold1250)
    }

    @Test func fontRawTokensTypeBold1250LessThanTypeBold1450() throws {
        #expect(FontRawTokens.typeBold1250 <| FontRawTokens.typeBold1450)
    }

    @Test func fontRawTokensTypeBold1450LessThanTypeBold1850() throws {
        #expect(FontRawTokens.typeBold1450 <| FontRawTokens.typeBold1850)
    }

    /*
     Ensure all tokens are different
     */

    @Test
    func fontRawTokensCompositesAreAllDifferent() throws {
        #expect(FontRawTokens.typeRegular150 != FontRawTokens.typeRegular175)
        #expect(FontRawTokens.typeRegular150 != FontRawTokens.typeRegular200)
        #expect(FontRawTokens.typeRegular150 != FontRawTokens.typeRegular250)
        #expect(FontRawTokens.typeRegular150 != FontRawTokens.typeBold150)
        #expect(FontRawTokens.typeRegular150 != FontRawTokens.typeBold175)
        #expect(FontRawTokens.typeRegular150 != FontRawTokens.typeBold200)
        #expect(FontRawTokens.typeRegular150 != FontRawTokens.typeBold250)
        #expect(FontRawTokens.typeRegular150 != FontRawTokens.typeBold300)
        #expect(FontRawTokens.typeRegular150 != FontRawTokens.typeBold350)
        #expect(FontRawTokens.typeRegular150 != FontRawTokens.typeBold450)
        #expect(FontRawTokens.typeRegular150 != FontRawTokens.typeBold550)
        #expect(FontRawTokens.typeRegular150 != FontRawTokens.typeBold650)
        #expect(FontRawTokens.typeRegular150 != FontRawTokens.typeBold750)
        #expect(FontRawTokens.typeRegular150 != FontRawTokens.typeBold850)
        #expect(FontRawTokens.typeRegular150 != FontRawTokens.typeBold950)
        #expect(FontRawTokens.typeRegular150 != FontRawTokens.typeBold1050)
        #expect(FontRawTokens.typeRegular150 != FontRawTokens.typeBold1150)
        #expect(FontRawTokens.typeRegular150 != FontRawTokens.typeBold1250)
        #expect(FontRawTokens.typeRegular150 != FontRawTokens.typeBold1450)
        #expect(FontRawTokens.typeRegular150 != FontRawTokens.typeBold1850)

        #expect(FontRawTokens.typeRegular175 != FontRawTokens.typeRegular200)
        #expect(FontRawTokens.typeRegular175 != FontRawTokens.typeRegular250)
        #expect(FontRawTokens.typeRegular175 != FontRawTokens.typeBold150)
        #expect(FontRawTokens.typeRegular175 != FontRawTokens.typeBold175)
        #expect(FontRawTokens.typeRegular175 != FontRawTokens.typeBold200)
        #expect(FontRawTokens.typeRegular175 != FontRawTokens.typeBold250)
        #expect(FontRawTokens.typeRegular175 != FontRawTokens.typeBold300)
        #expect(FontRawTokens.typeRegular175 != FontRawTokens.typeBold350)
        #expect(FontRawTokens.typeRegular175 != FontRawTokens.typeBold450)
        #expect(FontRawTokens.typeRegular175 != FontRawTokens.typeBold550)
        #expect(FontRawTokens.typeRegular175 != FontRawTokens.typeBold650)
        #expect(FontRawTokens.typeRegular175 != FontRawTokens.typeBold750)
        #expect(FontRawTokens.typeRegular175 != FontRawTokens.typeBold850)
        #expect(FontRawTokens.typeRegular175 != FontRawTokens.typeBold950)
        #expect(FontRawTokens.typeRegular175 != FontRawTokens.typeBold1050)
        #expect(FontRawTokens.typeRegular175 != FontRawTokens.typeBold1150)
        #expect(FontRawTokens.typeRegular175 != FontRawTokens.typeBold1250)
        #expect(FontRawTokens.typeRegular175 != FontRawTokens.typeBold1450)
        #expect(FontRawTokens.typeRegular175 != FontRawTokens.typeBold1850)

        #expect(FontRawTokens.typeRegular200 != FontRawTokens.typeRegular250)
        #expect(FontRawTokens.typeRegular200 != FontRawTokens.typeRegular300)
        #expect(FontRawTokens.typeRegular200 != FontRawTokens.typeBold150)
        #expect(FontRawTokens.typeRegular200 != FontRawTokens.typeBold175)
        #expect(FontRawTokens.typeRegular200 != FontRawTokens.typeBold200)
        #expect(FontRawTokens.typeRegular200 != FontRawTokens.typeBold250)
        #expect(FontRawTokens.typeRegular200 != FontRawTokens.typeBold300)
        #expect(FontRawTokens.typeRegular200 != FontRawTokens.typeBold350)
        #expect(FontRawTokens.typeRegular200 != FontRawTokens.typeBold450)
        #expect(FontRawTokens.typeRegular200 != FontRawTokens.typeBold550)
        #expect(FontRawTokens.typeRegular200 != FontRawTokens.typeBold650)
        #expect(FontRawTokens.typeRegular200 != FontRawTokens.typeBold750)
        #expect(FontRawTokens.typeRegular200 != FontRawTokens.typeBold850)
        #expect(FontRawTokens.typeRegular200 != FontRawTokens.typeBold950)
        #expect(FontRawTokens.typeRegular200 != FontRawTokens.typeBold1050)
        #expect(FontRawTokens.typeRegular200 != FontRawTokens.typeBold1150)
        #expect(FontRawTokens.typeRegular200 != FontRawTokens.typeBold1250)
        #expect(FontRawTokens.typeRegular200 != FontRawTokens.typeBold1450)
        #expect(FontRawTokens.typeRegular200 != FontRawTokens.typeBold1850)

        #expect(FontRawTokens.typeRegular250 != FontRawTokens.typeRegular300)
        #expect(FontRawTokens.typeRegular250 != FontRawTokens.typeBold150)
        #expect(FontRawTokens.typeRegular250 != FontRawTokens.typeBold175)
        #expect(FontRawTokens.typeRegular250 != FontRawTokens.typeBold200)
        #expect(FontRawTokens.typeRegular250 != FontRawTokens.typeBold250)
        #expect(FontRawTokens.typeRegular250 != FontRawTokens.typeBold300)
        #expect(FontRawTokens.typeRegular250 != FontRawTokens.typeBold350)
        #expect(FontRawTokens.typeRegular250 != FontRawTokens.typeBold450)
        #expect(FontRawTokens.typeRegular250 != FontRawTokens.typeBold550)
        #expect(FontRawTokens.typeRegular250 != FontRawTokens.typeBold650)
        #expect(FontRawTokens.typeRegular250 != FontRawTokens.typeBold750)
        #expect(FontRawTokens.typeRegular250 != FontRawTokens.typeBold850)
        #expect(FontRawTokens.typeRegular250 != FontRawTokens.typeBold950)
        #expect(FontRawTokens.typeRegular250 != FontRawTokens.typeBold1050)
        #expect(FontRawTokens.typeRegular250 != FontRawTokens.typeBold1150)
        #expect(FontRawTokens.typeRegular250 != FontRawTokens.typeBold1250)
        #expect(FontRawTokens.typeRegular250 != FontRawTokens.typeBold1450)
        #expect(FontRawTokens.typeRegular250 != FontRawTokens.typeBold1850)

        #expect(FontRawTokens.typeRegular300 != FontRawTokens.typeBold150)
        #expect(FontRawTokens.typeRegular300 != FontRawTokens.typeBold175)
        #expect(FontRawTokens.typeRegular300 != FontRawTokens.typeBold200)
        #expect(FontRawTokens.typeRegular300 != FontRawTokens.typeBold250)
        #expect(FontRawTokens.typeRegular300 != FontRawTokens.typeBold300)
        #expect(FontRawTokens.typeRegular300 != FontRawTokens.typeBold350)
        #expect(FontRawTokens.typeRegular300 != FontRawTokens.typeBold450)
        #expect(FontRawTokens.typeRegular300 != FontRawTokens.typeBold550)
        #expect(FontRawTokens.typeRegular300 != FontRawTokens.typeBold650)
        #expect(FontRawTokens.typeRegular300 != FontRawTokens.typeBold750)
        #expect(FontRawTokens.typeRegular300 != FontRawTokens.typeBold850)
        #expect(FontRawTokens.typeRegular300 != FontRawTokens.typeBold950)
        #expect(FontRawTokens.typeRegular300 != FontRawTokens.typeBold1050)
        #expect(FontRawTokens.typeRegular300 != FontRawTokens.typeBold1150)
        #expect(FontRawTokens.typeRegular300 != FontRawTokens.typeBold1250)
        #expect(FontRawTokens.typeRegular300 != FontRawTokens.typeBold1450)
        #expect(FontRawTokens.typeRegular300 != FontRawTokens.typeBold1850)

        #expect(FontRawTokens.typeBold150 != FontRawTokens.typeBold175)
        #expect(FontRawTokens.typeBold150 != FontRawTokens.typeBold200)
        #expect(FontRawTokens.typeBold150 != FontRawTokens.typeBold250)
        #expect(FontRawTokens.typeBold150 != FontRawTokens.typeBold300)
        #expect(FontRawTokens.typeBold150 != FontRawTokens.typeBold350)
        #expect(FontRawTokens.typeBold150 != FontRawTokens.typeBold450)
        #expect(FontRawTokens.typeBold150 != FontRawTokens.typeBold550)
        #expect(FontRawTokens.typeBold150 != FontRawTokens.typeBold650)
        #expect(FontRawTokens.typeBold150 != FontRawTokens.typeBold750)
        #expect(FontRawTokens.typeBold150 != FontRawTokens.typeBold850)
        #expect(FontRawTokens.typeBold150 != FontRawTokens.typeBold950)
        #expect(FontRawTokens.typeBold150 != FontRawTokens.typeBold1050)
        #expect(FontRawTokens.typeBold150 != FontRawTokens.typeBold1150)
        #expect(FontRawTokens.typeBold150 != FontRawTokens.typeBold1250)
        #expect(FontRawTokens.typeBold150 != FontRawTokens.typeBold1450)
        #expect(FontRawTokens.typeBold150 != FontRawTokens.typeBold1850)

        #expect(FontRawTokens.typeBold175 != FontRawTokens.typeBold200)
        #expect(FontRawTokens.typeBold175 != FontRawTokens.typeBold250)
        #expect(FontRawTokens.typeBold175 != FontRawTokens.typeBold300)
        #expect(FontRawTokens.typeBold175 != FontRawTokens.typeBold350)
        #expect(FontRawTokens.typeBold175 != FontRawTokens.typeBold450)
        #expect(FontRawTokens.typeBold175 != FontRawTokens.typeBold550)
        #expect(FontRawTokens.typeBold175 != FontRawTokens.typeBold650)
        #expect(FontRawTokens.typeBold175 != FontRawTokens.typeBold750)
        #expect(FontRawTokens.typeBold175 != FontRawTokens.typeBold850)
        #expect(FontRawTokens.typeBold175 != FontRawTokens.typeBold950)
        #expect(FontRawTokens.typeBold175 != FontRawTokens.typeBold1050)
        #expect(FontRawTokens.typeBold175 != FontRawTokens.typeBold1150)
        #expect(FontRawTokens.typeBold175 != FontRawTokens.typeBold1250)
        #expect(FontRawTokens.typeBold175 != FontRawTokens.typeBold1450)
        #expect(FontRawTokens.typeBold175 != FontRawTokens.typeBold1850)

        #expect(FontRawTokens.typeBold200 != FontRawTokens.typeBold250)
        #expect(FontRawTokens.typeBold200 != FontRawTokens.typeBold300)
        #expect(FontRawTokens.typeBold200 != FontRawTokens.typeBold350)
        #expect(FontRawTokens.typeBold200 != FontRawTokens.typeBold450)
        #expect(FontRawTokens.typeBold200 != FontRawTokens.typeBold550)
        #expect(FontRawTokens.typeBold200 != FontRawTokens.typeBold650)
        #expect(FontRawTokens.typeBold200 != FontRawTokens.typeBold750)
        #expect(FontRawTokens.typeBold200 != FontRawTokens.typeBold850)
        #expect(FontRawTokens.typeBold200 != FontRawTokens.typeBold950)
        #expect(FontRawTokens.typeBold200 != FontRawTokens.typeBold1050)
        #expect(FontRawTokens.typeBold200 != FontRawTokens.typeBold1150)
        #expect(FontRawTokens.typeBold200 != FontRawTokens.typeBold1250)
        #expect(FontRawTokens.typeBold200 != FontRawTokens.typeBold1450)
        #expect(FontRawTokens.typeBold200 != FontRawTokens.typeBold1850)

        #expect(FontRawTokens.typeBold250 != FontRawTokens.typeBold300)
        #expect(FontRawTokens.typeBold250 != FontRawTokens.typeBold350)
        #expect(FontRawTokens.typeBold250 != FontRawTokens.typeBold450)
        #expect(FontRawTokens.typeBold250 != FontRawTokens.typeBold550)
        #expect(FontRawTokens.typeBold250 != FontRawTokens.typeBold650)
        #expect(FontRawTokens.typeBold250 != FontRawTokens.typeBold750)
        #expect(FontRawTokens.typeBold250 != FontRawTokens.typeBold850)
        #expect(FontRawTokens.typeBold250 != FontRawTokens.typeBold950)
        #expect(FontRawTokens.typeBold250 != FontRawTokens.typeBold1050)
        #expect(FontRawTokens.typeBold250 != FontRawTokens.typeBold1150)
        #expect(FontRawTokens.typeBold250 != FontRawTokens.typeBold1250)
        #expect(FontRawTokens.typeBold250 != FontRawTokens.typeBold1450)
        #expect(FontRawTokens.typeBold250 != FontRawTokens.typeBold1850)

        #expect(FontRawTokens.typeBold300 != FontRawTokens.typeBold350)
        #expect(FontRawTokens.typeBold300 != FontRawTokens.typeBold450)
        #expect(FontRawTokens.typeBold300 != FontRawTokens.typeBold550)
        #expect(FontRawTokens.typeBold300 != FontRawTokens.typeBold650)
        #expect(FontRawTokens.typeBold300 != FontRawTokens.typeBold750)
        #expect(FontRawTokens.typeBold300 != FontRawTokens.typeBold850)
        #expect(FontRawTokens.typeBold300 != FontRawTokens.typeBold950)
        #expect(FontRawTokens.typeBold300 != FontRawTokens.typeBold1050)
        #expect(FontRawTokens.typeBold300 != FontRawTokens.typeBold1150)
        #expect(FontRawTokens.typeBold300 != FontRawTokens.typeBold1250)
        #expect(FontRawTokens.typeBold300 != FontRawTokens.typeBold1450)
        #expect(FontRawTokens.typeBold300 != FontRawTokens.typeBold1850)

        #expect(FontRawTokens.typeBold350 != FontRawTokens.typeBold450)
        #expect(FontRawTokens.typeBold350 != FontRawTokens.typeBold550)
        #expect(FontRawTokens.typeBold350 != FontRawTokens.typeBold650)
        #expect(FontRawTokens.typeBold350 != FontRawTokens.typeBold750)
        #expect(FontRawTokens.typeBold350 != FontRawTokens.typeBold850)
        #expect(FontRawTokens.typeBold350 != FontRawTokens.typeBold950)
        #expect(FontRawTokens.typeBold350 != FontRawTokens.typeBold1050)
        #expect(FontRawTokens.typeBold350 != FontRawTokens.typeBold1150)
        #expect(FontRawTokens.typeBold350 != FontRawTokens.typeBold1250)
        #expect(FontRawTokens.typeBold350 != FontRawTokens.typeBold1450)
        #expect(FontRawTokens.typeBold350 != FontRawTokens.typeBold1850)

        #expect(FontRawTokens.typeBold450 != FontRawTokens.typeBold550)
        #expect(FontRawTokens.typeBold450 != FontRawTokens.typeBold650)
        #expect(FontRawTokens.typeBold450 != FontRawTokens.typeBold750)
        #expect(FontRawTokens.typeBold450 != FontRawTokens.typeBold850)
        #expect(FontRawTokens.typeBold450 != FontRawTokens.typeBold950)
        #expect(FontRawTokens.typeBold450 != FontRawTokens.typeBold1050)
        #expect(FontRawTokens.typeBold450 != FontRawTokens.typeBold1150)
        #expect(FontRawTokens.typeBold450 != FontRawTokens.typeBold1250)
        #expect(FontRawTokens.typeBold450 != FontRawTokens.typeBold1450)
        #expect(FontRawTokens.typeBold450 != FontRawTokens.typeBold1850)

        #expect(FontRawTokens.typeBold550 != FontRawTokens.typeBold650)
        #expect(FontRawTokens.typeBold550 != FontRawTokens.typeBold750)
        #expect(FontRawTokens.typeBold550 != FontRawTokens.typeBold850)
        #expect(FontRawTokens.typeBold550 != FontRawTokens.typeBold950)
        #expect(FontRawTokens.typeBold550 != FontRawTokens.typeBold1050)
        #expect(FontRawTokens.typeBold550 != FontRawTokens.typeBold1150)
        #expect(FontRawTokens.typeBold550 != FontRawTokens.typeBold1250)
        #expect(FontRawTokens.typeBold550 != FontRawTokens.typeBold1450)
        #expect(FontRawTokens.typeBold550 != FontRawTokens.typeBold1850)

        #expect(FontRawTokens.typeBold650 != FontRawTokens.typeBold750)
        #expect(FontRawTokens.typeBold650 != FontRawTokens.typeBold850)
        #expect(FontRawTokens.typeBold650 != FontRawTokens.typeBold950)
        #expect(FontRawTokens.typeBold650 != FontRawTokens.typeBold1050)
        #expect(FontRawTokens.typeBold650 != FontRawTokens.typeBold1150)
        #expect(FontRawTokens.typeBold650 != FontRawTokens.typeBold1250)
        #expect(FontRawTokens.typeBold650 != FontRawTokens.typeBold1450)
        #expect(FontRawTokens.typeBold650 != FontRawTokens.typeBold1850)

        #expect(FontRawTokens.typeBold750 != FontRawTokens.typeBold850)
        #expect(FontRawTokens.typeBold750 != FontRawTokens.typeBold950)
        #expect(FontRawTokens.typeBold750 != FontRawTokens.typeBold1050)
        #expect(FontRawTokens.typeBold750 != FontRawTokens.typeBold1150)
        #expect(FontRawTokens.typeBold750 != FontRawTokens.typeBold1250)
        #expect(FontRawTokens.typeBold750 != FontRawTokens.typeBold1450)
        #expect(FontRawTokens.typeBold750 != FontRawTokens.typeBold1850)

        #expect(FontRawTokens.typeBold850 != FontRawTokens.typeBold950)
        #expect(FontRawTokens.typeBold850 != FontRawTokens.typeBold1050)
        #expect(FontRawTokens.typeBold850 != FontRawTokens.typeBold1150)
        #expect(FontRawTokens.typeBold850 != FontRawTokens.typeBold1250)
        #expect(FontRawTokens.typeBold850 != FontRawTokens.typeBold1450)
        #expect(FontRawTokens.typeBold850 != FontRawTokens.typeBold1850)

        #expect(FontRawTokens.typeBold950 != FontRawTokens.typeBold1050)
        #expect(FontRawTokens.typeBold950 != FontRawTokens.typeBold1150)
        #expect(FontRawTokens.typeBold950 != FontRawTokens.typeBold1250)
        #expect(FontRawTokens.typeBold950 != FontRawTokens.typeBold1450)
        #expect(FontRawTokens.typeBold950 != FontRawTokens.typeBold1850)

        #expect(FontRawTokens.typeBold1050 != FontRawTokens.typeBold1150)
        #expect(FontRawTokens.typeBold1050 != FontRawTokens.typeBold1250)
        #expect(FontRawTokens.typeBold1050 != FontRawTokens.typeBold1450)
        #expect(FontRawTokens.typeBold1050 != FontRawTokens.typeBold1850)

        #expect(FontRawTokens.typeBold1150 != FontRawTokens.typeBold1250)
        #expect(FontRawTokens.typeBold1150 != FontRawTokens.typeBold1450)
        #expect(FontRawTokens.typeBold1150 != FontRawTokens.typeBold1850)

        #expect(FontRawTokens.typeBold1250 != FontRawTokens.typeBold1450)
        #expect(FontRawTokens.typeBold1250 != FontRawTokens.typeBold1850)

        #expect(FontRawTokens.typeBold1450 != FontRawTokens.typeBold1850)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable function_body_length

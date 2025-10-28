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
    private static let lineHeightBase: Double = 4

    /// By looking all the values, it appears all line height raw tokens are factor of 50
    private static let weightBase: Int = 50

    /// Supposed minimal value for font letter spacing
    private static let letterSpacingMinValue: Double = -1.5

    /// Supposed maximal value for font letter spacing
    private static let letterSpacingMaxValue: Double = 0.5

    // MARK: - Primitive token - Typography - Font family

    @Test
    func fontRawTokenFontFamilyMonospaceMenlo() throws {
        #expect(FontRawTokens.familyMonospaceMenlo == "Menlo")
    }

    @Test
    func fontRawTokenFontFamilySystemSfMono() throws {
        #expect(FontRawTokens.familyMonospaceSfMono == "SF Mono")
    }

    @Test
    func fontRawTokenFontFamilySystemSfPro() throws {
        #expect(FontRawTokens.familySystemSfPro == "SF Pro")
    }

    @Test
    func fontRawTokensFontFamilyAreAllDifferent() throws {
        #expect(FontRawTokens.familySystemSfPro != FontRawTokens.familyMonospaceMenlo)
    }

    // MARK: - Primitive token - Typography - Font size

    /*
     Ensure tokens will be never 0
     */

    @Test
    func fontRawTokensFontSize150NotNull() throws {
        #expect(FontRawTokens.size150 != 0)
    }

    @Test
    func fontRawTokensFontSize175NotNull() throws {
        #expect(FontRawTokens.size175 != 0)
    }

    @Test
    func fontRawTokensFontSize200NotNull() throws {
        #expect(FontRawTokens.size200 != 0)
    }

    @Test
    func fontRawTokensFontSize250NotNull() throws {
        #expect(FontRawTokens.size250 != 0)
    }

    @Test
    func fontRawTokensFontSize300NotNull() throws {
        #expect(FontRawTokens.size300 != 0)
    }

    @Test
    func fontRawTokensFontSize350NotNull() throws {
        #expect(FontRawTokens.size350 != 0)
    }

    @Test
    func fontRawTokensFontSize450NotNull() throws {
        #expect(FontRawTokens.size450 != 0)
    }

    @Test
    func fontRawTokensFontSize550NotNull() throws {
        #expect(FontRawTokens.size550 != 0)
    }

    @Test
    func fontRawTokensFontSize650NotNull() throws {
        #expect(FontRawTokens.size650 != 0)
    }

    @Test
    func fontRawTokensFontSize750NotNull() throws {
        #expect(FontRawTokens.size750 != 0)
    }

    @Test
    func fontRawTokensFontSize850NotNull() throws {
        #expect(FontRawTokens.size850 != 0)
    }

    @Test
    func fontRawTokensFontSize1050NotNull() throws {
        #expect(FontRawTokens.size1050 != 0)
    }

    @Test
    func fontRawTokensFontSize1150NotNull() throws {
        #expect(FontRawTokens.size1150 != 0)
    }

    @Test
    func fontRawTokensFontSize1250NotNull() throws {
        #expect(FontRawTokens.size1250 != 0)
    }

    @Test
    func fontRawTokensFontSize1450NotNull() throws {
        #expect(FontRawTokens.size1450 != 0)
    }

    @Test
    func fontRawTokensFontSize1850NotNull() throws {
        #expect(FontRawTokens.size1850 != 0)
    }

    /*
     Comparisons between tokens one by one
     */

    @Test
    func fontRawTokensFontSize150LessThanFontSize175() throws {
        #expect(FontRawTokens.size150 < FontRawTokens.size175)
    }

    @Test
    func fontRawTokensFontSize175LessThanFontSize200() throws {
        #expect(FontRawTokens.size175 < FontRawTokens.size200)
    }

    @Test
    func fontRawTokensFontSize200LessThanFontSize250() throws {
        #expect(FontRawTokens.size200 < FontRawTokens.size250)
    }

    @Test
    func fontRawTokensFontSize250LessThanFontSize300() throws {
        #expect(FontRawTokens.size250 < FontRawTokens.size300)
    }

    @Test
    func fontRawTokensFontSize300LessThanFontSize350() throws {
        #expect(FontRawTokens.size300 < FontRawTokens.size350)
    }

    @Test
    func fontRawTokensFontSize350LessThanFontSize450() throws {
        #expect(FontRawTokens.size350 < FontRawTokens.size450)
    }

    @Test
    func fontRawTokensFontSize450LessThanFontSize550() throws {
        #expect(FontRawTokens.size450 < FontRawTokens.size550)
    }

    @Test
    func fontRawTokensFontSize550LessThanFontSize650() throws {
        #expect(FontRawTokens.size550 < FontRawTokens.size650)
    }

    @Test
    func fontRawTokensFontSize650LessThanFontSize750() throws {
        #expect(FontRawTokens.size650 < FontRawTokens.size750)
    }

    @Test
    func fontRawTokensFontSize750LessThanFontSize850() throws {
        #expect(FontRawTokens.size750 < FontRawTokens.size850)
    }

    @Test
    func fontRawTokensFontSize850LessThanFontSize950() throws {
        #expect(FontRawTokens.size850 < FontRawTokens.size950)
    }

    @Test
    func fontRawTokensFontSize950LessThanFontSize1050() throws {
        #expect(FontRawTokens.size950 < FontRawTokens.size1050)
    }

    @Test
    func fontRawTokensFontSize1050LessThanFontSize1150() throws {
        #expect(FontRawTokens.size1050 < FontRawTokens.size1150)
    }

    @Test
    func fontRawTokensFontSize1150LessThanFontSize1250() throws {
        #expect(FontRawTokens.size1150 < FontRawTokens.size1250)
    }

    @Test
    func fontRawTokensFontSize1250LessThanFontSize1450() throws {
        #expect(FontRawTokens.size1250 < FontRawTokens.size1450)
    }

    @Test
    func fontRawTokensFontSize1450LessThanFontSize1850() throws {
        #expect(FontRawTokens.size1450 < FontRawTokens.size1850)
    }

    /*
     Check there is no duplicate
     */

    @Test
    func fontRawTokensFontSizesAreAllDifferent() throws {
        #expect(FontRawTokens.size150 != FontRawTokens.size175)
        #expect(FontRawTokens.size150 != FontRawTokens.size200)
        #expect(FontRawTokens.size150 != FontRawTokens.size250)
        #expect(FontRawTokens.size150 != FontRawTokens.size300)
        #expect(FontRawTokens.size150 != FontRawTokens.size350)
        #expect(FontRawTokens.size150 != FontRawTokens.size450)
        #expect(FontRawTokens.size150 != FontRawTokens.size550)
        #expect(FontRawTokens.size150 != FontRawTokens.size650)
        #expect(FontRawTokens.size150 != FontRawTokens.size750)
        #expect(FontRawTokens.size150 != FontRawTokens.size850)
        #expect(FontRawTokens.size150 != FontRawTokens.size950)
        #expect(FontRawTokens.size150 != FontRawTokens.size1050)
        #expect(FontRawTokens.size150 != FontRawTokens.size1150)
        #expect(FontRawTokens.size150 != FontRawTokens.size1250)
        #expect(FontRawTokens.size150 != FontRawTokens.size1450)
        #expect(FontRawTokens.size150 != FontRawTokens.size1850)

        #expect(FontRawTokens.size175 != FontRawTokens.size200)
        #expect(FontRawTokens.size175 != FontRawTokens.size250)
        #expect(FontRawTokens.size175 != FontRawTokens.size300)
        #expect(FontRawTokens.size175 != FontRawTokens.size350)
        #expect(FontRawTokens.size175 != FontRawTokens.size450)
        #expect(FontRawTokens.size175 != FontRawTokens.size550)
        #expect(FontRawTokens.size175 != FontRawTokens.size650)
        #expect(FontRawTokens.size175 != FontRawTokens.size750)
        #expect(FontRawTokens.size175 != FontRawTokens.size850)
        #expect(FontRawTokens.size175 != FontRawTokens.size950)
        #expect(FontRawTokens.size175 != FontRawTokens.size1050)
        #expect(FontRawTokens.size175 != FontRawTokens.size1150)
        #expect(FontRawTokens.size175 != FontRawTokens.size1250)
        #expect(FontRawTokens.size175 != FontRawTokens.size1450)
        #expect(FontRawTokens.size175 != FontRawTokens.size1850)

        #expect(FontRawTokens.size200 != FontRawTokens.size250)
        #expect(FontRawTokens.size200 != FontRawTokens.size300)
        #expect(FontRawTokens.size200 != FontRawTokens.size350)
        #expect(FontRawTokens.size200 != FontRawTokens.size450)
        #expect(FontRawTokens.size200 != FontRawTokens.size550)
        #expect(FontRawTokens.size200 != FontRawTokens.size650)
        #expect(FontRawTokens.size200 != FontRawTokens.size750)
        #expect(FontRawTokens.size200 != FontRawTokens.size850)
        #expect(FontRawTokens.size200 != FontRawTokens.size950)
        #expect(FontRawTokens.size200 != FontRawTokens.size1050)
        #expect(FontRawTokens.size200 != FontRawTokens.size1150)
        #expect(FontRawTokens.size200 != FontRawTokens.size1250)
        #expect(FontRawTokens.size200 != FontRawTokens.size1450)
        #expect(FontRawTokens.size200 != FontRawTokens.size1850)

        #expect(FontRawTokens.size250 != FontRawTokens.size300)
        #expect(FontRawTokens.size250 != FontRawTokens.size350)
        #expect(FontRawTokens.size250 != FontRawTokens.size450)
        #expect(FontRawTokens.size250 != FontRawTokens.size550)
        #expect(FontRawTokens.size250 != FontRawTokens.size650)
        #expect(FontRawTokens.size250 != FontRawTokens.size750)
        #expect(FontRawTokens.size250 != FontRawTokens.size850)
        #expect(FontRawTokens.size250 != FontRawTokens.size950)
        #expect(FontRawTokens.size250 != FontRawTokens.size1050)
        #expect(FontRawTokens.size250 != FontRawTokens.size1150)
        #expect(FontRawTokens.size250 != FontRawTokens.size1250)
        #expect(FontRawTokens.size250 != FontRawTokens.size1450)
        #expect(FontRawTokens.size250 != FontRawTokens.size1850)

        #expect(FontRawTokens.size300 != FontRawTokens.size350)
        #expect(FontRawTokens.size300 != FontRawTokens.size450)
        #expect(FontRawTokens.size300 != FontRawTokens.size550)
        #expect(FontRawTokens.size300 != FontRawTokens.size650)
        #expect(FontRawTokens.size300 != FontRawTokens.size750)
        #expect(FontRawTokens.size300 != FontRawTokens.size850)
        #expect(FontRawTokens.size300 != FontRawTokens.size950)
        #expect(FontRawTokens.size300 != FontRawTokens.size1050)
        #expect(FontRawTokens.size300 != FontRawTokens.size1150)
        #expect(FontRawTokens.size300 != FontRawTokens.size1250)
        #expect(FontRawTokens.size300 != FontRawTokens.size1450)
        #expect(FontRawTokens.size300 != FontRawTokens.size1850)

        #expect(FontRawTokens.size350 != FontRawTokens.size450)
        #expect(FontRawTokens.size350 != FontRawTokens.size550)
        #expect(FontRawTokens.size350 != FontRawTokens.size650)
        #expect(FontRawTokens.size350 != FontRawTokens.size750)
        #expect(FontRawTokens.size350 != FontRawTokens.size850)
        #expect(FontRawTokens.size350 != FontRawTokens.size950)
        #expect(FontRawTokens.size350 != FontRawTokens.size1050)
        #expect(FontRawTokens.size350 != FontRawTokens.size1150)
        #expect(FontRawTokens.size350 != FontRawTokens.size1250)
        #expect(FontRawTokens.size350 != FontRawTokens.size1450)
        #expect(FontRawTokens.size350 != FontRawTokens.size1850)

        #expect(FontRawTokens.size450 != FontRawTokens.size550)
        #expect(FontRawTokens.size450 != FontRawTokens.size650)
        #expect(FontRawTokens.size450 != FontRawTokens.size750)
        #expect(FontRawTokens.size450 != FontRawTokens.size850)
        #expect(FontRawTokens.size450 != FontRawTokens.size950)
        #expect(FontRawTokens.size450 != FontRawTokens.size1050)
        #expect(FontRawTokens.size450 != FontRawTokens.size1150)
        #expect(FontRawTokens.size450 != FontRawTokens.size1250)
        #expect(FontRawTokens.size450 != FontRawTokens.size1450)
        #expect(FontRawTokens.size450 != FontRawTokens.size1850)

        #expect(FontRawTokens.size550 != FontRawTokens.size650)
        #expect(FontRawTokens.size550 != FontRawTokens.size750)
        #expect(FontRawTokens.size550 != FontRawTokens.size850)
        #expect(FontRawTokens.size550 != FontRawTokens.size950)
        #expect(FontRawTokens.size550 != FontRawTokens.size1050)
        #expect(FontRawTokens.size550 != FontRawTokens.size1150)
        #expect(FontRawTokens.size550 != FontRawTokens.size1250)
        #expect(FontRawTokens.size550 != FontRawTokens.size1450)
        #expect(FontRawTokens.size550 != FontRawTokens.size1850)

        #expect(FontRawTokens.size650 != FontRawTokens.size750)
        #expect(FontRawTokens.size650 != FontRawTokens.size850)
        #expect(FontRawTokens.size650 != FontRawTokens.size950)
        #expect(FontRawTokens.size650 != FontRawTokens.size1050)
        #expect(FontRawTokens.size650 != FontRawTokens.size1150)
        #expect(FontRawTokens.size650 != FontRawTokens.size1250)
        #expect(FontRawTokens.size650 != FontRawTokens.size1450)
        #expect(FontRawTokens.size650 != FontRawTokens.size1850)

        #expect(FontRawTokens.size750 != FontRawTokens.size850)
        #expect(FontRawTokens.size750 != FontRawTokens.size950)
        #expect(FontRawTokens.size750 != FontRawTokens.size1050)
        #expect(FontRawTokens.size750 != FontRawTokens.size1150)
        #expect(FontRawTokens.size750 != FontRawTokens.size1250)
        #expect(FontRawTokens.size750 != FontRawTokens.size1450)
        #expect(FontRawTokens.size750 != FontRawTokens.size1850)

        #expect(FontRawTokens.size850 != FontRawTokens.size950)
        #expect(FontRawTokens.size850 != FontRawTokens.size1050)
        #expect(FontRawTokens.size850 != FontRawTokens.size1150)
        #expect(FontRawTokens.size850 != FontRawTokens.size1250)
        #expect(FontRawTokens.size850 != FontRawTokens.size1450)
        #expect(FontRawTokens.size850 != FontRawTokens.size1850)

        #expect(FontRawTokens.size950 != FontRawTokens.size1050)
        #expect(FontRawTokens.size950 != FontRawTokens.size1150)
        #expect(FontRawTokens.size950 != FontRawTokens.size1250)
        #expect(FontRawTokens.size950 != FontRawTokens.size1450)
        #expect(FontRawTokens.size950 != FontRawTokens.size1850)

        #expect(FontRawTokens.size1150 != FontRawTokens.size1250)
        #expect(FontRawTokens.size1150 != FontRawTokens.size1450)
        #expect(FontRawTokens.size1150 != FontRawTokens.size1850)

        #expect(FontRawTokens.size1250 != FontRawTokens.size1450)
        #expect(FontRawTokens.size1250 != FontRawTokens.size1850)

        #expect(FontRawTokens.size1450 != FontRawTokens.size1850)
    }

    // MARK: - Primitive token - Typography - Line height

    /*
     Ensure tokens will be never 0
     */

    @Test
    func fontRawTokensFontLineHeight250NotNull() throws {
        #expect(FontRawTokens.lineHeight250 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight350NotNull() throws {
        #expect(FontRawTokens.lineHeight350 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight450NotNull() throws {
        #expect(FontRawTokens.lineHeight450 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight550NotNull() throws {
        #expect(FontRawTokens.lineHeight550 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight650NotNull() throws {
        #expect(FontRawTokens.lineHeight650 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight750NotNull() throws {
        #expect(FontRawTokens.lineHeight750 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight850NotNull() throws {
        #expect(FontRawTokens.lineHeight850 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight950NotNull() throws {
        #expect(FontRawTokens.lineHeight950 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight1050NotNull() throws {
        #expect(FontRawTokens.lineHeight1050 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight1150NotNull() throws {
        #expect(FontRawTokens.lineHeight1150 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight1250NotNull() throws {
        #expect(FontRawTokens.lineHeight1250 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight1350NotNull() throws {
        #expect(FontRawTokens.lineHeight1350 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight1450NotNull() throws {
        #expect(FontRawTokens.lineHeight1450 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight1850NotNull() throws {
        #expect(FontRawTokens.lineHeight1850 != 0)
    }

    @Test
    func fontRawTokensFontLineHeight2050NotNull() throws {
        #expect(FontRawTokens.lineHeight2050 != 0)
    }

    /*
     Comparisons one by one
     */

    @Test
    func fontRawTokensFontLineHeight250LessThanFontLineHeight350() throws {
        #expect(FontRawTokens.lineHeight250 < FontRawTokens.lineHeight350)
    }

    @Test
    func fontRawTokensFontLineHeight350LessThanFontLineHeight450() throws {
        #expect(FontRawTokens.lineHeight350 < FontRawTokens.lineHeight450)
    }

    @Test
    func fontRawTokensFontLineHeight450LessThanFontLineHeight550() throws {
        #expect(FontRawTokens.lineHeight450 < FontRawTokens.lineHeight550)
    }

    @Test
    func fontRawTokensFontLineHeight550LessThanFontLineHeight650() throws {
        #expect(FontRawTokens.lineHeight550 < FontRawTokens.lineHeight650)
    }

    @Test
    func fontRawTokensFontLineHeight650LessThanFontLineHeight750() throws {
        #expect(FontRawTokens.lineHeight650 < FontRawTokens.lineHeight750)
    }

    @Test
    func fontRawTokensFontLineHeight750LessThanFontLineHeight850() throws {
        #expect(FontRawTokens.lineHeight750 < FontRawTokens.lineHeight850)
    }

    @Test
    func fontRawTokensFontLineHeight850LessThanFontLineHeight950() throws {
        #expect(FontRawTokens.lineHeight850 < FontRawTokens.lineHeight950)
    }

    @Test
    func fontRawTokensFontLineHeight950LessThanFontLineHeight1050() throws {
        #expect(FontRawTokens.lineHeight950 < FontRawTokens.lineHeight1050)
    }

    @Test
    func fontRawTokensFontLineHeight1050LessThanFontLineHeight1150() throws {
        #expect(FontRawTokens.lineHeight1050 < FontRawTokens.lineHeight1150)
    }

    @Test
    func fontRawTokensFontLineHeight1150LessThanFontLineHeight1250() throws {
        #expect(FontRawTokens.lineHeight1150 < FontRawTokens.lineHeight1250)
    }

    @Test
    func fontRawTokensFontLineHeight1250LessThanFontLineHeight1350() throws {
        #expect(FontRawTokens.lineHeight1250 < FontRawTokens.lineHeight1350)
    }

    @Test
    func fontRawTokensFontLineHeight1350LessThanFontLineHeight1450() throws {
        #expect(FontRawTokens.lineHeight1350 < FontRawTokens.lineHeight1450)
    }

    @Test
    func fontRawTokensFontLineHeight1450LessThanFontLineHeight1850() throws {
        #expect(FontRawTokens.lineHeight1450 < FontRawTokens.lineHeight1850)
    }

    @Test
    func fontRawTokensFontLineHeight1850LessThanFontLineHeight2050() throws {
        #expect(FontRawTokens.lineHeight1850 < FontRawTokens.lineHeight2050)
    }

    /*
     Check if factors are the same
     */

    @Test func fontRawTokenLineHeight250MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.lineHeight250, factor: Self.lineHeightBase)
    }

    @Test func fontRawTokenLineHeight350MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.lineHeight350, factor: Self.lineHeightBase)
    }

    @Test func fontRawTokenLineHeight450MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.lineHeight450, factor: Self.lineHeightBase)
    }

    @Test func fontRawTokenLineHeight550MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.lineHeight550, factor: Self.lineHeightBase)
    }

    @Test func fontRawTokenLineHeight650MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.lineHeight650, factor: Self.lineHeightBase)
    }

    @Test func fontRawTokenLineHeight750MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.lineHeight750, factor: Self.lineHeightBase)
    }

    @Test func fontRawTokenLineHeight850MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.lineHeight850, factor: Self.lineHeightBase)
    }

    @Test func fontRawTokenFontLineHeight950MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.lineHeight950, factor: Self.lineHeightBase)
    }

    @Test func fontRawTokenFontLineHeight1050MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.lineHeight1050, factor: Self.lineHeightBase)
    }

    @Test func fontRawTokenFontLineHeight1150MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.lineHeight1150, factor: Self.lineHeightBase)
    }

    @Test func fontRawTokenFontLineHeight1250MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.lineHeight1250, factor: Self.lineHeightBase)
    }

    @Test func fontRawTokenFontLineHeight1350MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.lineHeight1350, factor: Self.lineHeightBase)
    }

    @Test func fontRawTokenFontLineHeight1450MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.lineHeight1450, factor: Self.lineHeightBase)
    }

    @Test func fontRawTokenFontLineHeight1850MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.lineHeight1850, factor: Self.lineHeightBase)
    }

    @Test func fontRawTokenFontLineHeight2050MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.lineHeight2050, factor: Self.lineHeightBase)
    }

    /*
     Check there is no duplicate
     */

    @Test
    func fontRawTokensFontLineHeightAreAllDifferent() throws {
        #expect(FontRawTokens.lineHeight250 != FontRawTokens.lineHeight350)
        #expect(FontRawTokens.lineHeight250 != FontRawTokens.lineHeight450)
        #expect(FontRawTokens.lineHeight250 != FontRawTokens.lineHeight550)
        #expect(FontRawTokens.lineHeight250 != FontRawTokens.lineHeight650)
        #expect(FontRawTokens.lineHeight250 != FontRawTokens.lineHeight750)
        #expect(FontRawTokens.lineHeight250 != FontRawTokens.lineHeight850)
        #expect(FontRawTokens.lineHeight250 != FontRawTokens.lineHeight950)
        #expect(FontRawTokens.lineHeight250 != FontRawTokens.lineHeight1050)
        #expect(FontRawTokens.lineHeight250 != FontRawTokens.lineHeight1150)
        #expect(FontRawTokens.lineHeight250 != FontRawTokens.lineHeight1250)
        #expect(FontRawTokens.lineHeight250 != FontRawTokens.lineHeight1350)
        #expect(FontRawTokens.lineHeight250 != FontRawTokens.lineHeight1450)
        #expect(FontRawTokens.lineHeight250 != FontRawTokens.lineHeight1850)
        #expect(FontRawTokens.lineHeight250 != FontRawTokens.lineHeight2050)

        #expect(FontRawTokens.lineHeight350 != FontRawTokens.lineHeight450)
        #expect(FontRawTokens.lineHeight350 != FontRawTokens.lineHeight550)
        #expect(FontRawTokens.lineHeight350 != FontRawTokens.lineHeight650)
        #expect(FontRawTokens.lineHeight350 != FontRawTokens.lineHeight750)
        #expect(FontRawTokens.lineHeight350 != FontRawTokens.lineHeight850)
        #expect(FontRawTokens.lineHeight350 != FontRawTokens.lineHeight950)
        #expect(FontRawTokens.lineHeight350 != FontRawTokens.lineHeight1050)
        #expect(FontRawTokens.lineHeight350 != FontRawTokens.lineHeight1150)
        #expect(FontRawTokens.lineHeight350 != FontRawTokens.lineHeight1250)
        #expect(FontRawTokens.lineHeight350 != FontRawTokens.lineHeight1350)
        #expect(FontRawTokens.lineHeight350 != FontRawTokens.lineHeight1450)
        #expect(FontRawTokens.lineHeight350 != FontRawTokens.lineHeight1850)
        #expect(FontRawTokens.lineHeight350 != FontRawTokens.lineHeight2050)

        #expect(FontRawTokens.lineHeight450 != FontRawTokens.lineHeight550)
        #expect(FontRawTokens.lineHeight450 != FontRawTokens.lineHeight650)
        #expect(FontRawTokens.lineHeight450 != FontRawTokens.lineHeight750)
        #expect(FontRawTokens.lineHeight450 != FontRawTokens.lineHeight850)
        #expect(FontRawTokens.lineHeight450 != FontRawTokens.lineHeight950)
        #expect(FontRawTokens.lineHeight450 != FontRawTokens.lineHeight1050)
        #expect(FontRawTokens.lineHeight450 != FontRawTokens.lineHeight1150)
        #expect(FontRawTokens.lineHeight450 != FontRawTokens.lineHeight1250)
        #expect(FontRawTokens.lineHeight450 != FontRawTokens.lineHeight1350)
        #expect(FontRawTokens.lineHeight450 != FontRawTokens.lineHeight1450)
        #expect(FontRawTokens.lineHeight450 != FontRawTokens.lineHeight1850)
        #expect(FontRawTokens.lineHeight450 != FontRawTokens.lineHeight2050)

        #expect(FontRawTokens.lineHeight550 != FontRawTokens.lineHeight650)
        #expect(FontRawTokens.lineHeight550 != FontRawTokens.lineHeight750)
        #expect(FontRawTokens.lineHeight550 != FontRawTokens.lineHeight850)
        #expect(FontRawTokens.lineHeight550 != FontRawTokens.lineHeight950)
        #expect(FontRawTokens.lineHeight550 != FontRawTokens.lineHeight1050)
        #expect(FontRawTokens.lineHeight550 != FontRawTokens.lineHeight1150)
        #expect(FontRawTokens.lineHeight550 != FontRawTokens.lineHeight1250)
        #expect(FontRawTokens.lineHeight550 != FontRawTokens.lineHeight1350)
        #expect(FontRawTokens.lineHeight550 != FontRawTokens.lineHeight1450)
        #expect(FontRawTokens.lineHeight550 != FontRawTokens.lineHeight1850)
        #expect(FontRawTokens.lineHeight550 != FontRawTokens.lineHeight2050)

        #expect(FontRawTokens.lineHeight650 != FontRawTokens.lineHeight750)
        #expect(FontRawTokens.lineHeight650 != FontRawTokens.lineHeight850)
        #expect(FontRawTokens.lineHeight650 != FontRawTokens.lineHeight950)
        #expect(FontRawTokens.lineHeight650 != FontRawTokens.lineHeight1050)
        #expect(FontRawTokens.lineHeight650 != FontRawTokens.lineHeight1150)
        #expect(FontRawTokens.lineHeight650 != FontRawTokens.lineHeight1250)
        #expect(FontRawTokens.lineHeight650 != FontRawTokens.lineHeight1350)
        #expect(FontRawTokens.lineHeight650 != FontRawTokens.lineHeight1450)
        #expect(FontRawTokens.lineHeight650 != FontRawTokens.lineHeight1850)
        #expect(FontRawTokens.lineHeight650 != FontRawTokens.lineHeight2050)

        #expect(FontRawTokens.lineHeight750 != FontRawTokens.lineHeight850)
        #expect(FontRawTokens.lineHeight750 != FontRawTokens.lineHeight950)
        #expect(FontRawTokens.lineHeight750 != FontRawTokens.lineHeight1050)
        #expect(FontRawTokens.lineHeight750 != FontRawTokens.lineHeight1150)
        #expect(FontRawTokens.lineHeight750 != FontRawTokens.lineHeight1250)
        #expect(FontRawTokens.lineHeight750 != FontRawTokens.lineHeight1350)
        #expect(FontRawTokens.lineHeight750 != FontRawTokens.lineHeight1450)
        #expect(FontRawTokens.lineHeight750 != FontRawTokens.lineHeight1850)
        #expect(FontRawTokens.lineHeight750 != FontRawTokens.lineHeight2050)

        #expect(FontRawTokens.lineHeight850 != FontRawTokens.lineHeight950)
        #expect(FontRawTokens.lineHeight850 != FontRawTokens.lineHeight1050)
        #expect(FontRawTokens.lineHeight850 != FontRawTokens.lineHeight1150)
        #expect(FontRawTokens.lineHeight850 != FontRawTokens.lineHeight1250)
        #expect(FontRawTokens.lineHeight850 != FontRawTokens.lineHeight1350)
        #expect(FontRawTokens.lineHeight850 != FontRawTokens.lineHeight1450)
        #expect(FontRawTokens.lineHeight850 != FontRawTokens.lineHeight1850)
        #expect(FontRawTokens.lineHeight850 != FontRawTokens.lineHeight2050)

        #expect(FontRawTokens.lineHeight950 != FontRawTokens.lineHeight1050)
        #expect(FontRawTokens.lineHeight950 != FontRawTokens.lineHeight1150)
        #expect(FontRawTokens.lineHeight950 != FontRawTokens.lineHeight1250)
        #expect(FontRawTokens.lineHeight950 != FontRawTokens.lineHeight1350)
        #expect(FontRawTokens.lineHeight950 != FontRawTokens.lineHeight1450)
        #expect(FontRawTokens.lineHeight950 != FontRawTokens.lineHeight1850)
        #expect(FontRawTokens.lineHeight950 != FontRawTokens.lineHeight2050)

        #expect(FontRawTokens.lineHeight1050 != FontRawTokens.lineHeight1150)
        #expect(FontRawTokens.lineHeight1050 != FontRawTokens.lineHeight1250)
        #expect(FontRawTokens.lineHeight1050 != FontRawTokens.lineHeight1350)
        #expect(FontRawTokens.lineHeight1050 != FontRawTokens.lineHeight1450)
        #expect(FontRawTokens.lineHeight1050 != FontRawTokens.lineHeight1850)
        #expect(FontRawTokens.lineHeight1050 != FontRawTokens.lineHeight2050)

        #expect(FontRawTokens.lineHeight1150 != FontRawTokens.lineHeight1250)
        #expect(FontRawTokens.lineHeight1150 != FontRawTokens.lineHeight1350)
        #expect(FontRawTokens.lineHeight1150 != FontRawTokens.lineHeight1450)
        #expect(FontRawTokens.lineHeight1150 != FontRawTokens.lineHeight1850)
        #expect(FontRawTokens.lineHeight1150 != FontRawTokens.lineHeight2050)

        #expect(FontRawTokens.lineHeight1250 != FontRawTokens.lineHeight1350)
        #expect(FontRawTokens.lineHeight1250 != FontRawTokens.lineHeight1450)
        #expect(FontRawTokens.lineHeight1250 != FontRawTokens.lineHeight1850)
        #expect(FontRawTokens.lineHeight1250 != FontRawTokens.lineHeight2050)

        #expect(FontRawTokens.lineHeight1350 != FontRawTokens.lineHeight1450)
        #expect(FontRawTokens.lineHeight1350 != FontRawTokens.lineHeight1850)
        #expect(FontRawTokens.lineHeight1350 != FontRawTokens.lineHeight2050)

        #expect(FontRawTokens.lineHeight1450 != FontRawTokens.lineHeight1850)
        #expect(FontRawTokens.lineHeight1450 != FontRawTokens.lineHeight2050)

        #expect(FontRawTokens.lineHeight1850 != FontRawTokens.lineHeight2050)
    }

    // MARK: - Primitive token - Typography - Letter spacing

    /*
     letterSpacing150 = size150 * Figma letterSpacing600
     letterSpacing175 = size175 * Figma letterSpacing600
     These tokens are both based on factor letterSpacing600, so they can be compared
     */

    @Test
    func fontRawTokensFontLetterSpacing150LessThanFontLetterSpacing175() throws {
        #expect(FontRawTokens.letterSpacing150 < FontRawTokens.letterSpacing175)
    }

    /*
     letterSpacing200 = size200 * Figma letterSpacing500
     letterSpacing250 = size250 * Figma letterSpacing500
     These tokens are both based on factor letterSpacing500, so they can be compared
     */

    @Test
    func fontRawTokensFontLetterSpacing200LessThanFontLetterSpacing250() throws {
        #expect(FontRawTokens.letterSpacing200 < FontRawTokens.letterSpacing250)
    }

    /*
     letterSpacing350 has a 0 value
     The bigger letterSpacing* tokens are, the lower their values will be (negative).
     */

    @Test
    func fontRawTokensFontLetterSpacing350GreaterThanFontLetterSpacing450() throws {
        #expect(FontRawTokens.letterSpacing350 > FontRawTokens.letterSpacing450)
    }

    @Test
    func fontRawTokensFontLetterSpacing450GreaterThanFontLetterSpacing550() throws {
        #expect(FontRawTokens.letterSpacing450 > FontRawTokens.letterSpacing550)
    }

    @Test
    func fontRawTokensFontLetterSpacing550GreaterThanFontLetterSpacing650() throws {
        #expect(FontRawTokens.letterSpacing550 > FontRawTokens.letterSpacing650)
    }

    @Test
    func fontRawTokensFontLetterSpacing650GreaterThanFontLetterSpacing750() throws {
        #expect(FontRawTokens.letterSpacing650 > FontRawTokens.letterSpacing750)
    }

    @Test
    func fontRawTokensFontLetterSpacing750GreaterThanFontLetterSpacing850() throws {
        #expect(FontRawTokens.letterSpacing750 > FontRawTokens.letterSpacing850)
    }

    @Test
    func fontRawTokensFontLetterSpacing850GreaterThanFontLetterSpacing950() throws {
        #expect(FontRawTokens.letterSpacing850 > FontRawTokens.letterSpacing950)
    }

    @Test
    func fontRawTokensFontLetterSpacing950GreaterThanFontLetterSpacing1050() throws {
        #expect(FontRawTokens.letterSpacing950 > FontRawTokens.letterSpacing1050)
    }

    @Test
    func fontRawTokensFontLetterSpacing1050GreaterThanFontLetterSpacing1150() throws {
        #expect(FontRawTokens.letterSpacing1050 > FontRawTokens.letterSpacing1150)
    }

    @Test
    func fontRawTokensFontLetterSpacing1150GreaterThanFontLetterSpacing1250() throws {
        #expect(FontRawTokens.letterSpacing1150 > FontRawTokens.letterSpacing1250)
    }

    @Test
    func fontRawTokensFontLetterSpacing1250GreaterThanFontLetterSpacing1450() throws {
        #expect(FontRawTokens.letterSpacing1250 > FontRawTokens.letterSpacing1450)
    }

    @Test
    func fontRawTokensFontLetterSpacing1450GreaterThanFontLetterSpacing1850() throws {
        #expect(FontRawTokens.letterSpacing1450 > FontRawTokens.letterSpacing1850)
    }

    @Test func fontRawTokensFontLetterSpacingAreInSuitableRange() {
        TestsUtils.assertBetween(min: Self.letterSpacingMinValue, FontRawTokens.letterSpacing150, max: Self.letterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.letterSpacingMinValue, FontRawTokens.letterSpacing175, max: Self.letterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.letterSpacingMinValue, FontRawTokens.letterSpacing200, max: Self.letterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.letterSpacingMinValue, FontRawTokens.letterSpacing250, max: Self.letterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.letterSpacingMinValue, FontRawTokens.letterSpacing300, max: Self.letterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.letterSpacingMinValue, FontRawTokens.letterSpacing350, max: Self.letterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.letterSpacingMinValue, FontRawTokens.letterSpacing450, max: Self.letterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.letterSpacingMinValue, FontRawTokens.letterSpacing550, max: Self.letterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.letterSpacingMinValue, FontRawTokens.letterSpacing650, max: Self.letterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.letterSpacingMinValue, FontRawTokens.letterSpacing750, max: Self.letterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.letterSpacingMinValue, FontRawTokens.letterSpacing850, max: Self.letterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.letterSpacingMinValue, FontRawTokens.letterSpacing950, max: Self.letterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.letterSpacingMinValue, FontRawTokens.letterSpacing1050, max: Self.letterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.letterSpacingMinValue, FontRawTokens.letterSpacing1150, max: Self.letterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.letterSpacingMinValue, FontRawTokens.letterSpacing1250, max: Self.letterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.letterSpacingMinValue, FontRawTokens.letterSpacing1450, max: Self.letterSpacingMaxValue)
        TestsUtils.assertBetween(min: Self.letterSpacingMinValue, FontRawTokens.letterSpacing1850, max: Self.letterSpacingMaxValue)
    }

    /*
     Ensure tokens will never be 0 (except letterSpacing350)
     */

    @Test
    func fontRawTokensFontLetterSpacing150NotNull() throws {
        #expect(FontRawTokens.letterSpacing150 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing175NotNull() throws {
        #expect(FontRawTokens.letterSpacing175 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing200NotNull() throws {
        #expect(FontRawTokens.letterSpacing200 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing250NotNull() throws {
        #expect(FontRawTokens.letterSpacing250 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing300NotNull() throws {
        #expect(FontRawTokens.letterSpacing300 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing350IsNull() throws {
        #expect(FontRawTokens.letterSpacing350 == 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing450NotNull() throws {
        #expect(FontRawTokens.letterSpacing450 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing550NotNull() throws {
        #expect(FontRawTokens.letterSpacing550 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing650NotNull() throws {
        #expect(FontRawTokens.letterSpacing650 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing750NotNull() throws {
        #expect(FontRawTokens.letterSpacing750 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing850NotNull() throws {
        #expect(FontRawTokens.letterSpacing850 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing950NotNull() throws {
        #expect(FontRawTokens.letterSpacing950 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing1050NotNull() throws {
        #expect(FontRawTokens.letterSpacing1050 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing1150NotNull() throws {
        #expect(FontRawTokens.letterSpacing1150 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing1250NotNull() throws {
        #expect(FontRawTokens.letterSpacing1250 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing1450NotNull() throws {
        #expect(FontRawTokens.letterSpacing1450 != 0)
    }

    @Test
    func fontRawTokensFontLetterSpacing1850NotNull() throws {
        #expect(FontRawTokens.letterSpacing1850 != 0)
    }

    /*
     Not test to ensure all font letter spacing tokens are different because
     their values are computed in Figma side using size and letter spacing not
     exposed here
     */

    // MARK: - Primitive token - Typography - Font weight

    /*
     Ensure no font weight is 0
     */

    @Test
    func fontRawTokensFontWeight100NotNull() throws {
        #expect(FontRawTokens.weight100 != 0)
    }

    @Test
    func fontRawTokensFontWeight200NotNull() throws {
        #expect(FontRawTokens.weight200 != 0)
    }

    @Test
    func fontRawTokensFontWeight300NotNull() throws {
        #expect(FontRawTokens.weight300 != 0)
    }

    @Test
    func fontRawTokensFontWeight400NotNull() throws {
        #expect(FontRawTokens.weight400 != 0)
    }

    @Test
    func fontRawTokensFontWeight500NotNull() throws {
        #expect(FontRawTokens.weight500 != 0)
    }

    @Test
    func fontRawTokensFontWeight600NotNull() throws {
        #expect(FontRawTokens.weight600 != 0)
    }

    @Test
    func fontRawTokensFontWeight700NotNull() throws {
        #expect(FontRawTokens.weight700 != 0)
    }

    @Test
    func fontRawTokensFontWeight800NotNull() throws {
        #expect(FontRawTokens.weight800 != 0)
    }

    @Test
    func fontRawTokensFontWeight900NotNull() throws {
        #expect(FontRawTokens.weight900 != 0)
    }

    @Test
    func fontRawTokensFontWeight950NotNull() throws {
        #expect(FontRawTokens.weight950 != 0)
    }

    /*
     Check if factors are the same
     */

    @Test func fontRawTokenFontWeight100MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.weight100, factor: Self.weightBase)
    }

    @Test func fontRawTokenFontWeight200MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.weight200, factor: Self.weightBase)
    }

    @Test func fontRawTokenFontWeight300MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.weight300, factor: Self.weightBase)
    }

    @Test func fontRawTokenFontWeight400MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.weight400, factor: Self.weightBase)
    }

    @Test func fontRawTokenFontWeight500MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.weight500, factor: Self.weightBase)
    }

    @Test func fontRawTokenFontWeight600MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.weight600, factor: Self.weightBase)
    }

    @Test func fontRawTokenFontWeight700MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.weight700, factor: Self.weightBase)
    }

    @Test func fontRawTokenFontWeight800MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.weight800, factor: Self.weightBase)
    }

    @Test func fontRawTokenFontWeight900MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.weight900, factor: Self.weightBase)
    }

    @Test func fontRawTokenFontWeight950MultipleOfBase() throws {
        TestsUtils.assertMultipleOf(FontRawTokens.weight950, factor: Self.weightBase)
    }

    /*
     Comparisons between tokens one by one
     */

    @Test
    func fontRawTokensWeight100LessThanFontWeight200() throws {
        #expect(FontRawTokens.weight100 < FontRawTokens.weight200)
    }

    @Test
    func fontRawTokensWeight200LessThanFontWeight300() throws {
        #expect(FontRawTokens.weight200 < FontRawTokens.weight300)
    }

    @Test
    func fontRawTokensWeight300LessThanFontWeight400() throws {
        #expect(FontRawTokens.weight300 < FontRawTokens.weight400)
    }

    @Test
    func fontRawTokensWeight400LessThanFontWeight500() throws {
        #expect(FontRawTokens.weight400 < FontRawTokens.weight500)
    }

    @Test
    func fontRawTokensWeight500LessThanFontWeight600() throws {
        #expect(FontRawTokens.weight500 < FontRawTokens.weight600)
    }

    @Test
    func fontRawTokensWeight600LessThanFontWeight700() throws {
        #expect(FontRawTokens.weight600 < FontRawTokens.weight700)
    }

    @Test
    func fontRawTokensWeight700LessThanFontWeight800() throws {
        #expect(FontRawTokens.weight700 < FontRawTokens.weight800)
    }

    @Test
    func fontRawTokensWeight800LessThanFontWeight900() throws {
        #expect(FontRawTokens.weight800 < FontRawTokens.weight900)
    }

    @Test
    func fontRawTokensWeight900LessThanFontWeight950() throws {
        #expect(FontRawTokens.weight900 < FontRawTokens.weight950)
    }

    /*
     Ensure all tokens are different
     */

    @Test
    func fontRawTokensFontWeightsAreAllDifferent() throws {
        #expect(FontRawTokens.weight100 != FontRawTokens.weight200)
        #expect(FontRawTokens.weight100 != FontRawTokens.weight300)
        #expect(FontRawTokens.weight100 != FontRawTokens.weight400)
        #expect(FontRawTokens.weight100 != FontRawTokens.weight500)
        #expect(FontRawTokens.weight100 != FontRawTokens.weight600)
        #expect(FontRawTokens.weight100 != FontRawTokens.weight700)
        #expect(FontRawTokens.weight100 != FontRawTokens.weight800)

        #expect(FontRawTokens.weight200 != FontRawTokens.weight300)
        #expect(FontRawTokens.weight200 != FontRawTokens.weight400)
        #expect(FontRawTokens.weight200 != FontRawTokens.weight500)
        #expect(FontRawTokens.weight200 != FontRawTokens.weight600)
        #expect(FontRawTokens.weight200 != FontRawTokens.weight700)
        #expect(FontRawTokens.weight200 != FontRawTokens.weight800)

        #expect(FontRawTokens.weight300 != FontRawTokens.weight400)
        #expect(FontRawTokens.weight300 != FontRawTokens.weight500)
        #expect(FontRawTokens.weight300 != FontRawTokens.weight600)
        #expect(FontRawTokens.weight300 != FontRawTokens.weight700)
        #expect(FontRawTokens.weight300 != FontRawTokens.weight800)

        #expect(FontRawTokens.weight400 != FontRawTokens.weight500)
        #expect(FontRawTokens.weight400 != FontRawTokens.weight600)
        #expect(FontRawTokens.weight400 != FontRawTokens.weight700)
        #expect(FontRawTokens.weight400 != FontRawTokens.weight800)

        #expect(FontRawTokens.weight500 != FontRawTokens.weight600)
        #expect(FontRawTokens.weight500 != FontRawTokens.weight700)
        #expect(FontRawTokens.weight500 != FontRawTokens.weight800)

        #expect(FontRawTokens.weight600 != FontRawTokens.weight700)
        #expect(FontRawTokens.weight600 != FontRawTokens.weight800)

        #expect(FontRawTokens.weight700 != FontRawTokens.weight800)
    }

    // MARK: - Primitive token - Typography - Composite

    @Test func fontRawTokensTypeRegular150LessThanTypeRegular175() throws {
        #expect(FontRawTokens.regular150 <| FontRawTokens.regular175)
    }

    @Test func fontRawTokensTypeRegular175LessThanTypeRegular200() throws {
        #expect(FontRawTokens.regular175 <| FontRawTokens.regular200)
    }

    @Test func fontRawTokensTypeRegular200LessThanTypeRegular250() throws {
        #expect(FontRawTokens.regular200 <| FontRawTokens.regular250)
    }

    @Test func fontRawTokensTypeRegular250LessThanTypeRegular300() throws {
        #expect(FontRawTokens.regular250 <| FontRawTokens.regular300)
    }

    @Test func fontRawTokensTypeMedium150LessThanTypeMedium175() throws {
        #expect(FontRawTokens.medium150 <| FontRawTokens.medium175)
    }

    @Test func fontRawTokensTypeMedium175LessThanTypeMedium200() throws {
        #expect(FontRawTokens.medium175 <| FontRawTokens.medium200)
    }

    @Test func fontRawTokensTypeMedium200LessThanTypeMedium250() throws {
        #expect(FontRawTokens.medium200 <| FontRawTokens.medium250)
    }

    @Test func fontRawTokensTypeMedium250LessThanTypeMedium300() throws {
        #expect(FontRawTokens.medium250 <| FontRawTokens.medium300)
    }

    @Test func fontRawTokensTypeBold150LessThanTypeBold175() throws {
        #expect(FontRawTokens.bold150 <| FontRawTokens.bold175)
    }

    @Test func fontRawTokensTypeBold175LessThanTypeBold200() throws {
        #expect(FontRawTokens.bold175 <| FontRawTokens.bold200)
    }

    @Test func fontRawTokensTypeBold200LessThanTypeBold250() throws {
        #expect(FontRawTokens.bold200 <| FontRawTokens.bold250)
    }

    @Test func fontRawTokensTypeBold250LessThanTypeBold300() throws {
        #expect(FontRawTokens.bold250 <| FontRawTokens.bold300)
    }

    @Test func fontRawTokensTypeBold300LessThanTypeBold350() throws {
        #expect(FontRawTokens.bold300 <| FontRawTokens.bold350)
    }

    @Test func fontRawTokensTypeBold350LessThanTypeBold450() throws {
        #expect(FontRawTokens.bold350 <| FontRawTokens.bold450)
    }

    @Test func fontRawTokensTypeBold450LessThanTypeBold550() throws {
        #expect(FontRawTokens.bold450 <| FontRawTokens.bold550)
    }

    @Test func fontRawTokensTypeBold550LessThanTypeBold650() throws {
        #expect(FontRawTokens.bold550 <| FontRawTokens.bold650)
    }

    @Test func fontRawTokensTypeBold650LessThanTypeBold750() throws {
        #expect(FontRawTokens.bold650 <| FontRawTokens.bold750)
    }

    @Test func fontRawTokensTypeBold750LessThanTypeBold850() throws {
        #expect(FontRawTokens.bold750 <| FontRawTokens.bold850)
    }

    @Test func fontRawTokensTypeBold850LessThanTypeBold950() throws {
        #expect(FontRawTokens.bold850 <| FontRawTokens.bold950)
    }

    @Test func fontRawTokensTypeBold950LessThanTypeBold1050() throws {
        #expect(FontRawTokens.bold950 <| FontRawTokens.bold1050)
    }

    @Test func fontRawTokensTypeBold1050LessThanTypeBold1150() throws {
        #expect(FontRawTokens.bold1050 <| FontRawTokens.bold1150)
    }

    @Test func fontRawTokensTypeBold1150LessThanTypeBold1250() throws {
        #expect(FontRawTokens.bold1150 <| FontRawTokens.bold1250)
    }

    @Test func fontRawTokensTypeBold1250LessThanTypeBold1450() throws {
        #expect(FontRawTokens.bold1250 <| FontRawTokens.bold1450)
    }

    @Test func fontRawTokensTypeBold1450LessThanTypeBold1850() throws {
        #expect(FontRawTokens.bold1450 <| FontRawTokens.bold1850)
    }

    /*
     Ensure all tokens are different
     */

    @Test
    func fontRawTokensCompositesAreAllDifferent() throws {
        #expect(FontRawTokens.regular150 != FontRawTokens.regular175)
        #expect(FontRawTokens.regular150 != FontRawTokens.regular200)
        #expect(FontRawTokens.regular150 != FontRawTokens.regular250)
        #expect(FontRawTokens.regular150 != FontRawTokens.bold150)
        #expect(FontRawTokens.regular150 != FontRawTokens.bold175)
        #expect(FontRawTokens.regular150 != FontRawTokens.bold200)
        #expect(FontRawTokens.regular150 != FontRawTokens.bold250)
        #expect(FontRawTokens.regular150 != FontRawTokens.bold300)
        #expect(FontRawTokens.regular150 != FontRawTokens.bold350)
        #expect(FontRawTokens.regular150 != FontRawTokens.bold450)
        #expect(FontRawTokens.regular150 != FontRawTokens.bold550)
        #expect(FontRawTokens.regular150 != FontRawTokens.bold650)
        #expect(FontRawTokens.regular150 != FontRawTokens.bold750)
        #expect(FontRawTokens.regular150 != FontRawTokens.bold850)
        #expect(FontRawTokens.regular150 != FontRawTokens.bold950)
        #expect(FontRawTokens.regular150 != FontRawTokens.bold1050)
        #expect(FontRawTokens.regular150 != FontRawTokens.bold1150)
        #expect(FontRawTokens.regular150 != FontRawTokens.bold1250)
        #expect(FontRawTokens.regular150 != FontRawTokens.bold1450)
        #expect(FontRawTokens.regular150 != FontRawTokens.bold1850)

        #expect(FontRawTokens.regular175 != FontRawTokens.regular200)
        #expect(FontRawTokens.regular175 != FontRawTokens.regular250)
        #expect(FontRawTokens.regular175 != FontRawTokens.bold150)
        #expect(FontRawTokens.regular175 != FontRawTokens.bold175)
        #expect(FontRawTokens.regular175 != FontRawTokens.bold200)
        #expect(FontRawTokens.regular175 != FontRawTokens.bold250)
        #expect(FontRawTokens.regular175 != FontRawTokens.bold300)
        #expect(FontRawTokens.regular175 != FontRawTokens.bold350)
        #expect(FontRawTokens.regular175 != FontRawTokens.bold450)
        #expect(FontRawTokens.regular175 != FontRawTokens.bold550)
        #expect(FontRawTokens.regular175 != FontRawTokens.bold650)
        #expect(FontRawTokens.regular175 != FontRawTokens.bold750)
        #expect(FontRawTokens.regular175 != FontRawTokens.bold850)
        #expect(FontRawTokens.regular175 != FontRawTokens.bold950)
        #expect(FontRawTokens.regular175 != FontRawTokens.bold1050)
        #expect(FontRawTokens.regular175 != FontRawTokens.bold1150)
        #expect(FontRawTokens.regular175 != FontRawTokens.bold1250)
        #expect(FontRawTokens.regular175 != FontRawTokens.bold1450)
        #expect(FontRawTokens.regular175 != FontRawTokens.bold1850)

        #expect(FontRawTokens.regular200 != FontRawTokens.regular250)
        #expect(FontRawTokens.regular200 != FontRawTokens.regular300)
        #expect(FontRawTokens.regular200 != FontRawTokens.bold150)
        #expect(FontRawTokens.regular200 != FontRawTokens.bold175)
        #expect(FontRawTokens.regular200 != FontRawTokens.bold200)
        #expect(FontRawTokens.regular200 != FontRawTokens.bold250)
        #expect(FontRawTokens.regular200 != FontRawTokens.bold300)
        #expect(FontRawTokens.regular200 != FontRawTokens.bold350)
        #expect(FontRawTokens.regular200 != FontRawTokens.bold450)
        #expect(FontRawTokens.regular200 != FontRawTokens.bold550)
        #expect(FontRawTokens.regular200 != FontRawTokens.bold650)
        #expect(FontRawTokens.regular200 != FontRawTokens.bold750)
        #expect(FontRawTokens.regular200 != FontRawTokens.bold850)
        #expect(FontRawTokens.regular200 != FontRawTokens.bold950)
        #expect(FontRawTokens.regular200 != FontRawTokens.bold1050)
        #expect(FontRawTokens.regular200 != FontRawTokens.bold1150)
        #expect(FontRawTokens.regular200 != FontRawTokens.bold1250)
        #expect(FontRawTokens.regular200 != FontRawTokens.bold1450)
        #expect(FontRawTokens.regular200 != FontRawTokens.bold1850)

        #expect(FontRawTokens.regular250 != FontRawTokens.regular300)
        #expect(FontRawTokens.regular250 != FontRawTokens.bold150)
        #expect(FontRawTokens.regular250 != FontRawTokens.bold175)
        #expect(FontRawTokens.regular250 != FontRawTokens.bold200)
        #expect(FontRawTokens.regular250 != FontRawTokens.bold250)
        #expect(FontRawTokens.regular250 != FontRawTokens.bold300)
        #expect(FontRawTokens.regular250 != FontRawTokens.bold350)
        #expect(FontRawTokens.regular250 != FontRawTokens.bold450)
        #expect(FontRawTokens.regular250 != FontRawTokens.bold550)
        #expect(FontRawTokens.regular250 != FontRawTokens.bold650)
        #expect(FontRawTokens.regular250 != FontRawTokens.bold750)
        #expect(FontRawTokens.regular250 != FontRawTokens.bold850)
        #expect(FontRawTokens.regular250 != FontRawTokens.bold950)
        #expect(FontRawTokens.regular250 != FontRawTokens.bold1050)
        #expect(FontRawTokens.regular250 != FontRawTokens.bold1150)
        #expect(FontRawTokens.regular250 != FontRawTokens.bold1250)
        #expect(FontRawTokens.regular250 != FontRawTokens.bold1450)
        #expect(FontRawTokens.regular250 != FontRawTokens.bold1850)

        #expect(FontRawTokens.regular300 != FontRawTokens.bold150)
        #expect(FontRawTokens.regular300 != FontRawTokens.bold175)
        #expect(FontRawTokens.regular300 != FontRawTokens.bold200)
        #expect(FontRawTokens.regular300 != FontRawTokens.bold250)
        #expect(FontRawTokens.regular300 != FontRawTokens.bold300)
        #expect(FontRawTokens.regular300 != FontRawTokens.bold350)
        #expect(FontRawTokens.regular300 != FontRawTokens.bold450)
        #expect(FontRawTokens.regular300 != FontRawTokens.bold550)
        #expect(FontRawTokens.regular300 != FontRawTokens.bold650)
        #expect(FontRawTokens.regular300 != FontRawTokens.bold750)
        #expect(FontRawTokens.regular300 != FontRawTokens.bold850)
        #expect(FontRawTokens.regular300 != FontRawTokens.bold950)
        #expect(FontRawTokens.regular300 != FontRawTokens.bold1050)
        #expect(FontRawTokens.regular300 != FontRawTokens.bold1150)
        #expect(FontRawTokens.regular300 != FontRawTokens.bold1250)
        #expect(FontRawTokens.regular300 != FontRawTokens.bold1450)
        #expect(FontRawTokens.regular300 != FontRawTokens.bold1850)

        #expect(FontRawTokens.bold150 != FontRawTokens.bold175)
        #expect(FontRawTokens.bold150 != FontRawTokens.bold200)
        #expect(FontRawTokens.bold150 != FontRawTokens.bold250)
        #expect(FontRawTokens.bold150 != FontRawTokens.bold300)
        #expect(FontRawTokens.bold150 != FontRawTokens.bold350)
        #expect(FontRawTokens.bold150 != FontRawTokens.bold450)
        #expect(FontRawTokens.bold150 != FontRawTokens.bold550)
        #expect(FontRawTokens.bold150 != FontRawTokens.bold650)
        #expect(FontRawTokens.bold150 != FontRawTokens.bold750)
        #expect(FontRawTokens.bold150 != FontRawTokens.bold850)
        #expect(FontRawTokens.bold150 != FontRawTokens.bold950)
        #expect(FontRawTokens.bold150 != FontRawTokens.bold1050)
        #expect(FontRawTokens.bold150 != FontRawTokens.bold1150)
        #expect(FontRawTokens.bold150 != FontRawTokens.bold1250)
        #expect(FontRawTokens.bold150 != FontRawTokens.bold1450)
        #expect(FontRawTokens.bold150 != FontRawTokens.bold1850)

        #expect(FontRawTokens.bold175 != FontRawTokens.bold200)
        #expect(FontRawTokens.bold175 != FontRawTokens.bold250)
        #expect(FontRawTokens.bold175 != FontRawTokens.bold300)
        #expect(FontRawTokens.bold175 != FontRawTokens.bold350)
        #expect(FontRawTokens.bold175 != FontRawTokens.bold450)
        #expect(FontRawTokens.bold175 != FontRawTokens.bold550)
        #expect(FontRawTokens.bold175 != FontRawTokens.bold650)
        #expect(FontRawTokens.bold175 != FontRawTokens.bold750)
        #expect(FontRawTokens.bold175 != FontRawTokens.bold850)
        #expect(FontRawTokens.bold175 != FontRawTokens.bold950)
        #expect(FontRawTokens.bold175 != FontRawTokens.bold1050)
        #expect(FontRawTokens.bold175 != FontRawTokens.bold1150)
        #expect(FontRawTokens.bold175 != FontRawTokens.bold1250)
        #expect(FontRawTokens.bold175 != FontRawTokens.bold1450)
        #expect(FontRawTokens.bold175 != FontRawTokens.bold1850)

        #expect(FontRawTokens.bold200 != FontRawTokens.bold250)
        #expect(FontRawTokens.bold200 != FontRawTokens.bold300)
        #expect(FontRawTokens.bold200 != FontRawTokens.bold350)
        #expect(FontRawTokens.bold200 != FontRawTokens.bold450)
        #expect(FontRawTokens.bold200 != FontRawTokens.bold550)
        #expect(FontRawTokens.bold200 != FontRawTokens.bold650)
        #expect(FontRawTokens.bold200 != FontRawTokens.bold750)
        #expect(FontRawTokens.bold200 != FontRawTokens.bold850)
        #expect(FontRawTokens.bold200 != FontRawTokens.bold950)
        #expect(FontRawTokens.bold200 != FontRawTokens.bold1050)
        #expect(FontRawTokens.bold200 != FontRawTokens.bold1150)
        #expect(FontRawTokens.bold200 != FontRawTokens.bold1250)
        #expect(FontRawTokens.bold200 != FontRawTokens.bold1450)
        #expect(FontRawTokens.bold200 != FontRawTokens.bold1850)

        #expect(FontRawTokens.bold250 != FontRawTokens.bold300)
        #expect(FontRawTokens.bold250 != FontRawTokens.bold350)
        #expect(FontRawTokens.bold250 != FontRawTokens.bold450)
        #expect(FontRawTokens.bold250 != FontRawTokens.bold550)
        #expect(FontRawTokens.bold250 != FontRawTokens.bold650)
        #expect(FontRawTokens.bold250 != FontRawTokens.bold750)
        #expect(FontRawTokens.bold250 != FontRawTokens.bold850)
        #expect(FontRawTokens.bold250 != FontRawTokens.bold950)
        #expect(FontRawTokens.bold250 != FontRawTokens.bold1050)
        #expect(FontRawTokens.bold250 != FontRawTokens.bold1150)
        #expect(FontRawTokens.bold250 != FontRawTokens.bold1250)
        #expect(FontRawTokens.bold250 != FontRawTokens.bold1450)
        #expect(FontRawTokens.bold250 != FontRawTokens.bold1850)

        #expect(FontRawTokens.bold300 != FontRawTokens.bold350)
        #expect(FontRawTokens.bold300 != FontRawTokens.bold450)
        #expect(FontRawTokens.bold300 != FontRawTokens.bold550)
        #expect(FontRawTokens.bold300 != FontRawTokens.bold650)
        #expect(FontRawTokens.bold300 != FontRawTokens.bold750)
        #expect(FontRawTokens.bold300 != FontRawTokens.bold850)
        #expect(FontRawTokens.bold300 != FontRawTokens.bold950)
        #expect(FontRawTokens.bold300 != FontRawTokens.bold1050)
        #expect(FontRawTokens.bold300 != FontRawTokens.bold1150)
        #expect(FontRawTokens.bold300 != FontRawTokens.bold1250)
        #expect(FontRawTokens.bold300 != FontRawTokens.bold1450)
        #expect(FontRawTokens.bold300 != FontRawTokens.bold1850)

        #expect(FontRawTokens.bold350 != FontRawTokens.bold450)
        #expect(FontRawTokens.bold350 != FontRawTokens.bold550)
        #expect(FontRawTokens.bold350 != FontRawTokens.bold650)
        #expect(FontRawTokens.bold350 != FontRawTokens.bold750)
        #expect(FontRawTokens.bold350 != FontRawTokens.bold850)
        #expect(FontRawTokens.bold350 != FontRawTokens.bold950)
        #expect(FontRawTokens.bold350 != FontRawTokens.bold1050)
        #expect(FontRawTokens.bold350 != FontRawTokens.bold1150)
        #expect(FontRawTokens.bold350 != FontRawTokens.bold1250)
        #expect(FontRawTokens.bold350 != FontRawTokens.bold1450)
        #expect(FontRawTokens.bold350 != FontRawTokens.bold1850)

        #expect(FontRawTokens.bold450 != FontRawTokens.bold550)
        #expect(FontRawTokens.bold450 != FontRawTokens.bold650)
        #expect(FontRawTokens.bold450 != FontRawTokens.bold750)
        #expect(FontRawTokens.bold450 != FontRawTokens.bold850)
        #expect(FontRawTokens.bold450 != FontRawTokens.bold950)
        #expect(FontRawTokens.bold450 != FontRawTokens.bold1050)
        #expect(FontRawTokens.bold450 != FontRawTokens.bold1150)
        #expect(FontRawTokens.bold450 != FontRawTokens.bold1250)
        #expect(FontRawTokens.bold450 != FontRawTokens.bold1450)
        #expect(FontRawTokens.bold450 != FontRawTokens.bold1850)

        #expect(FontRawTokens.bold550 != FontRawTokens.bold650)
        #expect(FontRawTokens.bold550 != FontRawTokens.bold750)
        #expect(FontRawTokens.bold550 != FontRawTokens.bold850)
        #expect(FontRawTokens.bold550 != FontRawTokens.bold950)
        #expect(FontRawTokens.bold550 != FontRawTokens.bold1050)
        #expect(FontRawTokens.bold550 != FontRawTokens.bold1150)
        #expect(FontRawTokens.bold550 != FontRawTokens.bold1250)
        #expect(FontRawTokens.bold550 != FontRawTokens.bold1450)
        #expect(FontRawTokens.bold550 != FontRawTokens.bold1850)

        #expect(FontRawTokens.bold650 != FontRawTokens.bold750)
        #expect(FontRawTokens.bold650 != FontRawTokens.bold850)
        #expect(FontRawTokens.bold650 != FontRawTokens.bold950)
        #expect(FontRawTokens.bold650 != FontRawTokens.bold1050)
        #expect(FontRawTokens.bold650 != FontRawTokens.bold1150)
        #expect(FontRawTokens.bold650 != FontRawTokens.bold1250)
        #expect(FontRawTokens.bold650 != FontRawTokens.bold1450)
        #expect(FontRawTokens.bold650 != FontRawTokens.bold1850)

        #expect(FontRawTokens.bold750 != FontRawTokens.bold850)
        #expect(FontRawTokens.bold750 != FontRawTokens.bold950)
        #expect(FontRawTokens.bold750 != FontRawTokens.bold1050)
        #expect(FontRawTokens.bold750 != FontRawTokens.bold1150)
        #expect(FontRawTokens.bold750 != FontRawTokens.bold1250)
        #expect(FontRawTokens.bold750 != FontRawTokens.bold1450)
        #expect(FontRawTokens.bold750 != FontRawTokens.bold1850)

        #expect(FontRawTokens.bold850 != FontRawTokens.bold950)
        #expect(FontRawTokens.bold850 != FontRawTokens.bold1050)
        #expect(FontRawTokens.bold850 != FontRawTokens.bold1150)
        #expect(FontRawTokens.bold850 != FontRawTokens.bold1250)
        #expect(FontRawTokens.bold850 != FontRawTokens.bold1450)
        #expect(FontRawTokens.bold850 != FontRawTokens.bold1850)

        #expect(FontRawTokens.bold950 != FontRawTokens.bold1050)
        #expect(FontRawTokens.bold950 != FontRawTokens.bold1150)
        #expect(FontRawTokens.bold950 != FontRawTokens.bold1250)
        #expect(FontRawTokens.bold950 != FontRawTokens.bold1450)
        #expect(FontRawTokens.bold950 != FontRawTokens.bold1850)

        #expect(FontRawTokens.bold1050 != FontRawTokens.bold1150)
        #expect(FontRawTokens.bold1050 != FontRawTokens.bold1250)
        #expect(FontRawTokens.bold1050 != FontRawTokens.bold1450)
        #expect(FontRawTokens.bold1050 != FontRawTokens.bold1850)

        #expect(FontRawTokens.bold1150 != FontRawTokens.bold1250)
        #expect(FontRawTokens.bold1150 != FontRawTokens.bold1450)
        #expect(FontRawTokens.bold1150 != FontRawTokens.bold1850)

        #expect(FontRawTokens.bold1250 != FontRawTokens.bold1450)
        #expect(FontRawTokens.bold1250 != FontRawTokens.bold1850)

        #expect(FontRawTokens.bold1450 != FontRawTokens.bold1850)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable function_body_length

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

import OUDSFoundations
import SwiftUI
import Testing

// swiftlint:disable force_unwrapping
// swiftlint:disable file_length
// swiftlint:disable type_body_length

/// Struct to test `OUDSWCAG21Ratio`.
/// Use cases picked from issue [#647](https://github.com/Orange-OpenSource/ouds-ios/issues/647)
/// based on Orange Theme v0.14.0 and tokens lib v0.11.0
/// The aim is to be sure the utils are able to computed the suitable ratios and define wether or not WCAG 2.1 are respected.
struct OUDSWCAG21RatioTests {

    // See https://github.com/Orange-OpenSource/ouds-ios/issues/667
    #if !os(iOS)
    private static let doesRunOniOS = false
    #else
    private static let doesRunOniOS = true
    #endif

    // MARK: - Requirements meets (textual)

    @Test("Constrast ratio under 4.5:1 must not pass for textual components and AA")
    func ratioUnder4_5for1MustNotPassForTextualAndAA() {
        let ratio = OUDSWCAG21Ratio(ratio: 4.0)

        #expect(ratio.meets3to1 == true)
        #expect(ratio.meets4_5to1 == false)
        #expect(ratio.meets7to1 == false)

        let (textual, _) = ratio.requirementsAA
        #expect(textual == false)
    }

    @Test("Constrast ratio of 4.5:1 must pass for textual components and AA")
    func ratioOf4_5for1MustNotPassForTextualAndAA() {
        var ratio = OUDSWCAG21Ratio(ratio: 4.5)

        #expect(ratio.meets3to1 == true)
        #expect(ratio.meets4_5to1 == true)
        #expect(ratio.meets7to1 == false)

        var (textual, _) = ratio.requirementsAA
        #expect(textual == true)

        ratio = OUDSWCAG21Ratio(ratio: 5.0)

        #expect(ratio.meets3to1 == true)
        #expect(ratio.meets4_5to1 == true)
        #expect(ratio.meets7to1 == false)

        (textual, _) = ratio.requirementsAA
        #expect(textual == true)
    }

    @Test("Constrast ratio under 7:1 must not pass for textual components and AAA")
    func ratioUnder7for1MustNotPassForTextualAndAAA() {
        let ratio = OUDSWCAG21Ratio(ratio: 6.5)

        #expect(ratio.meets3to1 == true)
        #expect(ratio.meets4_5to1 == true)
        #expect(ratio.meets7to1 == false)

        let (textual, _) = ratio.requirementsAAA
        #expect(textual == false)
    }

    @Test("Constrast ratio of 7:1 must pass for textual components and AAA")
    func ratioOf7for1MustPassForTextualAndAAA() {
        var ratio = OUDSWCAG21Ratio(ratio: 7.0)

        #expect(ratio.meets3to1 == true)
        #expect(ratio.meets4_5to1 == true)
        #expect(ratio.meets7to1 == true)

        var (textual, _) = ratio.requirementsAAA
        #expect(textual == true)

        ratio = OUDSWCAG21Ratio(ratio: 7.5)

        #expect(ratio.meets3to1 == true)
        #expect(ratio.meets4_5to1 == true)
        #expect(ratio.meets7to1 == true)

        (textual, _) = ratio.requirementsAAA
        #expect(textual == true)
    }

    // MARK: - Requirements meets (non textual)

    @Test("Constrast ratio under 3:1 must not pass for non textual components and AA")
    func ratioUnder3for1MustNotPassForNonTextualAndAA() {
        let ratio = OUDSWCAG21Ratio(ratio: 2.5)

        #expect(ratio.meets3to1 == false)
        #expect(ratio.meets4_5to1 == false)
        #expect(ratio.meets7to1 == false)

        let (_, nonTextual) = ratio.requirementsAA
        #expect(nonTextual == false)
    }

    @Test("Constrast ratio of 3:1 must pass for non textual components and AA")
    func ratioOf3for1MustPassForNonTextualAndAA() {
        var ratio = OUDSWCAG21Ratio(ratio: 3.0)

        #expect(ratio.meets3to1 == true)
        #expect(ratio.meets4_5to1 == false)
        #expect(ratio.meets7to1 == false)

        var (_, nonTextual) = ratio.requirementsAA
        #expect(nonTextual == true)

        ratio = OUDSWCAG21Ratio(ratio: 3.5)

        #expect(ratio.meets3to1 == true)
        #expect(ratio.meets4_5to1 == false)
        #expect(ratio.meets7to1 == false)

        (_, nonTextual) = ratio.requirementsAA
        #expect(nonTextual == true)
    }

    @Test("Constrast ratio under 4.5:1 must not pass for non textual components and AAA")
    func ratioUnder4_5for1MustNotPassForNonTextualAndAAA() {
        let ratio = OUDSWCAG21Ratio(ratio: 4.0)

        #expect(ratio.meets3to1 == true)
        #expect(ratio.meets4_5to1 == false)
        #expect(ratio.meets7to1 == false)

        let (_, nonTextual) = ratio.requirementsAAA
        #expect(nonTextual == false)
    }

    @Test("Constrast ratio of 4.5:1 must pass for non textual components and AAA")
    func ratioOf4_5for1MustPassForNonTextualAndAAA() {
        var ratio = OUDSWCAG21Ratio(ratio: 4.5)

        #expect(ratio.meets3to1 == true)
        #expect(ratio.meets4_5to1 == true)
        #expect(ratio.meets7to1 == false)

        var (_, nonTextual) = ratio.requirementsAAA
        #expect(nonTextual == true)

        ratio = OUDSWCAG21Ratio(ratio: 5.0)

        #expect(ratio.meets3to1 == true)
        #expect(ratio.meets4_5to1 == true)
        #expect(ratio.meets7to1 == false)

        (_, nonTextual) = ratio.requirementsAAA
        #expect(nonTextual == true)
    }

    // MARK: - Color luminance

    @Test("#FFFFFFFF has luminance of 1", .enabled(if: Self.doesRunOniOS))
    func luminanceForFFFFFFFF() throws {
        let luminance = OUDSWCAG21Ratio.luminance(for: Color(hexadecimalCode: "#FFFFFFFF")!)
        #expect(luminance == 1, "luminance = \(String(describing: luminance))")
    }

    @Test("#000000FF has luminance of 0.0722", .enabled(if: Self.doesRunOniOS))
    func luminanceFor000000FF() throws {
        let luminance = OUDSWCAG21Ratio.luminance(for: Color(hexadecimalCode: "#000000FF")!)
        #expect(luminance == 0.0, "luminance = \(String(describing: luminance))")
    }

    @Test("#F15E00FF has luminance of 0.339261794", .enabled(if: Self.doesRunOniOS))
    func luminanceForF15E00FF() throws {
        let luminance = OUDSWCAG21Ratio.luminance(for: Color(hexadecimalCode: "#F15E00FF")!)
        #expect(luminance == 0.267061825736296, "luminance = \(String(describing: luminance))")
    }

    @Test("#26B2FF14 has luminance of 0.3230336529", .enabled(if: Self.doesRunOniOS))
    func luminanceFor26B2FF14() throws {
        let luminance = OUDSWCAG21Ratio.luminance(for: Color(hexadecimalCode: "#26B2FF14")!)
        #expect(luminance == 0.3947286020914061, "luminance = \(String(describing: luminance))")
    }

    @Test("#3DE35A1F has luminance of 0.5602919883", .enabled(if: Self.doesRunOniOS))
    func luminanceFor3DE35A1F() throws {
        let luminance = OUDSWCAG21Ratio.luminance(for: Color(hexadecimalCode: "#3DE35A1F")!)
        #expect(luminance == 0.5666845580578855, "luminance = \(String(describing: luminance))")
    }

    // MARK: - Color ratios - Always fail

    @Test("White on white must fail for all", .enabled(if: Self.doesRunOniOS))
    func whiteColorOnWhiteAlwaysFail() throws {
        let foregroundColor = "#FFFFFFFF"
        let backgroundColor = "#FFFFFFFF"
        let ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == false, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")
    }

    @Test("Black on black must fail for all", .enabled(if: Self.doesRunOniOS))
    func blackColorOnBlackAlwaysFail() throws {
        let foregroundColor = "#000000FF"
        let backgroundColor = "#000000FF"
        let ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == false, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")
    }

    // MARK: - Color ratios - Always pass

    @Test("White on black must pass for all", .enabled(if: Self.doesRunOniOS))
    func whiteColorOnBlackMustAlwaysPass() throws {

        let foregroundColor = "#FFFFFFFF"
        let backgroundColor = "#000000FF"
        let ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")
    }

    @Test("Black on white must pass for all", .enabled(if: Self.doesRunOniOS))
    func blackColorOnWhiteMustAlwaysPass() throws {
        let foregroundColor = "#000000FF"
        let backgroundColor = "#FFFFFFFF"
        let ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")
    }

    // MARK: - Color ratios - Other use cases

    // White text on Brand secondary and Brand Tertiary color background in dark mode
    @Test("White on Brand Primary / Secondary / Tertiary must fail for all", .enabled(if: Self.doesRunOniOS))
    func whiteColorOnOrangeSurfacesMustFailFor4_5to1() throws {
        let foregroundColor = "#FFFFFFFF"
        let backgroundColor = "#FF7900FF"
        let ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == false, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")
    }

    // Black text on Status Neutral Emphasized in light mode
    @Test("Black on Status Neutral Emphasized must fail for all", .enabled(if: Self.doesRunOniOS))
    func blackColorOnAlmostBlackSurfaceMustFailFor4_5to1() throws {
        let foregroundColor = "#000000FF"
        let backgroundColor = "#000000D6"
        let ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == false, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")
    }

    // Link's chevron for Brand secondary and Brand Tertiary color background in both light and dark mode
    @Test("Orange colors on Brand Primary / Secondary / Tertiary must fail for all", .enabled(if: Self.doesRunOniOS))
    func orangeColorsOnOrangeSurfaceMustFailForAll() throws {
        let backgroundColor = "#FF7900FF"

        var foregroundColor = "#F15E00FF" // Light mode
        var ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == false, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")

        foregroundColor = "#FF7900FF" // Dark mode
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == false, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")
    }

    // Link's chevron for Status Warning Muted light mode
    @Test("Orange colors on Status Warning Muted must fail for all", .enabled(if: Self.doesRunOniOS))
    func orangeColorsOnOpacitySunSurfaceMustFailForAll() throws {
        let backgroundColor = "#FFD00029" // Opacity sun color

        var foregroundColor = "#F15E00FF" // Light mode
        var ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")

        foregroundColor = "#FF7900FF" // Dark mode
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == false, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")
    }

    // Link's chevron for Status Positive Muted light mode
    @Test("Orange colors on Status Positive Muted", .enabled(if: Self.doesRunOniOS))
    func orangeColorsOnMalachiteSurface() throws {
        let backgroundColor = "#3DE35A1F" // Functional Malachite color

        var foregroundColor = "#F15E00FF" // Light mode
        var ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")

        foregroundColor = "#FF7900FF" // Dark mode
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == false, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")
    }

    // Link's chevron for Status Neutral Emphasized light mode
    @Test("Black color on Status Neutral Emphasized", .enabled(if: Self.doesRunOniOS))
    func blackOnStatusNeutralEmphasizedSurface() throws {
        let foregroundColor = "#000000"

        var backgroundColor = "#000000D6" // Opacity Black 840
        var ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == false, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")

        backgroundColor = "#FFFFFFCC" // Opacity White 800
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")
    }

    // Link's chevron for Status Info Muted light mode
    @Test("Orange colors on Status Info Muted", .enabled(if: Self.doesRunOniOS))
    func orangeColorsOnOpacityDodgerBlueSurface() throws {
        let backgroundColor = "#26B2FF14" // Opacity dodger blue color

        var foregroundColor = "#F15E00FF" // Light mode
        var ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")

        foregroundColor = "#FF7900FF" // Dark mode
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == false, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")
    }

    // Link's chevron for Status Negative Muted light mode
    @Test("Orange colors on Status Negative Muted must fail for all", .enabled(if: Self.doesRunOniOS))
    func orangeColorsOnOpacityScarletSurfaceMustFailForAll() throws {
        let backgroundColor = "#EA030514" // Opacity scarlet color

        var foregroundColor = "#F15E00FF" // Light mode
        var ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == false, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")

        foregroundColor = "#FF7900FF" // Dark mode
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == false, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")
    }

    @Test("Black color on Brand Primary / Secondary / Tertiary must pass for all", .enabled(if: Self.doesRunOniOS))
    func blackColorOnBrandPrimarySecondaryTertiarySurfaceMustPassForAll() throws {
        let foregroundColor = "#000000"

        var backgroundColor = "#FF7900FF" // Orange brand color Orange 500
        var ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")

        backgroundColor = "#FF7900FF" // Orange brand color Orange 500
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")
    }

    @Test("Black color on Status Accent Emphasized must pass for all", .enabled(if: Self.doesRunOniOS))
    func blackColorOnStatusAccentEmphasizedSurfaceMustPassForAll() throws {
        let foregroundColor = "#000000"

        var backgroundColor = "#FFD000FF" // Functional sun 500
        var ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")

        backgroundColor = "#FFE270FF" // Functional sun 300
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")
    }

    @Test("Black, white and orange colors on Status Accent Muted", .enabled(if: Self.doesRunOniOS))
    func blackWhiteOrangeColorsOnStatusAccentMutedSurface() throws {
        let foregroundBlack = "#000000FF"
        let foregroundOrangeLight = "#FF7900FF" // Orange brand color Orange 500
        let foregroundOrangeDark = "#F15E00FF" // Orange brand color Orange 550
        let foregroundWhite = "#FFFFFFFF"

        var backgroundColor = "#F9F5F0FF" // Orange brand color Warm gray 100
        var ratio = OUDSWCAG21Ratio.contrastRatios(foregroundBlack, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundOrangeLight, backgroundColor)!
        #expect(ratio.meets3to1 == false, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")

        backgroundColor = "#353228FF" // Orange brand color Warm gray 500
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundWhite, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundOrangeDark, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")
    }

    @Test("Black color on Status Info Emphasized must pass for all", .enabled(if: Self.doesRunOniOS))
    func blackColorOnStatusInfoEmphasizedSurfaceMustPassForAll() throws {
        let foregroundColor = "#000000FF"

        var backgroundColor = "#26B2FFFF" // Functional Dodger blue 500
        var ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")

        backgroundColor = "#8AD5FFFF" // Functional Dodger blue 300
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")
    }

    @Test("Black, white and orange colors on Status Info Muted", .enabled(if: Self.doesRunOniOS))
    func blackWhiteOrangeColorsOnStatusInfoMutedSurface() throws {
        let foregroundBlack = "#000000FF"
        let foregroundOrangeLight = "#FF7900FF" // Orange brand color Orange 500
        let foregroundOrangeDark = "#F15E00FF" // Orange brand color Orange 550
        let foregroundWhite = "#FFFFFFFF"

        var backgroundColor = "#26B2FF14" // Opacity Dodger blue
        var ratio = OUDSWCAG21Ratio.contrastRatios(foregroundBlack, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundOrangeLight, backgroundColor)!
        #expect(ratio.meets3to1 == false, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")

        backgroundColor = "#003857FF" // Functional Dodger blue 900
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundWhite, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundOrangeDark, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")
    }

    @Test("Black and white colors on Status Negative Emphasized", .enabled(if: Self.doesRunOniOS))
    func blackAndWhiteColorsBlackColorsOnStatuNegativeEmphasizedSurface() throws {
        var foregroundColor = "#FFFFFFFF"

        var backgroundColor = "#DB0002FF" // Functional Scarlet 600
        var ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")

        foregroundColor = "#000000FF"

        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")

        backgroundColor = "#FF8081FF" // Functional Scarlet 300
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")
    }

    @Test("Black, white and orange colors on Status Negative Muted", .enabled(if: Self.doesRunOniOS))
    func blackWhiteOrangeColorsBlackColorsOnStatusNegativeMutedSurface() throws {
        let foregroundBlack = "#000000FF"
        let foregroundOrangeLight = "#FF7900FF" // Orange brand color Orange 500
        let foregroundOrangeDark = "#F15E00FF" // Orange brand color Orange 550
        let foregroundWhite = "#FFFFFFFF"

        var backgroundColor = "#EA030514" // Opacity scarlet
        var ratio = OUDSWCAG21Ratio.contrastRatios(foregroundBlack, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundOrangeLight, backgroundColor)!
        #expect(ratio.meets3to1 == false, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")

        backgroundColor = "#4D0001FF" // Opacity scarlet 900
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundWhite, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundOrangeDark, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")
    }

    @Test("Black and white colors on Status Neutral Emphasized must pass for all", .enabled(if: Self.doesRunOniOS))
    func blackAndWhiteColorsBlackColorsOnStatusNeutralEmphasizedSurfaceMustPassForAll() throws {
        var foregroundColor = "#FFFFFFFF"
        var backgroundColor = "#000000D6" // Opacity Black 840
        var ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")

        foregroundColor = "#000000FF"
        backgroundColor = "#FFFFFFCC" // Opacity white 800
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")
    }

    @Test("Black, white and orange colors on Status Neutral Muted", .enabled(if: Self.doesRunOniOS))
    func blackWhiteOrangeColorsBlackColorsOnStatusNeutralMutedSurface() throws {
        let foregroundBlack = "#000000FF"
        let foregroundOrangeLight = "#FF7900FF" // Orange brand color Orange 500
        let foregroundOrangeDark = "#F15E00FF" // Orange brand color Orange 550

        var backgroundColor = "#0000000A" // Opacity Black 40
        var ratio = OUDSWCAG21Ratio.contrastRatios(foregroundBlack, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundOrangeDark, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")

        backgroundColor = "#FFFFFF14" // Opacity white 80
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundOrangeLight, backgroundColor)!
        #expect(ratio.meets3to1 == false, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")
    }

    @Test("Black on Status Positive Emphasized must pass for all", .enabled(if: Self.doesRunOniOS))
    func blackColorOnStatusPositiveEmphasizedSurfaceMustPassForAll() throws {
        let foregroundColor = "#000000FF"

        var backgroundColor = "#3DE35AFF" // Functional Malachite 500
        var ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")

        backgroundColor = "#94F0A4FF" // Functional Malachite 300
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")
    }

    @Test("Black, white and orange colors on Status Positive Muted", .enabled(if: Self.doesRunOniOS))
    func blackWhiteOrangeColorsOnStatusPositiveMutedSurface() throws {
        let foregroundBlack = "#000000FF"
        let foregroundOrangeLight = "#FF7900FF" // Orange brand color Orange 500
        let foregroundOrangeDark = "#F15E00FF" // Orange brand color Orange 550
        let foregroundWhite = "#FFFFFFFF"

        var backgroundColor = "#3DE35A1F" // Functional Malachite
        var ratio = OUDSWCAG21Ratio.contrastRatios(foregroundBlack, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundOrangeLight, backgroundColor)!
        #expect(ratio.meets3to1 == false, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")

        backgroundColor = "#0A4715FF" // Functional Malachite 900
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundWhite, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundOrangeDark, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")
    }

    @Test("Black on Status Warning Emphasized must pass for all", .enabled(if: Self.doesRunOniOS))
    func blackColorOnStatusWarningEmphasizedSurfaceMustPassForAll() throws {
        let foregroundColor = "#000000FF"

        var backgroundColor = "#FFD000FF" // Functional Sun 500
        var ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")

        backgroundColor = "#FFE270FF" // Functional Sun 300
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")
    }

    @Test("Black, white, orange colors on Status Warning Muted", .enabled(if: Self.doesRunOniOS))
    func blackWhiteOrangeColorsOnStatusWarningMutedSurface() throws {
        let foregroundBlack = "#000000FF"
        let foregroundOrangeLight = "#FF7900FF" // Orange brand color Orange 500
        let foregroundOrangeDark = "#F15E00FF" // Orange brand color Orange 550
        let foregroundWhite = "#FFFFFFFF"

        var backgroundColor = "#FFD00029" // Opacity sun
        var ratio = OUDSWCAG21Ratio.contrastRatios(foregroundBlack, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundOrangeLight, backgroundColor)!
        #expect(ratio.meets3to1 == false, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")

        backgroundColor = "#3D3100FF" // Functional Sun 900
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundWhite, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == true, "Ratio = \(ratio.ratio)")
        ratio = OUDSWCAG21Ratio.contrastRatios(foregroundOrangeDark, backgroundColor)!
        #expect(ratio.meets3to1 == true, "Ratio = \(ratio.ratio)")
        #expect(ratio.meets4_5to1 == false, "Ratio = \(ratio.ratio)")
    }
}

// swiftlint:enable force_unwrapping
// swiftlint:enable type_body_length

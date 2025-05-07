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
// swiftlint:disable type_body_length

/// Struct to test `OUDSWCAG21Ratios`.
/// Use cases picked from issue [#647](https://github.com/Orange-OpenSource/ouds-ios/issues/647)
/// based on Orange Theme v0.14.0 and tokens lib v0.11.0
/// The aim is to be sure the utils are able to computed the suitable ratios and define wether or not WCAG 2.1 are respected.
struct OUDSWCAG21RatiosTests {

    // MARK: - Color luminance

    @Test("#FFFFFFFF as luminance of 1")
    func luminanceForFFFFFFFF() throws {
        let luminance = OUDSWCAG21Ratios.luminance(for: "#FFFFFFFF".color)
        #expect(luminance == 1, "luminance = \(String(describing: luminance))")
    }

    @Test("#000000FF as luminance of 0.0722")
    func luminanceFor000000FF() throws {
        let luminance = OUDSWCAG21Ratios.luminance(for: "#000000FF".color)
        #expect(luminance == 0.0, "luminance = \(String(describing: luminance))")
    }

    @Test("#F15E00FF as luminance of 0.339261794")
    func luminanceForF15E00FF() throws {
        let luminance = OUDSWCAG21Ratios.luminance(for: "#F15E00FF".color)
        #expect(luminance == 0.267061825736296, "luminance = \(String(describing: luminance))")
    }

    @Test("#26B2FF14 as luminance of 0.3230336529")
    func luminanceFor26B2FF14() throws {
        let luminance = OUDSWCAG21Ratios.luminance(for: "#26B2FF14".color)
        #expect(luminance == 0.3947286020914061, "luminance = \(String(describing: luminance))")
    }

    @Test("#3DE35A1F as luminance of 0.5602919883")
    func luminanceFor3DE35A1F() throws {
        let luminance = OUDSWCAG21Ratios.luminance(for: "#3DE35A1F".color)
        #expect(luminance == 0.5666845580578855, "luminance = \(String(describing: luminance))")
    }

    // MARK: - Color ratios - Always fail

    @Test("White on white must fail for all")
    func whiteColorOnWhiteAlwaysFail() throws {
        let foregroundColor = "#FFFFFFFF"
        let backgroundColor = "#FFFFFFFF"
        let ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == false, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")
    }

    @Test("Black on black must fail for all")
    func blackColorOnBlackAlwaysFail() throws {
        let foregroundColor = "#000000FF"
        let backgroundColor = "#000000FF"
        let ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == false, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")
    }

    // MARK: - Color ratios - Always pass

    @Test("White on black must pass for all")
    func whiteColorOnBlackMustAlwaysPass() throws {
        let foregroundColor = "#FFFFFFFF"
        let backgroundColor = "#000000FF"
        let ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")
    }

    @Test("Black on white must pass for all")
    func blackColorOnWhiteMustAlwaysPass() throws {
        let foregroundColor = "#000000FF"
        let backgroundColor = "#FFFFFFFF"
        let ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")
    }

    // MARK: - Color ratios - Other use cases

    // White text on Brand secondary and Brand Tertiary color background in dark mode
    @Test("White on Brand Primary / Secondary / Tertiary must fail for all")
    func whiteColorOnOrangeSurfacesMustFailFor4_5to1() throws {
        let foregroundColor = "#FFFFFFFF"
        let backgroundColor = "#FF7900FF"
        let ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == false, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")
    }

    // Black text on Status Neutral Emphasized in light mode
    @Test("Black on Status Neutral Emphasized must fail for all")
    func blackColorOnAlmostBlackSurfaceMustFailFor4_5to1() throws {
        let foregroundColor = "#000000FF"
        let backgroundColor = "#000000D6"
        let ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == false, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")
    }

    // Link's chevron for Brand secondary and Brand Tertiary color background in both light and dark mode
    @Test("Orange colors on Brand Primary / Secondary / Tertiary must fail for all")
    func orangeColorsOnOrangeSurfaceMustFailForAll() throws {
        let backgroundColor = "#FF7900FF"

        var foregroundColor = "#F15E00FF" // Light mode
        var ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == false, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")

        foregroundColor = "#FF7900FF" // Dark mode
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == false, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")
    }

    // Link's chevron for Status Warning Muted light mode
    @Test("Orange colors on Status Warning Muted must fail for all")
    func orangeColorsOnOpacitySunSurfaceMustFailForAll() throws {
        let backgroundColor = "#FFD00029" // Opacity sun color

        var foregroundColor = "#F15E00FF" // Light mode
        var ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")

        foregroundColor = "#FF7900FF" // Dark mode
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == false, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")
    }

    // Link's chevron for Status Positive Muted light mode
    @Test("Orange colors on Status Positive Muted")
    func orangeColorsOnMalachiteSurface() throws {
        let backgroundColor = "#3DE35A1F" // Functional Malachite color

        var foregroundColor = "#F15E00FF" // Light mode
        var ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")

        foregroundColor = "#FF7900FF" // Dark mode
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == false, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")
    }

    // Link's chevron for Status Neutral Emphasized light mode
    @Test("Black color on Status Neutral Emphasized")
    func blackOnStatusNeutralEmphasizedSurface() throws {
        let foregroundColor = "#000000"

        var backgroundColor = "#000000D6" // Opacity Black 840
        var ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == false, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")

        backgroundColor = "#FFFFFFCC" // Opacity White 800
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")
    }

    // Link's chevron for Status Info Muted light mode
    @Test("Orange colors on Status Info Muted")
    func orangeColorsOnOpacityDodgerBlueSurface() throws {
        let backgroundColor = "#26B2FF14" // Opacity dodger blue color

        var foregroundColor = "#F15E00FF" // Light mode
        var ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")

        foregroundColor = "#FF7900FF" // Dark mode
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == false, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")
    }

    // Link's chevron for Status Negative Muted light mode
    @Test("Orange colors on Status Negative Muted must fail for all")
    func orangeColorsOnOpacityScarletSurfaceMustFailForAll() throws {
        let backgroundColor = "#EA030514" // Opacity scarlet color

        var foregroundColor = "#F15E00FF" // Light mode
        var ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == false, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")

        foregroundColor = "#FF7900FF" // Dark mode
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == false, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")
    }

    @Test("Black color on Brand Primary / Secondary / Tertiary must pass for all")
    func blackColorOnBrandPrimarySecondaryTertiarySurfaceMustPassForAll() throws {
        let foregroundColor = "#000000"

        var backgroundColor = "#FF7900FF" // Orange brand color Orange 500
        var ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")

        backgroundColor = "#FF7900FF" // Orange brand color Orange 500
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")
    }

    @Test("Black color on Status Accent Emphasized must pass for all")
    func blackColorOnStatusAccentEmphasizedSurfaceMustPassForAll() throws {
        let foregroundColor = "#000000"

        var backgroundColor = "#FFD000FF" // Functional sun 500
        var ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")

        backgroundColor = "#FFE270FF" // Functional sun 300
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")
    }

    @Test("Black, white and orange colors on Status Accent Muted")
    func blackWhiteOrangeColorsOnStatusAccentMutedSurface() throws {
        let foregroundBlack = "#000000FF"
        let foregroundOrangeLight = "#FF7900FF" // Orange brand color Orange 500
        let foregroundOrangeDark = "#F15E00FF" // Orange brand color Orange 550
        let foregroundWhite = "#FFFFFFFF"

        var backgroundColor = "#F9F5F0FF" // Orange brand color Warm gray 100
        var ratios = OUDSWCAG21Ratios.contrastRatios(foregroundBlack, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundOrangeLight, backgroundColor)!
        #expect(ratios.meets3to1 == false, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")

        backgroundColor = "#353228FF" // Orange brand color Warm gray 500
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundWhite, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundOrangeDark, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")
    }

    @Test("Black color on Status Info Emphasized must pass for all")
    func blackColorOnStatusInfoEmphasizedSurfaceMustPassForAll() throws {
        let foregroundColor = "#000000FF"

        var backgroundColor = "#26B2FFFF" // Functional Dodger blue 500
        var ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")

        backgroundColor = "#8AD5FFFF" // Functional Dodger blue 300
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")
    }

    @Test("Black, white and orange colors on Status Info Muted")
    func blackWhiteOrangeColorsOnStatusInfoMutedSurface() throws {
        let foregroundBlack = "#000000FF"
        let foregroundOrangeLight = "#FF7900FF" // Orange brand color Orange 500
        let foregroundOrangeDark = "#F15E00FF" // Orange brand color Orange 550
        let foregroundWhite = "#FFFFFFFF"

        var backgroundColor = "#26B2FF14" // Opacity Dodger blue
        var ratios = OUDSWCAG21Ratios.contrastRatios(foregroundBlack, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundOrangeLight, backgroundColor)!
        #expect(ratios.meets3to1 == false, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")

        backgroundColor = "#003857FF" // Functional Dodger blue 900
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundWhite, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundOrangeDark, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")
    }

    @Test("Black and white colors on Status Negative Emphasized")
    func blackAndWhiteColorsBlackColorsOnStatuNegativeEmphasizedSurface() throws {
        var foregroundColor = "#FFFFFFFF"

        var backgroundColor = "#DB0002FF" // Functional Scarlet 600
        var ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")

        foregroundColor = "#000000FF"

        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")

        backgroundColor = "#FF8081FF" // Functional Scarlet 300
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")
    }

    @Test("Black, white and orange colors on Status Negative Muted")
    func blackWhiteOrangeColorsBlackColorsOnStatusNegativeMutedSurface() throws {
        let foregroundBlack = "#000000FF"
        let foregroundOrangeLight = "#FF7900FF" // Orange brand color Orange 500
        let foregroundOrangeDark = "#F15E00FF" // Orange brand color Orange 550
        let foregroundWhite = "#FFFFFFFF"

        var backgroundColor = "#EA030514" // Opacity scarlet
        var ratios = OUDSWCAG21Ratios.contrastRatios(foregroundBlack, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundOrangeLight, backgroundColor)!
        #expect(ratios.meets3to1 == false, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")

        backgroundColor = "#4D0001FF" // Opacity scarlet 900
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundWhite, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundOrangeDark, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")
    }

    @Test("Black and white colors on Status Neutral Emphasized must pass for all")
    func blackAndWhiteColorsBlackColorsOnStatusNeutralEmphasizedSurfaceMustPassForAll() throws {
        var foregroundColor = "#FFFFFFFF"
        var backgroundColor = "#000000D6" // Opacity Black 840
        var ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")

        foregroundColor = "#000000FF"
        backgroundColor = "#FFFFFFCC" // Opacity white 800
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")
    }

    @Test("Black, white and orange colors on Status Neutral Muted")
    func blackWhiteOrangeColorsBlackColorsOnStatusNeutralMutedSurface() throws {
        let foregroundBlack = "#000000FF"
        let foregroundOrangeLight = "#FF7900FF" // Orange brand color Orange 500
        let foregroundOrangeDark = "#F15E00FF" // Orange brand color Orange 550

        var backgroundColor = "#0000000A" // Opacity Black 40
        var ratios = OUDSWCAG21Ratios.contrastRatios(foregroundBlack, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundOrangeDark, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")

        backgroundColor = "#FFFFFF14" // Opacity white 80
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundOrangeLight, backgroundColor)!
        #expect(ratios.meets3to1 == false, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")
    }

    @Test("Black on Status Positive Emphasized must pass for all")
    func blackColorOnStatusPositiveEmphasizedSurfaceMustPassForAll() throws {
        let foregroundColor = "#000000FF"

        var backgroundColor = "#3DE35AFF" // Functional Malachite 500
        var ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")

        backgroundColor = "#94F0A4FF" // Functional Malachite 300
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")
    }

    @Test("Black, white and orange colors on Status Positive Muted")
    func blackWhiteOrangeColorsOnStatusPositiveMutedSurface() throws {
        let foregroundBlack = "#000000FF"
        let foregroundOrangeLight = "#FF7900FF" // Orange brand color Orange 500
        let foregroundOrangeDark = "#F15E00FF" // Orange brand color Orange 550
        let foregroundWhite = "#FFFFFFFF"

        var backgroundColor = "#3DE35A1F" // Functional Malachite
        var ratios = OUDSWCAG21Ratios.contrastRatios(foregroundBlack, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundOrangeLight, backgroundColor)!
        #expect(ratios.meets3to1 == false, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")

        backgroundColor = "#0A4715FF" // Functional Malachite 900
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundWhite, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundOrangeDark, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")
    }

    @Test("Black on Status Warning Emphasized must pass for all")
    func blackColorOnStatusWarningEmphasizedSurfaceMustPassForAll() throws {
        let foregroundColor = "#000000FF"

        var backgroundColor = "#FFD000FF" // Functional Sun 500
        var ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")

        backgroundColor = "#FFE270FF" // Functional Sun 300
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundColor, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")
    }

    @Test("Black, white, orange colors on Status Warning Muted")
    func blackWhiteOrangeColorsOnStatusWarningMutedSurface() throws {
        let foregroundBlack = "#000000FF"
        let foregroundOrangeLight = "#FF7900FF" // Orange brand color Orange 500
        let foregroundOrangeDark = "#F15E00FF" // Orange brand color Orange 550
        let foregroundWhite = "#FFFFFFFF"

        var backgroundColor = "#FFD00029" // Opacity sun
        var ratios = OUDSWCAG21Ratios.contrastRatios(foregroundBlack, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundOrangeLight, backgroundColor)!
        #expect(ratios.meets3to1 == false, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")

        backgroundColor = "#3D3100FF" // Functional Sun 900
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundWhite, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == true, "Ratio = \(ratios.ratio)")
        ratios = OUDSWCAG21Ratios.contrastRatios(foregroundOrangeDark, backgroundColor)!
        #expect(ratios.meets3to1 == true, "Ratio = \(ratios.ratio)")
        #expect(ratios.meets4_5to1 == false, "Ratio = \(ratios.ratio)")
    }
}

// swiftlint:enable force_unwrapping
// swiftlint:enable type_body_length

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
import Testing

// swiftlint:disable force_unwrapping
// swiftlint:disable type_body_length

/// Struct to test `OUDSColorContrastValidator`.
/// Use cases picked from issue [#647](https://github.com/Orange-OpenSource/ouds-ios/issues/647)
/// base on Orange Theme v0.14.0 and tokens lib v0.11.0
struct OUDSColorContrastValidatorTests {

    // MARK: - Always fail

    @Test("White on white must fail for all")
    func whiteColorOnWhiteAlwaysFail() throws {
        let foregroundColor = "#FFFFFFFF"
        let backgroundColor = "#FFFFFFFF"
        let (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == false, "Ratio = \(ratio)")
        #expect(_4_5to1 == false, "Ratio = \(ratio)")
    }

    @Test("Black on black must fail for all")
    func blackColorOnBlackAlwaysFail() throws {
        let foregroundColor = "#00000000"
        let backgroundColor = "#00000000"
        let (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == false, "Ratio = \(ratio)")
        #expect(_4_5to1 == false, "Ratio = \(ratio)")
    }

    // MARK: - Always pass

    @Test("White on black must pass for all")
    func whiteColorOnBlackMustAlwaysPass() throws {
        let foregroundColor = "#FFFFFFFF"
        let backgroundColor = "#00000000"
        let (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
    }

    @Test("Black on white must pass for all")
    func blackColorOnWhiteMustAlwaysPass() throws {
        let foregroundColor = "#00000000"
        let backgroundColor = "#FFFFFFFF"
        let (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
    }

    // MARK: - Failing use cases

    // White text on Brand secondary and Brand Tertiary color background in dark mode
    @Test("White on Brand Primary / Secondary / Tertiary must fail for all")
    func whiteColorOnOrangeSurfacesMustFailFor4_5to1() throws {
        let foregroundColor = "#FFFFFFFF"
        let backgroundColor = "#FF7900FF"
        let (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == false, "Ratio = \(ratio)")
        #expect(_4_5to1 == false, "Ratio = \(ratio)")
    }

    // Black text on Status Neutral Emphasized in light mode
    @Test("Black on Status Neutral Emphasized must fail for all")
    func blackColorOnAlmostBlackSurfaceMustFailFor4_5to1() throws {
        let foregroundColor = "#00000000"
        let backgroundColor = "#000000D6"
        let (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == false, "Ratio = \(ratio)")
        #expect(_4_5to1 == false, "Ratio = \(ratio)")
    }

    // Link's chevron for Brand secondary and Brand Tertiary color background in both light and dark mode
    @Test("White on Brand Primary / Secondary / Tertiary must fail for all")
    func orangeColorsOnOrangeSurfaceMustFailFor4_5to1() throws {
        let backgroundColor = "#FF7900FF"

        var foregroundColor = "#F15E00FF" // Light mode
        var (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == false, "Ratio = \(ratio)")
        #expect(_4_5to1 == false, "Ratio = \(ratio)")

        foregroundColor = "#FF7900FF" // Dark mode
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == false, "Ratio = \(ratio)")
        #expect(_4_5to1 == false, "Ratio = \(ratio)")
    }

    // Link's chevron for Status Warning Muted light mode
    @Test("Orange colors on Status Warning Muted must fail for all")
    func orangeColorsOnOpacitySunSurfaceMustFailFor3to1() throws {
        let backgroundColor = "#FFD00029" // Opacity sun color

        var foregroundColor = "#F15E00FF" // Light mode
        var (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == false, "Ratio = \(ratio)")
        #expect(_4_5to1 == false, "Ratio = \(ratio)")

        foregroundColor = "#FF7900FF" // Dark mode
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == false, "Ratio = \(ratio)")
        #expect(_4_5to1 == false, "Ratio = \(ratio)")
    }

    // Link's chevron for Status Positive Muted light mode
    @Test("Orange colors on Status Positive Muted must fail for all")
    func orangeColorsOnMalachiteSurfaceMustFailFor3to1() throws {
        let backgroundColor = "#3DE35A1F" // Functional Malachite color

        var foregroundColor = "#F15E00FF" // Light mode
        var (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == false, "Ratio = \(ratio)")
        #expect(_4_5to1 == false, "Ratio = \(ratio)")

        foregroundColor = "#FF7900FF" // Dark mode
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == false, "Ratio = \(ratio)")
        #expect(_4_5to1 == false, "Ratio = \(ratio)")
    }

    // Link's chevron for Status Neutral Emphasized light mode
    @Test("Black color on Status Neutral Emphasized must fail for light")
    func blackOnStatusNeutralEmphasizedSurfaceMustFailForLight() throws {
        let foregroundColor = "#000000"

        var backgroundColor = "#000000D6" // Opacity Black 840
        var (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == false, "Ratio = \(ratio)")
        #expect(_4_5to1 == false, "Ratio = \(ratio)")

        backgroundColor = "#FFFFFFCC" // Opacity White 800
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
    }

    // Link's chevron for Status Info Muted light mode
    @Test("Orange colors on Status Info Muted must fail for all")
    func orangeColorsOnOpacityDodgerBlueSurfaceMustFailFor3to1() throws {
        let backgroundColor = "#26B2FF14" // Opacity dodger blue color

        var foregroundColor = "#F15E00FF" // Light mode
        var (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == false, "Ratio = \(ratio)")
        #expect(_4_5to1 == false, "Ratio = \(ratio)")

        foregroundColor = "#FF7900FF" // Dark mode
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == false, "Ratio = \(ratio)")
        #expect(_4_5to1 == false, "Ratio = \(ratio)")
    }

    // Link's chevron for Status Negative Muted light mode
    @Test("Orange colors on Status Negative Muted must fail for all")
    func orangeColorsOnOpacityScarletSurfaceMustFailFor3to1() throws {
        let backgroundColor = "#EA030514" // Opacity scarlet color

        var foregroundColor = "#F15E00FF" // Light mode
        var (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == false, "Ratio = \(ratio)")
        #expect(_4_5to1 == false, "Ratio = \(ratio)")

        foregroundColor = "#FF7900FF" // Dark mode
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == false, "Ratio = \(ratio)")
        #expect(_4_5to1 == false, "Ratio = \(ratio)")
    }

    // MARK: - Passing use cases

    @Test("Black color on Brand Primary / Secondary / Tertiary must pass for all")
    func blackColorOnBrandPrimarySecondaryTertiarySurfaceMustPassForAll() throws {
        let foregroundColor = "#000000"

        var backgroundColor = "#FF7900FF" // Orange brand color Orange 500
        var (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")

        backgroundColor = "#FF7900FF" // Orange brand color Orange 500
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
    }

    @Test("Black color on Status Accent Emphasized must pass for all")
    func blackColorOnStatusAccentEmphasizedSurfaceMustPassForAll() throws {
        let foregroundColor = "#000000"

        var backgroundColor = "#FFD000FF" // Functional sun 500
        var (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")

        backgroundColor = "#FFE270FF" // Functional sun 300
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
    }

    @Test("Black, white and orange colors on Status Accent Muted must pass for all")
    func blackWhiteOrangeColorsOnStatusAccentMutedSurfaceMustPassForAll() throws {
        let foregroundBlack = "#00000000"
        let foregroundOrangeLight = "#FF7900FF" // Orange brand color Orange 500
        let foregroundOrangeDark = "#F15E00FF" // Orange brand color Orange 550
        let foregroundWhite = "#FFFFFFFF"

        var backgroundColor = "#F9F5F0FF" // Orange brand color Warm gray 100
        var (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundBlack, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundOrangeLight, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")

        backgroundColor = "#A99275FF" // Orange brand color Warm gray 500
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundWhite, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundOrangeDark, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
    }

    @Test("Black color on Status Info Emphasized must pass for all")
    func blackColorOnStatusInfoEmphasizedSurfaceMustPassForAll() throws {
        let foregroundColor = "#00000000"

        var backgroundColor = "#26B2FFFF" // Functional Dodger blue 500
        var (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")

        backgroundColor = "#8AD5FFFF" // Functional Dodger blue 300
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
    }

    @Test("Black, white and orange colors on Status Info Muted must pass for all")
    func blackWhiteOrangeColorsOnStatusInfoMutedSurfaceMustPassForAll() throws {
        let foregroundBlack = "#00000000"
        let foregroundOrangeLight = "#FF7900FF" // Orange brand color Orange 500
        let foregroundOrangeDark = "#F15E00FF" // Orange brand color Orange 550
        let foregroundWhite = "#FFFFFFFF"

        var backgroundColor = "#26B2FF14" // Opacity Dodger blue
        var (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundBlack, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundOrangeLight, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")

        backgroundColor = "#003857FF" // Functional Dodger blue 900
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundWhite, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundOrangeDark, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
    }

    @Test("Black and white colors on Status Negative Emphasized must pass for all")
    func blackAndWhiteColorsBlackColorsOnStatuNegativeEmphasizedSurfaceMustPassForAll() throws {
        var foregroundColor = "#FFFFFFFF"

        var backgroundColor = "#DB0002FF" // Functional Scarlet 600
        var (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")

        foregroundColor = "#00000000"

        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")

        backgroundColor = "#FF8081FF" // Functional Scarlet 300
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
    }

    @Test("Black, white and orange colors on Status Negative Muted must pass for all")
    func blackWhiteOrangeColorsBlackColorsOnStatusNegativeMutedSurfaceMustPassForAll() throws {
        let foregroundBlack = "#00000000"
        let foregroundOrangeLight = "#FF7900FF" // Orange brand color Orange 500
        let foregroundOrangeDark = "#F15E00FF" // Orange brand color Orange 550
        let foregroundWhite = "#FFFFFFFF"

        var backgroundColor = "#EA030514" // Opacity scarlet
        var (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundBlack, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundOrangeLight, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")

        backgroundColor = "#4D0001FF" // Opacity scarlet 900
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundWhite, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundOrangeDark, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
    }

    @Test("Black and white colors on Status Neutral Emphasized must pass for all")
    func blackAndWhiteColorsBlackColorsOnStatusNeutralEmphasizedSurfaceMustPassForAll() throws {
        var foregroundColor = "#FFFFFFFF"
        var backgroundColor = "#000000D6" // Opacity Black 840
        var (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")

        foregroundColor = "#00000000"
        backgroundColor = "#FFFFFFCC" // Opacity white 800
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
    }

    @Test("Black, white  and orange colors on Status Neutral Muted must pass for all")
    func blackWhiteOrangeColorsBlackColorsOnStatusNeutralMutedSurfaceMustPassForAll() throws {
        let foregroundBlack = "#00000000"
        let foregroundOrangeLight = "#FF7900FF" // Orange brand color Orange 500
        let foregroundOrangeDark = "#F15E00FF" // Orange brand color Orange 550
        let foregroundWhite = "#FFFFFFFF"

        var backgroundColor = "#0000000A" // Opacity Black 40
        var (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundBlack, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundOrangeLight, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")

        backgroundColor = "#FFFFFF14" // Opacity white 80
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundWhite, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundOrangeDark, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
    }

    @Test("Black on Status Positive Emphasized must pass for all")
    func blackColorOnStatusPositiveEmphasizedSurfaceMustPassForAll() throws {
        let foregroundColor = "#00000000"

        var backgroundColor = "#3DE35AFF" // Functional Malachite 500
        var (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")

        backgroundColor = "#94F0A4FF" // Functional Malachite 300
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
    }

    @Test("Black, white and orange colors on Status Positive Muted must pass for all")
    func blackWhiteOrangeColorsOnStatusPositiveMutedSurfaceMustPassForAll() throws {
        let foregroundBlack = "#00000000"
        let foregroundOrangeLight = "#FF7900FF" // Orange brand color Orange 500
        let foregroundOrangeDark = "#F15E00FF" // Orange brand color Orange 550
        let foregroundWhite = "#FFFFFFFF"

        var backgroundColor = "#3DE35A1F" // Functional Malachite
        var (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundBlack, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundOrangeLight, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")

        backgroundColor = "#0A4715FF" // Functional Malachite 900
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundWhite, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundOrangeDark, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
    }

    @Test("Black on Status Warning Emphasized must pass for all")
    func blackColorOnStatusWarningEmphasizedSurfaceMustPassForAll() throws {
        let foregroundColor = "#00000000"

        var backgroundColor = "#FFD000FF" // Functional Sun 500
        var (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")

        backgroundColor = "#FFE270FF" // Functional Sun 300
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundColor, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
    }

    @Test("Black, white, orange colors on Status Warning Muted must pass for all")
    func blackWhiteOrangeColorsOnStatusWarningMutedSurfaceMustPassForAll() throws {
        let foregroundBlack = "#00000000"
        let foregroundOrangeLight = "#FF7900FF" // Orange brand color Orange 500
        let foregroundOrangeDark = "#F15E00FF" // Orange brand color Orange 550
        let foregroundWhite = "#FFFFFFFF"

        var backgroundColor = "#FFD00029" // Opacity sun
        var (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundBlack, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundOrangeLight, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")

        backgroundColor = "#3D3100FF" // Functional Sun 900
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundWhite, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
        (ratio, _3to1, _4_5to1) = OUDSColorContrastValidator.ratioCheck(foregroundOrangeDark, backgroundColor)!
        #expect(_3to1 == true, "Ratio = \(ratio)")
        #expect(_4_5to1 == true, "Ratio = \(ratio)")
    }
}

// swiftlint:enable force_unwrapping
// swiftlint:enable type_body_length

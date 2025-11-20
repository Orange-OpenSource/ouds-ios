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

import Foundation
import OUDSThemesWireframe
import Testing
import TestsUtils

// swiftlint:disable type_body_length
// swiftlint:disable force_try
// swiftlint:disable file_length

/// The aim of this tests class is to look for regressions in **Wireframe brand color raw tokens**.
///
/// Because these values will be at least generated through an external tool, is it not relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **Wireframe brand color raw tokens**, there will be some unchanged things like relationships between tokens.
///
/// Here are some rules to follow:
/// - all colors must be different
/// - for a group of colors, the higher the token is, the darker the color is
/// - all colors must have an hexadecimal sring value with 8 b16 digits
struct WireframeBrandColorRawTokensTests {

    // MARK: - Settings

    /// The regular expression pattern to check the colors are in hexa format
    private static let colorFormat = try! NSRegularExpression(pattern: "^#[0-9A-Fa-f]{8}$")

    // MARK: - Tests lighter colors

    @Test func wireframeBrandColorRawTokenRoyalBlue50LighterThanRoyalBlue100() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.royalBlue50, WireframeBrandColorRawTokens.royalBlue100)
    }

    @Test func wireframeBrandColorRawTokenRoyalBlue100LighterThanRoyalBlue200() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.royalBlue100, WireframeBrandColorRawTokens.royalBlue200)
    }

    @Test func wireframeBrandColorRawTokenRoyalBlue200LighterThanRoyalBlue300() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.royalBlue200, WireframeBrandColorRawTokens.royalBlue300)
    }

    @Test func wireframeBrandColorRawTokenRoyalBlue300LighterThanRoyalBlue400() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.royalBlue300, WireframeBrandColorRawTokens.royalBlue400)
    }

    @Test func wireframeBrandColorRawTokenRoyalBlue400LighterThanRoyalBlue500() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.royalBlue400, WireframeBrandColorRawTokens.royalBlue500)
    }

    @Test func wireframeBrandColorRawTokenRoyalBlue500LighterThanRoyalBlue600() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.royalBlue500, WireframeBrandColorRawTokens.royalBlue600)
    }

    @Test func wireframeBrandColorRawTokenRoyalBlue600DarkerThanRoyalBlue700() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.royalBlue600, WireframeBrandColorRawTokens.royalBlue700)
    }

    @Test func wireframeBrandColorRawTokenRoyalBlue700LighterThanRoyalBlue800() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.royalBlue700, WireframeBrandColorRawTokens.royalBlue800)
    }

    @Test func wireframeBrandColorRawTokenRoyalBlue800LighterThanRoyalBlue900() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.royalBlue800, WireframeBrandColorRawTokens.royalBlue900)
    }

    @Test func wireframeBrandColorRawTokenRoyalBlue900LighterThanRoyalBlue950() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.royalBlue900, WireframeBrandColorRawTokens.royalBlue950)
    }

    @Test func wireframeBrandColorRawTokenRoyalBlue950LighterThanRoyalBlue1000() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.royalBlue950, WireframeBrandColorRawTokens.royalBlue1000)
    }

    @Test func wireframeBrandColorRawTokenRustyRed50LighterThanRustyRed100() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.rustyRed50, WireframeBrandColorRawTokens.rustyRed100)
    }

    @Test func wireframeBrandColorRawTokenRustyRed100LighterThanRustyRed200() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.rustyRed100, WireframeBrandColorRawTokens.rustyRed200)
    }

    @Test func wireframeBrandColorRawTokenRustyRed200LighterThanRustyRed300() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.rustyRed200, WireframeBrandColorRawTokens.rustyRed300)
    }

    @Test func wireframeBrandColorRawTokenRustyRed300LighterThanRustyRed400() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.rustyRed300, WireframeBrandColorRawTokens.rustyRed400)
    }

    @Test func wireframeBrandColorRawTokenRustyRed400LighterThanRustyRed500() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.rustyRed400, WireframeBrandColorRawTokens.rustyRed500)
    }

    @Test func wireframeBrandColorRawTokenRustyRed500LighterThanRustyRed600() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.rustyRed500, WireframeBrandColorRawTokens.rustyRed600)
    }

    @Test func wireframeBrandColorRawTokenRustyRed600LighterThanRustyRed700() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.rustyRed600, WireframeBrandColorRawTokens.rustyRed700)
    }

    @Test func wireframeBrandColorRawTokenRustyRed700LighterThanRustyRed800() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.rustyRed700, WireframeBrandColorRawTokens.rustyRed800)
    }

    @Test func wireframeBrandColorRawTokenRustyRed800LighterThanRustyRed900() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.rustyRed800, WireframeBrandColorRawTokens.rustyRed900)
    }

    @Test func wireframeBrandColorRawTokenRustyRed900LighterThanRustyRed950() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.rustyRed900, WireframeBrandColorRawTokens.rustyRed950)
    }

    @Test func wireframeBrandColorRawTokenRustyRed950LighterThanRustyRed1000() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.rustyRed950, WireframeBrandColorRawTokens.rustyRed1000)
    }

    @Test func wireframeBrandColorRawTokenFlame50LighterThanFlame100() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.flame50, WireframeBrandColorRawTokens.flame100)
    }

    @Test func wireframeBrandColorRawTokenFlame100LighterThanFlame200() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.flame100, WireframeBrandColorRawTokens.flame200)
    }

    @Test func wireframeBrandColorRawTokenFlame200LighterThanFlame300() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.flame200, WireframeBrandColorRawTokens.flame300)
    }

    @Test func wireframeBrandColorRawTokenFlame300LighterThanFlame400() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.flame300, WireframeBrandColorRawTokens.flame400)
    }

    @Test func wireframeBrandColorRawTokenFlame400LighterThanFlame500() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.flame400, WireframeBrandColorRawTokens.flame500)
    }

    @Test func wireframeBrandColorRawTokenFlame500LighterThanFlame600() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.flame500, WireframeBrandColorRawTokens.flame600)
    }

    @Test func wireframeBrandColorRawTokenFlame600LighterThanFlame700() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.flame600, WireframeBrandColorRawTokens.flame700)
    }

    @Test func wireframeBrandColorRawTokenFlame700LighterThanFlame800() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.flame700, WireframeBrandColorRawTokens.flame800)
    }

    @Test func wireframeBrandColorRawTokenFlame800LighterThanFlame900() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.flame800, WireframeBrandColorRawTokens.flame900)
    }

    @Test func wireframeBrandColorRawTokenFlame900LighterThanFlame950() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.flame900, WireframeBrandColorRawTokens.flame950)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayLight80LighterThanColorFunctionalGrayLight160() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.functionalGrayLight80, WireframeBrandColorRawTokens.functionalGrayLight160)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayLight160LighterThanColorFunctionalGrayLight240() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.functionalGrayLight160, WireframeBrandColorRawTokens.functionalGrayLight240)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayLight240LighterThanColorFunctionalGrayLight320() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.functionalGrayLight240, WireframeBrandColorRawTokens.functionalGrayLight320)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayLight320LighterThanColorFunctionalGrayLight400() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.functionalGrayLight320, WireframeBrandColorRawTokens.functionalGrayLight400)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayLight400LighterThanColorFunctionalGrayLight480() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.functionalGrayLight400, WireframeBrandColorRawTokens.functionalGrayLight480)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayLight480LighterThanColorFunctionalGrayLight560() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.functionalGrayLight480, WireframeBrandColorRawTokens.functionalGrayLight560)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayLight560LighterThanColorFunctionalGrayLight640() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.functionalGrayLight560, WireframeBrandColorRawTokens.functionalGrayLight640)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayLight640LighterThanColorFunctionalGrayLight720() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.functionalGrayLight640, WireframeBrandColorRawTokens.functionalGrayLight720)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayLight720LighterThanColorFunctionalGrayLight800() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.functionalGrayLight720, WireframeBrandColorRawTokens.functionalGrayLight800)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayLight800LighterThanColorFunctionalGrayLight880() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.functionalGrayLight800, WireframeBrandColorRawTokens.functionalGrayLight880)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayLight880LighterThanColorFunctionalGrayLight960() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.functionalGrayLight880, WireframeBrandColorRawTokens.functionalGrayLight960)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayDark80LighterThanColorFunctionalGrayDark160() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.functionalGrayDark80, WireframeBrandColorRawTokens.functionalGrayDark160)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayDark160LighterThanColorFunctionalGrayDark240() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.functionalGrayDark160, WireframeBrandColorRawTokens.functionalGrayDark240)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayDark240LighterThanColorFunctionalGrayDark320() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.functionalGrayDark240, WireframeBrandColorRawTokens.functionalGrayDark320)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayDark320LighterThanColorFunctionalGrayDark400() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.functionalGrayDark320, WireframeBrandColorRawTokens.functionalGrayDark400)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayDark400LighterThanColorFunctionalGrayDark480() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.functionalGrayDark400, WireframeBrandColorRawTokens.functionalGrayDark480)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayDark480LighterThanColorFunctionalGrayDark560() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.functionalGrayDark480, WireframeBrandColorRawTokens.functionalGrayDark560)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayDark560LighterThanColorFunctionalGrayDark640() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.functionalGrayDark560, WireframeBrandColorRawTokens.functionalGrayDark640)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayDark640LighterThanColorFunctionalGrayDark720() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.functionalGrayDark640, WireframeBrandColorRawTokens.functionalGrayDark720)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayDark720LighterThanColorFunctionalGrayDark800() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.functionalGrayDark720, WireframeBrandColorRawTokens.functionalGrayDark800)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayDark800LighterThanColorFunctionalGrayDark880() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.functionalGrayDark800, WireframeBrandColorRawTokens.functionalGrayDark880)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayDark880LighterThanColorFunctionalGrayDark960() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.functionalGrayDark880, WireframeBrandColorRawTokens.functionalGrayDark960)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite0DarkerThanColorOpacityWhite40() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.white0, WireframeBrandColorRawTokens.white40)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite40DarkerThanColorOpacityWhite80() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.white40, WireframeBrandColorRawTokens.white80)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite80DarkerThanColorOpacityWhite120() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.white80, WireframeBrandColorRawTokens.white120)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite120DarkerThanColorOpacityWhite160() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.white120, WireframeBrandColorRawTokens.white160)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite160DarkerThanColorOpacityWhite200() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.white160, WireframeBrandColorRawTokens.white200)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite200DarkerThanColorOpacityWhite240() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.white200, WireframeBrandColorRawTokens.white240)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite240DarkerThanColorOpacityWhite280() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.white240, WireframeBrandColorRawTokens.white280)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite280DarkerThanColorOpacityWhite320() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.white280, WireframeBrandColorRawTokens.white320)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite320DarkerThanColorOpacityWhite360() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.white320, WireframeBrandColorRawTokens.white360)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite360DarkerThanColorOpacityWhite400() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.white360, WireframeBrandColorRawTokens.white400)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite400DarkerThanColorOpacityWhite440() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.white400, WireframeBrandColorRawTokens.white440)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite440DarkerThanColorOpacityWhite480() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.white440, WireframeBrandColorRawTokens.white480)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite480DarkerThanColorOpacityWhite520() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.white480, WireframeBrandColorRawTokens.white520)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite520DarkerThanColorOpacityWhite560() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.white520, WireframeBrandColorRawTokens.white560)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite560DarkerThanColorOpacityWhite600() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.white560, WireframeBrandColorRawTokens.white600)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite600DarkerThanColorOpacityWhite640() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.white600, WireframeBrandColorRawTokens.white640)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite640DarkerThanColorOpacityWhite680() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.white640, WireframeBrandColorRawTokens.white680)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite680DarkerThanColorOpacityWhite720() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.white680, WireframeBrandColorRawTokens.white720)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite720DarkerThanColorOpacityWhite760() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.white720, WireframeBrandColorRawTokens.white760)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite760DarkerThanColorOpacityWhite800() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.white760, WireframeBrandColorRawTokens.white800)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite800DarkerThanColorOpacityWhite840() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.white800, WireframeBrandColorRawTokens.white840)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite840DarkerThanColorOpacityWhite880() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.white840, WireframeBrandColorRawTokens.white880)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite880DarkerThanColorOpacityWhite920() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.white880, WireframeBrandColorRawTokens.white920)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite920DarkerThanColorOpacityWhite960() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.white920, WireframeBrandColorRawTokens.white960)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack0DarkerThanColorOpacityBlack40() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityBlack0, WireframeBrandColorRawTokens.opacityBlack40)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack40DarkerThanColorOpacityBlack80() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityBlack40, WireframeBrandColorRawTokens.opacityBlack80)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack80DarkerThanColorOpacityBlack120() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityBlack80, WireframeBrandColorRawTokens.opacityBlack120)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack120DarkerThanColorOpacityBlack160() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityBlack120, WireframeBrandColorRawTokens.opacityBlack160)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack160DarkerThanColorOpacityBlack200() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityBlack160, WireframeBrandColorRawTokens.opacityBlack200)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack200DarkerThanColorOpacityBlack240() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityBlack200, WireframeBrandColorRawTokens.opacityBlack240)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack240DarkerThanColorOpacityBlack280() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityBlack240, WireframeBrandColorRawTokens.opacityBlack280)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack280DarkerThanColorOpacityBlack320() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityBlack280, WireframeBrandColorRawTokens.opacityBlack320)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack320DarkerThanColorOpacityBlack360() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityBlack320, WireframeBrandColorRawTokens.opacityBlack360)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack360DarkerThanColorOpacityBlack400() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityBlack360, WireframeBrandColorRawTokens.opacityBlack400)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack400DarkerThanColorOpacityBlack440() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityBlack400, WireframeBrandColorRawTokens.opacityBlack440)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack440DarkerThanColorOpacityBlack480() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityBlack440, WireframeBrandColorRawTokens.opacityBlack480)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack480DarkerThanColorOpacityBlack520() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityBlack480, WireframeBrandColorRawTokens.opacityBlack520)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack520DarkerThanColorOpacityBlack560() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityBlack520, WireframeBrandColorRawTokens.opacityBlack560)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack560DarkerThanColorOpacityBlack600() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityBlack560, WireframeBrandColorRawTokens.opacityBlack600)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack600DarkerThanColorOpacityBlack640() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityBlack600, WireframeBrandColorRawTokens.opacityBlack640)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack640DarkerThanColorOpacityBlack680() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityBlack640, WireframeBrandColorRawTokens.opacityBlack680)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack680DarkerThanColorOpacityBlack720() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityBlack680, WireframeBrandColorRawTokens.opacityBlack720)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack720DarkerThanColorOpacityBlack760() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityBlack720, WireframeBrandColorRawTokens.opacityBlack760)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack760DarkerThanColorOpacityBlack800() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityBlack760, WireframeBrandColorRawTokens.opacityBlack800)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack800DarkerThanColorOpacityBlack840() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityBlack800, WireframeBrandColorRawTokens.opacityBlack840)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack840DarkerThanColorOpacityBlack880() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityBlack840, WireframeBrandColorRawTokens.opacityBlack880)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack880DarkerThanColorOpacityBlack920() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityBlack880, WireframeBrandColorRawTokens.opacityBlack920)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack920DarkerThanColorOpacityBlack960() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityBlack920, WireframeBrandColorRawTokens.opacityBlack960)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue0DarkerThanColorOpacityRoyalBlue40() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityRoyalBlue0, WireframeBrandColorRawTokens.opacityRoyalBlue40)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue40DarkerThanColorOpacityRoyalBlue80() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityRoyalBlue40, WireframeBrandColorRawTokens.opacityRoyalBlue80)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue80DarkerThanColorOpacityRoyalBlue120() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityRoyalBlue80, WireframeBrandColorRawTokens.opacityRoyalBlue120)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue120DarkerThanColorOpacityRoyalBlue160() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityRoyalBlue120, WireframeBrandColorRawTokens.opacityRoyalBlue160)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue160DarkerThanColorOpacityRoyalBlue200() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityRoyalBlue160, WireframeBrandColorRawTokens.opacityRoyalBlue200)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue200DarkerThanColorOpacityRoyalBlue240() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityRoyalBlue200, WireframeBrandColorRawTokens.opacityRoyalBlue240)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue240DarkerThanColorOpacityRoyalBlue280() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityRoyalBlue240, WireframeBrandColorRawTokens.opacityRoyalBlue280)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue280DarkerThanColorOpacityRoyalBlue320() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityRoyalBlue280, WireframeBrandColorRawTokens.opacityRoyalBlue320)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue320DarkerThanColorOpacityRoyalBlue360() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityRoyalBlue320, WireframeBrandColorRawTokens.opacityRoyalBlue360)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue360DarkerThanColorOpacityRoyalBlue400() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityRoyalBlue360, WireframeBrandColorRawTokens.opacityRoyalBlue400)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue400DarkerThanColorOpacityRoyalBlue440() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityRoyalBlue400, WireframeBrandColorRawTokens.opacityRoyalBlue440)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue440DarkerThanColorOpacityRoyalBlue480() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityRoyalBlue440, WireframeBrandColorRawTokens.opacityRoyalBlue480)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue480DarkerThanColorOpacityRoyalBlue520() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityRoyalBlue480, WireframeBrandColorRawTokens.opacityRoyalBlue520)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue520DarkerThanColorOpacityRoyalBlue560() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityRoyalBlue520, WireframeBrandColorRawTokens.opacityRoyalBlue560)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue560DarkerThanColorOpacityRoyalBlue600() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityRoyalBlue560, WireframeBrandColorRawTokens.opacityRoyalBlue600)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue600DarkerThanColorOpacityRoyalBlue640() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityRoyalBlue600, WireframeBrandColorRawTokens.opacityRoyalBlue640)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue640DarkerThanColorOpacityRoyalBlue680() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityRoyalBlue640, WireframeBrandColorRawTokens.opacityRoyalBlue680)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue680DarkerThanColorOpacityRoyalBlue720() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityRoyalBlue680, WireframeBrandColorRawTokens.opacityRoyalBlue720)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue720DarkerThanColorOpacityRoyalBlue760() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityRoyalBlue720, WireframeBrandColorRawTokens.opacityRoyalBlue760)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue760DarkerThanColorOpacityRoyalBlue800() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityRoyalBlue760, WireframeBrandColorRawTokens.opacityRoyalBlue800)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue800DarkerThanColorOpacityRoyalBlue840() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityRoyalBlue800, WireframeBrandColorRawTokens.opacityRoyalBlue840)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue840DarkerThanColorOpacityRoyalBlue880() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityRoyalBlue840, WireframeBrandColorRawTokens.opacityRoyalBlue880)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue880DarkerThanColorOpacityRoyalBlue920() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityRoyalBlue880, WireframeBrandColorRawTokens.opacityRoyalBlue920)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue920DarkerThanColorOpacityRoyalBlue960() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.opacityRoyalBlue920, WireframeBrandColorRawTokens.opacityRoyalBlue960)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRustyRed80DLighterThanColorOpacityRustyRed680() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.opacityRustyRed80, WireframeBrandColorRawTokens.opacityRustyRed680)
    }

    // MARK: - Tests format

    @Test func colorRawTokenRoyalBlue50Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.royalBlue50, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRoyalBlue100Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.royalBlue100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRoyalBlue200Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.royalBlue200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRoyalBlue300Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.royalBlue300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRoyalBlue400Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.royalBlue400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRoyalBlue500Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.royalBlue500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRoyalBlue600Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.royalBlue600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRoyalBlue700Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.royalBlue700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRoyalBlue800Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.royalBlue800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRoyalBlue900Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.royalBlue900, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRoyalBlue950Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.royalBlue950, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRoyalBlue1000Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.royalBlue1000, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRustyRed50Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.rustyRed50, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRustyRed100Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.rustyRed100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRustyRed200Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.rustyRed200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRustyRed300Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.rustyRed300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRustyRed400Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.rustyRed400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRustyRed500Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.rustyRed500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRustyRed600Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.rustyRed600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRustyRed700Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.rustyRed700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRustyRed800Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.rustyRed800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRustyRed900Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.rustyRed900, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRustyRed950Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.rustyRed950, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRustyRed1000Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.rustyRed1000, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenFlame50Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.flame50, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenFlame100Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.flame100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenFlame200Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.flame200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenFlame300Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.flame300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenFlame400Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.flame400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenFlame500Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.flame500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenFlame600Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.flame600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenFlame700Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.flame700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenFlame800Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.flame800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenFlame900Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.flame900, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenFlame950Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.flame950, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight80Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.functionalGrayLight80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight160Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.functionalGrayLight160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight240Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.functionalGrayLight240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight320Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.functionalGrayLight320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight400Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.functionalGrayLight400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight480Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.functionalGrayLight480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight560Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.functionalGrayLight560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight640Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.functionalGrayLight640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight720Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.functionalGrayLight720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight800Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.functionalGrayLight800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight880Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.functionalGrayLight880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight960Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.functionalGrayLight960, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark80Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.functionalGrayDark80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark160Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.functionalGrayDark160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark240Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.functionalGrayDark240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark320Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.functionalGrayDark320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark400Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.functionalGrayDark400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark480Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.functionalGrayDark480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark560Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.functionalGrayDark560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark640Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.functionalGrayDark640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark720Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.functionalGrayDark720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark800Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.functionalGrayDark800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark880Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.functionalGrayDark880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark960Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.functionalGrayDark960, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite0Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white0, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite40Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white40, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite80Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite120Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white120, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite160Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite200Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite240Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite280Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white280, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite320Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite360Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white360, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite400Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite440Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white440, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite480Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite520Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white520, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite560Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite600Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite640Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite680Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white680, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite720Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite760Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white760, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite800Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite840Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white840, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite880Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite920Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white920, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite960Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.white960, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack0Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack0, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack40Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack40, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack80Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack120Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack120, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack160Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack200Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack240Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack280Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack280, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack320Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack360Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack360, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack400Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack440Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack440, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack480Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack520Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack520, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack560Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack600Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack640Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack680Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack680, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack720Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack760Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack760, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack800Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack840Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack840, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack880Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack920Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack920, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack960Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityBlack960, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue0Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue0, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue40Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue40, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue80Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue120Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue120, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue160Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue200Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue240Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue280Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue280, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue320Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue360Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue360, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue400Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue440Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue440, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue480Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue520Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue520, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue560Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue600Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue640Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue680Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue680, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue720Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue760Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue760, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue800Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue840Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue840, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue880Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue920Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue920, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue960Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRoyalBlue960, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRustyRed80Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRustyRed80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRustyRed680Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.opacityRustyRed680, regexp: Self.colorFormat)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable force_try

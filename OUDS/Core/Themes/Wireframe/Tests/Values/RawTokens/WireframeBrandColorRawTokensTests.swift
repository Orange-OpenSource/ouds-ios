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
import OUDSTokensRaw
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

    @Test func wireframeBrandColorRawTokenColorRoyalBlue50LighterThanColorRoyalBlue100() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorRoyalBlue50, WireframeBrandColorRawTokens.colorRoyalBlue100)
    }

    @Test func wireframeBrandColorRawTokenColorRoyalBlue100LighterThanColorRoyalBlue200() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorRoyalBlue100, WireframeBrandColorRawTokens.colorRoyalBlue200)
    }

    @Test func wireframeBrandColorRawTokenColorRoyalBlue200LighterThanColorRoyalBlue300() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorRoyalBlue200, WireframeBrandColorRawTokens.colorRoyalBlue300)
    }

    @Test func wireframeBrandColorRawTokenColorRoyalBlue300LighterThanColorRoyalBlue400() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorRoyalBlue300, WireframeBrandColorRawTokens.colorRoyalBlue400)
    }

    @Test func wireframeBrandColorRawTokenColorRoyalBlue400LighterThanColorRoyalBlue500() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorRoyalBlue400, WireframeBrandColorRawTokens.colorRoyalBlue500)
    }

    @Test func wireframeBrandColorRawTokenColorRoyalBlue500LighterThanColorRoyalBlue600() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorRoyalBlue500, WireframeBrandColorRawTokens.colorRoyalBlue600)
    }

    @Test func wireframeBrandColorRawTokenColorRoyalBlue600DarkerThanColorRoyalBlue700() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorRoyalBlue600, WireframeBrandColorRawTokens.colorRoyalBlue700)
    }

    @Test func wireframeBrandColorRawTokenColorRoyalBlue700LighterThanColorRoyalBlue800() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorRoyalBlue700, WireframeBrandColorRawTokens.colorRoyalBlue800)
    }

    @Test func wireframeBrandColorRawTokenColorRoyalBlue800LighterThanColorRoyalBlue900() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorRoyalBlue800, WireframeBrandColorRawTokens.colorRoyalBlue900)
    }

    @Test func wireframeBrandColorRawTokenColorRoyalBlue900LighterThanColorRoyalBlue950() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorRoyalBlue900, WireframeBrandColorRawTokens.colorRoyalBlue950)
    }

    @Test func wireframeBrandColorRawTokenColorRoyalBlue950LighterThanColorRoyalBlue1000() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorRoyalBlue950, WireframeBrandColorRawTokens.colorRoyalBlue1000)
    }

    @Test func wireframeBrandColorRawTokenColorRustyRed50LighterThanColorRustyRed100() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorRustyRed50, WireframeBrandColorRawTokens.colorRustyRed100)
    }

    @Test func wireframeBrandColorRawTokenColorRustyRed100LighterThanColorRustyRed200() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorRustyRed100, WireframeBrandColorRawTokens.colorRustyRed200)
    }

    @Test func wireframeBrandColorRawTokenColorRustyRed200LighterThanColorRustyRed300() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorRustyRed200, WireframeBrandColorRawTokens.colorRustyRed300)
    }

    @Test func wireframeBrandColorRawTokenColorRustyRed300LighterThanColorRustyRed400() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorRustyRed300, WireframeBrandColorRawTokens.colorRustyRed400)
    }

    @Test func wireframeBrandColorRawTokenColorRustyRed400LighterThanColorRustyRed500() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorRustyRed400, WireframeBrandColorRawTokens.colorRustyRed500)
    }

    @Test func wireframeBrandColorRawTokenColorRustyRed500LighterThanColorRustyRed600() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorRustyRed500, WireframeBrandColorRawTokens.colorRustyRed600)
    }

    @Test func wireframeBrandColorRawTokenColorRustyRed600LighterThanColorRustyRed700() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorRustyRed600, WireframeBrandColorRawTokens.colorRustyRed700)
    }

    @Test func wireframeBrandColorRawTokenColorRustyRed700LighterThanColorRustyRed800() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorRustyRed700, WireframeBrandColorRawTokens.colorRustyRed800)
    }

    @Test func wireframeBrandColorRawTokenColorRustyRed800LighterThanColorRustyRed900() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorRustyRed800, WireframeBrandColorRawTokens.colorRustyRed900)
    }

    @Test func wireframeBrandColorRawTokenColorRustyRed900LighterThanColorRustyRed950() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorRustyRed900, WireframeBrandColorRawTokens.colorRustyRed950)
    }

    @Test func wireframeBrandColorRawTokenColorRustyRed950LighterThanColorRustyRed1000() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorRustyRed950, WireframeBrandColorRawTokens.colorRustyRed1000)
    }

    @Test func wireframeBrandColorRawTokenColorFlame50LighterThanColorFlame100() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFlame50, WireframeBrandColorRawTokens.colorFlame100)
    }

    @Test func wireframeBrandColorRawTokenColorFlame100LighterThanColorFlame200() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFlame100, WireframeBrandColorRawTokens.colorFlame200)
    }

    @Test func wireframeBrandColorRawTokenColorFlame200LighterThanColorFlame300() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFlame200, WireframeBrandColorRawTokens.colorFlame300)
    }

    @Test func wireframeBrandColorRawTokenColorFlame300LighterThanColorFlame400() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFlame300, WireframeBrandColorRawTokens.colorFlame400)
    }

    @Test func wireframeBrandColorRawTokenColorFlame400LighterThanColorFlame500() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFlame400, WireframeBrandColorRawTokens.colorFlame500)
    }

    @Test func wireframeBrandColorRawTokenColorFlame500LighterThanColorFlame600() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFlame500, WireframeBrandColorRawTokens.colorFlame600)
    }

    @Test func wireframeBrandColorRawTokenColorFlame600LighterThanColorFlame700() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFlame600, WireframeBrandColorRawTokens.colorFlame700)
    }

    @Test func wireframeBrandColorRawTokenColorFlame700LighterThanColorFlame800() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFlame700, WireframeBrandColorRawTokens.colorFlame800)
    }

    @Test func wireframeBrandColorRawTokenColorFlame800LighterThanColorFlame900() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFlame800, WireframeBrandColorRawTokens.colorFlame900)
    }

    @Test func wireframeBrandColorRawTokenColorFlame900LighterThanColorFlame950() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFlame900, WireframeBrandColorRawTokens.colorFlame950)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayLight80LighterThanColorFunctionalGrayLight160() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFunctionalGrayLight80, WireframeBrandColorRawTokens.colorFunctionalGrayLight160)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayLight160LighterThanColorFunctionalGrayLight240() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFunctionalGrayLight160, WireframeBrandColorRawTokens.colorFunctionalGrayLight240)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayLight240LighterThanColorFunctionalGrayLight320() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFunctionalGrayLight240, WireframeBrandColorRawTokens.colorFunctionalGrayLight320)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayLight320LighterThanColorFunctionalGrayLight400() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFunctionalGrayLight320, WireframeBrandColorRawTokens.colorFunctionalGrayLight400)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayLight400LighterThanColorFunctionalGrayLight480() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFunctionalGrayLight400, WireframeBrandColorRawTokens.colorFunctionalGrayLight480)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayLight480LighterThanColorFunctionalGrayLight560() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFunctionalGrayLight480, WireframeBrandColorRawTokens.colorFunctionalGrayLight560)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayLight560LighterThanColorFunctionalGrayLight640() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFunctionalGrayLight560, WireframeBrandColorRawTokens.colorFunctionalGrayLight640)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayLight640LighterThanColorFunctionalGrayLight720() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFunctionalGrayLight640, WireframeBrandColorRawTokens.colorFunctionalGrayLight720)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayLight720LighterThanColorFunctionalGrayLight800() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFunctionalGrayLight720, WireframeBrandColorRawTokens.colorFunctionalGrayLight800)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayLight800LighterThanColorFunctionalGrayLight880() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFunctionalGrayLight800, WireframeBrandColorRawTokens.colorFunctionalGrayLight880)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayLight880LighterThanColorFunctionalGrayLight960() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFunctionalGrayLight880, WireframeBrandColorRawTokens.colorFunctionalGrayLight960)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayDark80LighterThanColorFunctionalGrayDark160() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFunctionalGrayDark80, WireframeBrandColorRawTokens.colorFunctionalGrayDark160)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayDark160LighterThanColorFunctionalGrayDark240() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFunctionalGrayDark160, WireframeBrandColorRawTokens.colorFunctionalGrayDark240)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayDark240LighterThanColorFunctionalGrayDark320() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFunctionalGrayDark240, WireframeBrandColorRawTokens.colorFunctionalGrayDark320)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayDark320LighterThanColorFunctionalGrayDark400() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFunctionalGrayDark320, WireframeBrandColorRawTokens.colorFunctionalGrayDark400)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayDark400LighterThanColorFunctionalGrayDark480() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFunctionalGrayDark400, WireframeBrandColorRawTokens.colorFunctionalGrayDark480)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayDark480LighterThanColorFunctionalGrayDark560() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFunctionalGrayDark480, WireframeBrandColorRawTokens.colorFunctionalGrayDark560)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayDark560LighterThanColorFunctionalGrayDark640() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFunctionalGrayDark560, WireframeBrandColorRawTokens.colorFunctionalGrayDark640)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayDark640LighterThanColorFunctionalGrayDark720() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFunctionalGrayDark640, WireframeBrandColorRawTokens.colorFunctionalGrayDark720)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayDark720LighterThanColorFunctionalGrayDark800() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFunctionalGrayDark720, WireframeBrandColorRawTokens.colorFunctionalGrayDark800)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayDark800LighterThanColorFunctionalGrayDark880() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFunctionalGrayDark800, WireframeBrandColorRawTokens.colorFunctionalGrayDark880)
    }

    @Test func wireframeBrandColorRawTokenColorFunctionalGrayDark880LighterThanColorFunctionalGrayDark960() throws {
        TestsUtils.assertColorLighterThan(WireframeBrandColorRawTokens.colorFunctionalGrayDark880, WireframeBrandColorRawTokens.colorFunctionalGrayDark960)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite0DarkerThanColorOpacityWhite40() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityWhite0, WireframeBrandColorRawTokens.colorOpacityWhite40)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite40DarkerThanColorOpacityWhite80() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityWhite40, WireframeBrandColorRawTokens.colorOpacityWhite80)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite80DarkerThanColorOpacityWhite120() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityWhite80, WireframeBrandColorRawTokens.colorOpacityWhite120)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite120DarkerThanColorOpacityWhite160() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityWhite120, WireframeBrandColorRawTokens.colorOpacityWhite160)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite160DarkerThanColorOpacityWhite200() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityWhite160, WireframeBrandColorRawTokens.colorOpacityWhite200)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite200DarkerThanColorOpacityWhite240() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityWhite200, WireframeBrandColorRawTokens.colorOpacityWhite240)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite240DarkerThanColorOpacityWhite280() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityWhite240, WireframeBrandColorRawTokens.colorOpacityWhite280)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite280DarkerThanColorOpacityWhite320() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityWhite280, WireframeBrandColorRawTokens.colorOpacityWhite320)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite320DarkerThanColorOpacityWhite360() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityWhite320, WireframeBrandColorRawTokens.colorOpacityWhite360)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite360DarkerThanColorOpacityWhite400() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityWhite360, WireframeBrandColorRawTokens.colorOpacityWhite400)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite400DarkerThanColorOpacityWhite440() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityWhite400, WireframeBrandColorRawTokens.colorOpacityWhite440)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite440DarkerThanColorOpacityWhite480() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityWhite440, WireframeBrandColorRawTokens.colorOpacityWhite480)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite480DarkerThanColorOpacityWhite520() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityWhite480, WireframeBrandColorRawTokens.colorOpacityWhite520)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite520DarkerThanColorOpacityWhite560() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityWhite520, WireframeBrandColorRawTokens.colorOpacityWhite560)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite560DarkerThanColorOpacityWhite600() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityWhite560, WireframeBrandColorRawTokens.colorOpacityWhite600)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite600DarkerThanColorOpacityWhite640() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityWhite600, WireframeBrandColorRawTokens.colorOpacityWhite640)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite640DarkerThanColorOpacityWhite680() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityWhite640, WireframeBrandColorRawTokens.colorOpacityWhite680)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite680DarkerThanColorOpacityWhite720() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityWhite680, WireframeBrandColorRawTokens.colorOpacityWhite720)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite720DarkerThanColorOpacityWhite760() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityWhite720, WireframeBrandColorRawTokens.colorOpacityWhite760)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite760DarkerThanColorOpacityWhite800() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityWhite760, WireframeBrandColorRawTokens.colorOpacityWhite800)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite800DarkerThanColorOpacityWhite840() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityWhite800, WireframeBrandColorRawTokens.colorOpacityWhite840)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite840DarkerThanColorOpacityWhite880() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityWhite840, WireframeBrandColorRawTokens.colorOpacityWhite880)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite880DarkerThanColorOpacityWhite920() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityWhite880, WireframeBrandColorRawTokens.colorOpacityWhite920)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityWhite920DarkerThanColorOpacityWhite960() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityWhite920, WireframeBrandColorRawTokens.colorOpacityWhite960)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack0DarkerThanColorOpacityBlack40() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityBlack0, WireframeBrandColorRawTokens.colorOpacityBlack40)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack40DarkerThanColorOpacityBlack80() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityBlack40, WireframeBrandColorRawTokens.colorOpacityBlack80)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack80DarkerThanColorOpacityBlack120() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityBlack80, WireframeBrandColorRawTokens.colorOpacityBlack120)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack120DarkerThanColorOpacityBlack160() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityBlack120, WireframeBrandColorRawTokens.colorOpacityBlack160)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack160DarkerThanColorOpacityBlack200() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityBlack160, WireframeBrandColorRawTokens.colorOpacityBlack200)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack200DarkerThanColorOpacityBlack240() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityBlack200, WireframeBrandColorRawTokens.colorOpacityBlack240)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack240DarkerThanColorOpacityBlack280() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityBlack240, WireframeBrandColorRawTokens.colorOpacityBlack280)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack280DarkerThanColorOpacityBlack320() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityBlack280, WireframeBrandColorRawTokens.colorOpacityBlack320)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack320DarkerThanColorOpacityBlack360() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityBlack320, WireframeBrandColorRawTokens.colorOpacityBlack360)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack360DarkerThanColorOpacityBlack400() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityBlack360, WireframeBrandColorRawTokens.colorOpacityBlack400)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack400DarkerThanColorOpacityBlack440() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityBlack400, WireframeBrandColorRawTokens.colorOpacityBlack440)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack440DarkerThanColorOpacityBlack480() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityBlack440, WireframeBrandColorRawTokens.colorOpacityBlack480)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack480DarkerThanColorOpacityBlack520() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityBlack480, WireframeBrandColorRawTokens.colorOpacityBlack520)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack520DarkerThanColorOpacityBlack560() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityBlack520, WireframeBrandColorRawTokens.colorOpacityBlack560)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack560DarkerThanColorOpacityBlack600() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityBlack560, WireframeBrandColorRawTokens.colorOpacityBlack600)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack600DarkerThanColorOpacityBlack640() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityBlack600, WireframeBrandColorRawTokens.colorOpacityBlack640)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack640DarkerThanColorOpacityBlack680() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityBlack640, WireframeBrandColorRawTokens.colorOpacityBlack680)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack680DarkerThanColorOpacityBlack720() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityBlack680, WireframeBrandColorRawTokens.colorOpacityBlack720)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack720DarkerThanColorOpacityBlack760() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityBlack720, WireframeBrandColorRawTokens.colorOpacityBlack760)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack760DarkerThanColorOpacityBlack800() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityBlack760, WireframeBrandColorRawTokens.colorOpacityBlack800)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack800DarkerThanColorOpacityBlack840() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityBlack800, WireframeBrandColorRawTokens.colorOpacityBlack840)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack840DarkerThanColorOpacityBlack880() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityBlack840, WireframeBrandColorRawTokens.colorOpacityBlack880)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack880DarkerThanColorOpacityBlack920() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityBlack880, WireframeBrandColorRawTokens.colorOpacityBlack920)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityBlack920DarkerThanColorOpacityBlack960() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityBlack920, WireframeBrandColorRawTokens.colorOpacityBlack960)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue0DarkerThanColorOpacityRoyalBlue40() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRoyalBlue0, WireframeBrandColorRawTokens.colorOpacityRoyalBlue40)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue40DarkerThanColorOpacityRoyalBlue80() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRoyalBlue40, WireframeBrandColorRawTokens.colorOpacityRoyalBlue80)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue80DarkerThanColorOpacityRoyalBlue120() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRoyalBlue80, WireframeBrandColorRawTokens.colorOpacityRoyalBlue120)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue120DarkerThanColorOpacityRoyalBlue160() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRoyalBlue120, WireframeBrandColorRawTokens.colorOpacityRoyalBlue160)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue160DarkerThanColorOpacityRoyalBlue200() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRoyalBlue160, WireframeBrandColorRawTokens.colorOpacityRoyalBlue200)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue200DarkerThanColorOpacityRoyalBlue240() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRoyalBlue200, WireframeBrandColorRawTokens.colorOpacityRoyalBlue240)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue240DarkerThanColorOpacityRoyalBlue280() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRoyalBlue240, WireframeBrandColorRawTokens.colorOpacityRoyalBlue280)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue280DarkerThanColorOpacityRoyalBlue320() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRoyalBlue280, WireframeBrandColorRawTokens.colorOpacityRoyalBlue320)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue320DarkerThanColorOpacityRoyalBlue360() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRoyalBlue320, WireframeBrandColorRawTokens.colorOpacityRoyalBlue360)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue360DarkerThanColorOpacityRoyalBlue400() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRoyalBlue360, WireframeBrandColorRawTokens.colorOpacityRoyalBlue400)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue400DarkerThanColorOpacityRoyalBlue440() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRoyalBlue400, WireframeBrandColorRawTokens.colorOpacityRoyalBlue440)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue440DarkerThanColorOpacityRoyalBlue480() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRoyalBlue440, WireframeBrandColorRawTokens.colorOpacityRoyalBlue480)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue480DarkerThanColorOpacityRoyalBlue520() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRoyalBlue480, WireframeBrandColorRawTokens.colorOpacityRoyalBlue520)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue520DarkerThanColorOpacityRoyalBlue560() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRoyalBlue520, WireframeBrandColorRawTokens.colorOpacityRoyalBlue560)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue560DarkerThanColorOpacityRoyalBlue600() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRoyalBlue560, WireframeBrandColorRawTokens.colorOpacityRoyalBlue600)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue600DarkerThanColorOpacityRoyalBlue640() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRoyalBlue600, WireframeBrandColorRawTokens.colorOpacityRoyalBlue640)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue640DarkerThanColorOpacityRoyalBlue680() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRoyalBlue640, WireframeBrandColorRawTokens.colorOpacityRoyalBlue680)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue680DarkerThanColorOpacityRoyalBlue720() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRoyalBlue680, WireframeBrandColorRawTokens.colorOpacityRoyalBlue720)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue720DarkerThanColorOpacityRoyalBlue760() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRoyalBlue720, WireframeBrandColorRawTokens.colorOpacityRoyalBlue760)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue760DarkerThanColorOpacityRoyalBlue800() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRoyalBlue760, WireframeBrandColorRawTokens.colorOpacityRoyalBlue800)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue800DarkerThanColorOpacityRoyalBlue840() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRoyalBlue800, WireframeBrandColorRawTokens.colorOpacityRoyalBlue840)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue840DarkerThanColorOpacityRoyalBlue880() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRoyalBlue840, WireframeBrandColorRawTokens.colorOpacityRoyalBlue880)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue880DarkerThanColorOpacityRoyalBlue920() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRoyalBlue880, WireframeBrandColorRawTokens.colorOpacityRoyalBlue920)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRoyalBlue920DarkerThanColorOpacityRoyalBlue960() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRoyalBlue920, WireframeBrandColorRawTokens.colorOpacityRoyalBlue960)
    }

    @Test func wireframeBrandColorRawTokenColorOpacityRustyRed80LighterThanColorOpacityRustyRed680() throws {
        TestsUtils.assertColorDarkerThan(WireframeBrandColorRawTokens.colorOpacityRustyRed80, WireframeBrandColorRawTokens.colorOpacityRustyRed680)
    }

    // MARK: - Tests format

    @Test func colorRawTokenColorRoyalBlue50Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorRoyalBlue50, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorRoyalBlue100Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorRoyalBlue100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorRoyalBlue200Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorRoyalBlue200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorRoyalBlue300Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorRoyalBlue300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorRoyalBlue400Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorRoyalBlue400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorRoyalBlue500Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorRoyalBlue500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorRoyalBlue600Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorRoyalBlue600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorRoyalBlue700Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorRoyalBlue700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorRoyalBlue800Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorRoyalBlue800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorRoyalBlue900Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorRoyalBlue900, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorRoyalBlue950Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorRoyalBlue950, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorRoyalBlue1000Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorRoyalBlue1000, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorRustyRed50Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorRustyRed50, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorRustyRed100Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorRustyRed100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorRustyRed200Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorRustyRed200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorRustyRed300Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorRustyRed300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorRustyRed400Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorRustyRed400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorRustyRed500Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorRustyRed500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorRustyRed600Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorRustyRed600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorRustyRed700Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorRustyRed700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorRustyRed800Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorRustyRed800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorRustyRed900Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorRustyRed900, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorRustyRed950Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorRustyRed950, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorRustyRed1000Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorRustyRed1000, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFlame50Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFlame50, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFlame100Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFlame100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFlame200Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFlame200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFlame300Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFlame300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFlame400Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFlame400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFlame500Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFlame500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFlame600Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFlame600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFlame700Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFlame700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFlame800Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFlame800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFlame900Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFlame900, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFlame950Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFlame950, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight80Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFunctionalGrayLight80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight160Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFunctionalGrayLight160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight240Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFunctionalGrayLight240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight320Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFunctionalGrayLight320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight400Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFunctionalGrayLight400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight480Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFunctionalGrayLight480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight560Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFunctionalGrayLight560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight640Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFunctionalGrayLight640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight720Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFunctionalGrayLight720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight800Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFunctionalGrayLight800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight880Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFunctionalGrayLight880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight960Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFunctionalGrayLight960, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark80Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFunctionalGrayDark80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark160Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFunctionalGrayDark160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark240Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFunctionalGrayDark240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark320Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFunctionalGrayDark320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark400Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFunctionalGrayDark400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark480Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFunctionalGrayDark480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark560Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFunctionalGrayDark560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark640Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFunctionalGrayDark640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark720Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFunctionalGrayDark720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark800Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFunctionalGrayDark800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark880Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFunctionalGrayDark880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark960Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorFunctionalGrayDark960, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite0Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite0, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite40Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite40, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite80Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite120Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite120, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite160Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite200Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite240Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite280Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite280, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite320Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite360Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite360, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite400Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite440Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite440, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite480Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite520Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite520, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite560Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite600Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite640Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite680Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite680, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite720Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite760Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite760, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite800Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite840Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite840, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite880Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite920Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite920, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite960Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityWhite960, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack0Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack0, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack40Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack40, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack80Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack120Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack120, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack160Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack200Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack240Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack280Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack280, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack320Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack360Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack360, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack400Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack440Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack440, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack480Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack520Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack520, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack560Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack600Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack640Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack680Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack680, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack720Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack760Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack760, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack800Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack840Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack840, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack880Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack920Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack920, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack960Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityBlack960, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue0Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue0, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue40Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue40, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue80Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue120Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue120, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue160Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue200Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue240Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue280Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue280, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue320Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue360Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue360, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue400Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue440Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue440, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue480Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue520Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue520, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue560Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue600Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue640Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue680Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue680, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue720Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue760Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue760, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue800Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue840Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue840, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue880Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue920Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue920, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue960Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRoyalBlue960, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRustyRed80Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRustyRed80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRustyRed680Format() throws {
        TestsUtils.assertMatches(WireframeBrandColorRawTokens.colorOpacityRustyRed680, regexp: Self.colorFormat)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable force_try

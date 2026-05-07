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
import OUDSThemesSosh
import OUDSTokensRaw
import Testing
import TestsUtils

// swiftlint:disable type_body_length
// swiftlint:disable force_try
// swiftlint:disable file_length
// swiftlint:disable function_body_length

/// The aim of this tests class is to look for regressions in **Sosh brand color raw tokens**.
///
/// Because these values will be at least generated through an external tool, is it not relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **Sosh brand color raw tokens**, there will be some unchanged things like relationships between tokens.
///
/// Here are some rules to follow:
/// - all colors must be different
/// - for a group of colors, the higher the token is, the darker the color is
/// - all colors must have an hexadecimal sring value with 8 b16 digits
struct SoshBrandColorRawTokensTests {

    // MARK: - Settings

    /// The regular expression pattern to check the colors are in hexa format
    private static let colorFormat = try! NSRegularExpression(pattern: "^#[0-9A-Fa-f]{8}$")

    // MARK: - Tests format of colors - Functional Gray Light

    @Test func functionalGrayLight80Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.functionalGrayLight80, regexp: Self.colorFormat)
    }

    @Test func functionalGrayLight160Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.functionalGrayLight160, regexp: Self.colorFormat)
    }

    @Test func functionalGrayLight240Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.functionalGrayLight240, regexp: Self.colorFormat)
    }

    @Test func functionalGrayLight320Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.functionalGrayLight320, regexp: Self.colorFormat)
    }

    @Test func functionalGrayLight400Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.functionalGrayLight400, regexp: Self.colorFormat)
    }

    @Test func functionalGrayLight480Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.functionalGrayLight480, regexp: Self.colorFormat)
    }

    @Test func functionalGrayLight560Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.functionalGrayLight560, regexp: Self.colorFormat)
    }

    @Test func functionalGrayLight640Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.functionalGrayLight640, regexp: Self.colorFormat)
    }

    @Test func functionalGrayLight720Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.functionalGrayLight720, regexp: Self.colorFormat)
    }

    @Test func functionalGrayLight800Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.functionalGrayLight800, regexp: Self.colorFormat)
    }

    @Test func functionalGrayLight880Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.functionalGrayLight880, regexp: Self.colorFormat)
    }

    @Test func functionalGrayLight960Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.functionalGrayLight960, regexp: Self.colorFormat)
    }

    // MARK: - Tests format of colors - Functional Gray Dark

    @Test func functionalGrayDark80Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.functionalGrayDark80, regexp: Self.colorFormat)
    }

    @Test func functionalGrayDark160Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.functionalGrayDark160, regexp: Self.colorFormat)
    }

    @Test func functionalGrayDark240Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.functionalGrayDark240, regexp: Self.colorFormat)
    }

    @Test func functionalGrayDark320Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.functionalGrayDark320, regexp: Self.colorFormat)
    }

    @Test func functionalGrayDark400Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.functionalGrayDark400, regexp: Self.colorFormat)
    }

    @Test func functionalGrayDark480Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.functionalGrayDark480, regexp: Self.colorFormat)
    }

    @Test func functionalGrayDark560Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.functionalGrayDark560, regexp: Self.colorFormat)
    }

    @Test func functionalGrayDark640Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.functionalGrayDark640, regexp: Self.colorFormat)
    }

    @Test func functionalGrayDark720Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.functionalGrayDark720, regexp: Self.colorFormat)
    }

    @Test func functionalGrayDark800Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.functionalGrayDark800, regexp: Self.colorFormat)
    }

    @Test func functionalGrayDark880Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.functionalGrayDark880, regexp: Self.colorFormat)
    }

    @Test func functionalGrayDark960Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.functionalGrayDark960, regexp: Self.colorFormat)
    }

    // MARK: - Tests format of colors - Raspberry

    @Test func colorRaspberry50Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorRaspberry50, regexp: Self.colorFormat)
    }

    @Test func colorRaspberry100Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorRaspberry100, regexp: Self.colorFormat)
    }

    @Test func colorRaspberry200Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorRaspberry200, regexp: Self.colorFormat)
    }

    @Test func colorRaspberry300Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorRaspberry300, regexp: Self.colorFormat)
    }

    @Test func colorRaspberry400Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorRaspberry400, regexp: Self.colorFormat)
    }

    @Test func colorRaspberry500Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorRaspberry500, regexp: Self.colorFormat)
    }

    @Test func colorRaspberry600Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorRaspberry600, regexp: Self.colorFormat)
    }

    @Test func colorRaspberry700Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorRaspberry700, regexp: Self.colorFormat)
    }

    @Test func colorRaspberry800Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorRaspberry800, regexp: Self.colorFormat)
    }

    @Test func colorRaspberry900Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorRaspberry900, regexp: Self.colorFormat)
    }

    @Test func colorRaspberry950Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorRaspberry950, regexp: Self.colorFormat)
    }

    // MARK: - Tests format of colors - Lochmara Light

    @Test func colorLochmaraLight80Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorLochmaraLight80, regexp: Self.colorFormat)
    }

    @Test func colorLochmaraLight160Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorLochmaraLight160, regexp: Self.colorFormat)
    }

    @Test func colorLochmaraLight240Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorLochmaraLight240, regexp: Self.colorFormat)
    }

    @Test func colorLochmaraLight320Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorLochmaraLight320, regexp: Self.colorFormat)
    }

    @Test func colorLochmaraLight400Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorLochmaraLight400, regexp: Self.colorFormat)
    }

    @Test func colorLochmaraLight480Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorLochmaraLight480, regexp: Self.colorFormat)
    }

    @Test func colorLochmaraLight560Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorLochmaraLight560, regexp: Self.colorFormat)
    }

    @Test func colorLochmaraLight640Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorLochmaraLight640, regexp: Self.colorFormat)
    }

    @Test func colorLochmaraLight720Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorLochmaraLight720, regexp: Self.colorFormat)
    }

    @Test func colorLochmaraLight800Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorLochmaraLight800, regexp: Self.colorFormat)
    }

    @Test func colorLochmaraLight880Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorLochmaraLight880, regexp: Self.colorFormat)
    }

    @Test func colorLochmaraLight960Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorLochmaraLight960, regexp: Self.colorFormat)
    }

    // MARK: - Tests format of colors - Lochmara Dark

    @Test func colorLochmaraDark80Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorLochmaraDark80, regexp: Self.colorFormat)
    }

    @Test func colorLochmaraDark160Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorLochmaraDark160, regexp: Self.colorFormat)
    }

    @Test func colorLochmaraDark240Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorLochmaraDark240, regexp: Self.colorFormat)
    }

    @Test func colorLochmaraDark320Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorLochmaraDark320, regexp: Self.colorFormat)
    }

    @Test func colorLochmaraDark400Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorLochmaraDark400, regexp: Self.colorFormat)
    }

    @Test func colorLochmaraDark480Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorLochmaraDark480, regexp: Self.colorFormat)
    }

    @Test func colorLochmaraDark560Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorLochmaraDark560, regexp: Self.colorFormat)
    }

    @Test func colorLochmaraDark640Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorLochmaraDark640, regexp: Self.colorFormat)
    }

    @Test func colorLochmaraDark720Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorLochmaraDark720, regexp: Self.colorFormat)
    }

    @Test func colorLochmaraDark800Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorLochmaraDark800, regexp: Self.colorFormat)
    }

    @Test func colorLochmaraDark880Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorLochmaraDark880, regexp: Self.colorFormat)
    }

    @Test func colorLochmaraDark960Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorLochmaraDark960, regexp: Self.colorFormat)
    }

    // MARK: - Tests format of colors - Turbo

    @Test func colorTurbo50Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorTurbo50, regexp: Self.colorFormat)
    }

    @Test func colorTurbo100Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorTurbo100, regexp: Self.colorFormat)
    }

    @Test func colorTurbo200Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorTurbo200, regexp: Self.colorFormat)
    }

    @Test func colorTurbo300Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorTurbo300, regexp: Self.colorFormat)
    }

    @Test func colorTurbo400Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorTurbo400, regexp: Self.colorFormat)
    }

    @Test func colorTurbo500Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorTurbo500, regexp: Self.colorFormat)
    }

    @Test func colorTurbo600Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorTurbo600, regexp: Self.colorFormat)
    }

    @Test func colorTurbo700Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorTurbo700, regexp: Self.colorFormat)
    }

    @Test func colorTurbo750Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorTurbo750, regexp: Self.colorFormat)
    }

    @Test func colorTurbo800Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorTurbo800, regexp: Self.colorFormat)
    }

    @Test func colorTurbo900Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorTurbo900, regexp: Self.colorFormat)
    }

    @Test func colorTurbo950Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorTurbo950, regexp: Self.colorFormat)
    }

    @Test func colorTurbo1000Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.colorTurbo1000, regexp: Self.colorFormat)
    }

    // MARK: - Tests format of colors - White (opacity scale)

    @Test func white0Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white0, regexp: Self.colorFormat)
    }

    @Test func white40Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white40, regexp: Self.colorFormat)
    }

    @Test func white80Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white80, regexp: Self.colorFormat)
    }

    @Test func white120Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white120, regexp: Self.colorFormat)
    }

    @Test func white160Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white160, regexp: Self.colorFormat)
    }

    @Test func white200Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white200, regexp: Self.colorFormat)
    }

    @Test func white240Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white240, regexp: Self.colorFormat)
    }

    @Test func white280Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white280, regexp: Self.colorFormat)
    }

    @Test func white320Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white320, regexp: Self.colorFormat)
    }

    @Test func white360Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white360, regexp: Self.colorFormat)
    }

    @Test func white400Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white400, regexp: Self.colorFormat)
    }

    @Test func white440Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white440, regexp: Self.colorFormat)
    }

    @Test func white480Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white480, regexp: Self.colorFormat)
    }

    @Test func white520Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white520, regexp: Self.colorFormat)
    }

    @Test func white560Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white560, regexp: Self.colorFormat)
    }

    @Test func white600Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white600, regexp: Self.colorFormat)
    }

    @Test func white640Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white640, regexp: Self.colorFormat)
    }

    @Test func white680Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white680, regexp: Self.colorFormat)
    }

    @Test func white720Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white720, regexp: Self.colorFormat)
    }

    @Test func white760Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white760, regexp: Self.colorFormat)
    }

    @Test func white800Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white800, regexp: Self.colorFormat)
    }

    @Test func white840Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white840, regexp: Self.colorFormat)
    }

    @Test func white880Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white880, regexp: Self.colorFormat)
    }

    @Test func white920Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white920, regexp: Self.colorFormat)
    }

    @Test func white960Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.white960, regexp: Self.colorFormat)
    }

    // MARK: - Tests format of colors - Opacity Black (opacity scale)

    @Test func opacityBlack0Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack0, regexp: Self.colorFormat)
    }

    @Test func opacityBlack40Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack40, regexp: Self.colorFormat)
    }

    @Test func opacityBlack80Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack80, regexp: Self.colorFormat)
    }

    @Test func opacityBlack120Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack120, regexp: Self.colorFormat)
    }

    @Test func opacityBlack160Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack160, regexp: Self.colorFormat)
    }

    @Test func opacityBlack200Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack200, regexp: Self.colorFormat)
    }

    @Test func opacityBlack240Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack240, regexp: Self.colorFormat)
    }

    @Test func opacityBlack280Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack280, regexp: Self.colorFormat)
    }

    @Test func opacityBlack320Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack320, regexp: Self.colorFormat)
    }

    @Test func opacityBlack360Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack360, regexp: Self.colorFormat)
    }

    @Test func opacityBlack400Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack400, regexp: Self.colorFormat)
    }

    @Test func opacityBlack440Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack440, regexp: Self.colorFormat)
    }

    @Test func opacityBlack480Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack480, regexp: Self.colorFormat)
    }

    @Test func opacityBlack520Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack520, regexp: Self.colorFormat)
    }

    @Test func opacityBlack560Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack560, regexp: Self.colorFormat)
    }

    @Test func opacityBlack600Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack600, regexp: Self.colorFormat)
    }

    @Test func opacityBlack640Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack640, regexp: Self.colorFormat)
    }

    @Test func opacityBlack680Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack680, regexp: Self.colorFormat)
    }

    @Test func opacityBlack720Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack720, regexp: Self.colorFormat)
    }

    @Test func opacityBlack760Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack760, regexp: Self.colorFormat)
    }

    @Test func opacityBlack800Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack800, regexp: Self.colorFormat)
    }

    @Test func opacityBlack840Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack840, regexp: Self.colorFormat)
    }

    @Test func opacityBlack880Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack880, regexp: Self.colorFormat)
    }

    @Test func opacityBlack920Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack920, regexp: Self.colorFormat)
    }

    @Test func opacityBlack960Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityBlack960, regexp: Self.colorFormat)
    }

    // MARK: - Tests format of colors - Named opacity tokens

    @Test func opacityRaspberry100Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityRaspberry100, regexp: Self.colorFormat)
    }

    @Test func opacityRaspberry640Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityRaspberry640, regexp: Self.colorFormat)
    }

    @Test func opacityLochmaraLight80080Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityLochmaraLight80080, regexp: Self.colorFormat)
    }

    @Test func opacityLochmaraDark960800Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityLochmaraDark960800, regexp: Self.colorFormat)
    }

    @Test func opacityLochmaraDark880520Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityLochmaraDark880520, regexp: Self.colorFormat)
    }

    @Test func opacityTurbo160Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityTurbo160, regexp: Self.colorFormat)
    }

    @Test func opacityTurbo480Format() throws {
        TestsUtils.assertMatches(SoshBrandColorRawTokens.opacityTurbo480, regexp: Self.colorFormat)
    }

    // MARK: - Tests - Colors darker and darker - Functional Gray Light

    @Test func soshBrandColorRawTokenFunctionalGrayLight80LighterThanFunctionalGrayLight160() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.functionalGrayLight80, SoshBrandColorRawTokens.functionalGrayLight160)
    }

    @Test func soshBrandColorRawTokenFunctionalGrayLight160LighterThanFunctionalGrayLight240() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.functionalGrayLight160, SoshBrandColorRawTokens.functionalGrayLight240)
    }

    @Test func soshBrandColorRawTokenFunctionalGrayLight240LighterThanFunctionalGrayLight320() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.functionalGrayLight240, SoshBrandColorRawTokens.functionalGrayLight320)
    }

    @Test func soshBrandColorRawTokenFunctionalGrayLight320LighterThanFunctionalGrayLight400() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.functionalGrayLight320, SoshBrandColorRawTokens.functionalGrayLight400)
    }

    @Test func soshBrandColorRawTokenFunctionalGrayLight400LighterThanFunctionalGrayLight480() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.functionalGrayLight400, SoshBrandColorRawTokens.functionalGrayLight480)
    }

    @Test func soshBrandColorRawTokenFunctionalGrayLight480LighterThanFunctionalGrayLight560() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.functionalGrayLight480, SoshBrandColorRawTokens.functionalGrayLight560)
    }

    @Test func soshBrandColorRawTokenFunctionalGrayLight560LighterThanFunctionalGrayLight640() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.functionalGrayLight560, SoshBrandColorRawTokens.functionalGrayLight640)
    }

    @Test func soshBrandColorRawTokenFunctionalGrayLight640LighterThanFunctionalGrayLight720() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.functionalGrayLight640, SoshBrandColorRawTokens.functionalGrayLight720)
    }

    @Test func soshBrandColorRawTokenFunctionalGrayLight720LighterThanFunctionalGrayLight800() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.functionalGrayLight720, SoshBrandColorRawTokens.functionalGrayLight800)
    }

    @Test func soshBrandColorRawTokenFunctionalGrayLight800LighterThanFunctionalGrayLight880() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.functionalGrayLight800, SoshBrandColorRawTokens.functionalGrayLight880)
    }

    @Test func soshBrandColorRawTokenFunctionalGrayLight880LighterThanFunctionalGrayLight960() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.functionalGrayLight880, SoshBrandColorRawTokens.functionalGrayLight960)
    }

    // MARK: - Tests - Colors darker and darker - Functional Gray Dark

    @Test func soshBrandColorRawTokenFunctionalGrayDark80LighterThanFunctionalGrayDark160() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.functionalGrayDark80, SoshBrandColorRawTokens.functionalGrayDark160)
    }

    @Test func soshBrandColorRawTokenFunctionalGrayDark160LighterThanFunctionalGrayDark240() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.functionalGrayDark160, SoshBrandColorRawTokens.functionalGrayDark240)
    }

    @Test func soshBrandColorRawTokenFunctionalGrayDark240LighterThanFunctionalGrayDark320() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.functionalGrayDark240, SoshBrandColorRawTokens.functionalGrayDark320)
    }

    @Test func soshBrandColorRawTokenFunctionalGrayDark320LighterThanFunctionalGrayDark400() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.functionalGrayDark320, SoshBrandColorRawTokens.functionalGrayDark400)
    }

    @Test func soshBrandColorRawTokenFunctionalGrayDark400LighterThanFunctionalGrayDark480() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.functionalGrayDark400, SoshBrandColorRawTokens.functionalGrayDark480)
    }

    @Test func soshBrandColorRawTokenFunctionalGrayDark480LighterThanFunctionalGrayDark560() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.functionalGrayDark480, SoshBrandColorRawTokens.functionalGrayDark560)
    }

    @Test func soshBrandColorRawTokenFunctionalGrayDark560LighterThanFunctionalGrayDark640() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.functionalGrayDark560, SoshBrandColorRawTokens.functionalGrayDark640)
    }

    @Test func soshBrandColorRawTokenFunctionalGrayDark640LighterThanFunctionalGrayDark720() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.functionalGrayDark640, SoshBrandColorRawTokens.functionalGrayDark720)
    }

    @Test func soshBrandColorRawTokenFunctionalGrayDark720LighterThanFunctionalGrayDark800() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.functionalGrayDark720, SoshBrandColorRawTokens.functionalGrayDark800)
    }

    @Test func soshBrandColorRawTokenFunctionalGrayDark800LighterThanFunctionalGrayDark880() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.functionalGrayDark800, SoshBrandColorRawTokens.functionalGrayDark880)
    }

    @Test func soshBrandColorRawTokenFunctionalGrayDark880LighterThanFunctionalGrayDark960() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.functionalGrayDark880, SoshBrandColorRawTokens.functionalGrayDark960)
    }

    // MARK: - Tests - Colors darker and darker - Raspberry

    @Test func soshBrandColorRawTokenColorRaspberry50LighterThanColorRaspberry100() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorRaspberry50, SoshBrandColorRawTokens.colorRaspberry100)
    }

    @Test func soshBrandColorRawTokenColorRaspberry100LighterThanColorRaspberry200() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorRaspberry100, SoshBrandColorRawTokens.colorRaspberry200)
    }

    @Test func soshBrandColorRawTokenColorRaspberry200LighterThanColorRaspberry300() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorRaspberry200, SoshBrandColorRawTokens.colorRaspberry300)
    }

    @Test func soshBrandColorRawTokenColorRaspberry300LighterThanColorRaspberry400() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorRaspberry300, SoshBrandColorRawTokens.colorRaspberry400)
    }

    @Test func soshBrandColorRawTokenColorRaspberry400LighterThanColorRaspberry500() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorRaspberry400, SoshBrandColorRawTokens.colorRaspberry500)
    }

    @Test func soshBrandColorRawTokenColorRaspberry500LighterThanColorRaspberry600() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorRaspberry500, SoshBrandColorRawTokens.colorRaspberry600)
    }

    @Test func soshBrandColorRawTokenColorRaspberry600LighterThanColorRaspberry700() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorRaspberry600, SoshBrandColorRawTokens.colorRaspberry700)
    }

    @Test func soshBrandColorRawTokenColorRaspberry700LighterThanColorRaspberry800() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorRaspberry700, SoshBrandColorRawTokens.colorRaspberry800)
    }

    @Test func soshBrandColorRawTokenColorRaspberry800LighterThanColorRaspberry900() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorRaspberry800, SoshBrandColorRawTokens.colorRaspberry900)
    }

    @Test func soshBrandColorRawTokenColorRaspberry900LighterThanColorRaspberry950() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorRaspberry900, SoshBrandColorRawTokens.colorRaspberry950)
    }

    // MARK: - Tests - Colors darker and darker - Lochmara Light

    @Test func soshBrandColorRawTokenColorLochmaraLight80LighterThanColorLochmaraLight160() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorLochmaraLight80, SoshBrandColorRawTokens.colorLochmaraLight160)
    }

    @Test func soshBrandColorRawTokenColorLochmaraLight160LighterThanColorLochmaraLight240() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorLochmaraLight160, SoshBrandColorRawTokens.colorLochmaraLight240)
    }

    @Test func soshBrandColorRawTokenColorLochmaraLight240LighterThanColorLochmaraLight320() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorLochmaraLight240, SoshBrandColorRawTokens.colorLochmaraLight320)
    }

    @Test func soshBrandColorRawTokenColorLochmaraLight320LighterThanColorLochmaraLight400() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorLochmaraLight320, SoshBrandColorRawTokens.colorLochmaraLight400)
    }

    @Test func soshBrandColorRawTokenColorLochmaraLight400LighterThanColorLochmaraLight480() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorLochmaraLight400, SoshBrandColorRawTokens.colorLochmaraLight480)
    }

    @Test func soshBrandColorRawTokenColorLochmaraLight480LighterThanColorLochmaraLight560() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorLochmaraLight480, SoshBrandColorRawTokens.colorLochmaraLight560)
    }

    @Test func soshBrandColorRawTokenColorLochmaraLight560LighterThanColorLochmaraLight640() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorLochmaraLight560, SoshBrandColorRawTokens.colorLochmaraLight640)
    }

    @Test func soshBrandColorRawTokenColorLochmaraLight640LighterThanColorLochmaraLight720() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorLochmaraLight640, SoshBrandColorRawTokens.colorLochmaraLight720)
    }

    @Test func soshBrandColorRawTokenColorLochmaraLight720LighterThanColorLochmaraLight800() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorLochmaraLight720, SoshBrandColorRawTokens.colorLochmaraLight800)
    }

    @Test func soshBrandColorRawTokenColorLochmaraLight800LighterThanColorLochmaraLight880() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorLochmaraLight800, SoshBrandColorRawTokens.colorLochmaraLight880)
    }

    @Test func soshBrandColorRawTokenColorLochmaraLight880LighterThanColorLochmaraLight960() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorLochmaraLight880, SoshBrandColorRawTokens.colorLochmaraLight960)
    }

    // MARK: - Tests - Colors darker and darker - Lochmara Dark

    @Test func soshBrandColorRawTokenColorLochmaraDark80LighterThanColorLochmaraDark160() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorLochmaraDark80, SoshBrandColorRawTokens.colorLochmaraDark160)
    }

    @Test func soshBrandColorRawTokenColorLochmaraDark160LighterThanColorLochmaraDark240() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorLochmaraDark160, SoshBrandColorRawTokens.colorLochmaraDark240)
    }

    @Test func soshBrandColorRawTokenColorLochmaraDark240LighterThanColorLochmaraDark320() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorLochmaraDark240, SoshBrandColorRawTokens.colorLochmaraDark320)
    }

    @Test func soshBrandColorRawTokenColorLochmaraDark320LighterThanColorLochmaraDark400() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorLochmaraDark320, SoshBrandColorRawTokens.colorLochmaraDark400)
    }

    @Test func soshBrandColorRawTokenColorLochmaraDark400LighterThanColorLochmaraDark480() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorLochmaraDark400, SoshBrandColorRawTokens.colorLochmaraDark480)
    }

    @Test func soshBrandColorRawTokenColorLochmaraDark480LighterThanColorLochmaraDark560() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorLochmaraDark480, SoshBrandColorRawTokens.colorLochmaraDark560)
    }

    @Test func soshBrandColorRawTokenColorLochmaraDark560LighterThanColorLochmaraDark640() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorLochmaraDark560, SoshBrandColorRawTokens.colorLochmaraDark640)
    }

    @Test func soshBrandColorRawTokenColorLochmaraDark640LighterThanColorLochmaraDark720() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorLochmaraDark640, SoshBrandColorRawTokens.colorLochmaraDark720)
    }

    @Test func soshBrandColorRawTokenColorLochmaraDark720LighterThanColorLochmaraDark800() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorLochmaraDark720, SoshBrandColorRawTokens.colorLochmaraDark800)
    }

    @Test func soshBrandColorRawTokenColorLochmaraDark800LighterThanColorLochmaraDark880() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorLochmaraDark800, SoshBrandColorRawTokens.colorLochmaraDark880)
    }

    @Test func soshBrandColorRawTokenColorLochmaraDark880LighterThanColorLochmaraDark960() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorLochmaraDark880, SoshBrandColorRawTokens.colorLochmaraDark960)
    }

    // MARK: - Tests - Colors darker and darker - Turbo
    // NOTE: colorTurbo50 is an exception — its hex integer value is lower than colorTurbo100
    // (i.e. #FCFAE8FF < #FFFACCFF as integers), so it is actually darker than 100 at raw value level.
    // From colorTurbo100 onward the scale is strictly lighter → darker.

    @Test func soshBrandColorRawTokenColorTurbo50DarkerThanColorTurbo100() throws {
        TestsUtils.assertColorDarkerThan(SoshBrandColorRawTokens.colorTurbo50, SoshBrandColorRawTokens.colorTurbo100)
    }

    @Test func soshBrandColorRawTokenColorTurbo100LighterThanColorTurbo200() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorTurbo100, SoshBrandColorRawTokens.colorTurbo200)
    }

    @Test func soshBrandColorRawTokenColorTurbo200LighterThanColorTurbo300() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorTurbo200, SoshBrandColorRawTokens.colorTurbo300)
    }

    @Test func soshBrandColorRawTokenColorTurbo300LighterThanColorTurbo400() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorTurbo300, SoshBrandColorRawTokens.colorTurbo400)
    }

    @Test func soshBrandColorRawTokenColorTurbo400LighterThanColorTurbo500() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorTurbo400, SoshBrandColorRawTokens.colorTurbo500)
    }

    @Test func soshBrandColorRawTokenColorTurbo500LighterThanColorTurbo600() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorTurbo500, SoshBrandColorRawTokens.colorTurbo600)
    }

    @Test func soshBrandColorRawTokenColorTurbo600LighterThanColorTurbo700() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorTurbo600, SoshBrandColorRawTokens.colorTurbo700)
    }

    @Test func soshBrandColorRawTokenColorTurbo700LighterThanColorTurbo750() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorTurbo700, SoshBrandColorRawTokens.colorTurbo750)
    }

    @Test func soshBrandColorRawTokenColorTurbo750LighterThanColorTurbo800() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorTurbo750, SoshBrandColorRawTokens.colorTurbo800)
    }

    @Test func soshBrandColorRawTokenColorTurbo800LighterThanColorTurbo900() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorTurbo800, SoshBrandColorRawTokens.colorTurbo900)
    }

    @Test func soshBrandColorRawTokenColorTurbo900LighterThanColorTurbo950() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorTurbo900, SoshBrandColorRawTokens.colorTurbo950)
    }

    @Test func soshBrandColorRawTokenColorTurbo950LighterThanColorTurbo1000() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.colorTurbo950, SoshBrandColorRawTokens.colorTurbo1000)
    }

    // MARK: - Tests - Opacity scale darker and darker - White
    // NOTE: white* tokens share the same RGB base (#EDF6FC) and only vary by alpha channel.
    // A higher index means a higher alpha value (more opaque), i.e. a higher integer value overall.

    @Test func soshBrandColorRawTokenWhite0LighterThanWhite40() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.white40, SoshBrandColorRawTokens.white0)
    }

    @Test func soshBrandColorRawTokenWhite40LighterThanWhite80() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.white80, SoshBrandColorRawTokens.white40)
    }

    @Test func soshBrandColorRawTokenWhite80LighterThanWhite120() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.white120, SoshBrandColorRawTokens.white80)
    }

    @Test func soshBrandColorRawTokenWhite120LighterThanWhite160() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.white160, SoshBrandColorRawTokens.white120)
    }

    @Test func soshBrandColorRawTokenWhite160LighterThanWhite200() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.white200, SoshBrandColorRawTokens.white160)
    }

    @Test func soshBrandColorRawTokenWhite200LighterThanWhite240() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.white240, SoshBrandColorRawTokens.white200)
    }

    @Test func soshBrandColorRawTokenWhite240LighterThanWhite280() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.white280, SoshBrandColorRawTokens.white240)
    }

    @Test func soshBrandColorRawTokenWhite280LighterThanWhite320() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.white320, SoshBrandColorRawTokens.white280)
    }

    @Test func soshBrandColorRawTokenWhite320LighterThanWhite360() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.white360, SoshBrandColorRawTokens.white320)
    }

    @Test func soshBrandColorRawTokenWhite360LighterThanWhite400() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.white400, SoshBrandColorRawTokens.white360)
    }

    @Test func soshBrandColorRawTokenWhite400LighterThanWhite440() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.white440, SoshBrandColorRawTokens.white400)
    }

    @Test func soshBrandColorRawTokenWhite440LighterThanWhite480() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.white480, SoshBrandColorRawTokens.white440)
    }

    @Test func soshBrandColorRawTokenWhite480LighterThanWhite520() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.white520, SoshBrandColorRawTokens.white480)
    }

    @Test func soshBrandColorRawTokenWhite520LighterThanWhite560() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.white560, SoshBrandColorRawTokens.white520)
    }

    @Test func soshBrandColorRawTokenWhite560LighterThanWhite600() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.white600, SoshBrandColorRawTokens.white560)
    }

    @Test func soshBrandColorRawTokenWhite600LighterThanWhite640() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.white640, SoshBrandColorRawTokens.white600)
    }

    @Test func soshBrandColorRawTokenWhite640LighterThanWhite680() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.white680, SoshBrandColorRawTokens.white640)
    }

    @Test func soshBrandColorRawTokenWhite680LighterThanWhite720() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.white720, SoshBrandColorRawTokens.white680)
    }

    @Test func soshBrandColorRawTokenWhite720LighterThanWhite760() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.white760, SoshBrandColorRawTokens.white720)
    }

    @Test func soshBrandColorRawTokenWhite760LighterThanWhite800() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.white800, SoshBrandColorRawTokens.white760)
    }

    @Test func soshBrandColorRawTokenWhite800LighterThanWhite840() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.white840, SoshBrandColorRawTokens.white800)
    }

    @Test func soshBrandColorRawTokenWhite840LighterThanWhite880() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.white880, SoshBrandColorRawTokens.white840)
    }

    @Test func soshBrandColorRawTokenWhite880LighterThanWhite920() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.white920, SoshBrandColorRawTokens.white880)
    }

    @Test func soshBrandColorRawTokenWhite920LighterThanWhite960() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.white960, SoshBrandColorRawTokens.white920)
    }

    // MARK: - Tests - Opacity scale darker and darker - Opacity Black
    // NOTE: opacityBlack* tokens share the same RGB base (#000F19) and only vary by alpha channel.
    // A higher index means a higher alpha value (more opaque), i.e. a higher integer value overall.

    @Test func soshBrandColorRawTokenOpacityBlack0LighterThanOpacityBlack40() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityBlack40, SoshBrandColorRawTokens.opacityBlack0)
    }

    @Test func soshBrandColorRawTokenOpacityBlack40LighterThanOpacityBlack80() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityBlack80, SoshBrandColorRawTokens.opacityBlack40)
    }

    @Test func soshBrandColorRawTokenOpacityBlack80LighterThanOpacityBlack120() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityBlack120, SoshBrandColorRawTokens.opacityBlack80)
    }

    @Test func soshBrandColorRawTokenOpacityBlack120LighterThanOpacityBlack160() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityBlack160, SoshBrandColorRawTokens.opacityBlack120)
    }

    @Test func soshBrandColorRawTokenOpacityBlack160LighterThanOpacityBlack200() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityBlack200, SoshBrandColorRawTokens.opacityBlack160)
    }

    @Test func soshBrandColorRawTokenOpacityBlack200LighterThanOpacityBlack240() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityBlack240, SoshBrandColorRawTokens.opacityBlack200)
    }

    @Test func soshBrandColorRawTokenOpacityBlack240LighterThanOpacityBlack280() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityBlack280, SoshBrandColorRawTokens.opacityBlack240)
    }

    @Test func soshBrandColorRawTokenOpacityBlack280LighterThanOpacityBlack320() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityBlack320, SoshBrandColorRawTokens.opacityBlack280)
    }

    @Test func soshBrandColorRawTokenOpacityBlack320LighterThanOpacityBlack360() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityBlack360, SoshBrandColorRawTokens.opacityBlack320)
    }

    @Test func soshBrandColorRawTokenOpacityBlack360LighterThanOpacityBlack400() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityBlack400, SoshBrandColorRawTokens.opacityBlack360)
    }

    @Test func soshBrandColorRawTokenOpacityBlack400LighterThanOpacityBlack440() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityBlack440, SoshBrandColorRawTokens.opacityBlack400)
    }

    @Test func soshBrandColorRawTokenOpacityBlack440LighterThanOpacityBlack480() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityBlack480, SoshBrandColorRawTokens.opacityBlack440)
    }

    @Test func soshBrandColorRawTokenOpacityBlack480LighterThanOpacityBlack520() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityBlack520, SoshBrandColorRawTokens.opacityBlack480)
    }

    @Test func soshBrandColorRawTokenOpacityBlack520LighterThanOpacityBlack560() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityBlack560, SoshBrandColorRawTokens.opacityBlack520)
    }

    @Test func soshBrandColorRawTokenOpacityBlack560LighterThanOpacityBlack600() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityBlack600, SoshBrandColorRawTokens.opacityBlack560)
    }

    @Test func soshBrandColorRawTokenOpacityBlack600LighterThanOpacityBlack640() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityBlack640, SoshBrandColorRawTokens.opacityBlack600)
    }

    @Test func soshBrandColorRawTokenOpacityBlack640LighterThanOpacityBlack680() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityBlack680, SoshBrandColorRawTokens.opacityBlack640)
    }

    @Test func soshBrandColorRawTokenOpacityBlack680LighterThanOpacityBlack720() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityBlack720, SoshBrandColorRawTokens.opacityBlack680)
    }

    @Test func soshBrandColorRawTokenOpacityBlack720LighterThanOpacityBlack760() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityBlack760, SoshBrandColorRawTokens.opacityBlack720)
    }

    @Test func soshBrandColorRawTokenOpacityBlack760LighterThanOpacityBlack800() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityBlack800, SoshBrandColorRawTokens.opacityBlack760)
    }

    @Test func soshBrandColorRawTokenOpacityBlack800LighterThanOpacityBlack840() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityBlack840, SoshBrandColorRawTokens.opacityBlack800)
    }

    @Test func soshBrandColorRawTokenOpacityBlack840LighterThanOpacityBlack880() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityBlack880, SoshBrandColorRawTokens.opacityBlack840)
    }

    @Test func soshBrandColorRawTokenOpacityBlack880LighterThanOpacityBlack920() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityBlack920, SoshBrandColorRawTokens.opacityBlack880)
    }

    @Test func soshBrandColorRawTokenOpacityBlack920LighterThanOpacityBlack960() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityBlack960, SoshBrandColorRawTokens.opacityBlack920)
    }

    // MARK: - Tests - Named opacity tokens order

    @Test func soshBrandColorRawTokenOpacityRaspberry100LighterThanOpacityRaspberry640() throws {
        TestsUtils.assertColorLighterThan(SoshBrandColorRawTokens.opacityRaspberry100, SoshBrandColorRawTokens.opacityRaspberry640)
    }

    // MARK: - Test all values unique

    @Test func soshBrandColorRawTokensAreAllUnique() throws {
        let allColors: [ColorRawToken] = [
            // Functional Gray Light
            SoshBrandColorRawTokens.functionalGrayLight80, SoshBrandColorRawTokens.functionalGrayLight160,
            SoshBrandColorRawTokens.functionalGrayLight240, SoshBrandColorRawTokens.functionalGrayLight320,
            SoshBrandColorRawTokens.functionalGrayLight400, SoshBrandColorRawTokens.functionalGrayLight480,
            SoshBrandColorRawTokens.functionalGrayLight560, SoshBrandColorRawTokens.functionalGrayLight640,
            SoshBrandColorRawTokens.functionalGrayLight720, SoshBrandColorRawTokens.functionalGrayLight800,
            SoshBrandColorRawTokens.functionalGrayLight880, SoshBrandColorRawTokens.functionalGrayLight960,
            // Functional Gray Dark
            SoshBrandColorRawTokens.functionalGrayDark80, SoshBrandColorRawTokens.functionalGrayDark160,
            SoshBrandColorRawTokens.functionalGrayDark240, SoshBrandColorRawTokens.functionalGrayDark320,
            SoshBrandColorRawTokens.functionalGrayDark400, SoshBrandColorRawTokens.functionalGrayDark480,
            SoshBrandColorRawTokens.functionalGrayDark560, SoshBrandColorRawTokens.functionalGrayDark640,
            SoshBrandColorRawTokens.functionalGrayDark720, SoshBrandColorRawTokens.functionalGrayDark800,
            SoshBrandColorRawTokens.functionalGrayDark880, SoshBrandColorRawTokens.functionalGrayDark960,
            // Raspberry
            SoshBrandColorRawTokens.colorRaspberry50, SoshBrandColorRawTokens.colorRaspberry100,
            SoshBrandColorRawTokens.colorRaspberry200, SoshBrandColorRawTokens.colorRaspberry300,
            SoshBrandColorRawTokens.colorRaspberry400, SoshBrandColorRawTokens.colorRaspberry500,
            SoshBrandColorRawTokens.colorRaspberry600, SoshBrandColorRawTokens.colorRaspberry700,
            SoshBrandColorRawTokens.colorRaspberry800, SoshBrandColorRawTokens.colorRaspberry900,
            SoshBrandColorRawTokens.colorRaspberry950,
            // Lochmara Light
            SoshBrandColorRawTokens.colorLochmaraLight80, SoshBrandColorRawTokens.colorLochmaraLight160,
            SoshBrandColorRawTokens.colorLochmaraLight240, SoshBrandColorRawTokens.colorLochmaraLight320,
            SoshBrandColorRawTokens.colorLochmaraLight400, SoshBrandColorRawTokens.colorLochmaraLight480,
            SoshBrandColorRawTokens.colorLochmaraLight560, SoshBrandColorRawTokens.colorLochmaraLight640,
            SoshBrandColorRawTokens.colorLochmaraLight720, SoshBrandColorRawTokens.colorLochmaraLight800,
            SoshBrandColorRawTokens.colorLochmaraLight880, SoshBrandColorRawTokens.colorLochmaraLight960,
            // Lochmara Dark
            SoshBrandColorRawTokens.colorLochmaraDark80, SoshBrandColorRawTokens.colorLochmaraDark160,
            SoshBrandColorRawTokens.colorLochmaraDark240, SoshBrandColorRawTokens.colorLochmaraDark320,
            SoshBrandColorRawTokens.colorLochmaraDark400, SoshBrandColorRawTokens.colorLochmaraDark480,
            SoshBrandColorRawTokens.colorLochmaraDark560, SoshBrandColorRawTokens.colorLochmaraDark640,
            SoshBrandColorRawTokens.colorLochmaraDark720, SoshBrandColorRawTokens.colorLochmaraDark800,
            SoshBrandColorRawTokens.colorLochmaraDark880, SoshBrandColorRawTokens.colorLochmaraDark960,
            // Turbo
            SoshBrandColorRawTokens.colorTurbo50, SoshBrandColorRawTokens.colorTurbo100,
            SoshBrandColorRawTokens.colorTurbo200, SoshBrandColorRawTokens.colorTurbo300,
            SoshBrandColorRawTokens.colorTurbo400, SoshBrandColorRawTokens.colorTurbo500,
            SoshBrandColorRawTokens.colorTurbo600, SoshBrandColorRawTokens.colorTurbo700,
            SoshBrandColorRawTokens.colorTurbo750, SoshBrandColorRawTokens.colorTurbo800,
            SoshBrandColorRawTokens.colorTurbo900, SoshBrandColorRawTokens.colorTurbo950,
            SoshBrandColorRawTokens.colorTurbo1000,
            // White (opacity scale)
            SoshBrandColorRawTokens.white0, SoshBrandColorRawTokens.white40,
            SoshBrandColorRawTokens.white80, SoshBrandColorRawTokens.white120,
            SoshBrandColorRawTokens.white160, SoshBrandColorRawTokens.white200,
            SoshBrandColorRawTokens.white240, SoshBrandColorRawTokens.white280,
            SoshBrandColorRawTokens.white320, SoshBrandColorRawTokens.white360,
            SoshBrandColorRawTokens.white400, SoshBrandColorRawTokens.white440,
            SoshBrandColorRawTokens.white480, SoshBrandColorRawTokens.white520,
            SoshBrandColorRawTokens.white560, SoshBrandColorRawTokens.white600,
            SoshBrandColorRawTokens.white640, SoshBrandColorRawTokens.white680,
            SoshBrandColorRawTokens.white720, SoshBrandColorRawTokens.white760,
            SoshBrandColorRawTokens.white800, SoshBrandColorRawTokens.white840,
            SoshBrandColorRawTokens.white880, SoshBrandColorRawTokens.white920,
            SoshBrandColorRawTokens.white960,
            // Opacity Black
            SoshBrandColorRawTokens.opacityBlack0, SoshBrandColorRawTokens.opacityBlack40,
            SoshBrandColorRawTokens.opacityBlack80, SoshBrandColorRawTokens.opacityBlack120,
            SoshBrandColorRawTokens.opacityBlack160, SoshBrandColorRawTokens.opacityBlack200,
            SoshBrandColorRawTokens.opacityBlack240, SoshBrandColorRawTokens.opacityBlack280,
            SoshBrandColorRawTokens.opacityBlack320, SoshBrandColorRawTokens.opacityBlack360,
            SoshBrandColorRawTokens.opacityBlack400, SoshBrandColorRawTokens.opacityBlack440,
            SoshBrandColorRawTokens.opacityBlack480, SoshBrandColorRawTokens.opacityBlack520,
            SoshBrandColorRawTokens.opacityBlack560, SoshBrandColorRawTokens.opacityBlack600,
            SoshBrandColorRawTokens.opacityBlack640, SoshBrandColorRawTokens.opacityBlack680,
            SoshBrandColorRawTokens.opacityBlack720, SoshBrandColorRawTokens.opacityBlack760,
            SoshBrandColorRawTokens.opacityBlack800, SoshBrandColorRawTokens.opacityBlack840,
            SoshBrandColorRawTokens.opacityBlack880, SoshBrandColorRawTokens.opacityBlack920,
            SoshBrandColorRawTokens.opacityBlack960,
            // Named opacity tokens
            SoshBrandColorRawTokens.opacityRaspberry100, SoshBrandColorRawTokens.opacityRaspberry640,
            SoshBrandColorRawTokens.opacityLochmaraLight80080,
            SoshBrandColorRawTokens.opacityLochmaraDark960800, SoshBrandColorRawTokens.opacityLochmaraDark880520,
            SoshBrandColorRawTokens.opacityTurbo160, SoshBrandColorRawTokens.opacityTurbo480,
        ]
        assertAllUniqueColors(allColors)
    }

    // MARK: - Helpers

    private func assertAllUniqueColors(_ colors: [ColorRawToken]) {
        for i in 0 ..< colors.count {
            for j in (i + 1) ..< colors.count {
                #expect(colors[i] != colors[j], "Colors \(colors[i]) and \(colors[j]) must be different")
            }
        }
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable force_try
// swiftlint:enable function_body_length

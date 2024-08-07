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
/// However, in the semantics of typography raw tokens, there will be some unchanged things like relationships between tokens.
/// Thus this tests class just checks if such relationships are still here whatever the values at the end.
final class TypographyRawTokensTests: XCTestCase {

    /// Whatever the values are, font sizes raw tokens must keep their order relationships
    func testOrderRelationshipFontSizes() throws {
        XCTAssertLessThan(TypographyRawTokens.fontSize100, TypographyRawTokens.fontSize150)
        XCTAssertLessThan(TypographyRawTokens.fontSize150, TypographyRawTokens.fontSize175)
        XCTAssertLessThan(TypographyRawTokens.fontSize175, TypographyRawTokens.fontSize200)
        XCTAssertLessThan(TypographyRawTokens.fontSize200, TypographyRawTokens.fontSize250)
        XCTAssertLessThan(TypographyRawTokens.fontSize250, TypographyRawTokens.fontSize300)
        XCTAssertLessThan(TypographyRawTokens.fontSize300, TypographyRawTokens.fontSize350)
        XCTAssertLessThan(TypographyRawTokens.fontSize350, TypographyRawTokens.fontSize450)
        XCTAssertLessThan(TypographyRawTokens.fontSize450, TypographyRawTokens.fontSize550)
        XCTAssertLessThan(TypographyRawTokens.fontSize550, TypographyRawTokens.fontSize650)
        XCTAssertLessThan(TypographyRawTokens.fontSize650, TypographyRawTokens.fontSize750)
        XCTAssertLessThan(TypographyRawTokens.fontSize750, TypographyRawTokens.fontSize850)
        XCTAssertLessThan(TypographyRawTokens.fontSize850, TypographyRawTokens.fontSize950)
        XCTAssertLessThan(TypographyRawTokens.fontSize950, TypographyRawTokens.fontSize1050)
        XCTAssertLessThan(TypographyRawTokens.fontSize1050, TypographyRawTokens.fontSize1150)
        XCTAssertLessThan(TypographyRawTokens.fontSize1150, TypographyRawTokens.fontSize1250)
        XCTAssertLessThan(TypographyRawTokens.fontSize1250, TypographyRawTokens.fontSize1450)
        XCTAssertLessThan(TypographyRawTokens.fontSize1450, TypographyRawTokens.fontSize1850)
    }

    /// Whatever the values are, font line heights raw tokens must keep their order relationships
    func testOrderRelationshipFontLineHeights() throws {
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight250, TypographyRawTokens.fontLineHeight350)
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight350, TypographyRawTokens.fontLineHeight450)
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight450, TypographyRawTokens.fontLineHeight550)
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight550, TypographyRawTokens.fontLineHeight650)
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight650, TypographyRawTokens.fontLineHeight750)
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight750, TypographyRawTokens.fontLineHeight850)
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight850, TypographyRawTokens.fontLineHeight950)
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight950, TypographyRawTokens.fontLineHeight1050)
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight1050, TypographyRawTokens.fontLineHeight1150)
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight1150, TypographyRawTokens.fontLineHeight1250)
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight1250, TypographyRawTokens.fontLineHeight1350)
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight1350, TypographyRawTokens.fontLineHeight1450)
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight1450, TypographyRawTokens.fontLineHeight1850)
        XCTAssertLessThan(TypographyRawTokens.fontLineHeight1850, TypographyRawTokens.fontLineHeight2050)
    }

    /// Whatever the values are, font paragraph spacings raw tokens must keep their order relationships
    func testOrderRelationshipFontParagraphSpacings() throws {
        XCTAssertLessThan(TypographyRawTokens.fontParagraphSpacing100, TypographyRawTokens.fontParagraphSpacing200)
        XCTAssertLessThan(TypographyRawTokens.fontParagraphSpacing200, TypographyRawTokens.fontParagraphSpacing300)
        XCTAssertLessThan(TypographyRawTokens.fontParagraphSpacing300, TypographyRawTokens.fontParagraphSpacing400)
    }

    /// Whatever the values are, typographies must keep their order relationships
    func testOrderRelationshipComposites() throws {
        XCTAssertLessThan(TypographyRawTokens.typeRegular150.size, TypographyRawTokens.typeRegular175.size)
        XCTAssertLessThan(TypographyRawTokens.typeRegular175.size, TypographyRawTokens.typeRegular200.size)
        XCTAssertLessThan(TypographyRawTokens.typeRegular200.size, TypographyRawTokens.typeRegular250.size)
        XCTAssertLessThan(TypographyRawTokens.typeBold150.size, TypographyRawTokens.typeBold175.size)
        XCTAssertLessThan(TypographyRawTokens.typeBold175.size, TypographyRawTokens.typeBold200.size)
        XCTAssertLessThan(TypographyRawTokens.typeBold200.size, TypographyRawTokens.typeBold250.size)
        XCTAssertLessThan(TypographyRawTokens.typeBold250.size, TypographyRawTokens.typeBold300.size)
        XCTAssertLessThan(TypographyRawTokens.typeBold300.size, TypographyRawTokens.typeBold350.size)
        XCTAssertLessThan(TypographyRawTokens.typeBold350.size, TypographyRawTokens.typeBold450.size)
        XCTAssertLessThan(TypographyRawTokens.typeBold450.size, TypographyRawTokens.typeBold550.size)
        XCTAssertLessThan(TypographyRawTokens.typeBold550.size, TypographyRawTokens.typeBold650.size)
        XCTAssertLessThan(TypographyRawTokens.typeBold650.size, TypographyRawTokens.typeBold750.size)
        XCTAssertLessThan(TypographyRawTokens.typeBold750.size, TypographyRawTokens.typeBold850.size)
        XCTAssertLessThan(TypographyRawTokens.typeBold850.size, TypographyRawTokens.typeBold950.size)
        XCTAssertLessThan(TypographyRawTokens.typeBold950.size, TypographyRawTokens.typeBold1050.size)
        XCTAssertLessThan(TypographyRawTokens.typeBold1050.size, TypographyRawTokens.typeBold1150.size)
        XCTAssertLessThan(TypographyRawTokens.typeBold1150.size, TypographyRawTokens.typeBold1250.size)
        XCTAssertLessThan(TypographyRawTokens.typeBold1250.size, TypographyRawTokens.typeBold1450.size)
        XCTAssertLessThan(TypographyRawTokens.typeBold1450.size, TypographyRawTokens.typeBold1850.size)
    }
}

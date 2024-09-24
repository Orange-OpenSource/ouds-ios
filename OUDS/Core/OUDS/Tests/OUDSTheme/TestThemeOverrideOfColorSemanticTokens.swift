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
import OUDS

// swiftlint:disable type_body_length
// swiftlint:disable file_length

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _colors semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// **These tests checks if any _colors semantic tokens_ can be surcharged by a child theme**
final class TestThemeOverrideOfColorSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Colors - Alias - Primary

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandPrimaryLowest() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandPrimaryLowest, abstractTheme.sysColorBrandPrimaryLowest)
        XCTAssertTrue(inheritedTheme.sysColorBrandPrimaryLowest == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandPrimaryLower() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandPrimaryLower, abstractTheme.sysColorBrandPrimaryLower)
        XCTAssertTrue(inheritedTheme.sysColorBrandPrimaryLower == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandPrimaryLow() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandPrimaryLow, abstractTheme.sysColorBrandPrimaryLow)
        XCTAssertTrue(inheritedTheme.sysColorBrandPrimaryLow == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandPrimaryDefault() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandPrimaryDefault, abstractTheme.sysColorBrandPrimaryDefault)
        XCTAssertTrue(inheritedTheme.sysColorBrandPrimaryDefault == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandPrimaryHigh() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandPrimaryHigh, abstractTheme.sysColorBrandPrimaryHigh)
        XCTAssertTrue(inheritedTheme.sysColorBrandPrimaryHigh == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandPrimaryHigher() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandPrimaryHigher, abstractTheme.sysColorBrandPrimaryHigher)
        XCTAssertTrue(inheritedTheme.sysColorBrandPrimaryHigher == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandPrimaryHighest() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandPrimaryHighest, abstractTheme.sysColorBrandPrimaryHighest)
        XCTAssertTrue(inheritedTheme.sysColorBrandPrimaryHighest == MockTheme.mockThemeColorRawToken)
    }

    // MARK: - Semantic token - Colors - Alias - Secondary

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandSecondaryLowest() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandSecondaryLowest, abstractTheme.sysColorBrandSecondaryLowest)
        XCTAssertTrue(inheritedTheme.sysColorBrandSecondaryLowest == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandSecondaryLower() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandSecondaryLower, abstractTheme.sysColorBrandSecondaryLower)
        XCTAssertTrue(inheritedTheme.sysColorBrandSecondaryLower == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandSecondaryLow() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandSecondaryLow, abstractTheme.sysColorBrandSecondaryLow)
        XCTAssertTrue(inheritedTheme.sysColorBrandSecondaryLow == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandSecondaryDefault() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandSecondaryDefault, abstractTheme.sysColorBrandSecondaryDefault)
        XCTAssertTrue(inheritedTheme.sysColorBrandSecondaryDefault == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandSecondaryHigh() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandSecondaryHigh, abstractTheme.sysColorBrandSecondaryHigh)
        XCTAssertTrue(inheritedTheme.sysColorBrandSecondaryHigh == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandSecondaryHigher() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandSecondaryHigher, abstractTheme.sysColorBrandSecondaryHigher)
        XCTAssertTrue(inheritedTheme.sysColorBrandSecondaryHigher == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandSecondaryHighest() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandSecondaryHighest, abstractTheme.sysColorBrandSecondaryHighest)
        XCTAssertTrue(inheritedTheme.sysColorBrandSecondaryHighest == MockTheme.mockThemeColorRawToken)
    }

    // MARK: - Semantic token - Colors - Alias - Tertiary

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandTertiaryLowest() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandTertiaryLowest, abstractTheme.sysColorBrandTertiaryLowest)
        XCTAssertTrue(inheritedTheme.sysColorBrandTertiaryLowest == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandTertiaryLower() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandTertiaryLower, abstractTheme.sysColorBrandTertiaryLower)
        XCTAssertTrue(inheritedTheme.sysColorBrandTertiaryLower == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandTertiaryLow() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandTertiaryLow, abstractTheme.sysColorBrandTertiaryLow)
        XCTAssertTrue(inheritedTheme.sysColorBrandTertiaryLow == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandTertiaryDefault() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandTertiaryDefault, abstractTheme.sysColorBrandTertiaryDefault)
        XCTAssertTrue(inheritedTheme.sysColorBrandTertiaryDefault == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandTertiaryHigh() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandTertiaryHigh, abstractTheme.sysColorBrandTertiaryHigh)
        XCTAssertTrue(inheritedTheme.sysColorBrandTertiaryHigh == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandTertiaryHigher() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandTertiaryHigher, abstractTheme.sysColorBrandTertiaryHigher)
        XCTAssertTrue(inheritedTheme.sysColorBrandTertiaryHigher == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandTertiaryHighest() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandTertiaryHighest, abstractTheme.sysColorBrandTertiaryHighest)
        XCTAssertTrue(inheritedTheme.sysColorBrandTertiaryHighest == MockTheme.mockThemeColorRawToken)
    }

    // MARK: - Semantic token - Colors - Alias - Neutral - Muted

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNeutralMutedWhite() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNeutralMutedWhite, abstractTheme.sysColorBrandNeutralMutedWhite)
        XCTAssertTrue(inheritedTheme.sysColorBrandNeutralMutedWhite == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNeutralMutedLowest() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNeutralMutedLowest, abstractTheme.sysColorBrandNeutralMutedLowest)
        XCTAssertTrue(inheritedTheme.sysColorBrandNeutralMutedLowest == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNeutralMutedLower() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNeutralMutedLower, abstractTheme.sysColorBrandNeutralMutedLower)
        XCTAssertTrue(inheritedTheme.sysColorBrandNeutralMutedLower == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNeutralMutedLow() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNeutralMutedLow, abstractTheme.sysColorBrandNeutralMutedLow)
        XCTAssertTrue(inheritedTheme.sysColorBrandNeutralMutedLow == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNeutralMutedMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNeutralMutedMedium, abstractTheme.sysColorBrandNeutralMutedMedium)
        XCTAssertTrue(inheritedTheme.sysColorBrandNeutralMutedMedium == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNeutralMutedHigh() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNeutralMutedHigh, abstractTheme.sysColorBrandNeutralMutedHigh)
        XCTAssertTrue(inheritedTheme.sysColorBrandNeutralMutedHigh == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNeutralMutedHigher() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNeutralMutedHigher, abstractTheme.sysColorBrandNeutralMutedHigher)
        XCTAssertTrue(inheritedTheme.sysColorBrandNeutralMutedHigher == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNeutralMutedHighest() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNeutralMutedHighest, abstractTheme.sysColorBrandNeutralMutedHighest)
        XCTAssertTrue(inheritedTheme.sysColorBrandNeutralMutedHighest == MockTheme.mockThemeColorRawToken)
    }

    // MARK: - Semantic token - Colors - Alias - Neutral - Emphasized

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNeutralEmphasizedLowest() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNeutralEmphasizedLowest, abstractTheme.sysColorBrandNeutralEmphasizedLowest)
        XCTAssertTrue(inheritedTheme.sysColorBrandNeutralEmphasizedLowest == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNeutralEmphasizedLower() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNeutralEmphasizedLower, abstractTheme.sysColorBrandNeutralEmphasizedLower)
        XCTAssertTrue(inheritedTheme.sysColorBrandNeutralEmphasizedLower == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNeutralEmphasizedLow() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNeutralEmphasizedLow, abstractTheme.sysColorBrandNeutralEmphasizedLow)
        XCTAssertTrue(inheritedTheme.sysColorBrandNeutralEmphasizedLow == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNeutralEmphasizedMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNeutralEmphasizedMedium, abstractTheme.sysColorBrandNeutralEmphasizedMedium)
        XCTAssertTrue(inheritedTheme.sysColorBrandNeutralEmphasizedMedium == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNeutralEmphasizedHigh() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNeutralEmphasizedHigh, abstractTheme.sysColorBrandNeutralEmphasizedHigh)
        XCTAssertTrue(inheritedTheme.sysColorBrandNeutralEmphasizedHigh == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNeutralEmphasizedHigher() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNeutralEmphasizedHigher, abstractTheme.sysColorBrandNeutralEmphasizedHigher)
        XCTAssertTrue(inheritedTheme.sysColorBrandNeutralEmphasizedHigher == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNeutralEmphasizedHighest() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNeutralEmphasizedHighest, abstractTheme.sysColorBrandNeutralEmphasizedHighest)
        XCTAssertTrue(inheritedTheme.sysColorBrandNeutralEmphasizedHighest == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNeutralEmphasizedBlack() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNeutralEmphasizedBlack, abstractTheme.sysColorBrandNeutralEmphasizedBlack)
        XCTAssertTrue(inheritedTheme.sysColorBrandNeutralEmphasizedBlack == MockTheme.mockThemeColorRawToken)
    }

    // MARK: - Semantic token - Colors - Alias - Positive

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandPositiveLowest() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandPositiveLowest, abstractTheme.sysColorBrandPositiveLowest)
        XCTAssertTrue(inheritedTheme.sysColorBrandPositiveLowest == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandPositiveLower() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandPositiveLower, abstractTheme.sysColorBrandPositiveLower)
        XCTAssertTrue(inheritedTheme.sysColorBrandPositiveLower == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandPositiveLow() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandPositiveLow, abstractTheme.sysColorBrandPositiveLow)
        XCTAssertTrue(inheritedTheme.sysColorBrandPositiveLow == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandPositiveDefault() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandPositiveDefault, abstractTheme.sysColorBrandPositiveDefault)
        XCTAssertTrue(inheritedTheme.sysColorBrandPositiveDefault == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandPositiveHigh() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandPositiveHigh, abstractTheme.sysColorBrandPositiveHigh)
        XCTAssertTrue(inheritedTheme.sysColorBrandPositiveHigh == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandPositiveHigher() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandPositiveHigher, abstractTheme.sysColorBrandPositiveHigher)
        XCTAssertTrue(inheritedTheme.sysColorBrandPositiveHigher == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandPositiveHighest() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandPositiveHighest, abstractTheme.sysColorBrandPositiveHighest)
        XCTAssertTrue(inheritedTheme.sysColorBrandPositiveHighest == MockTheme.mockThemeColorRawToken)
    }

    // MARK: - Semantic token - Colors - Alias - Information

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandInformationLowest() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandInformationLowest, abstractTheme.sysColorBrandInformationLowest)
        XCTAssertTrue(inheritedTheme.sysColorBrandInformationLowest == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandInformationLower() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandInformationLower, abstractTheme.sysColorBrandInformationLower)
        XCTAssertTrue(inheritedTheme.sysColorBrandInformationLower == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandInformationLow() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandInformationLow, abstractTheme.sysColorBrandInformationLow)
        XCTAssertTrue(inheritedTheme.sysColorBrandInformationLow == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandInformationDefault() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandInformationDefault, abstractTheme.sysColorBrandInformationDefault)
        XCTAssertTrue(inheritedTheme.sysColorBrandInformationDefault == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandInformationHigh() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandInformationHigh, abstractTheme.sysColorBrandInformationHigh)
        XCTAssertTrue(inheritedTheme.sysColorBrandInformationHigh == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandInformationHigher() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandInformationHigher, abstractTheme.sysColorBrandInformationHigher)
        XCTAssertTrue(inheritedTheme.sysColorBrandInformationHigher == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandInformationHighest() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandInformationHighest, abstractTheme.sysColorBrandInformationHighest)
        XCTAssertTrue(inheritedTheme.sysColorBrandInformationHighest == MockTheme.mockThemeColorRawToken)
    }

    // MARK: - Semantic token - Colors - Alias - Warning

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandWarningLowest() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandWarningLowest, abstractTheme.sysColorBrandWarningLowest)
        XCTAssertTrue(inheritedTheme.sysColorBrandWarningLowest == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandWarningLower() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandWarningLower, abstractTheme.sysColorBrandWarningLower)
        XCTAssertTrue(inheritedTheme.sysColorBrandWarningLower == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandWarningLow() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandWarningLow, abstractTheme.sysColorBrandWarningLow)
        XCTAssertTrue(inheritedTheme.sysColorBrandWarningLow == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandWarningDefault() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandWarningDefault, abstractTheme.sysColorBrandWarningDefault)
        XCTAssertTrue(inheritedTheme.sysColorBrandWarningDefault == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandWarningHigh() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandWarningHigh, abstractTheme.sysColorBrandWarningHigh)
        XCTAssertTrue(inheritedTheme.sysColorBrandWarningHigh == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandWarningHigher() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandWarningHigher, abstractTheme.sysColorBrandWarningHigher)
        XCTAssertTrue(inheritedTheme.sysColorBrandWarningHigher == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandWarningHighest() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandWarningHighest, abstractTheme.sysColorBrandWarningHighest)
        XCTAssertTrue(inheritedTheme.sysColorBrandWarningHighest == MockTheme.mockThemeColorRawToken)
    }

    // MARK: - Semantic token - Colors - Alias - Negative

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNegativeLowest() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNegativeLowest, abstractTheme.sysColorBrandNegativeLowest)
        XCTAssertTrue(inheritedTheme.sysColorBrandNegativeLowest == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNegativeLower() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNegativeLower, abstractTheme.sysColorBrandNegativeLower)
        XCTAssertTrue(inheritedTheme.sysColorBrandNegativeLower == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNegativeLow() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNegativeLow, abstractTheme.sysColorBrandNegativeLow)
        XCTAssertTrue(inheritedTheme.sysColorBrandNegativeLow == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNegativeDefault() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNegativeDefault, abstractTheme.sysColorBrandNegativeDefault)
        XCTAssertTrue(inheritedTheme.sysColorBrandNegativeDefault == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNegativeHigh() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNegativeHigh, abstractTheme.sysColorBrandNegativeHigh)
        XCTAssertTrue(inheritedTheme.sysColorBrandNegativeHigh == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNegativeHigher() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNegativeHigher, abstractTheme.sysColorBrandNegativeHigher)
        XCTAssertTrue(inheritedTheme.sysColorBrandNegativeHigher == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNegativeHighest() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNegativeHighest, abstractTheme.sysColorBrandNegativeHighest)
        XCTAssertTrue(inheritedTheme.sysColorBrandNegativeHighest == MockTheme.mockThemeColorRawToken)
    }

    // MARK: - Semantic token - Colors - Alias - Attractive

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandAttractiveLowest() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandAttractiveLowest, abstractTheme.sysColorBrandAttractiveLowest)
        XCTAssertTrue(inheritedTheme.sysColorBrandAttractiveLowest == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandAttractiveLower() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandAttractiveLower, abstractTheme.sysColorBrandAttractiveLower)
        XCTAssertTrue(inheritedTheme.sysColorBrandAttractiveLower == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandAttractiveLow() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandAttractiveLow, abstractTheme.sysColorBrandAttractiveLow)
        XCTAssertTrue(inheritedTheme.sysColorBrandAttractiveLow == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandAttractiveMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandAttractiveMedium, abstractTheme.sysColorBrandAttractiveMedium)
        XCTAssertTrue(inheritedTheme.sysColorBrandAttractiveMedium == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandAttractiveHigh() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandAttractiveHigh, abstractTheme.sysColorBrandAttractiveHigh)
        XCTAssertTrue(inheritedTheme.sysColorBrandAttractiveHigh == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandAttractiveHigher() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandAttractiveHigher, abstractTheme.sysColorBrandAttractiveHigher)
        XCTAssertTrue(inheritedTheme.sysColorBrandAttractiveHigher == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandAttractiveHighest() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandAttractiveHighest, abstractTheme.sysColorBrandAttractiveHighest)
        XCTAssertTrue(inheritedTheme.sysColorBrandAttractiveHighest == MockTheme.mockThemeColorRawToken)
    }

    // MARK: - Semantic token - Colors - Background

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundDefaultPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundDefaultPrimary?.light, abstractTheme.colorBackgroundDefaultPrimary?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundDefaultPrimary?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundDefaultPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundDefaultPrimary?.dark, abstractTheme.colorBackgroundDefaultPrimary?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundDefaultPrimary?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundDefaultSecondaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundDefaultSecondary?.light, abstractTheme.colorBackgroundDefaultSecondary?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundDefaultSecondary?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundDefaultSecondaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundDefaultSecondary?.dark, abstractTheme.colorBackgroundDefaultSecondary?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundDefaultSecondary?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundDefaultTertiaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundDefaultTertiary?.light, abstractTheme.colorBackgroundDefaultTertiary?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundDefaultTertiary?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundDefaultTertiaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundDefaultTertiary?.dark, abstractTheme.colorBackgroundDefaultTertiary?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundDefaultTertiary?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundEmphasizedPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundEmphasizedPrimary?.light, abstractTheme.colorBackgroundEmphasizedPrimary?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundEmphasizedPrimary?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundEmphasizedPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundEmphasizedPrimary?.dark, abstractTheme.colorBackgroundEmphasizedPrimary?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundEmphasizedPrimary?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundEmphasizedSecondaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundEmphasizedSecondary?.light, abstractTheme.colorBackgroundEmphasizedSecondary?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundEmphasizedSecondary?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundEmphasizedSecondaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundEmphasizedSecondary?.dark, abstractTheme.colorBackgroundEmphasizedSecondary?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundEmphasizedSecondary?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundBrandPrimary?.light, abstractTheme.colorBackgroundBrandPrimary?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundBrandPrimary?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundBrandPrimary?.dark, abstractTheme.colorBackgroundBrandPrimary?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundBrandPrimary?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundBrandSecondaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundBrandSecondary?.light, abstractTheme.colorBackgroundBrandSecondary?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundBrandSecondary?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundBrandSecondaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundBrandSecondary?.dark, abstractTheme.colorBackgroundBrandSecondary?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundBrandSecondary?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundBrandTertiaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundBrandTertiary?.light, abstractTheme.colorBackgroundBrandTertiary?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundBrandTertiary?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundBrandTertiaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundBrandTertiary?.dark, abstractTheme.colorBackgroundBrandTertiary?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundBrandTertiary?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusAttractiveMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusAttractiveMuted?.light, abstractTheme.colorBackgroundStatusAttractiveMuted?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusAttractiveMuted?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusAttractiveMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusAttractiveMuted?.dark, abstractTheme.colorBackgroundStatusAttractiveMuted?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusAttractiveMuted?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusAttractiveEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusAttractiveEmphasized?.light, abstractTheme.colorBackgroundStatusAttractiveEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusAttractiveEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusAttractiveEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusAttractiveEmphasized?.dark, abstractTheme.colorBackgroundStatusAttractiveEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusAttractiveEmphasized?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusWarningMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusWarningMuted?.light, abstractTheme.colorBackgroundStatusWarningMuted?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusWarningMuted?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusWarningMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusWarningMuted?.dark, abstractTheme.colorBackgroundStatusWarningMuted?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusWarningMuted?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusWarningEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusWarningEmphasized?.light, abstractTheme.colorBackgroundStatusWarningEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusWarningEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusWarningEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusWarningEmphasized?.dark, abstractTheme.colorBackgroundStatusWarningEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusWarningEmphasized?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNegativeMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNegativeMuted?.light, abstractTheme.colorBackgroundStatusNegativeMuted?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNegativeMuted?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNegativeMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNegativeMuted?.dark, abstractTheme.colorBackgroundStatusNegativeMuted?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNegativeMuted?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNegativeEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNegativeEmphasized?.light, abstractTheme.colorBackgroundStatusNegativeEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNegativeEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNegativeEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNegativeEmphasized?.dark, abstractTheme.colorBackgroundStatusNegativeEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNegativeEmphasized?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusPositiveMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusPositiveMuted?.light, abstractTheme.colorBackgroundStatusPositiveMuted?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusPositiveMuted?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusPositiveMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusPositiveMuted?.dark, abstractTheme.colorBackgroundStatusPositiveMuted?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusPositiveMuted?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusPositiveEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusPositiveEmphasized?.light, abstractTheme.colorBackgroundStatusPositiveEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusPositiveEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusPositiveEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusPositiveEmphasized?.dark, abstractTheme.colorBackgroundStatusPositiveEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusPositiveEmphasized?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusInformationMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusInformationMuted?.light, abstractTheme.colorBackgroundStatusInformationMuted?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusInformationMuted?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusInformationMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusInformationMuted?.dark, abstractTheme.colorBackgroundStatusInformationMuted?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusInformationMuted?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusInformationEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusInformationEmphasized?.light, abstractTheme.colorBackgroundStatusInformationEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusInformationEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusInformationEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusInformationEmphasized?.dark, abstractTheme.colorBackgroundStatusInformationEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusInformationEmphasized?.dark == MockTheme.mockThemeColorRawToken)
    }

    // MARK: - Semantic token - Colors - Content

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDefault?.light, abstractTheme.colorContentDefault?.light)
        XCTAssertTrue(inheritedTheme.colorContentDefault?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDefault?.dark, abstractTheme.colorContentDefault?.dark)
        XCTAssertTrue(inheritedTheme.colorContentDefault?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefaultOnBackgroundEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDefaultOnBackgroundEmphasized?.light, abstractTheme.colorContentDefaultOnBackgroundEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorContentDefaultOnBackgroundEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefaultOnBackgroundEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDefaultOnBackgroundEmphasized?.dark, abstractTheme.colorContentDefaultOnBackgroundEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorContentDefaultOnBackgroundEmphasized?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentMuted?.light, abstractTheme.colorContentMuted?.light)
        XCTAssertTrue(inheritedTheme.colorContentMuted?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentMuted?.dark, abstractTheme.colorContentMuted?.dark)
        XCTAssertTrue(inheritedTheme.colorContentMuted?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMutedOnBackgroundEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentMutedOnBackgroundEmphasized?.light, abstractTheme.colorContentMutedOnBackgroundEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorContentMutedOnBackgroundEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMutedOnBackgroundEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentMutedOnBackgroundEmphasized?.dark, abstractTheme.colorContentMutedOnBackgroundEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorContentMutedOnBackgroundEmphasized?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandPrimary?.light, abstractTheme.colorContentBrandPrimary?.light)
        XCTAssertTrue(inheritedTheme.colorContentBrandPrimary?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandPrimary?.dark, abstractTheme.colorContentBrandPrimary?.dark)
        XCTAssertTrue(inheritedTheme.colorContentBrandPrimary?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandPrimaryOnBackgroundEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandPrimaryOnBackgroundEmphasized?.light, abstractTheme.colorContentBrandPrimaryOnBackgroundEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorContentBrandPrimaryOnBackgroundEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandPrimaryOnBackgroundEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandPrimaryOnBackgroundEmphasized?.dark, abstractTheme.colorContentBrandPrimaryOnBackgroundEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorContentBrandPrimaryOnBackgroundEmphasized?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandSecondaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandSecondary?.light, abstractTheme.colorContentBrandSecondary?.light)
        XCTAssertTrue(inheritedTheme.colorContentBrandSecondary?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandSecondaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandSecondary?.dark, abstractTheme.colorContentBrandSecondary?.dark)
        XCTAssertTrue(inheritedTheme.colorContentBrandSecondary?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandTertiaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandTertiary?.light, abstractTheme.colorContentBrandTertiary?.light)
        XCTAssertTrue(inheritedTheme.colorContentBrandTertiary?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandTertiaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandTertiary?.dark, abstractTheme.colorContentBrandTertiary?.dark)
        XCTAssertTrue(inheritedTheme.colorContentBrandTertiary?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusAttractiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusAttractive?.light, abstractTheme.colorContentStatusAttractive?.light)
        XCTAssertTrue(inheritedTheme.colorContentStatusAttractive?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusAttractiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusAttractive?.dark, abstractTheme.colorContentStatusAttractive?.dark)
        XCTAssertTrue(inheritedTheme.colorContentStatusAttractive?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusNegative?.light, abstractTheme.colorContentStatusNegative?.light)
        XCTAssertTrue(inheritedTheme.colorContentStatusNegative?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusNegative?.dark, abstractTheme.colorContentStatusNegative?.dark)
        XCTAssertTrue(inheritedTheme.colorContentStatusNegative?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusPositiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusPositive?.light, abstractTheme.colorContentStatusPositive?.light)
        XCTAssertTrue(inheritedTheme.colorContentStatusPositive?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusPositiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusPositive?.dark, abstractTheme.colorContentStatusPositive?.dark)
        XCTAssertTrue(inheritedTheme.colorContentStatusPositive?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusInformationLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusInformation?.light, abstractTheme.colorContentStatusInformation?.light)
        XCTAssertTrue(inheritedTheme.colorContentStatusInformation?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusInformationDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusInformation?.dark, abstractTheme.colorContentStatusInformation?.dark)
        XCTAssertTrue(inheritedTheme.colorContentStatusInformation?.dark == MockTheme.mockThemeColorRawToken)
    }

    // MARK: - Semantic token - Colors - Border

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderDefault?.light, abstractTheme.colorBorderDefault?.light)
        XCTAssertTrue(inheritedTheme.colorBorderDefault?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderDefault?.dark, abstractTheme.colorBorderDefault?.dark)
        XCTAssertTrue(inheritedTheme.colorBorderDefault?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefaultOnBackgroundEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderDefaultOnBackgroundEmphasized?.light, abstractTheme.colorBorderDefaultOnBackgroundEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorBorderDefaultOnBackgroundEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefaultOnBackgroundEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderDefaultOnBackgroundEmphasized?.dark, abstractTheme.colorBorderDefaultOnBackgroundEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorBorderDefaultOnBackgroundEmphasized?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderEmphasized?.light, abstractTheme.colorBorderEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorBorderEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderEmphasized?.dark, abstractTheme.colorBorderEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorBorderEmphasized?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasizedOnBackgroundEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderEmphasizedOnBackgroundEmphasized?.light, abstractTheme.colorBorderEmphasizedOnBackgroundEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorBorderEmphasizedOnBackgroundEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasizedOnBackgroundEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderEmphasizedOnBackgroundEmphasized?.dark, abstractTheme.colorBorderEmphasizedOnBackgroundEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorBorderEmphasizedOnBackgroundEmphasized?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandPrimary?.light, abstractTheme.colorBorderBrandPrimary?.light)
        XCTAssertTrue(inheritedTheme.colorBorderBrandPrimary?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandPrimary?.dark, abstractTheme.colorBorderBrandPrimary?.dark)
        XCTAssertTrue(inheritedTheme.colorBorderBrandPrimary?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryOnBackgroundEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandPrimaryOnBackgroundEmphasized?.light, abstractTheme.colorBorderBrandPrimaryOnBackgroundEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorBorderBrandPrimaryOnBackgroundEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryOnBackgroundEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandPrimaryOnBackgroundEmphasized?.dark, abstractTheme.colorBorderBrandPrimaryOnBackgroundEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorBorderBrandPrimaryOnBackgroundEmphasized?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandSecondaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandSecondary?.light, abstractTheme.colorBorderBrandSecondary?.light)
        XCTAssertTrue(inheritedTheme.colorBorderBrandSecondary?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandSecondaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandSecondary?.dark, abstractTheme.colorBorderBrandSecondary?.dark)
        XCTAssertTrue(inheritedTheme.colorBorderBrandSecondary?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandTertiaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandTertiary?.light, abstractTheme.colorBorderBrandTertiary?.light)
        XCTAssertTrue(inheritedTheme.colorBorderBrandTertiary?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandTertiaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandTertiary?.dark, abstractTheme.colorBorderBrandTertiary?.dark)
        XCTAssertTrue(inheritedTheme.colorBorderBrandTertiary?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandStatusAttractiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandStatusAttractive?.light, abstractTheme.colorBorderBrandStatusAttractive?.light)
        XCTAssertTrue(inheritedTheme.colorBorderBrandStatusAttractive?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandStatusAttractiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandStatusAttractive?.dark, abstractTheme.colorBorderBrandStatusAttractive?.dark)
        XCTAssertTrue(inheritedTheme.colorBorderBrandStatusAttractive?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandStatusWarningLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandStatusWarning?.light, abstractTheme.colorBorderBrandStatusWarning?.light)
        XCTAssertTrue(inheritedTheme.colorBorderBrandStatusWarning?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandStatusWarningDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandStatusWarning?.dark, abstractTheme.colorBorderBrandStatusWarning?.dark)
        XCTAssertTrue(inheritedTheme.colorBorderBrandStatusWarning?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandStatusNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandStatusNegative?.light, abstractTheme.colorBorderBrandStatusNegative?.light)
        XCTAssertTrue(inheritedTheme.colorBorderBrandStatusNegative?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandStatusNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandStatusNegative?.dark, abstractTheme.colorBorderBrandStatusNegative?.dark)
        XCTAssertTrue(inheritedTheme.colorBorderBrandStatusNegative?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandStatusPositiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandStatusPositive?.light, abstractTheme.colorBorderBrandStatusPositive?.light)
        XCTAssertTrue(inheritedTheme.colorBorderBrandStatusPositive?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandStatusPositiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandStatusPositive?.dark, abstractTheme.colorBorderBrandStatusPositive?.dark)
        XCTAssertTrue(inheritedTheme.colorBorderBrandStatusPositive?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandStatusInformationLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandStatusInformation?.light, abstractTheme.colorBorderBrandStatusInformation?.light)
        XCTAssertTrue(inheritedTheme.colorBorderBrandStatusInformation?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandStatusInformationDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandStatusInformation?.dark, abstractTheme.colorBorderBrandStatusInformation?.dark)
        XCTAssertTrue(inheritedTheme.colorBorderBrandStatusInformation?.dark == MockTheme.mockThemeColorRawToken)
    }

    // MARK: - Semantic token - Colors - On background

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundPrimary?.light, abstractTheme.colorOnBackgroundPrimary?.light)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundPrimary?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundPrimary?.dark, abstractTheme.colorOnBackgroundPrimary?.dark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundPrimary?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundSecondaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundSecondary?.light, abstractTheme.colorOnBackgroundSecondary?.light)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundSecondary?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundSecondaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundSecondary?.dark, abstractTheme.colorOnBackgroundSecondary?.dark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundSecondary?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundTertiaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundTertiary?.light, abstractTheme.colorOnBackgroundTertiary?.light)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundTertiary?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundTertiaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundTertiary?.dark, abstractTheme.colorOnBackgroundTertiary?.dark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundTertiary?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusAttractiveMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusAttractiveMuted?.light, abstractTheme.colorOnBackgroundStatusAttractiveMuted?.light)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusAttractiveMuted?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusAttractiveMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusAttractiveMuted?.dark, abstractTheme.colorOnBackgroundStatusAttractiveMuted?.dark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusAttractiveMuted?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusAttractiveEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusAttractiveEmphasized?.light, abstractTheme.colorOnBackgroundStatusAttractiveEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusAttractiveEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusAttractiveEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusAttractiveEmphasized?.dark, abstractTheme.colorOnBackgroundStatusAttractiveEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusAttractiveEmphasized?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusWarningMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusWarningMuted?.light, abstractTheme.colorOnBackgroundStatusWarningMuted?.light)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusWarningMuted?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusWarningMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusWarningMuted?.dark, abstractTheme.colorOnBackgroundStatusWarningMuted?.dark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusWarningMuted?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusWarningEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusWarningEmphasized?.light, abstractTheme.colorOnBackgroundStatusWarningEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusWarningEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusWarningEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusWarningEmphasized?.dark, abstractTheme.colorOnBackgroundStatusWarningEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusWarningEmphasized?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusNegativeMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusNegativeMuted?.light, abstractTheme.colorOnBackgroundStatusNegativeMuted?.light)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusNegativeMuted?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusNegativeMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusNegativeMuted?.dark, abstractTheme.colorOnBackgroundStatusNegativeMuted?.dark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusNegativeMuted?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusNegativeEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusNegativeEmphasized?.light, abstractTheme.colorOnBackgroundStatusNegativeEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusNegativeEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusNegativeEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusNegativeEmphasized?.dark, abstractTheme.colorOnBackgroundStatusNegativeEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusNegativeEmphasized?.dark == MockTheme.mockThemeColorRawToken)
    }

    func ttestInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusPositiveMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusPositiveMuted?.light, abstractTheme.colorOnBackgroundStatusPositiveMuted?.light)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusPositiveMuted?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusPositiveMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusPositiveMuted?.dark, abstractTheme.colorOnBackgroundStatusPositiveMuted?.dark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusPositiveMuted?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusPositiveEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusPositiveEmphasized?.light, abstractTheme.colorOnBackgroundStatusPositiveEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusPositiveEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusPositiveEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusPositiveEmphasized?.dark, abstractTheme.colorOnBackgroundStatusPositiveEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusPositiveEmphasized?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusInformationMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusInformationMuted?.light, abstractTheme.colorOnBackgroundStatusInformationMuted?.light)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusInformationMuted?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusInformationMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusInformationMuted?.dark, abstractTheme.colorOnBackgroundStatusInformationMuted?.dark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusInformationMuted?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusInformationEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusInformationEmphasized?.light, abstractTheme.colorOnBackgroundStatusInformationEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusInformationEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusInformationEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusInformationEmphasized?.dark, abstractTheme.colorOnBackgroundStatusInformationEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusInformationEmphasized?.dark == MockTheme.mockThemeColorRawToken)
    }
}

// swiftlint:enable type_body_length

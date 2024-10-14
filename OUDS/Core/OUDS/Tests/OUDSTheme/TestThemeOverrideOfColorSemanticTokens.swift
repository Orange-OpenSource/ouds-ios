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

import OUDS
import XCTest

// WARNING: Maybe removed in the future or needs to be updated with token generation

// swiftlint:disable type_body_length
// swiftlint:disable line_length
// swiftlint:disable file_length
// swiftlint:disable implicitly_unwrapped_optional
// swiftlint:disable required_deinit

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

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNeutralLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNeutral?.light, abstractTheme.colorBackgroundStatusNeutral?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNeutral?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNeutralDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNeutral?.dark, abstractTheme.colorBackgroundStatusNeutral?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNeutral?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNeutralOnBackgroundEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNeutralOnBackgroundEmphasized?.light, abstractTheme.colorBackgroundStatusNeutralOnBackgroundEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNeutralOnBackgroundEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNeutralOnBackgroundEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNeutralOnBackgroundEmphasized?.dark, abstractTheme.colorBackgroundStatusNeutralOnBackgroundEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNeutralOnBackgroundEmphasized?.dark == MockTheme.mockThemeColorRawToken)
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

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusWarningMutedOnBackgroundEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusWarningMutedOnBackgroundEmphasized?.light, abstractTheme.colorBackgroundStatusWarningMutedOnBackgroundEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusWarningMuted?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusWarningMutedOnBackgroundEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusWarningMutedOnBackgroundEmphasized?.dark, abstractTheme.colorBackgroundStatusWarningMutedOnBackgroundEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusWarningMutedOnBackgroundEmphasized?.dark == MockTheme.mockThemeColorRawToken)
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

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNegativeMutedOnBackgroundEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNegativeMutedOnBackgroundEmphasized?.light, abstractTheme.colorBackgroundStatusNegativeMutedOnBackgroundEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNegativeMutedOnBackgroundEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNegativeMutedOnBackgroundEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNegativeMutedOnBackgroundEmphasized?.dark, abstractTheme.colorBackgroundStatusNegativeMutedOnBackgroundEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNegativeMutedOnBackgroundEmphasized?.dark == MockTheme.mockThemeColorRawToken)
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

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusPositiveMutedOnBackgroundEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusPositiveMutedOnBackgroundEmphasized?.light, abstractTheme.colorBackgroundStatusPositiveMutedOnBackgroundEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusPositiveMutedOnBackgroundEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusPositiveMutedOnBackgroundEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusPositiveMutedOnBackgroundEmphasized?.dark, abstractTheme.colorBackgroundStatusPositiveMutedOnBackgroundEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusPositiveMutedOnBackgroundEmphasized?.dark == MockTheme.mockThemeColorRawToken)
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

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusInformationMutedOnBackgroundEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusInformationMutedOnBackgroundEmphasized?.light, abstractTheme.colorBackgroundStatusInformationMutedOnBackgroundEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusInformationMutedOnBackgroundEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusInformationMutedOnBackgroundEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusInformationMutedOnBackgroundEmphasized?.dark, abstractTheme.colorBackgroundStatusInformationMutedOnBackgroundEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusInformationMutedOnBackgroundEmphasized?.dark == MockTheme.mockThemeColorRawToken)
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

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefaultOnBackgroundBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDefaultOnBackgroundBrandPrimary?.light, abstractTheme.colorContentDefaultOnBackgroundBrandPrimary?.light)
        XCTAssertTrue(inheritedTheme.colorContentDefaultOnBackgroundBrandPrimary?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefaultOnBackgroundBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDefaultOnBackgroundBrandPrimary?.dark, abstractTheme.colorContentDefaultOnBackgroundBrandPrimary?.dark)
        XCTAssertTrue(inheritedTheme.colorContentDefaultOnBackgroundBrandPrimary?.dark == MockTheme.mockThemeColorRawToken)
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

    func testInheritedThemeCanOverrideSemanticTokenColorContentDisabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDisabled?.light, abstractTheme.colorContentDisabled?.light)
        XCTAssertTrue(inheritedTheme.colorContentDisabled?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDisabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDisabled?.dark, abstractTheme.colorContentDisabled?.dark)
        XCTAssertTrue(inheritedTheme.colorContentDisabled?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDisabledOnBackgroundEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDisabledOnBackgroundEmphasized?.light, abstractTheme.colorContentDisabledOnBackgroundEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorContentDisabledOnBackgroundEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDisabledOnBackgroundEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDisabledOnBackgroundEmphasized?.dark, abstractTheme.colorContentDisabledOnBackgroundEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorContentDisabledOnBackgroundEmphasized?.dark == MockTheme.mockThemeColorRawToken)
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

    func testInheritedThemeCanOverrideSemanticTokenColorContentActionEnabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentActionEnabled?.light, abstractTheme.colorContentActionEnabled?.light)
        XCTAssertTrue(inheritedTheme.colorContentActionEnabled?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentActionEnabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentActionEnabled?.dark, abstractTheme.colorContentActionEnabled?.dark)
        XCTAssertTrue(inheritedTheme.colorContentActionEnabled?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentActionEnabledOnBackgroundEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentActionEnabledOnBackgroundEmphasized?.light, abstractTheme.colorContentActionEnabledOnBackgroundEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorContentActionEnabledOnBackgroundEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentActionEnabledOnBackgroundEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentActionEnabledOnBackgroundEmphasized?.dark, abstractTheme.colorContentActionEnabledOnBackgroundEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorContentActionEnabledOnBackgroundEmphasized?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentActionEnabledOnBackgroundStatusExcNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentActionEnabledOnBackgroundStatusExcNegative?.light, abstractTheme.colorContentActionEnabledOnBackgroundStatusExcNegative?.light)
        XCTAssertTrue(inheritedTheme.colorContentActionEnabledOnBackgroundStatusExcNegative?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentActionEnabledOnBackgroundStatusExcNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentActionEnabledOnBackgroundStatusExcNegative?.dark, abstractTheme.colorContentActionEnabledOnBackgroundStatusExcNegative?.dark)
        XCTAssertTrue(inheritedTheme.colorContentActionEnabledOnBackgroundStatusExcNegative?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentActionEnabledOnBackgroundStatusNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentActionEnabledOnBackgroundStatusNegative?.light, abstractTheme.colorContentActionEnabledOnBackgroundStatusNegative?.light)
        XCTAssertTrue(inheritedTheme.colorContentActionEnabledOnBackgroundStatusNegative?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentActionEnabledOnBackgroundStatusNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentActionEnabledOnBackgroundStatusNegative?.dark, abstractTheme.colorContentActionEnabledOnBackgroundStatusNegative?.dark)
        XCTAssertTrue(inheritedTheme.colorContentActionEnabledOnBackgroundStatusNegative?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentActionHoverLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentActionHover?.light, abstractTheme.colorContentActionHover?.light)
        XCTAssertTrue(inheritedTheme.colorContentActionHover?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentActionHoverDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentActionHover?.dark, abstractTheme.colorContentActionHover?.dark)
        XCTAssertTrue(inheritedTheme.colorContentActionHover?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentActionHoverOnBackgroundEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentActionHoverOnBackgroundEmphasized?.light, abstractTheme.colorContentActionHoverOnBackgroundEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorContentActionHoverOnBackgroundEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentActionHoverOnBackgroundEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentActionHoverOnBackgroundEmphasized?.dark, abstractTheme.colorContentActionHoverOnBackgroundEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorContentActionHoverOnBackgroundEmphasized?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentActionHoverOnBackgroundStatusExcNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentActionHoverOnBackgroundStatusExcNegative?.light, abstractTheme.colorContentActionHoverOnBackgroundStatusExcNegative?.light)
        XCTAssertTrue(inheritedTheme.colorContentActionHoverOnBackgroundStatusExcNegative?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentActionHoverOnBackgroundStatusExcNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentActionHoverOnBackgroundStatusExcNegative?.dark, abstractTheme.colorContentActionHoverOnBackgroundStatusExcNegative?.dark)
        XCTAssertTrue(inheritedTheme.colorContentActionHoverOnBackgroundStatusExcNegative?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentActionHoverOnBackgroundStatusNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentActionHoverOnBackgroundStatusNegative?.light, abstractTheme.colorContentActionHoverOnBackgroundStatusNegative?.light)
        XCTAssertTrue(inheritedTheme.colorContentActionHoverOnBackgroundStatusNegative?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentActionHoverOnBackgroundStatusNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentActionHoverOnBackgroundStatusNegative?.dark, abstractTheme.colorContentActionHoverOnBackgroundStatusNegative?.dark)
        XCTAssertTrue(inheritedTheme.colorContentActionHoverOnBackgroundStatusNegative?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentTransparentDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentTransparentDefault?.light, abstractTheme.colorContentTransparentDefault?.light)
        XCTAssertTrue(inheritedTheme.colorContentTransparentDefault?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentTransparentDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentTransparentDefault?.dark, abstractTheme.colorContentTransparentDefault?.dark)
        XCTAssertTrue(inheritedTheme.colorContentTransparentDefault?.dark == MockTheme.mockThemeColorRawToken)
    }

    // TODO: #124 - Add missing colorContentActionPressed* tokens
    // TODO: #124 - Add missing colorContentActionDisabled* tokens
    // TODO: #124 - Add missing colorContentActionFocus* tokens
    // TODO: #124 - Add missing colorContentVisited* tokens
    // TODO: #124 - Add missing colorContentActionSelectionSelected* tokens
    // TODO: #124 - Add missing colorContentActionSelectionHover* tokens
    // TODO: #124 - Add missing colorContentActionSelectionPressed* tokens
    // TODO: #124 - Add missing colorContentActionSelectionSelectedFocus* tokens
    // TODO: #124 - Add missing colorContentActionSelectionUnselected* tokens
    // TODO: #124 - Add missing colorContentActionAlways* tokens

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

    // TODO: #124 - Add missing colorBorderDefaultOnBackgroundBrandPrimary
    // TODO: #124 - Add missing colorBorderDefaultOnBackgroundBrandSecondary
    // TODO: #124 - Add missing colorBorderDefaultOnBackgroundBrandTertiary

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

    func testInheritedThemeCanOverrideSemanticTokenColorBorderTransparentDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderTransparentDefault?.light, abstractTheme.colorBorderTransparentDefault?.light)
        XCTAssertTrue(inheritedTheme.colorBorderTransparentDefault?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderTransparentDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderTransparentDefault?.dark, abstractTheme.colorBorderTransparentDefault?.dark)
        XCTAssertTrue(inheritedTheme.colorBorderTransparentDefault?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionEnabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionEnabled?.light, abstractTheme.colorBackgroundActionEnabled?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionEnabled?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionEnabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionEnabled?.dark, abstractTheme.colorBackgroundActionEnabled?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionEnabled?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionEnabledOnBackgroundEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionEnabledOnBackgroundEmphasized?.light, abstractTheme.colorBackgroundActionEnabledOnBackgroundEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionEnabledOnBackgroundEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionEnabledOnBackgroundEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionEnabled?.dark, abstractTheme.colorBackgroundActionEnabled?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionEnabled?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionEnabledOnBackgroundStatusExcNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionEnabledOnBackgroundStatusExcNegative?.light, abstractTheme.colorBackgroundActionEnabledOnBackgroundStatusExcNegative?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionEnabledOnBackgroundStatusExcNegative?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionEnabledOnBackgroundStatusExcNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionEnabledOnBackgroundStatusExcNegative?.dark, abstractTheme.colorBackgroundActionEnabledOnBackgroundStatusExcNegative?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionEnabledOnBackgroundStatusExcNegative?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionEnabledOnBackgroundStatusNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionEnabledOnBackgroundStatusNegative?.light, abstractTheme.colorBackgroundActionEnabledOnBackgroundStatusNegative?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionEnabledOnBackgroundStatusNegative?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionEnabledOnBackgroundStatusNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionEnabledOnBackgroundStatusNegative?.dark, abstractTheme.colorBackgroundActionEnabledOnBackgroundStatusNegative?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionEnabledOnBackgroundStatusNegative?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionPressedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionPressed?.light, abstractTheme.colorBackgroundActionPressed?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionPressed?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionPressedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionPressed?.dark, abstractTheme.colorBackgroundActionPressed?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionPressed?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionPressedOnBackgroundEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionPressedOnBackgroundEmphasized?.light, abstractTheme.colorBackgroundActionPressedOnBackgroundEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionPressedOnBackgroundEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionPressedOnBackgroundEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionPressedOnBackgroundEmphasized?.dark, abstractTheme.colorBackgroundActionPressedOnBackgroundEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionPressedOnBackgroundEmphasized?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionPressedOnBackgroundStatusExcNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionPressedOnBackgroundStatusExcNegative?.light, abstractTheme.colorBackgroundActionPressedOnBackgroundStatusExcNegative?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionPressedOnBackgroundStatusExcNegative?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionPressedOnBackgroundStatusExcNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionPressedOnBackgroundStatusExcNegative?.dark, abstractTheme.colorBackgroundActionPressedOnBackgroundStatusExcNegative?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionPressedOnBackgroundStatusExcNegative?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionPressedOnBackgroundStautsNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionPressedOnBackgroundStautsNegative?.light, abstractTheme.colorBackgroundActionPressedOnBackgroundStautsNegative?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionPressedOnBackgroundStautsNegative?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionPressedOnBackgroundStautsNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionPressedOnBackgroundStautsNegative?.dark, abstractTheme.colorBackgroundActionPressedOnBackgroundStautsNegative?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionPressedOnBackgroundStautsNegative?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionDisabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionDisabled?.light, abstractTheme.colorBackgroundActionDisabled?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionDisabled?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionDisabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionDisabled?.dark, abstractTheme.colorBackgroundActionDisabled?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionDisabled?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionDisabledOnBackgroundEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionDisabledOnBackgroundEmphasized?.light, abstractTheme.colorBackgroundActionDisabledOnBackgroundEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionDisabledOnBackgroundEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionDisabledOnBackgroundEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionDisabledOnBackgroundEmphasized?.dark, abstractTheme.colorBackgroundActionDisabledOnBackgroundEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionDisabledOnBackgroundEmphasized?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionDisabledOnBackgroundStatusExcNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionDisabledOnBackgroundStatusExcNegative?.light, abstractTheme.colorBackgroundActionDisabledOnBackgroundStatusExcNegative?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionDisabledOnBackgroundStatusExcNegative?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionDisabledOnBackgroundStatusExcNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionDisabledOnBackgroundStatusExcNegative?.dark, abstractTheme.colorBackgroundActionDisabledOnBackgroundStatusExcNegative?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionDisabledOnBackgroundStatusExcNegative?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionDisabledOnBackgroundStatusNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionDisabledOnBackgroundStatusNegative?.light, abstractTheme.colorBackgroundActionDisabledOnBackgroundStatusNegative?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionDisabledOnBackgroundStatusNegative?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionDisabledOnBackgroundStatusNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionDisabledOnBackgroundStatusNegative?.dark, abstractTheme.colorBackgroundActionDisabledOnBackgroundStatusNegative?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionDisabledOnBackgroundStatusNegative?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionFocus?.light, abstractTheme.colorBackgroundActionFocus?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionFocus?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionFocus?.dark, abstractTheme.colorBackgroundActionFocus?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionFocus?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionFocusOnBackgroundEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionFocusOnBackgroundEmphasized?.light, abstractTheme.colorBackgroundActionFocusOnBackgroundEmphasized?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionFocusOnBackgroundEmphasized?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionFocusOnBackgroundEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionFocusOnBackgroundEmphasized?.dark, abstractTheme.colorBackgroundActionFocusOnBackgroundEmphasized?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionFocusOnBackgroundEmphasized?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionFocusOnBackgroundStatusExcNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionFocusOnBackgroundStatusExcNegative?.light, abstractTheme.colorBackgroundActionFocusOnBackgroundStatusExcNegative?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionFocusOnBackgroundStatusExcNegative?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionFocusOnBackgroundStatusExcNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionFocusOnBackgroundStatusExcNegative?.dark, abstractTheme.colorBackgroundActionFocusOnBackgroundStatusExcNegative?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionFocusOnBackgroundStatusExcNegative?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionFocusOnBackgroundStatusNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionFocusOnBackgroundStatusNegative?.light, abstractTheme.colorBackgroundActionFocusOnBackgroundStatusNegative?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionFocusOnBackgroundStatusNegative?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundActionFocusOnBackgroundStatusNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundActionFocusOnBackgroundStatusNegative?.dark, abstractTheme.colorBackgroundActionFocusOnBackgroundStatusNegative?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundActionFocusOnBackgroundStatusNegative?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundAlwaysBlackLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundAlwaysBlack?.light, abstractTheme.colorBackgroundAlwaysBlack?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundAlwaysBlack?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundAlwaysBlackDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundAlwaysBlack?.dark, abstractTheme.colorBackgroundAlwaysBlack?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundAlwaysBlack?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundAlwaysWhiteLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundAlwaysWhite?.light, abstractTheme.colorBackgroundAlwaysWhite?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundAlwaysWhite?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundAlwaysWhiteDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundAlwaysWhite?.dark, abstractTheme.colorBackgroundAlwaysWhite?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundAlwaysWhite?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundAlwaysAttractiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundAlwaysAttractive?.light, abstractTheme.colorBackgroundAlwaysAttractive?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundAlwaysAttractive?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundAlwaysAttractiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundAlwaysAttractive?.dark, abstractTheme.colorBackgroundAlwaysAttractive?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundAlwaysAttractive?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundAlwaysWarningLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundAlwaysWarning?.light, abstractTheme.colorBackgroundAlwaysWarning?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundAlwaysWarning?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundAlwaysWarningDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundAlwaysWarning?.dark, abstractTheme.colorBackgroundAlwaysWarning?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundAlwaysWarning?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundAlwaysNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundAlwaysNegative?.light, abstractTheme.colorBackgroundAlwaysNegative?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundAlwaysNegative?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundAlwaysNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundAlwaysNegative?.dark, abstractTheme.colorBackgroundAlwaysNegative?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundAlwaysNegative?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundAlwaysPositiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundAlwaysPositive?.light, abstractTheme.colorBackgroundAlwaysPositive?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundAlwaysPositive?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundAlwaysPositiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundAlwaysPositive?.dark, abstractTheme.colorBackgroundAlwaysPositive?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundAlwaysPositive?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundAlwaysInformationLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundAlwaysInformation?.light, abstractTheme.colorBackgroundAlwaysInformation?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundAlwaysInformation?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundAlwaysInformationDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundAlwaysInformation?.dark, abstractTheme.colorBackgroundAlwaysInformation?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundAlwaysInformation?.dark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundTransparentDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundTransparentDefault?.light, abstractTheme.colorBackgroundTransparentDefault?.light)
        XCTAssertTrue(inheritedTheme.colorBackgroundTransparentDefault?.light == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundTransparentDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundTransparentDefault?.dark, abstractTheme.colorBackgroundTransparentDefault?.dark)
        XCTAssertTrue(inheritedTheme.colorBackgroundTransparentDefault?.dark == MockTheme.mockThemeColorRawToken)
    }

    // TODO: #124 - Add missing colorBorderActionEnabled*
    // TODO: #124 - Add missing colorBorderActionHover*
    // TODO: #124 - Add missing colorBorderActionPressed*
    // TODO: #124 - Add missing colorBorderActionDisabled*
    // TODO: #124 - Add missing colorBorderActionFocus*
    // TODO: #124 - Add missing colorBorderSelectionSelected*
    // TODO: #124 - Add missing colorBorderSelectionUnselected*
    // TODO: #124 - Add missing colorBorderAlways*
    // TODO: #124 - Add missing colorBorderOutside
    // TODO: #124 - Add missing colorOnBackgroundStatusAttractive*
    // TODO: #124 - Add missing colorOnBackgroundStatusWarning*
    // TODO: #124 - Add missing colorOnBackgroundStatusNegative*
    // TODO: #124 - Add missing colorOnBackgroundStatusPositive*
    // TODO: #124 - Add missing colorOnBackgroundStatusInformation*
    // TODO: #124 - Add missing colorOnBackgroundActionEnabled*
    // TODO: #124 - Add missing colorOnBackgroundActionHover*
    // TODO: #124 - Add missing colorOnBackgroundActionPressed*
    // TODO: #124 - Add missing colorOnBackgroundActionDisabled*
    // TODO: #124 - Add missing colorOnBackgroundActionFocus*
    // TODO: #124 - Add missing colorOnBackgroundActionAlways*
    // TODO: #124 - Add missing colorElevation*
    // TODO: #124 - Add missing colorDecorativeBrand*
    // TODO: #124 - Add missing colorDecorativeNeutral*
    // TODO: #124 - Add missing colorDecorativeAccent*
    // TODO: #124 - Add missing colorDecorativeSkin*
    // TODO: #124 - Add missing colorChart*
}

// swiftlint:enable type_body_length
// swiftlint:enable line_length
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable required_deinit

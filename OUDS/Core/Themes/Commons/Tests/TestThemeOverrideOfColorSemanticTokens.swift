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
import OUDSThemesCommons

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

    // MARK: - Semantic token - Colors - Alias - Neutral - Emphasis

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNeutralEmphasisLowest() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNeutralEmphasisLowest, abstractTheme.sysColorBrandNeutralEmphasisLowest)
        XCTAssertTrue(inheritedTheme.sysColorBrandNeutralEmphasisLowest == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNeutralEmphasisLower() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNeutralEmphasisLower, abstractTheme.sysColorBrandNeutralEmphasisLower)
        XCTAssertTrue(inheritedTheme.sysColorBrandNeutralEmphasisLower == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNeutralEmphasisLow() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNeutralEmphasisLow, abstractTheme.sysColorBrandNeutralEmphasisLow)
        XCTAssertTrue(inheritedTheme.sysColorBrandNeutralEmphasisLow == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNeutralEmphasisMedium() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNeutralEmphasisMedium, abstractTheme.sysColorBrandNeutralEmphasisMedium)
        XCTAssertTrue(inheritedTheme.sysColorBrandNeutralEmphasisMedium == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNeutralEmphasisHigh() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNeutralEmphasisHigh, abstractTheme.sysColorBrandNeutralEmphasisHigh)
        XCTAssertTrue(inheritedTheme.sysColorBrandNeutralEmphasisHigh == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNeutralEmphasisHigher() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNeutralEmphasisHigher, abstractTheme.sysColorBrandNeutralEmphasisHigher)
        XCTAssertTrue(inheritedTheme.sysColorBrandNeutralEmphasisHigher == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNeutralEmphasisHighest() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNeutralEmphasisHighest, abstractTheme.sysColorBrandNeutralEmphasisHighest)
        XCTAssertTrue(inheritedTheme.sysColorBrandNeutralEmphasisHighest == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSysColorBrandNeutralEmphasisBlack() throws {
        XCTAssertNotEqual(inheritedTheme.sysColorBrandNeutralEmphasisBlack, abstractTheme.sysColorBrandNeutralEmphasisBlack)
        XCTAssertTrue(inheritedTheme.sysColorBrandNeutralEmphasisBlack == MockTheme.mockThemeColorRawToken)
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
        XCTAssertNotEqual(inheritedTheme.colorBackgroundDefaultPrimaryLight, abstractTheme.colorBackgroundDefaultPrimaryLight)
        XCTAssertTrue(inheritedTheme.colorBackgroundDefaultPrimaryLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundDefaultPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundDefaultPrimaryDark, abstractTheme.colorBackgroundDefaultPrimaryDark)
        XCTAssertTrue(inheritedTheme.colorBackgroundDefaultPrimaryDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundDefaultSecondaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundDefaultSecondaryLight, abstractTheme.colorBackgroundDefaultSecondaryLight)
        XCTAssertTrue(inheritedTheme.colorBackgroundDefaultSecondaryLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundDefaultSecondaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundDefaultSecondaryDark, abstractTheme.colorBackgroundDefaultSecondaryDark)
        XCTAssertTrue(inheritedTheme.colorBackgroundDefaultSecondaryDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundDefaultTertiaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundDefaultTertiaryLight, abstractTheme.colorBackgroundDefaultTertiaryLight)
        XCTAssertTrue(inheritedTheme.colorBackgroundDefaultTertiaryLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundDefaultTertiaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundDefaultTertiaryDark, abstractTheme.colorBackgroundDefaultTertiaryDark)
        XCTAssertTrue(inheritedTheme.colorBackgroundDefaultTertiaryDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundEmphasisPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundEmphasisPrimaryLight, abstractTheme.colorBackgroundEmphasisPrimaryLight)
        XCTAssertTrue(inheritedTheme.colorBackgroundEmphasisPrimaryLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundEmphasisPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundEmphasisPrimaryDark, abstractTheme.colorBackgroundEmphasisPrimaryDark)
        XCTAssertTrue(inheritedTheme.colorBackgroundEmphasisPrimaryDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundEmphasisSecondaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundEmphasisSecondaryLight, abstractTheme.colorBackgroundEmphasisSecondaryLight)
        XCTAssertTrue(inheritedTheme.colorBackgroundEmphasisSecondaryLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundEmphasisSecondaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundEmphasisSecondaryDark, abstractTheme.colorBackgroundEmphasisSecondaryDark)
        XCTAssertTrue(inheritedTheme.colorBackgroundEmphasisSecondaryDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundBrandPrimaryLight, abstractTheme.colorBackgroundBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colorBackgroundBrandPrimaryLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundBrandPrimaryDark, abstractTheme.colorBackgroundBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colorBackgroundBrandPrimaryDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundBrandSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundBrandSecondary, abstractTheme.colorBackgroundBrandSecondary)
        XCTAssertTrue(inheritedTheme.colorBackgroundBrandSecondary == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundBrandTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundBrandTertiary, abstractTheme.colorBackgroundBrandTertiary)
        XCTAssertTrue(inheritedTheme.colorBackgroundBrandTertiary == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusAttractiveMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusAttractiveMutedLight, abstractTheme.colorBackgroundStatusAttractiveMutedLight)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusAttractiveMutedLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusAttractiveMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusAttractiveMutedDark, abstractTheme.colorBackgroundStatusAttractiveMutedDark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusAttractiveMutedDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusAttractiveEmphasisLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusAttractiveEmphasisLight, abstractTheme.colorBackgroundStatusAttractiveEmphasisLight)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusAttractiveEmphasisLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusAttractiveEmphasisDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusAttractiveEmphasisDark, abstractTheme.colorBackgroundStatusAttractiveEmphasisDark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusAttractiveEmphasisDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusWarningMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusWarningMutedLight, abstractTheme.colorBackgroundStatusWarningMutedLight)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusWarningMutedLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusWarningMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusWarningMutedDark, abstractTheme.colorBackgroundStatusWarningMutedDark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusWarningMutedDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusWarningEmphasisLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusWarningEmphasisLight, abstractTheme.colorBackgroundStatusWarningEmphasisLight)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusWarningEmphasisLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusWarningEmphasisDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusWarningEmphasisDark, abstractTheme.colorBackgroundStatusWarningEmphasisDark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusWarningEmphasisDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNegativeMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNegativeMutedLight, abstractTheme.colorBackgroundStatusNegativeMutedLight)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNegativeMutedLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNegativeMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNegativeMutedDark, abstractTheme.colorBackgroundStatusNegativeMutedDark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNegativeMutedDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNegativeEmphasisLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNegativeEmphasisLight, abstractTheme.colorBackgroundStatusNegativeEmphasisLight)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNegativeEmphasisLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNegativeEmphasisDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNegativeEmphasisDark, abstractTheme.colorBackgroundStatusNegativeEmphasisDark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNegativeEmphasisDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusPositiveMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusPositiveMutedLight, abstractTheme.colorBackgroundStatusPositiveMutedLight)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusPositiveMutedLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusPositiveMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusPositiveMutedDark, abstractTheme.colorBackgroundStatusPositiveMutedDark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusPositiveMutedDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusPositiveEmphasisLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusPositiveEmphasisLight, abstractTheme.colorBackgroundStatusPositiveEmphasisLight)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusPositiveEmphasisLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusPositiveEmphasisDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusPositiveEmphasisDark, abstractTheme.colorBackgroundStatusPositiveEmphasisDark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusPositiveEmphasisDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusInformationMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusInformationMutedLight, abstractTheme.colorBackgroundStatusInformationMutedLight)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusInformationMutedLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusInformationMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusInformationMutedDark, abstractTheme.colorBackgroundStatusInformationMutedDark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusInformationMutedDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusInformationEmphasisLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusInformationEmphasisLight, abstractTheme.colorBackgroundStatusInformationEmphasisLight)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusInformationEmphasisLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusInformationEmphasisDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusInformationEmphasisDark, abstractTheme.colorBackgroundStatusInformationEmphasisDark)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusInformationEmphasisDark == MockTheme.mockThemeColorRawToken)
    }

    // MARK: - Semantic token - Colors - Content

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDefaultLight, abstractTheme.colorContentDefaultLight)
        XCTAssertTrue(inheritedTheme.colorContentDefaultLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDefaultDark, abstractTheme.colorContentDefaultDark)
        XCTAssertTrue(inheritedTheme.colorContentDefaultDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefaultOnBackgroundEmphasisLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDefaultOnBackgroundEmphasisLight, abstractTheme.colorContentDefaultOnBackgroundEmphasisLight)
        XCTAssertTrue(inheritedTheme.colorContentDefaultOnBackgroundEmphasisLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefaultOnBackgroundEmphasisDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDefaultOnBackgroundEmphasisDark, abstractTheme.colorContentDefaultOnBackgroundEmphasisDark)
        XCTAssertTrue(inheritedTheme.colorContentDefaultOnBackgroundEmphasisDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentMutedLight, abstractTheme.colorContentMutedLight)
        XCTAssertTrue(inheritedTheme.colorContentMutedLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentMutedDark, abstractTheme.colorContentMutedDark)
        XCTAssertTrue(inheritedTheme.colorContentMutedDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMutedOnBackgroundEmphasisLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentMutedOnBackgroundEmphasisLight, abstractTheme.colorContentMutedOnBackgroundEmphasisLight)
        XCTAssertTrue(inheritedTheme.colorContentMutedOnBackgroundEmphasisLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMutedOnBackgroundEmphasisDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentMutedOnBackgroundEmphasisDark, abstractTheme.colorContentMutedOnBackgroundEmphasisDark)
        XCTAssertTrue(inheritedTheme.colorContentMutedOnBackgroundEmphasisDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandPrimaryLight, abstractTheme.colorContentBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colorContentBrandPrimaryLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandPrimaryDark, abstractTheme.colorContentBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colorContentBrandPrimaryDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandPrimaryOnBackgroundEmphasisLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandPrimaryOnBackgroundEmphasisLight, abstractTheme.colorContentBrandPrimaryOnBackgroundEmphasisLight)
        XCTAssertTrue(inheritedTheme.colorContentBrandPrimaryOnBackgroundEmphasisLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandPrimaryOnBackgroundEmphasisDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandPrimaryOnBackgroundEmphasisDark, abstractTheme.colorContentBrandPrimaryOnBackgroundEmphasisDark)
        XCTAssertTrue(inheritedTheme.colorContentBrandPrimaryOnBackgroundEmphasisDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandSecondaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandSecondaryLight, abstractTheme.colorContentBrandSecondaryLight)
        XCTAssertTrue(inheritedTheme.colorContentBrandSecondaryLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandSecondaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandSecondaryDark, abstractTheme.colorContentBrandSecondaryDark)
        XCTAssertTrue(inheritedTheme.colorContentBrandSecondaryDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandTertiaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandTertiaryLight, abstractTheme.colorContentBrandTertiaryLight)
        XCTAssertTrue(inheritedTheme.colorContentBrandTertiaryLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandTertiaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandTertiaryDark, abstractTheme.colorContentBrandTertiaryDark)
        XCTAssertTrue(inheritedTheme.colorContentBrandTertiaryDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusAttractiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusAttractiveLight, abstractTheme.colorContentStatusAttractiveLight)
        XCTAssertTrue(inheritedTheme.colorContentStatusAttractiveLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusAttractiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusAttractiveDark, abstractTheme.colorContentStatusAttractiveDark)
        XCTAssertTrue(inheritedTheme.colorContentStatusAttractiveDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusNegativeLight, abstractTheme.colorContentStatusNegativeLight)
        XCTAssertTrue(inheritedTheme.colorContentStatusNegativeLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusNegativeDark, abstractTheme.colorContentStatusNegativeDark)
        XCTAssertTrue(inheritedTheme.colorContentStatusNegativeDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusPositiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusPositiveLight, abstractTheme.colorContentStatusPositiveLight)
        XCTAssertTrue(inheritedTheme.colorContentStatusPositiveLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusPositiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusPositiveDark, abstractTheme.colorContentStatusPositiveDark)
        XCTAssertTrue(inheritedTheme.colorContentStatusPositiveDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusInformationLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusInformationLight, abstractTheme.colorContentStatusInformationLight)
        XCTAssertTrue(inheritedTheme.colorContentStatusInformationLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusInformationDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusInformationDark, abstractTheme.colorContentStatusInformationDark)
        XCTAssertTrue(inheritedTheme.colorContentStatusInformationDark == MockTheme.mockThemeColorRawToken)
    }

    // MARK: - Semantic token - Colors - Border

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderDefaultLight, abstractTheme.colorBorderDefaultLight)
        XCTAssertTrue(inheritedTheme.colorBorderDefaultLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderDefaultDark, abstractTheme.colorBorderDefaultDark)
        XCTAssertTrue(inheritedTheme.colorBorderDefaultDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefaultOnBackgroundEmphasisLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderDefaultOnBackgroundEmphasisLight, abstractTheme.colorBorderDefaultOnBackgroundEmphasisLight)
        XCTAssertTrue(inheritedTheme.colorBorderDefaultOnBackgroundEmphasisLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefaultOnBackgroundEmphasisDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderDefaultOnBackgroundEmphasisDark, abstractTheme.colorBorderDefaultOnBackgroundEmphasisDark)
        XCTAssertTrue(inheritedTheme.colorBorderDefaultOnBackgroundEmphasisDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasisLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderEmphasisLight, abstractTheme.colorBorderEmphasisLight)
        XCTAssertTrue(inheritedTheme.colorBorderEmphasisLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasisDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderEmphasisDark, abstractTheme.colorBorderEmphasisDark)
        XCTAssertTrue(inheritedTheme.colorBorderEmphasisDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasisOnBackgroundEmphasisLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderEmphasisOnBackgroundEmphasisLight, abstractTheme.colorBorderEmphasisOnBackgroundEmphasisLight)
        XCTAssertTrue(inheritedTheme.colorBorderEmphasisOnBackgroundEmphasisLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasisOnBackgroundEmphasisDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderEmphasisOnBackgroundEmphasisDark, abstractTheme.colorBorderEmphasisOnBackgroundEmphasisDark)
        XCTAssertTrue(inheritedTheme.colorBorderEmphasisOnBackgroundEmphasisDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandPrimaryLight, abstractTheme.colorBorderBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colorBorderBrandPrimaryLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandPrimaryDark, abstractTheme.colorBorderBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colorBorderBrandPrimaryDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryOnBackgroundEmphasisLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandPrimaryOnBackgroundEmphasisLight, abstractTheme.colorBorderBrandPrimaryOnBackgroundEmphasisLight)
        XCTAssertTrue(inheritedTheme.colorBorderBrandPrimaryOnBackgroundEmphasisLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryOnBackgroundEmphasisDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandPrimaryOnBackgroundEmphasisDark, abstractTheme.colorBorderBrandPrimaryOnBackgroundEmphasisDark)
        XCTAssertTrue(inheritedTheme.colorBorderBrandPrimaryOnBackgroundEmphasisDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandSecondaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandSecondaryLight, abstractTheme.colorBorderBrandSecondaryLight)
        XCTAssertTrue(inheritedTheme.colorBorderBrandSecondaryLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandSecondaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandSecondaryDark, abstractTheme.colorBorderBrandSecondaryDark)
        XCTAssertTrue(inheritedTheme.colorBorderBrandSecondaryDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandTertiaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandTertiaryLight, abstractTheme.colorBorderBrandTertiaryLight)
        XCTAssertTrue(inheritedTheme.colorBorderBrandTertiaryLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandTertiaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandTertiaryDark, abstractTheme.colorBorderBrandTertiaryDark)
        XCTAssertTrue(inheritedTheme.colorBorderBrandTertiaryDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandStatusAttractiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandStatusAttractiveLight, abstractTheme.colorBorderBrandStatusAttractiveLight)
        XCTAssertTrue(inheritedTheme.colorBorderBrandStatusAttractiveLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandStatusAttractiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandStatusAttractiveDark, abstractTheme.colorBorderBrandStatusAttractiveDark)
        XCTAssertTrue(inheritedTheme.colorBorderBrandStatusAttractiveDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandStatusWarningLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandStatusWarningLight, abstractTheme.colorBorderBrandStatusWarningLight)
        XCTAssertTrue(inheritedTheme.colorBorderBrandStatusWarningLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandStatusWarningDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandStatusWarningDark, abstractTheme.colorBorderBrandStatusWarningDark)
        XCTAssertTrue(inheritedTheme.colorBorderBrandStatusWarningDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandStatusNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandStatusNegativeLight, abstractTheme.colorBorderBrandStatusNegativeLight)
        XCTAssertTrue(inheritedTheme.colorBorderBrandStatusNegativeLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandStatusNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandStatusNegativeDark, abstractTheme.colorBorderBrandStatusNegativeDark)
        XCTAssertTrue(inheritedTheme.colorBorderBrandStatusNegativeDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandStatusPositiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandStatusPositiveLight, abstractTheme.colorBorderBrandStatusPositiveLight)
        XCTAssertTrue(inheritedTheme.colorBorderBrandStatusPositiveLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandStatusPositiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandStatusPositiveDark, abstractTheme.colorBorderBrandStatusPositiveDark)
        XCTAssertTrue(inheritedTheme.colorBorderBrandStatusPositiveDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandStatusInformationLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandStatusInformationLight, abstractTheme.colorBorderBrandStatusInformationLight)
        XCTAssertTrue(inheritedTheme.colorBorderBrandStatusInformationLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandStatusInformationDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandStatusInformationDark, abstractTheme.colorBorderBrandStatusInformationDark)
        XCTAssertTrue(inheritedTheme.colorBorderBrandStatusInformationDark == MockTheme.mockThemeColorRawToken)
    }

    // MARK: - Semantic token - Colors - On background

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundPrimaryLight, abstractTheme.colorOnBackgroundPrimaryLight)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundPrimaryLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundPrimaryDark, abstractTheme.colorOnBackgroundPrimaryDark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundPrimaryDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundSecondaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundSecondaryLight, abstractTheme.colorOnBackgroundSecondaryLight)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundSecondaryLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundSecondaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundSecondaryDark, abstractTheme.colorOnBackgroundSecondaryDark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundSecondaryDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundTertiaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundTertiaryLight, abstractTheme.colorOnBackgroundTertiaryLight)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundTertiaryLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundTertiaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundTertiaryDark, abstractTheme.colorOnBackgroundTertiaryDark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundTertiaryDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusAttractiveMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusAttractiveMutedLight, abstractTheme.colorOnBackgroundStatusAttractiveMutedLight)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusAttractiveMutedLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusAttractiveMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusAttractiveMutedDark, abstractTheme.colorOnBackgroundStatusAttractiveMutedDark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusAttractiveMutedDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusAttractiveEmphasisLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusAttractiveEmphasisLight, abstractTheme.colorOnBackgroundStatusAttractiveEmphasisLight)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusAttractiveEmphasisLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusAttractiveEmphasisDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusAttractiveEmphasisDark, abstractTheme.colorOnBackgroundStatusAttractiveEmphasisDark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusAttractiveEmphasisDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusWarningMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusWarningMutedLight, abstractTheme.colorOnBackgroundStatusWarningMutedLight)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusWarningMutedLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusWarningMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusWarningMutedDark, abstractTheme.colorOnBackgroundStatusWarningMutedDark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusWarningMutedDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusWarningEmphasisLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusWarningEmphasisLight, abstractTheme.colorOnBackgroundStatusWarningEmphasisLight)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusWarningEmphasisLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusWarningEmphasisDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusWarningEmphasisDark, abstractTheme.colorOnBackgroundStatusWarningEmphasisDark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusWarningEmphasisDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusNegativeMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusNegativeMutedLight, abstractTheme.colorOnBackgroundStatusNegativeMutedLight)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusNegativeMutedLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusNegativeMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusNegativeMutedDark, abstractTheme.colorOnBackgroundStatusNegativeMutedDark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusNegativeMutedDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusNegativeEmphasisLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusNegativeEmphasisLight, abstractTheme.colorOnBackgroundStatusNegativeEmphasisLight)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusNegativeEmphasisLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusNegativeEmphasisDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusNegativeEmphasisDark, abstractTheme.colorOnBackgroundStatusNegativeEmphasisDark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusNegativeEmphasisDark == MockTheme.mockThemeColorRawToken)
    }

    func ttestInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusPositiveMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusPositiveMutedLight, abstractTheme.colorOnBackgroundStatusPositiveMutedLight)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusPositiveMutedLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusPositiveMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusPositiveMutedDark, abstractTheme.colorOnBackgroundStatusPositiveMutedDark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusPositiveMutedDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusPositiveEmphasisLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusPositiveEmphasisLight, abstractTheme.colorOnBackgroundStatusPositiveEmphasisLight)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusPositiveEmphasisLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusPositiveEmphasisDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusPositiveEmphasisDark, abstractTheme.colorOnBackgroundStatusPositiveEmphasisDark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusPositiveEmphasisDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusInformationMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusInformationMutedLight, abstractTheme.colorOnBackgroundStatusInformationMutedLight)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusInformationMutedLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusInformationMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusInformationMutedDark, abstractTheme.colorOnBackgroundStatusInformationMutedDark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusInformationMutedDark == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusInformationEmphasisLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusInformationEmphasisLight, abstractTheme.colorOnBackgroundStatusInformationEmphasisLight)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusInformationEmphasisLight == MockTheme.mockThemeColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOnBackgroundStatusInformationEmphasisDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorOnBackgroundStatusInformationEmphasisDark, abstractTheme.colorOnBackgroundStatusInformationEmphasisDark)
        XCTAssertTrue(inheritedTheme.colorOnBackgroundStatusInformationEmphasisDark == MockTheme.mockThemeColorRawToken)
    }
}

// swiftlint:enable type_body_length

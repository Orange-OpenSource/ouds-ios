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
import OUDSThemesShared
import OUDSThemesInverse

/// `InverseTheme` is a quite particular theme with "inverse" color palette. Is it neuther a light mode theme nor a dark mode theme.
/// This "inverse" mode as colors which, for a given semantic token, has the same value for both light and dark mode.
final class TestInverseThemeColors: XCTestCase {

    private var inverseTheme: OUDSTheme!

    override func setUp() async throws {
        inverseTheme = InverseTheme()
    }

    func testColorsEquality() throws {
        XCTAssertEqual(inverseTheme.colorBackgroundDefaultPrimaryLight, inverseTheme.colorBackgroundDefaultPrimaryDark)
        XCTAssertEqual(inverseTheme.colorBackgroundDefaultSecondaryLight, inverseTheme.colorBackgroundDefaultSecondaryDark)
        XCTAssertEqual(inverseTheme.colorBackgroundDefaultTertiaryLight, inverseTheme.colorBackgroundDefaultTertiaryDark)
        XCTAssertEqual(inverseTheme.colorBackgroundEmphasisPrimaryLight, inverseTheme.colorBackgroundEmphasisPrimaryDark)
        XCTAssertEqual(inverseTheme.colorBackgroundEmphasisSecondaryLight, inverseTheme.colorBackgroundEmphasisSecondaryDark)
        XCTAssertEqual(inverseTheme.colorBackgroundBrandPrimaryLight, inverseTheme.colorBackgroundBrandPrimaryDark)
        XCTAssertEqual(inverseTheme.colorBackgroundStatusAttractiveMutedLight, inverseTheme.colorBackgroundStatusAttractiveMutedDark)
        XCTAssertEqual(inverseTheme.colorBackgroundStatusAttractiveEmphasisLight, inverseTheme.colorBackgroundStatusAttractiveEmphasisDark)
        XCTAssertEqual(inverseTheme.colorBackgroundStatusWarningMutedLight, inverseTheme.colorBackgroundStatusWarningMutedDark)
        XCTAssertEqual(inverseTheme.colorBackgroundStatusWarningEmphasisLight, inverseTheme.colorBackgroundStatusWarningEmphasisDark)
        XCTAssertEqual(inverseTheme.colorBackgroundStatusNegativeMutedLight, inverseTheme.colorBackgroundStatusNegativeMutedDark)
        XCTAssertEqual(inverseTheme.colorBackgroundStatusNegativeEmphasisLight, inverseTheme.colorBackgroundStatusNegativeEmphasisDark)
        XCTAssertEqual(inverseTheme.colorBackgroundStatusPositiveMutedLight, inverseTheme.colorBackgroundStatusPositiveMutedDark)
        XCTAssertEqual(inverseTheme.colorBackgroundStatusPositiveEmphasisLight, inverseTheme.colorBackgroundStatusPositiveEmphasisDark)
        XCTAssertEqual(inverseTheme.colorBackgroundStatusInformationMutedLight, inverseTheme.colorBackgroundStatusInformationMutedDark)
        XCTAssertEqual(inverseTheme.colorBackgroundStatusInformationEmphasisLight, inverseTheme.colorBackgroundStatusInformationEmphasisDark)
        XCTAssertEqual(inverseTheme.colorContentDefaultLight, inverseTheme.colorContentDefaultDark)
        XCTAssertEqual(inverseTheme.colorContentDefaultOnBackgroundEmphasisLight, inverseTheme.colorContentDefaultOnBackgroundEmphasisDark)
        XCTAssertEqual(inverseTheme.colorContentMutedLight, inverseTheme.colorContentMutedDark)
        XCTAssertEqual(inverseTheme.colorContentMutedOnBackgroundEmphasisLight, inverseTheme.colorContentMutedOnBackgroundEmphasisDark)
        XCTAssertEqual(inverseTheme.colorContentBrandPrimaryLight, inverseTheme.colorContentBrandPrimaryDark)
        XCTAssertEqual(inverseTheme.colorContentBrandPrimaryOnBackgroundEmphasisLight, inverseTheme.colorContentBrandPrimaryOnBackgroundEmphasisDark)
        XCTAssertEqual(inverseTheme.colorContentStatusNegativeLight, inverseTheme.colorContentStatusNegativeDark)
        XCTAssertEqual(inverseTheme.colorContentStatusPositiveLight, inverseTheme.colorContentStatusPositiveDark)
        XCTAssertEqual(inverseTheme.colorContentStatusInformationLight, inverseTheme.colorContentStatusInformationDark)
        XCTAssertEqual(inverseTheme.colorBorderDefaultLight, inverseTheme.colorBorderDefaultDark)
        XCTAssertEqual(inverseTheme.colorBorderDefaultOnBackgroundEmphasisLight, inverseTheme.colorBorderDefaultOnBackgroundEmphasisDark)
        XCTAssertEqual(inverseTheme.colorBorderEmphasisLight, inverseTheme.colorBorderEmphasisDark)
        XCTAssertEqual(inverseTheme.colorBorderEmphasisOnBackgroundEmphasisLight, inverseTheme.colorBorderEmphasisOnBackgroundEmphasisDark)
        XCTAssertEqual(inverseTheme.colorBorderBrandPrimaryLight, inverseTheme.colorBorderBrandPrimaryDark)
        XCTAssertEqual(inverseTheme.colorBorderBrandPrimaryOnBackgroundEmphasisLight, inverseTheme.colorBorderBrandPrimaryOnBackgroundEmphasisDark)
        XCTAssertEqual(inverseTheme.colorOnBackgroundPrimaryLight, inverseTheme.colorOnBackgroundPrimaryDark)
        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusAttractiveMutedLight, inverseTheme.colorOnBackgroundStatusAttractiveMutedDark)
        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusAttractiveEmphasisLight, inverseTheme.colorOnBackgroundStatusAttractiveEmphasisDark)
        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusWarningMutedLight, inverseTheme.colorOnBackgroundStatusWarningMutedDark)
        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusWarningEmphasisLight, inverseTheme.colorOnBackgroundStatusWarningEmphasisDark)
        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusNegativeMutedLight, inverseTheme.colorOnBackgroundStatusNegativeMutedDark)
        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusNegativeEmphasisLight, inverseTheme.colorOnBackgroundStatusNegativeEmphasisDark)
        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusPositiveMutedLight, inverseTheme.colorOnBackgroundStatusPositiveMutedDark)
        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusPositiveEmphasisLight, inverseTheme.colorOnBackgroundStatusPositiveEmphasisDark)
        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusInformationMutedLight, inverseTheme.colorOnBackgroundStatusInformationMutedDark)
        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusInformationEmphasisLight, inverseTheme.colorOnBackgroundStatusInformationEmphasisDark)
    }
}

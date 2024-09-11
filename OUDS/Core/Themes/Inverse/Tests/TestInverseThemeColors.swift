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
        XCTAssertEqual(inverseTheme.colorBackgroundEmphasizedPrimaryLight, inverseTheme.colorBackgroundEmphasizedPrimaryDark)
        XCTAssertEqual(inverseTheme.colorBackgroundEmphasizedSecondaryLight, inverseTheme.colorBackgroundEmphasizedSecondaryDark)
        XCTAssertEqual(inverseTheme.colorBackgroundBrandPrimaryLight, inverseTheme.colorBackgroundBrandPrimaryDark)
        XCTAssertEqual(inverseTheme.colorBackgroundStatusAttractiveMutedLight, inverseTheme.colorBackgroundStatusAttractiveMutedDark)
        XCTAssertEqual(inverseTheme.colorBackgroundStatusAttractiveEmphasizedLight, inverseTheme.colorBackgroundStatusAttractiveEmphasizedDark)
        XCTAssertEqual(inverseTheme.colorBackgroundStatusWarningMutedLight, inverseTheme.colorBackgroundStatusWarningMutedDark)
        XCTAssertEqual(inverseTheme.colorBackgroundStatusWarningEmphasizedLight, inverseTheme.colorBackgroundStatusWarningEmphasizedDark)
        XCTAssertEqual(inverseTheme.colorBackgroundStatusNegativeMutedLight, inverseTheme.colorBackgroundStatusNegativeMutedDark)
        XCTAssertEqual(inverseTheme.colorBackgroundStatusNegativeEmphasizedLight, inverseTheme.colorBackgroundStatusNegativeEmphasizedDark)
        XCTAssertEqual(inverseTheme.colorBackgroundStatusPositiveMutedLight, inverseTheme.colorBackgroundStatusPositiveMutedDark)
        XCTAssertEqual(inverseTheme.colorBackgroundStatusPositiveEmphasizedLight, inverseTheme.colorBackgroundStatusPositiveEmphasizedDark)
        XCTAssertEqual(inverseTheme.colorBackgroundStatusInformationMutedLight, inverseTheme.colorBackgroundStatusInformationMutedDark)
        XCTAssertEqual(inverseTheme.colorBackgroundStatusInformationEmphasizedLight, inverseTheme.colorBackgroundStatusInformationEmphasizedDark)
        XCTAssertEqual(inverseTheme.colorContentDefaultLight, inverseTheme.colorContentDefaultDark)
        XCTAssertEqual(inverseTheme.colorContentDefaultOnBackgroundEmphasizedLight, inverseTheme.colorContentDefaultOnBackgroundEmphasizedDark)
        XCTAssertEqual(inverseTheme.colorContentMutedLight, inverseTheme.colorContentMutedDark)
        XCTAssertEqual(inverseTheme.colorContentMutedOnBackgroundEmphasizedLight, inverseTheme.colorContentMutedOnBackgroundEmphasizedDark)
        XCTAssertEqual(inverseTheme.colorContentBrandPrimaryLight, inverseTheme.colorContentBrandPrimaryDark)
        XCTAssertEqual(inverseTheme.colorContentBrandPrimaryOnBackgroundEmphasizedLight, inverseTheme.colorContentBrandPrimaryOnBackgroundEmphasizedDark)
        XCTAssertEqual(inverseTheme.colorContentStatusNegativeLight, inverseTheme.colorContentStatusNegativeDark)
        XCTAssertEqual(inverseTheme.colorContentStatusPositiveLight, inverseTheme.colorContentStatusPositiveDark)
        XCTAssertEqual(inverseTheme.colorContentStatusInformationLight, inverseTheme.colorContentStatusInformationDark)
        XCTAssertEqual(inverseTheme.colorBorderDefaultLight, inverseTheme.colorBorderDefaultDark)
        XCTAssertEqual(inverseTheme.colorBorderDefaultOnBackgroundEmphasizedLight, inverseTheme.colorBorderDefaultOnBackgroundEmphasizedDark)
        XCTAssertEqual(inverseTheme.colorBorderEmphasizedLight, inverseTheme.colorBorderEmphasizedDark)
        XCTAssertEqual(inverseTheme.colorBorderEmphasizedOnBackgroundEmphasizedLight, inverseTheme.colorBorderEmphasizedOnBackgroundEmphasizedDark)
        XCTAssertEqual(inverseTheme.colorBorderBrandPrimaryLight, inverseTheme.colorBorderBrandPrimaryDark)
        XCTAssertEqual(inverseTheme.colorBorderBrandPrimaryOnBackgroundEmphasizedLight, inverseTheme.colorBorderBrandPrimaryOnBackgroundEmphasizedDark)
        XCTAssertEqual(inverseTheme.colorOnBackgroundPrimaryLight, inverseTheme.colorOnBackgroundPrimaryDark)
        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusAttractiveMutedLight, inverseTheme.colorOnBackgroundStatusAttractiveMutedDark)
        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusAttractiveEmphasizedLight, inverseTheme.colorOnBackgroundStatusAttractiveEmphasizedDark)
        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusWarningMutedLight, inverseTheme.colorOnBackgroundStatusWarningMutedDark)
        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusWarningEmphasizedLight, inverseTheme.colorOnBackgroundStatusWarningEmphasizedDark)
        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusNegativeMutedLight, inverseTheme.colorOnBackgroundStatusNegativeMutedDark)
        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusNegativeEmphasizedLight, inverseTheme.colorOnBackgroundStatusNegativeEmphasizedDark)
        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusPositiveMutedLight, inverseTheme.colorOnBackgroundStatusPositiveMutedDark)
        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusPositiveEmphasizedLight, inverseTheme.colorOnBackgroundStatusPositiveEmphasizedDark)
        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusInformationMutedLight, inverseTheme.colorOnBackgroundStatusInformationMutedDark)
        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusInformationEmphasizedLight, inverseTheme.colorOnBackgroundStatusInformationEmphasizedDark)
    }
}

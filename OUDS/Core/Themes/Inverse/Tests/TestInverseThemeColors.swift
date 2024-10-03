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

    // TODO: #124 - Split in as many fuctions, and define XCTAssertIdempotence
    
    func testColorsEquality() throws {
        XCTAssertEqual(inverseTheme.colorBackgroundDefaultPrimary!.light, inverseTheme.colorBackgroundDefaultPrimary!.dark)

        XCTAssertEqual(inverseTheme.colorBackgroundDefaultSecondary!.light, inverseTheme.colorBackgroundDefaultSecondary!.dark)

        XCTAssertEqual(inverseTheme.colorBackgroundDefaultTertiary!.light, inverseTheme.colorBackgroundDefaultTertiary!.dark)

        XCTAssertEqual(inverseTheme.colorBackgroundEmphasizedPrimary!.light, inverseTheme.colorBackgroundEmphasizedPrimary!.dark)

        XCTAssertEqual(inverseTheme.colorBackgroundBrandPrimary!.light, inverseTheme.colorBackgroundBrandPrimary!.dark)

        XCTAssertEqual(inverseTheme.colorBackgroundStatusNeutral!.light, inverseTheme.colorBackgroundStatusNeutral!.dark)
        
        XCTAssertEqual(inverseTheme.colorBackgroundStatusNeutralOnBackgroundEmphasized!.light, inverseTheme.colorBackgroundStatusNeutralOnBackgroundEmphasized!.dark)
        
        XCTAssertEqual(inverseTheme.colorBackgroundStatusAttractiveMuted!.light, inverseTheme.colorBackgroundStatusAttractiveMuted!.dark)

        XCTAssertEqual(inverseTheme.colorBackgroundStatusAttractiveEmphasized!.light, inverseTheme.colorBackgroundStatusAttractiveEmphasized!.dark)

        XCTAssertEqual(inverseTheme.colorBackgroundStatusWarningMuted!.light, inverseTheme.colorBackgroundStatusWarningMuted!.dark)

        XCTAssertEqual(inverseTheme.colorBackgroundStatusWarningMutedOnBackgroundEmphasized!.light, inverseTheme.colorBackgroundStatusWarningMutedOnBackgroundEmphasized!.dark)
        
        XCTAssertEqual(inverseTheme.colorBackgroundStatusWarningEmphasized!.light, inverseTheme.colorBackgroundStatusWarningEmphasized!.dark)

        XCTAssertEqual(inverseTheme.colorBackgroundStatusNegativeMuted!.light, inverseTheme.colorBackgroundStatusNegativeMuted!.dark)

        XCTAssertEqual(inverseTheme.colorBackgroundStatusNegativeMutedOnBackgroundEmphasized!.light, inverseTheme.colorBackgroundStatusNegativeMutedOnBackgroundEmphasized!.dark)
        
        XCTAssertEqual(inverseTheme.colorBackgroundStatusNegativeEmphasized!.light, inverseTheme.colorBackgroundStatusNegativeEmphasized!.dark)

        XCTAssertEqual(inverseTheme.colorBackgroundStatusPositiveMuted!.light, inverseTheme.colorBackgroundStatusPositiveMuted!.dark)

        XCTAssertEqual(inverseTheme.colorBackgroundStatusPositiveEmphasized!.light, inverseTheme.colorBackgroundStatusPositiveEmphasized!.dark)

        XCTAssertEqual(inverseTheme.colorBackgroundStatusInformationMuted!.light, inverseTheme.colorBackgroundStatusInformationMuted!.dark)

        XCTAssertEqual(inverseTheme.colorBackgroundStatusInformationEmphasized!.light, inverseTheme.colorBackgroundStatusInformationEmphasized!.dark)

        XCTAssertEqual(inverseTheme.colorContentDefault!.light, inverseTheme.colorContentDefault!.dark)

        XCTAssertEqual(inverseTheme.colorContentDefaultOnBackgroundEmphasized!.light, inverseTheme.colorContentDefaultOnBackgroundEmphasized!.dark)

        XCTAssertEqual(inverseTheme.colorContentMuted!.light, inverseTheme.colorContentMuted!.dark)

        XCTAssertEqual(inverseTheme.colorContentMutedOnBackgroundEmphasized!.light, inverseTheme.colorContentMutedOnBackgroundEmphasized!.dark)

        XCTAssertEqual(inverseTheme.colorContentBrandPrimary!.light, inverseTheme.colorContentBrandPrimary!.dark)

        XCTAssertEqual(inverseTheme.colorContentBrandPrimaryOnBackgroundEmphasized!.light, inverseTheme.colorContentBrandPrimaryOnBackgroundEmphasized!.dark)

        XCTAssertEqual(inverseTheme.colorContentStatusNegative!.light, inverseTheme.colorContentStatusNegative!.dark)

        XCTAssertEqual(inverseTheme.colorContentStatusPositive!.light, inverseTheme.colorContentStatusPositive!.dark)

        XCTAssertEqual(inverseTheme.colorContentStatusInformation!.light, inverseTheme.colorContentStatusInformation!.dark)

        XCTAssertEqual(inverseTheme.colorBorderDefault!.light, inverseTheme.colorBorderDefault!.dark)

        XCTAssertEqual(inverseTheme.colorBorderDefaultOnBackgroundEmphasized!.light, inverseTheme.colorBorderDefaultOnBackgroundEmphasized!.dark)

        XCTAssertEqual(inverseTheme.colorBorderEmphasized!.light, inverseTheme.colorBorderEmphasized!.dark)

        XCTAssertEqual(inverseTheme.colorBorderEmphasizedOnBackgroundEmphasized!.light, inverseTheme.colorBorderEmphasizedOnBackgroundEmphasized!.dark)

        XCTAssertEqual(inverseTheme.colorBorderBrandPrimary!.light, inverseTheme.colorBorderBrandPrimary!.dark)

        XCTAssertEqual(inverseTheme.colorBorderBrandPrimaryOnBackgroundEmphasized!.light, inverseTheme.colorBorderBrandPrimaryOnBackgroundEmphasized!.dark)

        XCTAssertEqual(inverseTheme.colorOnBackgroundPrimary!.light, inverseTheme.colorOnBackgroundPrimary!.dark)

        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusAttractiveMuted!.light, inverseTheme.colorOnBackgroundStatusAttractiveMuted!.dark)

        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusAttractiveEmphasized!.light, inverseTheme.colorOnBackgroundStatusAttractiveEmphasized!.dark)

        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusWarningMuted!.light, inverseTheme.colorOnBackgroundStatusWarningMuted!.dark)

        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusWarningEmphasized!.light, inverseTheme.colorOnBackgroundStatusWarningEmphasized!.dark)

        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusNegativeMuted!.light, inverseTheme.colorOnBackgroundStatusNegativeMuted!.dark)

        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusNegativeEmphasized!.light, inverseTheme.colorOnBackgroundStatusNegativeEmphasized!.dark)

        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusPositiveMuted!.light, inverseTheme.colorOnBackgroundStatusPositiveMuted!.dark)

        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusPositiveEmphasized!.light, inverseTheme.colorOnBackgroundStatusPositiveEmphasized!.dark)

        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusInformationMuted!.light, inverseTheme.colorOnBackgroundStatusInformationMuted!.dark)

        XCTAssertEqual(inverseTheme.colorOnBackgroundStatusInformationEmphasized!.light, inverseTheme.colorOnBackgroundStatusInformationEmphasized!.dark)
    }
}

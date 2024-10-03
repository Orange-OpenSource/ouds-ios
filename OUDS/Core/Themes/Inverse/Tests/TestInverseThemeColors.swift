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
import OUDSThemesInverse
import OUDSTokensSemantic
import XCTest

/// `InverseTheme` is a quite particular theme with "inverse" color palette. Is it neuther a light mode theme nor a dark mode theme.
/// This "inverse" mode as colors which, for a given semantic token, has the same value for both light and dark mode.
final class TestInverseThemeColors: XCTestCase {

    private var inverseTheme: OUDSTheme!

    override func setUp() async throws {
        inverseTheme = InverseTheme()
    }

    private func assertHomogeneity(_ value: ColorSemanticToken?) {
        XCTAssertEqual(value!.light, value!.dark)
    }

    // MARK: - Test cases

    func testColorsHomogeneityBackgroundDefaultPrimary() throws {
        assertHomogeneity(inverseTheme.colorBackgroundDefaultPrimary)
    }

    func testColorsHomogeneityBackgroundDefaultSecondary() throws {
        assertHomogeneity(inverseTheme.colorBackgroundDefaultSecondary)
    }

    func testColorsHomogeneityBackgroundDefaultTertiary() throws {
        assertHomogeneity(inverseTheme.colorBackgroundDefaultTertiary)
    }

    func testColorsHomogeneityBackgroundEmphasizedPrimary() throws {
        assertHomogeneity(inverseTheme.colorBackgroundEmphasizedPrimary)
    }

    func testColorsHomogeneityBackgroundBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colorBackgroundBrandPrimary)
    }

    func testColorsHomogeneityBackgroundStatusNeutral() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusNeutral)
    }

    func testColorsHomogeneityBackgroundStatusNeutralOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusNeutralOnBackgroundEmphasized)
    }

    func testColorsHomogeneityBackgroundStatusAttractiveMuted() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusAttractiveMuted)
    }

    func testColorsHomogeneityBackgroundStatusAttractiveEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusAttractiveEmphasized)
    }

    func testColorsHomogeneityBackgroundStatusWarningMuted() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusWarningMuted)
    }

    func testColorsHomogeneityBackgroundStatusWarningMutedOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusWarningMutedOnBackgroundEmphasized)
    }

    func testColorsHomogeneityBackgroundStatusWarningEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusWarningEmphasized)
    }

    func testColorsHomogeneityBackgroundStatusNegativeMuted() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusNegativeMuted)
    }

    func testColorsHomogeneityBackgroundStatusNegativeMutedOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusNegativeMutedOnBackgroundEmphasized)
    }

    func testColorsHomogeneityBackgroundStatusNegativeEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusNegativeEmphasized)
    }

    func testColorsHomogeneityBackgroundStatusPositiveMuted() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusPositiveMuted)
    }

    func testColorsHomogeneityBackgroundStatusPositiveEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusPositiveEmphasized)
    }

    func testColorsHomogeneityBackgroundStatusInformationMuted() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusInformationMuted)
    }

    func testColorsHomogeneityBackgroundStatusInformationEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusInformationEmphasized)
    }

    func testColorsHomogeneityContentDefault() throws {
        assertHomogeneity(inverseTheme.colorContentDefault)
    }

    func testColorsHomogeneityContentDefaultOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorContentDefaultOnBackgroundEmphasized)
    }

    func testColorsHomogeneityContentMuted() throws {
        assertHomogeneity(inverseTheme.colorContentMuted)
    }

    func testColorsHomogeneityContentMutedOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorContentMutedOnBackgroundEmphasized)
    }

    func testColorsHomogeneityContentBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colorContentBrandPrimary)
    }

    func testColorsHomogeneityContentBrandPrimaryOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorContentBrandPrimaryOnBackgroundEmphasized)
    }

    func testColorsHomogeneityContentStatusNegative() throws {
        assertHomogeneity(inverseTheme.colorContentStatusNegative)
    }

    func testColorsHomogeneityContentStatusPositive() throws {
        assertHomogeneity(inverseTheme.colorContentStatusPositive)
    }

    func testColorsHomogeneityContentStatusInformation() throws {
        assertHomogeneity(inverseTheme.colorContentStatusInformation)
    }

    func testColorsHomogeneityBorderDefault() throws {
        assertHomogeneity(inverseTheme.colorBorderDefault)
    }

    func testColorsHomogeneityBorderDefaultOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBorderDefaultOnBackgroundEmphasized)
    }

    func testColorsHomogeneityBorderEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBorderEmphasized)
    }

    func testColorsHomogeneityBorderEmphasizedOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBorderEmphasizedOnBackgroundEmphasized)
    }

    func testColorsHomogeneityBorderBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colorBorderBrandPrimary)
    }

    func testColorsHomogeneityBorderBrandPrimaryOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBorderBrandPrimaryOnBackgroundEmphasized)
    }

    func testColorsHomogeneityBackgroundActionEnabled() throws {
        assertHomogeneity(inverseTheme.colorBackgroundActionEnabled)
    }

    func testColorsHomogeneityBackgroundActionEnabledOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBackgroundActionEnabledOnBackgroundEmphasized)
    }

    func testColorsHomogeneityBackgroundActionEnabledOnBackgroundStatusExcNegative() throws {
        assertHomogeneity(inverseTheme.colorBackgroundActionEnabledOnBackgroundStatusExcNegative)
    }

    func testColorsHomogeneityBackgroundActionEnabledOnBackgroundStatusNegative() throws {
        assertHomogeneity(inverseTheme.colorBackgroundActionEnabledOnBackgroundStatusNegative)
    }

    func testColorsHomogeneityActionPressed() {
        assertHomogeneity(inverseTheme.colorBackgroundActionPressed)
    }

    func testColorsHomogeneityActionPressedOnBackgroundEmphasized() {
        assertHomogeneity(inverseTheme.colorBackgroundActionPressedOnBackgroundEmphasized)
    }

    func testColorsHomogeneityActionPressedOnBackgroundStatusExcNegative() {
        assertHomogeneity(inverseTheme.colorBackgroundActionPressedOnBackgroundStatusExcNegative)
    }

    func testColorsHomogeneityActionPressedOnBackgroundStatusNegative() {
        assertHomogeneity(inverseTheme.colorBackgroundActionPressedOnBackgroundStautsNegative)
    }

    func testColorsHomogeneityActionDisabled() {
        assertHomogeneity(inverseTheme.colorBackgroundActionDisabled)
    }

    func testColorsHomogeneityActionDisabledOnBackgroundEmphasized() {
        assertHomogeneity(inverseTheme.colorBackgroundActionDisabledOnBackgroundEmphasized)
    }

    func testColorsHomogeneityActionDisabledOnBackgroundStatusExcNegative() {
        assertHomogeneity(inverseTheme.colorBackgroundActionDisabledOnBackgroundStatusExcNegative)
    }

    func testColorsHomogeneityActionDisabledOnBackgroundStatusNegative() {
        assertHomogeneity(inverseTheme.colorBackgroundActionDisabledOnBackgroundStatusNegative)
    }

    /*
        TODO: #124
        WARNING: Some color semantic tokens are missing because of Figma synchronization issues.
        Thus tests cases are missing, we need to add hundreds of tokens and tests for:
        - color background
        - color braground awlways
        - color content
        - color border
        - color on background
        - color elevation
        - color decorative
        - color chart
    */
}

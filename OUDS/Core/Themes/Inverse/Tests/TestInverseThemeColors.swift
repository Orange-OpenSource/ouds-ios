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

    func testColorsHomogeneityContentDefaultOnBackgroundBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colorContentDefaultOnBackgroundBrandPrimary)
    }

    func testColorsHomogeneityContentMuted() throws {
        assertHomogeneity(inverseTheme.colorContentMuted)
    }

    func testColorsHomogeneityContentMutedOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorContentMutedOnBackgroundEmphasized)
    }

    func testColorsHomogeneityContentDisabled() {
        assertHomogeneity(inverseTheme.colorContentDisabled)
    }

    func testColorsHomogeneityContentDisabledOnBackgroundEmphasized() {
        assertHomogeneity(inverseTheme.colorContentDisabledOnBackgroundEmphasized)
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

    func testColorsHomogeneityContentActionEnabled() {
        assertHomogeneity(inverseTheme.colorContentActionEnabled)
    }

    func testColorsHomogeneityContentActionEnabledOnBackgroundEmphasized() {
        assertHomogeneity(inverseTheme.colorContentActionEnabledOnBackgroundEmphasized)
    }

    func testColorsHomogeneityContentActionEnabledOnBackgroundStatusExcNegative() {
        assertHomogeneity(inverseTheme.colorContentActionEnabledOnBackgroundStatusExcNegative)
    }

    func testColorsHomogeneityContentActionEnabledOnBackgroundStatusNegative() {
        assertHomogeneity(inverseTheme.colorContentActionEnabledOnBackgroundStatusNegative)
    }

    func testColorsHomogeneityContentActionHover() {
        assertHomogeneity(inverseTheme.colorContentActionHover)
    }

    func testColorsHomogeneityContentActionHoverOnBackgroundEmphasized() {
        assertHomogeneity(inverseTheme.colorContentActionHoverOnBackgroundEmphasized)
    }

    func testColorsHomogeneityContentActionHoverOnBackgroundStatusExcNegative() {
        assertHomogeneity(inverseTheme.colorContentActionHoverOnBackgroundStatusExcNegative)
    }

    func testColorsHomogeneityContentActionHoverOnBackgroundStatusNegative() {
        assertHomogeneity(inverseTheme.colorContentActionHoverOnBackgroundStatusNegative)
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

    func testColorsHomogeneityBorderDefault() throws {
        assertHomogeneity(inverseTheme.colorBorderDefault)
    }

    func testColorsHomogeneityBorderDefaultOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBorderDefaultOnBackgroundEmphasized)
    }

    // TODO: #124 - Add missing colorBorderDefaultOnBackgroundBrandPrimary
    // TODO: #124 - Add missing colorBorderDefaultOnBackgroundBrandSecondary
    // TODO: #124 - Add missing colorBorderDefaultOnBackgroundBrandTertiary

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

    func testColorsHomogeneityActionFocus() {
        assertHomogeneity(inverseTheme.colorBackgroundActionFocus)
    }

    func testColorsHomogeneityActionFocusOnBackgroundEmphasized() {
        assertHomogeneity(inverseTheme.colorBackgroundActionFocusOnBackgroundEmphasized)
    }

    func testColorsHomogeneityActionFocusOnBackgroundStatusExcNegative() {
        assertHomogeneity(inverseTheme.colorBackgroundActionFocusOnBackgroundStatusExcNegative)
    }

    func testColorsHomogeneityActionFocusOnBackgroundStatusNegative() {
        assertHomogeneity(inverseTheme.colorBackgroundActionFocusOnBackgroundStatusNegative)
    }

    func testColorsHomogeneityBackgroundAlwaysBlack() {
        assertHomogeneity(inverseTheme.colorBackgroundAlwaysBlack)
    }

    func testColorsHomogeneityBackgroundAlwaysWhite() {
        assertHomogeneity(inverseTheme.colorBackgroundAlwaysWhite)
    }

    func testColorsHomogeneityBackgroundAlwaysAttractive() {
        assertHomogeneity(inverseTheme.colorBackgroundAlwaysAttractive)
    }

    func testColorsHomogeneityBackgroundAlwaysWarning() {
        assertHomogeneity(inverseTheme.colorBackgroundAlwaysWarning)
    }

    func testColorsHomogeneityBackgroundAlwaysNegative() {
        assertHomogeneity(inverseTheme.colorBackgroundAlwaysNegative)
    }

    func testColorsHomogeneityBackgroundAlwaysPositive() {
        assertHomogeneity(inverseTheme.colorBackgroundAlwaysPositive)
    }

    func testColorsHomogeneityBackgroundAlwaysInformation() {
        assertHomogeneity(inverseTheme.colorBackgroundAlwaysInformation)
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

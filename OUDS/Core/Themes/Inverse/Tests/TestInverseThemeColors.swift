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

// swiftlint:disable required_deinit
// swiftlint:disable implicitly_unwrapped_optional
// swiftlint:disable type_body_length
// swiftlint:disable file_length

/// `InverseTheme` is a quite particular theme with "inverse" color palette. Is it neuther a light mode theme nor a dark mode theme.
/// This "inverse" mode as colors which, for a given semantic token, has the same value for both light and dark mode.
final class TestInverseThemeColors: XCTestCase {

    private var inverseTheme: OUDSTheme!

    override func setUp() async throws {
        inverseTheme = InverseTheme()
    }

    private func assertHomogeneity(_ value: MultipleColorSemanticTokens) {
        XCTAssertEqual(value.light, value.dark)
    }

    // MARK: - Test cases

    func testColorsHomogeneityColorOpacityInvisibleBlack() throws {
        assertHomogeneity(inverseTheme.colorOpacityInvisibleBlack)
    }

    func testColorsHomogeneityColorOpacityInvisibleWhite() throws {
        assertHomogeneity(inverseTheme.colorOpacityInvisibleWhite)
    }

    // MARK: - Color - Action

    func testColorsHomogeneityColorActionDisabled() throws {
        assertHomogeneity(inverseTheme.colorActionDisabled)
    }

    func testColorsHomogeneityColorActionEnabled() throws {
        assertHomogeneity(inverseTheme.colorActionEnabled)
    }

    func testColorsHomogeneityColorActionFocus() throws {
        assertHomogeneity(inverseTheme.colorActionFocus)
    }

    func testColorsHomogeneityColorActionHighlighted() throws {
        assertHomogeneity(inverseTheme.colorActionHighlighted)
    }

    func testColorsHomogeneityColorActionHover() throws {
        assertHomogeneity(inverseTheme.colorActionHover)
    }

    func testColorsHomogeneityColorActionLoading() throws {
        assertHomogeneity(inverseTheme.colorActionLoading)
    }

    func testColorsHomogeneityColorActionNegativeEnabled() throws {
        assertHomogeneity(inverseTheme.colorActionNegativeEnabled)
    }

    func testColorsHomogeneityColorActionNegativeFocus() throws {
        assertHomogeneity(inverseTheme.colorActionNegativeFocus)
    }

    func testColorsHomogeneityColorActionNegativeHover() throws {
        assertHomogeneity(inverseTheme.colorActionNegativeHover)
    }

    func testColorsHomogeneityColorActionNegativeLoading() throws {
        assertHomogeneity(inverseTheme.colorActionNegativeLoading)
    }

    func testColorsHomogeneityColorActionNegativePressed() throws {
        assertHomogeneity(inverseTheme.colorActionNegativePressed)
    }

    func testColorsHomogeneityColorActionPressed() throws {
        assertHomogeneity(inverseTheme.colorActionPressed)
    }

    func testColorsHomogeneityColorActionSelected() throws {
        assertHomogeneity(inverseTheme.colorActionSelected)
    }

    func testColorsHomogeneityColorActionSupportEnabled() throws {
        assertHomogeneity(inverseTheme.colorActionSupportEnabled)
    }

    func testColorsHomogeneityColorActionSupportFocus() throws {
        assertHomogeneity(inverseTheme.colorActionSupportFocus)
    }

    func testColorsHomogeneityColorActionSupportHover() throws {
        assertHomogeneity(inverseTheme.colorActionSupportHover)
    }

    func testColorsHomogeneityColorActionSupportLoading() throws {
        assertHomogeneity(inverseTheme.colorActionSupportLoading)
    }

    func testColorsHomogeneityColorActionSupportPressed() throws {
        assertHomogeneity(inverseTheme.colorActionSupportPressed)
    }

    func testColorsHomogeneityColorActionVisited() throws {
        assertHomogeneity(inverseTheme.colorActionVisited)
    }

    // MARK: - Color - Always

    func testColorsHomogeneityColorAlwaysBlack() throws {
        assertHomogeneity(inverseTheme.colorAlwaysBlack)
    }

    func testColorsHomogeneityColorAlwaysOnBlack() throws {
        assertHomogeneity(inverseTheme.colorAlwaysOnBlack)
    }

    func testColorsHomogeneityColorAlwaysOnWhite() throws {
        assertHomogeneity(inverseTheme.colorAlwaysOnWhite)
    }

    func testColorsHomogeneityColorAlwaysWhite() throws {
        assertHomogeneity(inverseTheme.colorAlwaysWhite)
    }

    // MARK: - Color - Background

    func testColorsHomogeneityColorBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBgEmphasized)
    }

    func testColorsHomogeneityColorBgPrimary() throws {
        assertHomogeneity(inverseTheme.colorBgPrimary)
    }

    func testColorsHomogeneityColorBgSecondary() throws {
        assertHomogeneity(inverseTheme.colorBgSecondary)
    }

    func testColorsHomogeneityColorBgTertiary() throws {
        assertHomogeneity(inverseTheme.colorBgTertiary)
    }

    // MARK: - Color - Border

    func testColorsHomogeneityColorBorderBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colorBorderBrandPrimary)
    }

    func testColorsHomogeneityColorBorderDefault() throws {
        assertHomogeneity(inverseTheme.colorBorderDefault)
    }

    func testColorsHomogeneityColorBorderEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBorderEmphasized)
    }

    func testColorsHomogeneityColorBorderFocus() throws {
        assertHomogeneity(inverseTheme.colorBorderFocus)
    }

    func testColorsHomogeneityColorBorderFocusInset() throws {
        assertHomogeneity(inverseTheme.colorBorderFocusInset)
    }

    func testColorsHomogeneityColorBorderOnBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colorBorderOnBrandPrimary)
    }

    // MARK: - Color - Content

    func testColorsHomogeneityColorContentBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colorContentBrandPrimary)
    }

    func testColorsHomogeneityColorContentDefault() throws {
        assertHomogeneity(inverseTheme.colorContentDefault)
    }

    func testColorsHomogeneityColorContentDisabled() throws {
        assertHomogeneity(inverseTheme.colorContentDisabled)
    }

    func testColorsHomogeneityColorContentMuted() throws {
        assertHomogeneity(inverseTheme.colorContentMuted)
    }

    func testColorsHomogeneityColorContentOnActionDisabled() throws {
        assertHomogeneity(inverseTheme.colorContentOnActionDisabled)
    }

    func testColorsHomogeneityColorContentOnActionEnabled() throws {
        assertHomogeneity(inverseTheme.colorContentOnActionEnabled)
    }

    func testColorsHomogeneityColorContentOnActionFocus() throws {
        assertHomogeneity(inverseTheme.colorContentOnActionFocus)
    }

    func testColorsHomogeneityColorContentOnActionHighlighted() throws {
        assertHomogeneity(inverseTheme.colorContentOnActionHighlighted)
    }

    func testColorsHomogeneityColorContentOnActionHover() throws {
        assertHomogeneity(inverseTheme.colorContentOnActionHover)
    }

    func testColorsHomogeneityColorContentOnActionLoading() throws {
        assertHomogeneity(inverseTheme.colorContentOnActionLoading)
    }

    func testColorsHomogeneityColorContentOnActionNegative() throws {
        assertHomogeneity(inverseTheme.colorContentOnActionNegative)
    }

    func testColorsHomogeneityColorContentOnActionPressed() throws {
        assertHomogeneity(inverseTheme.colorContentOnActionPressed)
    }

    func testColorsHomogeneityColorContentOnBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colorContentOnBrandPrimary)
    }

    func testColorsHomogeneityColorContentOnOverlayEmphasized() throws {
        assertHomogeneity(inverseTheme.colorContentOnOverlayEmphasized)
    }

    func testColorsHomogeneityColorContentOnStatusEmphasized() throws {
        assertHomogeneity(inverseTheme.colorContentOnStatusEmphasized)
    }

    func testColorsHomogeneityColorContentOnStatusEmphasizedNeutral() throws {
        assertHomogeneity(inverseTheme.colorContentOnStatusEmphasizedNeutral)
    }

    func testColorsHomogeneityColorContentOnStatusMuted() throws {
        assertHomogeneity(inverseTheme.colorContentOnStatusMuted)
    }

    func testColorsHomogeneityColorContentStatusInfo() throws {
        assertHomogeneity(inverseTheme.colorContentStatusInfo)
    }

    func testColorsHomogeneityColorContentStatusNegative() throws {
        assertHomogeneity(inverseTheme.colorContentStatusNegative)
    }

    func testColorsHomogeneityColorContentStatusPositive() throws {
        assertHomogeneity(inverseTheme.colorContentStatusPositive)
    }

    func testColorsHomogeneityColorContentStatusWarning() throws {
        assertHomogeneity(inverseTheme.colorContentStatusWarning)
    }

    // MARK: - Color - Overlay

    func testColorsHomogeneityColorOverlayDefault() throws {
        assertHomogeneity(inverseTheme.colorOverlayDefault)
    }

    func testColorsHomogeneityColorOverlayDrag() throws {
        assertHomogeneity(inverseTheme.colorOverlayDrag)
    }

    func testColorsHomogeneityColorOverlayEmphasized() throws {
        assertHomogeneity(inverseTheme.colorOverlayEmphasized)
    }

    func testColorsHomogeneityColorOverlayModal() throws {
        assertHomogeneity(inverseTheme.colorOverlayModal)
    }

    // MARK: - Color - Surface

    func testColorsHomogeneityColorSurfaceBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colorSurfaceBrandPrimary)
    }

    func testColorsHomogeneityColorSurfaceStatusAccentEmphasized() throws {
        assertHomogeneity(inverseTheme.colorSurfaceStatusAccentEmphasized)
    }

    func testColorsHomogeneityColorSurfaceStatusAccentMuted() throws {
        assertHomogeneity(inverseTheme.colorSurfaceStatusAccentMuted)
    }

    func testColorsHomogeneityColorSurfaceStatusInfoEmphasized() throws {
        assertHomogeneity(inverseTheme.colorSurfaceStatusInfoEmphasized)
    }

    func testColorsHomogeneityColorSurfaceStatusInfoMuted() throws {
        assertHomogeneity(inverseTheme.colorSurfaceStatusInfoMuted)
    }

    func testColorsHomogeneityColorSurfaceStatusNegativeEmphasized() throws {
        assertHomogeneity(inverseTheme.colorSurfaceStatusNegativeEmphasized)
    }

    func testColorsHomogeneityColorSurfaceStatusNegativeMuted() throws {
        assertHomogeneity(inverseTheme.colorSurfaceStatusNegativeMuted)
    }

    func testColorsHomogeneityColorSurfaceStatusNeutralEmphasized() throws {
        assertHomogeneity(inverseTheme.colorSurfaceStatusNeutralEmphasized)
    }

    func testColorsHomogeneityColorSurfaceStatusNeutralMuted() throws {
        assertHomogeneity(inverseTheme.colorSurfaceStatusNeutralMuted)
    }

    func testColorsHomogeneityColorSurfaceStatusPositiveEmphasized() throws {
        assertHomogeneity(inverseTheme.colorSurfaceStatusPositiveEmphasized)
    }

    func testColorsHomogeneityColorSurfaceStatusPositiveMuted() throws {
        assertHomogeneity(inverseTheme.colorSurfaceStatusPositiveMuted)
    }

    func testColorsHomogeneityColorSurfaceStatusWarningEmphasized() throws {
        assertHomogeneity(inverseTheme.colorSurfaceStatusWarningEmphasized)
    }

    func testColorsHomogeneityColorSurfaceStatusWarningMuted() throws {
        assertHomogeneity(inverseTheme.colorSurfaceStatusWarningMuted)
    }

    // MARK: - Color - Decorative

    func testColorsHomogeneityColorDecorativeAccent1Default() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent1Default)
    }

    func testColorsHomogeneityColorDecorativeAccent1Emphasized() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent1Emphasized)
    }

    func testColorsHomogeneityColorDecorativeAccent1Muted() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent1Muted)
    }

    func testColorsHomogeneityColorDecorativeAccent2Default() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent2Default)
    }

    func testColorsHomogeneityColorDecorativeAccent2Emphasized() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent2Emphasized)
    }

    func testColorsHomogeneityColorDecorativeAccent2Muted() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent2Muted)
    }

    func testColorsHomogeneityColorDecorativeAccent3Default() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent3Default)
    }

    func testColorsHomogeneityColorDecorativeAccent3Emphasized() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent3Emphasized)
    }

    func testColorsHomogeneityColorDecorativeAccent3Muted() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent3Muted)
    }

    func testColorsHomogeneityColorDecorativeAccent4Default() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent4Default)
    }

    func testColorsHomogeneityColorDecorativeAccent4Emphasized() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent4Emphasized)
    }

    func testColorsHomogeneityColorDecorativeAccent4Muted() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent4Muted)
    }

    func testColorsHomogeneityColorDecorativeAccent5Default() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent5Default)
    }

    func testColorsHomogeneityColorDecorativeAccent5Emphasized() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent5Emphasized)
    }

    func testColorsHomogeneityColorDecorativeAccent5Muted() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent5Muted)
    }

    func testColorsHomogeneityColorDecorativeBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colorDecorativeBrandPrimary)
    }

    func testColorsHomogeneityColorDecorativeBrandSecondary() throws {
        assertHomogeneity(inverseTheme.colorDecorativeBrandSecondary)
    }

    func testColorsHomogeneityColorDecorativeBrandTertiary() throws {
        assertHomogeneity(inverseTheme.colorDecorativeBrandTertiary)
    }

    func testColorsHomogeneityColorDecorativeNeutralDefault() throws {
        assertHomogeneity(inverseTheme.colorDecorativeNeutralDefault)
    }

    func testColorsHomogeneityColorDecorativeNeutralEmphasized() throws {
        assertHomogeneity(inverseTheme.colorDecorativeNeutralEmphasized)
    }

    func testColorsHomogeneityColorDecorativeNeutralMuted() throws {
        assertHomogeneity(inverseTheme.colorDecorativeNeutralMuted)
    }

    func testColorsHomogeneityColorDecorativeSkinTint100() throws {
        assertHomogeneity(inverseTheme.colorDecorativeSkinTint100)
    }

    func testColorsHomogeneityColorDecorativeSkinTint200() throws {
        assertHomogeneity(inverseTheme.colorDecorativeSkinTint200)
    }

    func testColorsHomogeneityColorDecorativeSkinTint300() throws {
        assertHomogeneity(inverseTheme.colorDecorativeSkinTint300)
    }

    func testColorsHomogeneityColorDecorativeSkinTint400() throws {
        assertHomogeneity(inverseTheme.colorDecorativeSkinTint400)
    }

    func testColorsHomogeneityColorDecorativeSkinTint500() throws {
        assertHomogeneity(inverseTheme.colorDecorativeSkinTint500)
    }

    func testColorsHomogeneityColorDecorativeSkinTint600() throws {
        assertHomogeneity(inverseTheme.colorDecorativeSkinTint600)
    }

    func testColorsHomogeneityColorDecorativeSkinTint700() throws {
        assertHomogeneity(inverseTheme.colorDecorativeSkinTint700)
    }

    func testColorsHomogeneityColorDecorativeSkinTint800() throws {
        assertHomogeneity(inverseTheme.colorDecorativeSkinTint800)
    }

    func testColorsHomogeneityColorDecorativeSkinTint900() throws {
        assertHomogeneity(inverseTheme.colorDecorativeSkinTint900)
    }

    // MARK: - Color - Chart

    func testColorsHomogeneityColorChartCategoricalTier1() throws {
        assertHomogeneity(inverseTheme.colorChartCategoricalTier1)
    }

    func testColorsHomogeneityColorChartCategoricalTier2() throws {
        assertHomogeneity(inverseTheme.colorChartCategoricalTier2)
    }

    func testColorsHomogeneityColorChartCategoricalTier3() throws {
        assertHomogeneity(inverseTheme.colorChartCategoricalTier3)
    }

    func testColorsHomogeneityColorChartCategoricalTier4() throws {
        assertHomogeneity(inverseTheme.colorChartCategoricalTier4)
    }

    func testColorsHomogeneityColorChartCategoricalTier5() throws {
        assertHomogeneity(inverseTheme.colorChartCategoricalTier5)
    }

    func testColorsHomogeneityColorChartCategoricalTier6() throws {
        assertHomogeneity(inverseTheme.colorChartCategoricalTier6)
    }

    func testColorsHomogeneityColorChartCategoricalTier7() throws {
        assertHomogeneity(inverseTheme.colorChartCategoricalTier7)
    }

    func testColorsHomogeneityColorChartCategoricalTier8() throws {
        assertHomogeneity(inverseTheme.colorChartCategoricalTier8)
    }

    func testColorsHomogeneityColorChartCategoricalTier9() throws {
        assertHomogeneity(inverseTheme.colorChartCategoricalTier9)
    }

    func testColorsHomogeneityColorChartCategoricalTier10() throws {
        assertHomogeneity(inverseTheme.colorChartCategoricalTier10)
    }

    func testColorsHomogeneityColorChartFunctionalInformation() throws {
        assertHomogeneity(inverseTheme.colorChartFunctionalInformation)
    }

    func testColorsHomogeneityColorChartFunctionalNegative() throws {
        assertHomogeneity(inverseTheme.colorChartFunctionalNegative)
    }

    func testColorsHomogeneityColorChartFunctionalPositive() throws {
        assertHomogeneity(inverseTheme.colorChartFunctionalPositive)
    }

    func testColorsHomogeneityColorChartFunctionalWarning() throws {
        assertHomogeneity(inverseTheme.colorChartFunctionalWarning)
    }

    func testColorsHomogeneityColorChartGridlines() throws {
        assertHomogeneity(inverseTheme.colorChartGridlines)
    }

    func testColorsHomogeneityColorChartHighlight() throws {
        assertHomogeneity(inverseTheme.colorChartHighlight)
    }

    func testColorsHomogeneityColorChartNeutral() throws {
        assertHomogeneity(inverseTheme.colorChartNeutral)
    }

    // MARK: - Color - Repository

    func testColorsHomogeneityColorRepositoryAccentDefault() throws {
        assertHomogeneity(inverseTheme.colorRepositoryAccentDefault)
    }

    func testColorsHomogeneityColorRepositoryAccentHighest() throws {
        assertHomogeneity(inverseTheme.colorRepositoryAccentHighest)
    }

    func testColorsHomogeneityColorRepositoryAccentLow() throws {
        assertHomogeneity(inverseTheme.colorRepositoryAccentLow)
    }

    func testColorsHomogeneityColorRepositoryAccentLowest() throws {
        assertHomogeneity(inverseTheme.colorRepositoryAccentLowest)
    }

    func testColorsHomogeneityColorRepositoryInfoDefault() throws {
        assertHomogeneity(inverseTheme.colorRepositoryInfoDefault)
    }

    func testColorsHomogeneityColorRepositoryInfoHighest() throws {
        assertHomogeneity(inverseTheme.colorRepositoryInfoHighest)
    }

    func testColorsHomogeneityColorRepositoryInfoLow() throws {
        assertHomogeneity(inverseTheme.colorRepositoryInfoLow)
    }

    func testColorsHomogeneityColorRepositoryInfoLowest() throws {
        assertHomogeneity(inverseTheme.colorRepositoryInfoLowest)
    }

    func testColorsHomogeneityColorRepositoryNegativeDefault() throws {
        assertHomogeneity(inverseTheme.colorRepositoryNegativeDefault)
    }

    func testColorsHomogeneityColorRepositoryNegativeHigh() throws {
        assertHomogeneity(inverseTheme.colorRepositoryNegativeHigh)
    }

    func testColorsHomogeneityColorRepositoryNegativeHigher() throws {
        assertHomogeneity(inverseTheme.colorRepositoryNegativeHigher)
    }

    func testColorsHomogeneityColorRepositoryNegativeHighest() throws {
        assertHomogeneity(inverseTheme.colorRepositoryNegativeHighest)
    }

    func testColorsHomogeneityColorRepositoryNegativeLow() throws {
        assertHomogeneity(inverseTheme.colorRepositoryNegativeLow)
    }

    func testColorsHomogeneityColorRepositoryNegativeLower() throws {
        assertHomogeneity(inverseTheme.colorRepositoryNegativeLower)
    }

    func testColorsHomogeneityColorRepositoryNegativeLowest() throws {
        assertHomogeneity(inverseTheme.colorRepositoryNegativeLowest)
    }

    func testColorsHomogeneityColorRepositoryNeutralEmphasizedBlack() throws {
        assertHomogeneity(inverseTheme.colorRepositoryNeutralEmphasizedBlack)
    }

    func testColorsHomogeneityColorRepositoryNeutralEmphasizedHigh() throws {
        assertHomogeneity(inverseTheme.colorRepositoryNeutralEmphasizedHigh)
    }

    func testColorsHomogeneityColorRepositoryNeutralEmphasizedHigher() throws {
        assertHomogeneity(inverseTheme.colorRepositoryNeutralEmphasizedHigher)
    }

    func testColorsHomogeneityColorRepositoryNeutralEmphasizedHighest() throws {
        assertHomogeneity(inverseTheme.colorRepositoryNeutralEmphasizedHighest)
    }

    func testColorsHomogeneityColorRepositoryNeutralEmphasizedMedium() throws {
        assertHomogeneity(inverseTheme.colorRepositoryNeutralEmphasizedMedium)
    }

    func testColorsHomogeneityColorRepositoryNeutralMutedLower() throws {
        assertHomogeneity(inverseTheme.colorRepositoryNeutralMutedLower)
    }

    func testColorsHomogeneityColorRepositoryNeutralMutedLowest() throws {
        assertHomogeneity(inverseTheme.colorRepositoryNeutralMutedLowest)
    }

    func testColorsHomogeneityColorRepositoryNeutralMutedWhite() throws {
        assertHomogeneity(inverseTheme.colorRepositoryNeutralMutedWhite)
    }

    func testColorsHomogeneityColorRepositoryOpacityBlackHigher() throws {
        assertHomogeneity(inverseTheme.colorRepositoryOpacityBlackHigher)
    }

    func testColorsHomogeneityColorRepositoryOpacityBlackHighest() throws {
        assertHomogeneity(inverseTheme.colorRepositoryOpacityBlackHighest)
    }

    func testColorsHomogeneityColorRepositoryOpacityBlackLow() throws {
        assertHomogeneity(inverseTheme.colorRepositoryOpacityBlackLow)
    }

    func testColorsHomogeneityColorRepositoryOpacityBlackLower() throws {
        assertHomogeneity(inverseTheme.colorRepositoryOpacityBlackLower)
    }

    func testColorsHomogeneityColorRepositoryOpacityBlackLowest() throws {
        assertHomogeneity(inverseTheme.colorRepositoryOpacityBlackLowest)
    }

    func testColorsHomogeneityColorRepositoryOpacityBlackMedium() throws {
        assertHomogeneity(inverseTheme.colorRepositoryOpacityBlackMedium)
    }

    func testColorsHomogeneityColorRepositoryOpacityBlackTransparent() throws {
        assertHomogeneity(inverseTheme.colorRepositoryOpacityBlackTransparent)
    }

    func testColorsHomogeneityColorRepositoryOpacityInfo() throws {
        assertHomogeneity(inverseTheme.colorRepositoryOpacityInfo)
    }

    func testColorsHomogeneityColorRepositoryOpacityNegative() throws {
        assertHomogeneity(inverseTheme.colorRepositoryOpacityNegative)
    }

    func testColorsHomogeneityColorRepositoryOpacityPositive() throws {
        assertHomogeneity(inverseTheme.colorRepositoryOpacityPositive)
    }

    func testColorsHomogeneityColorRepositoryOpacityWarning() throws {
        assertHomogeneity(inverseTheme.colorRepositoryOpacityWarning)
    }

    func testColorsHomogeneityColorRepositoryPositiveDefault() throws {
        assertHomogeneity(inverseTheme.colorRepositoryPositiveDefault)
    }

    func testColorsHomogeneityColorRepositoryPositiveHighest() throws {
        assertHomogeneity(inverseTheme.colorRepositoryPositiveHighest)
    }

    func testColorsHomogeneityColorRepositoryPositiveLow() throws {
        assertHomogeneity(inverseTheme.colorRepositoryPositiveLow)
    }

    func testColorsHomogeneityColorRepositoryPositiveLowest() throws {
        assertHomogeneity(inverseTheme.colorRepositoryPositiveLowest)
    }

    func testColorsHomogeneityColorRepositoryPrimaryDefault() throws {
        assertHomogeneity(inverseTheme.colorRepositoryPrimaryDefault)
    }

    func testColorsHomogeneityColorRepositoryPrimaryLow() throws {
        assertHomogeneity(inverseTheme.colorRepositoryPrimaryLow)
    }

    func testColorsHomogeneityColorRepositoryWarningDefault() throws {
        assertHomogeneity(inverseTheme.colorRepositoryWarningDefault)
    }

    func testColorsHomogeneityColorRepositoryWarningHighest() throws {
        assertHomogeneity(inverseTheme.colorRepositoryWarningHighest)
    }

    func testColorsHomogeneityColorRepositoryWarningLow() throws {
        assertHomogeneity(inverseTheme.colorRepositoryWarningLow)
    }

    func testColorsHomogeneityColorRepositoryWarningLowest() throws {
        assertHomogeneity(inverseTheme.colorRepositoryWarningLowest)
    }
}
// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_body_length

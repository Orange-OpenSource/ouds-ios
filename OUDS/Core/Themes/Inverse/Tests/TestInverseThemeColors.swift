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

    /// Ensure the `InverseTheme` has the same value for light and dark color schemes (supposed to be dark)
    private func assertHomogeneity(_ value: MultipleColorSemanticTokens) {
        XCTAssertEqual(value.light, value.dark)
    }

    // MARK: - Test cases

    func testColorsHomogeneityColorOpacityTransparent() throws {
        assertHomogeneity(inverseTheme.colors.colorOpacityTransparentDark)
    }

    // MARK: - Color - Action

    func testColorsHomogeneityColorActionDisabled() throws {
        assertHomogeneity(inverseTheme.colors.colorActionDisabled)
    }

    func testColorsHomogeneityColorActionEnabled() throws {
        assertHomogeneity(inverseTheme.colors.colorActionEnabled)
    }

    func testColorsHomogeneityColorActionFocus() throws {
        assertHomogeneity(inverseTheme.colors.colorActionFocus)
    }

    func testColorsHomogeneityColorActionHighlighted() throws {
        assertHomogeneity(inverseTheme.colors.colorActionHighlighted)
    }

    func testColorsHomogeneityColorActionHover() throws {
        assertHomogeneity(inverseTheme.colors.colorActionHover)
    }

    func testColorsHomogeneityColorActionLoading() throws {
        assertHomogeneity(inverseTheme.colors.colorActionLoading)
    }

    func testColorsHomogeneityColorActionNegativeEnabled() throws {
        assertHomogeneity(inverseTheme.colors.colorActionNegativeEnabled)
    }

    func testColorsHomogeneityColorActionNegativeFocus() throws {
        assertHomogeneity(inverseTheme.colors.colorActionNegativeFocus)
    }

    func testColorsHomogeneityColorActionNegativeHover() throws {
        assertHomogeneity(inverseTheme.colors.colorActionNegativeHover)
    }

    func testColorsHomogeneityColorActionNegativeLoading() throws {
        assertHomogeneity(inverseTheme.colors.colorActionNegativeLoading)
    }

    func testColorsHomogeneityColorActionNegativePressed() throws {
        assertHomogeneity(inverseTheme.colors.colorActionNegativePressed)
    }

    func testColorsHomogeneityColorActionPressed() throws {
        assertHomogeneity(inverseTheme.colors.colorActionPressed)
    }

    func testColorsHomogeneityColorActionSelected() throws {
        assertHomogeneity(inverseTheme.colors.colorActionSelected)
    }

    func testColorsHomogeneityColorActionSupportEnabled() throws {
        assertHomogeneity(inverseTheme.colors.colorActionSupportEnabled)
    }

    func testColorsHomogeneityColorActionSupportFocus() throws {
        assertHomogeneity(inverseTheme.colors.colorActionSupportFocus)
    }

    func testColorsHomogeneityColorActionSupportHover() throws {
        assertHomogeneity(inverseTheme.colors.colorActionSupportHover)
    }

    func testColorsHomogeneityColorActionSupportLoading() throws {
        assertHomogeneity(inverseTheme.colors.colorActionSupportLoading)
    }

    func testColorsHomogeneityColorActionSupportPressed() throws {
        assertHomogeneity(inverseTheme.colors.colorActionSupportPressed)
    }

    func testColorsHomogeneityColorActionVisited() throws {
        assertHomogeneity(inverseTheme.colors.colorActionVisited)
    }

    // MARK: - Color - Always

    func testColorsHomogeneityColorAlwaysBlack() throws {
        assertHomogeneity(inverseTheme.colors.colorAlwaysBlack)
    }

    func testColorsHomogeneityColorAlwaysOnBlack() throws {
        assertHomogeneity(inverseTheme.colors.colorAlwaysOnBlack)
    }

    func testColorsHomogeneityColorAlwaysOnWhite() throws {
        assertHomogeneity(inverseTheme.colors.colorAlwaysOnWhite)
    }

    func testColorsHomogeneityColorAlwaysWhite() throws {
        assertHomogeneity(inverseTheme.colors.colorAlwaysWhite)
    }

    // MARK: - Color - Background

    func testColorsHomogeneityColorBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorBgEmphasized)
    }

    func testColorsHomogeneityColorBgPrimary() throws {
        assertHomogeneity(inverseTheme.colors.colorBgPrimary)
    }

    func testColorsHomogeneityColorBgSecondary() throws {
        assertHomogeneity(inverseTheme.colors.colorBgSecondary)
    }

    func testColorsHomogeneityColorBgTertiary() throws {
        assertHomogeneity(inverseTheme.colors.colorBgTertiary)
    }

    // MARK: - Color - Border

    func testColorsHomogeneityColorBorderBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colors.colorBorderBrandPrimary)
    }

    func testColorsHomogeneityColorBorderDefault() throws {
        assertHomogeneity(inverseTheme.colors.colorBorderDefault)
    }

    func testColorsHomogeneityColorBorderEmphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorBorderEmphasized)
    }

    func testColorsHomogeneityColorBorderFocus() throws {
        assertHomogeneity(inverseTheme.colors.colorBorderFocus)
    }

    func testColorsHomogeneityColorBorderFocusInset() throws {
        assertHomogeneity(inverseTheme.colors.colorBorderFocusInset)
    }

    func testColorsHomogeneityColorBorderOnBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colors.colorBorderOnBrandPrimary)
    }

    // MARK: - Color - Content

    func testColorsHomogeneityColorContentBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colors.colorContentBrandPrimary)
    }

    func testColorsHomogeneityColorContentDefault() throws {
        assertHomogeneity(inverseTheme.colors.colorContentDefault)
    }

    func testColorsHomogeneityColorContentDisabled() throws {
        assertHomogeneity(inverseTheme.colors.colorContentDisabled)
    }

    func testColorsHomogeneityColorContentMuted() throws {
        assertHomogeneity(inverseTheme.colors.colorContentMuted)
    }

    func testColorsHomogeneityColorContentOnActionDisabled() throws {
        assertHomogeneity(inverseTheme.colors.colorContentOnActionDisabled)
    }

    func testColorsHomogeneityColorContentOnActionEnabled() throws {
        assertHomogeneity(inverseTheme.colors.colorContentOnActionEnabled)
    }

    func testColorsHomogeneityColorContentOnActionFocus() throws {
        assertHomogeneity(inverseTheme.colors.colorContentOnActionFocus)
    }

    func testColorsHomogeneityColorContentOnActionHighlighted() throws {
        assertHomogeneity(inverseTheme.colors.colorContentOnActionHighlighted)
    }

    func testColorsHomogeneityColorContentOnActionHover() throws {
        assertHomogeneity(inverseTheme.colors.colorContentOnActionHover)
    }

    func testColorsHomogeneityColorContentOnActionLoading() throws {
        assertHomogeneity(inverseTheme.colors.colorContentOnActionLoading)
    }

    func testColorsHomogeneityColorContentOnActionPressed() throws {
        assertHomogeneity(inverseTheme.colors.colorContentOnActionPressed)
    }

    func testColorsHomogeneityColorContentOnBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colors.colorContentOnBrandPrimary)
    }

    func testColorsHomogeneityColorContentOnOverlayEmphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorContentOnOverlayEmphasized)
    }

    func testColorsHomogeneityColorContentOnStatusEmphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorContentOnStatusEmphasized)
    }

    func testColorsHomogeneityColorContentOnStatusEmphasizedAlt() throws {
        assertHomogeneity(inverseTheme.colors.colorContentOnStatusEmphasizedAlt)
    }

    func testColorsHomogeneityColorContentOnStatusMuted() throws {
        assertHomogeneity(inverseTheme.colors.colorContentOnStatusMuted)
    }

    func testColorsHomogeneityColorContentStatusInfo() throws {
        assertHomogeneity(inverseTheme.colors.colorContentStatusInfo)
    }

    func testColorsHomogeneityColorContentStatusNegative() throws {
        assertHomogeneity(inverseTheme.colors.colorContentStatusNegative)
    }

    func testColorsHomogeneityColorContentStatusPositive() throws {
        assertHomogeneity(inverseTheme.colors.colorContentStatusPositive)
    }

    func testColorsHomogeneityColorContentStatusWarning() throws {
        assertHomogeneity(inverseTheme.colors.colorContentStatusWarning)
    }

    // MARK: - Color - Overlay

    func testColorsHomogeneityColorOverlayDefault() throws {
        assertHomogeneity(inverseTheme.colors.colorOverlayDefault)
    }

    func testColorsHomogeneityColorOverlayDrag() throws {
        assertHomogeneity(inverseTheme.colors.colorOverlayDrag)
    }

    func testColorsHomogeneityColorOverlayEmphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorOverlayEmphasized)
    }

    func testColorsHomogeneityColorOverlayModal() throws {
        assertHomogeneity(inverseTheme.colors.colorOverlayModal)
    }

    // MARK: - Color - Surface

    func testColorsHomogeneityColorSurfaceBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceBrandPrimary)
    }

    func testColorsHomogeneityColorSurfaceStatusAccentEmphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceStatusAccentEmphasized)
    }

    func testColorsHomogeneityColorSurfaceStatusAccentMuted() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceStatusAccentMuted)
    }

    func testColorsHomogeneityColorSurfaceStatusInfoEmphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceStatusInfoEmphasized)
    }

    func testColorsHomogeneityColorSurfaceStatusInfoMuted() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceStatusInfoMuted)
    }

    func testColorsHomogeneityColorSurfaceStatusNegativeEmphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceStatusNegativeEmphasized)
    }

    func testColorsHomogeneityColorSurfaceStatusNegativeMuted() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceStatusNegativeMuted)
    }

    func testColorsHomogeneityColorSurfaceStatusNeutralEmphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceStatusNeutralEmphasized)
    }

    func testColorsHomogeneityColorSurfaceStatusNeutralMuted() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceStatusNeutralMuted)
    }

    func testColorsHomogeneityColorSurfaceStatusPositiveEmphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceStatusPositiveEmphasized)
    }

    func testColorsHomogeneityColorSurfaceStatusPositiveMuted() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceStatusPositiveMuted)
    }

    func testColorsHomogeneityColorSurfaceStatusWarningEmphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceStatusWarningEmphasized)
    }

    func testColorsHomogeneityColorSurfaceStatusWarningMuted() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceStatusWarningMuted)
    }

    // MARK: - Color - Decorative

    func testColorsHomogeneityColorDecorativeAccent1Default() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent1Default)
    }

    func testColorsHomogeneityColorDecorativeAccent1Emphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent1Emphasized)
    }

    func testColorsHomogeneityColorDecorativeAccent1Muted() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent1Muted)
    }

    func testColorsHomogeneityColorDecorativeAccent2Default() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent2Default)
    }

    func testColorsHomogeneityColorDecorativeAccent2Emphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent2Emphasized)
    }

    func testColorsHomogeneityColorDecorativeAccent2Muted() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent2Muted)
    }

    func testColorsHomogeneityColorDecorativeAccent3Default() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent3Default)
    }

    func testColorsHomogeneityColorDecorativeAccent3Emphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent3Emphasized)
    }

    func testColorsHomogeneityColorDecorativeAccent3Muted() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent3Muted)
    }

    func testColorsHomogeneityColorDecorativeAccent4Default() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent4Default)
    }

    func testColorsHomogeneityColorDecorativeAccent4Emphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent4Emphasized)
    }

    func testColorsHomogeneityColorDecorativeAccent4Muted() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent4Muted)
    }

    func testColorsHomogeneityColorDecorativeAccent5Default() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent5Default)
    }

    func testColorsHomogeneityColorDecorativeAccent5Emphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent5Emphasized)
    }

    func testColorsHomogeneityColorDecorativeAccent5Muted() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent5Muted)
    }

    func testColorsHomogeneityColorDecorativeBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeBrandPrimary)
    }

    func testColorsHomogeneityColorDecorativeBrandSecondary() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeBrandSecondary)
    }

    func testColorsHomogeneityColorDecorativeBrandTertiary() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeBrandTertiary)
    }

    func testColorsHomogeneityColorDecorativeNeutralDefault() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeNeutralDefault)
    }

    func testColorsHomogeneityColorDecorativeNeutralEmphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeNeutralEmphasized)
    }

    func testColorsHomogeneityColorDecorativeNeutralMuted() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeNeutralMuted)
    }

    func testColorsHomogeneityColorDecorativeSkinTint100() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeSkinTint100)
    }

    func testColorsHomogeneityColorDecorativeSkinTint200() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeSkinTint200)
    }

    func testColorsHomogeneityColorDecorativeSkinTint300() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeSkinTint300)
    }

    func testColorsHomogeneityColorDecorativeSkinTint400() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeSkinTint400)
    }

    func testColorsHomogeneityColorDecorativeSkinTint500() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeSkinTint500)
    }

    func testColorsHomogeneityColorDecorativeSkinTint600() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeSkinTint600)
    }

    func testColorsHomogeneityColorDecorativeSkinTint700() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeSkinTint700)
    }

    func testColorsHomogeneityColorDecorativeSkinTint800() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeSkinTint800)
    }

    func testColorsHomogeneityColorDecorativeSkinTint900() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeSkinTint900)
    }

    // MARK: - Color - Chart

    func testColorsHomogeneityColorChartCategoricalTier1() throws {
        assertHomogeneity(inverseTheme.colors.colorChartCategoricalTier1)
    }

    func testColorsHomogeneityColorChartCategoricalTier2() throws {
        assertHomogeneity(inverseTheme.colors.colorChartCategoricalTier2)
    }

    func testColorsHomogeneityColorChartCategoricalTier3() throws {
        assertHomogeneity(inverseTheme.colors.colorChartCategoricalTier3)
    }

    func testColorsHomogeneityColorChartCategoricalTier4() throws {
        assertHomogeneity(inverseTheme.colors.colorChartCategoricalTier4)
    }

    func testColorsHomogeneityColorChartCategoricalTier5() throws {
        assertHomogeneity(inverseTheme.colors.colorChartCategoricalTier5)
    }

    func testColorsHomogeneityColorChartCategoricalTier6() throws {
        assertHomogeneity(inverseTheme.colors.colorChartCategoricalTier6)
    }

    func testColorsHomogeneityColorChartCategoricalTier7() throws {
        assertHomogeneity(inverseTheme.colors.colorChartCategoricalTier7)
    }

    func testColorsHomogeneityColorChartCategoricalTier8() throws {
        assertHomogeneity(inverseTheme.colors.colorChartCategoricalTier8)
    }

    func testColorsHomogeneityColorChartCategoricalTier9() throws {
        assertHomogeneity(inverseTheme.colors.colorChartCategoricalTier9)
    }

    func testColorsHomogeneityColorChartCategoricalTier10() throws {
        assertHomogeneity(inverseTheme.colors.colorChartCategoricalTier10)
    }

    func testColorsHomogeneityColorChartFunctionalInformation() throws {
        assertHomogeneity(inverseTheme.colors.colorChartFunctionalInformation)
    }

    func testColorsHomogeneityColorChartFunctionalNegative() throws {
        assertHomogeneity(inverseTheme.colors.colorChartFunctionalNegative)
    }

    func testColorsHomogeneityColorChartFunctionalPositive() throws {
        assertHomogeneity(inverseTheme.colors.colorChartFunctionalPositive)
    }

    func testColorsHomogeneityColorChartFunctionalWarning() throws {
        assertHomogeneity(inverseTheme.colors.colorChartFunctionalWarning)
    }

    func testColorsHomogeneityColorChartGridlines() throws {
        assertHomogeneity(inverseTheme.colors.colorChartGridlines)
    }

    func testColorsHomogeneityColorChartHighlight() throws {
        assertHomogeneity(inverseTheme.colors.colorChartHighlight)
    }

    func testColorsHomogeneityColorChartNeutral() throws {
        assertHomogeneity(inverseTheme.colors.colorChartNeutral)
    }

    // MARK: - Color - Repository

    func testColorsHomogeneityColorRepositoryAccentDefault() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryAccentDefault)
    }

    func testColorsHomogeneityColorRepositoryAccentHighest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryAccentHighest)
    }

    func testColorsHomogeneityColorRepositoryAccentLow() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryAccentLow)
    }

    func testColorsHomogeneityColorRepositoryAccentLowest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryAccentLowest)
    }

    func testColorsHomogeneityColorRepositoryInfoDefault() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryInfoDefault)
    }

    func testColorsHomogeneityColorRepositoryInfoHighest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryInfoHighest)
    }

    func testColorsHomogeneityColorRepositoryInfoLow() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryInfoLow)
    }

    func testColorsHomogeneityColorRepositoryInfoLowest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryInfoLowest)
    }

    func testColorsHomogeneityColorRepositoryNegativeDefault() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNegativeDefault)
    }

    func testColorsHomogeneityColorRepositoryNegativeHigh() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNegativeHigh)
    }

    func testColorsHomogeneityColorRepositoryNegativeHigher() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNegativeHigher)
    }

    func testColorsHomogeneityColorRepositoryNegativeHighest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNegativeHighest)
    }

    func testColorsHomogeneityColorRepositoryNegativeLow() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNegativeLow)
    }

    func testColorsHomogeneityColorRepositoryNegativeLower() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNegativeLower)
    }

    func testColorsHomogeneityColorRepositoryNegativeLowest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNegativeLowest)
    }

    func testColorsHomogeneityColorRepositoryNeutralEmphasizedBlack() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNeutralEmphasizedBlack)
    }

    func testColorsHomogeneityColorRepositoryNeutralEmphasizedHigh() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNeutralEmphasizedHigh)
    }

    func testColorsHomogeneityColorRepositoryNeutralEmphasizedHigher() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNeutralEmphasizedHigher)
    }

    func testColorsHomogeneityColorRepositoryNeutralEmphasizedHighest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNeutralEmphasizedHighest)
    }

    func testColorsHomogeneityColorRepositoryNeutralEmphasizedMedium() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNeutralEmphasizedMedium)
    }

    func testColorsHomogeneityColorRepositoryNeutralMutedLower() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNeutralMutedLower)
    }

    func testColorsHomogeneityColorRepositoryNeutralMutedLowest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNeutralMutedLowest)
    }

    func testColorsHomogeneityColorRepositoryNeutralMutedWhite() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNeutralMutedWhite)
    }

    func testColorsHomogeneityColorRepositoryOpacityBlackHigher() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityBlackHigher)
    }

    func testColorsHomogeneityColorRepositoryOpacityBlackHighest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityBlackHighest)
    }

    func testColorsHomogeneityColorRepositoryOpacityBlackLow() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityBlackLow)
    }

    func testColorsHomogeneityColorRepositoryOpacityBlackLower() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityBlackLower)
    }

    func testColorsHomogeneityColorRepositoryOpacityBlackLowest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityBlackLowest)
    }

    func testColorsHomogeneityColorRepositoryOpacityBlackMedium() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityBlackMedium)
    }

    func testColorsHomogeneityColorRepositoryOpacityBlackTransparent() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityBlackTransparent)
    }

    func testColorsHomogeneityColorRepositoryOpacityInfo() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityInfo)
    }

    func testColorsHomogeneityColorRepositoryOpacityNegative() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityNegative)
    }

    func testColorsHomogeneityColorRepositoryOpacityPositive() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityPositive)
    }

    func testColorsHomogeneityColorRepositoryOpacityWarning() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityWarning)
    }

    func testColorsHomogeneityColorRepositoryOpacityWhiteHigh() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityWhiteHigh)
    }

    func testColorsHomogeneityColorRepositoryOpacityWhiteHigher() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityWhiteHigher)
    }

    func testColorsHomogeneityColorRepositoryOpacityWhiteHighest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityWhiteHighest)
    }

    func testColorsHomogeneityColorRepositoryOpacityWhiteLow() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityWhiteLow)
    }

    func testColorsHomogeneityColorRepositoryOpacityWhiteLower() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityWhiteLower)
    }

    func testColorsHomogeneityColorRepositoryOpacityWhiteLowest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityWhiteLowest)
    }

    func testColorsHomogeneityColorRepositoryOpacityWhiteLowTransparent() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityWhiteTransparent)
    }

    func testColorsHomogeneityColorRepositoryPositiveDefault() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryPositiveDefault)
    }

    func testColorsHomogeneityColorRepositoryPositiveHighest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryPositiveHighest)
    }

    func testColorsHomogeneityColorRepositoryPositiveLow() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryPositiveLow)
    }

    func testColorsHomogeneityColorRepositoryPositiveLowest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryPositiveLowest)
    }

    func testColorsHomogeneityColorRepositoryPrimaryDefault() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryPrimaryDefault)
    }

    func testColorsHomogeneityColorRepositoryPrimaryLow() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryPrimaryLow)
    }

    func testColorsHomogeneityColorRepositoryWarningDefault() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryWarningDefault)
    }

    func testColorsHomogeneityColorRepositoryWarningHighest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryWarningHighest)
    }

    func testColorsHomogeneityColorRepositoryWarningLow() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryWarningLow)
    }

    func testColorsHomogeneityColorRepositoryWarningLowest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryWarningLowest)
    }
}
// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_body_length

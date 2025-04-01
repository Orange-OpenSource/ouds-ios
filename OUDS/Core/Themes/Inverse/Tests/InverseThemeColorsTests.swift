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
import Testing

// swiftlint:disable type_body_length
// swiftlint:disable file_length

/// `InverseTheme` is a quite particular theme with "inverse" color palette. It is neither a light mode theme nor a dark mode theme.
/// This "inverse" mode as colors which, for a given semantic token, has the same value for both light and dark mode.
struct InverseThemeColorsTests {

    private var inverseTheme: OUDSTheme

    init() {
        inverseTheme = InverseTheme()
    }

    // MARK: - Helpers

    /// Ensure the `InverseTheme` has the same value for light and dark color schemes (supposed to be dark)
    private func assertHomogeneity(_ value: MultipleColorSemanticTokens) {
        #expect(value.light == value.dark)
    }

    // MARK: - Test cases

    @Test func colorsHomogeneityColorOpacityLowest() throws {
        assertHomogeneity(inverseTheme.colors.colorOpacityLowest)
    }

    @Test func colorsHomogeneityColorOpacityLower() throws {
        assertHomogeneity(inverseTheme.colors.colorOpacityLower)
    }

    @Test func colorsHomogeneityColorOpacityTransparent() throws {
        assertHomogeneity(inverseTheme.colors.colorOpacityTransparent)
    }

    // MARK: - Color - Action

    @Test func colorsHomogeneityColorActionDisabled() throws {
        assertHomogeneity(inverseTheme.colors.colorActionDisabled)
    }

    @Test func colorsHomogeneityColorActionEnabled() throws {
        assertHomogeneity(inverseTheme.colors.colorActionEnabled)
    }

    @Test func colorsHomogeneityColorActionFocus() throws {
        assertHomogeneity(inverseTheme.colors.colorActionFocus)
    }

    @Test func colorsHomogeneityColorActionHighlighted() throws {
        assertHomogeneity(inverseTheme.colors.colorActionHighlighted)
    }

    @Test func colorsHomogeneityColorActionHover() throws {
        assertHomogeneity(inverseTheme.colors.colorActionHover)
    }

    @Test func colorsHomogeneityColorActionLoading() throws {
        assertHomogeneity(inverseTheme.colors.colorActionLoading)
    }

    @Test func colorsHomogeneityColorActionNegativeEnabled() throws {
        assertHomogeneity(inverseTheme.colors.colorActionNegativeEnabled)
    }

    @Test func colorsHomogeneityColorActionNegativeFocus() throws {
        assertHomogeneity(inverseTheme.colors.colorActionNegativeFocus)
    }

    @Test func colorsHomogeneityColorActionNegativeHover() throws {
        assertHomogeneity(inverseTheme.colors.colorActionNegativeHover)
    }

    @Test func colorsHomogeneityColorActionNegativeLoading() throws {
        assertHomogeneity(inverseTheme.colors.colorActionNegativeLoading)
    }

    @Test func colorsHomogeneityColorActionNegativePressed() throws {
        assertHomogeneity(inverseTheme.colors.colorActionNegativePressed)
    }

    @Test func colorsHomogeneityColorActionPressed() throws {
        assertHomogeneity(inverseTheme.colors.colorActionPressed)
    }

    @Test func colorsHomogeneityColorActionSelected() throws {
        assertHomogeneity(inverseTheme.colors.colorActionSelected)
    }

    @Test func colorsHomogeneityColorActionSupportEnabled() throws {
        assertHomogeneity(inverseTheme.colors.colorActionSupportEnabled)
    }

    @Test func colorsHomogeneityColorActionSupportFocus() throws {
        assertHomogeneity(inverseTheme.colors.colorActionSupportFocus)
    }

    @Test func colorsHomogeneityColorActionSupportHover() throws {
        assertHomogeneity(inverseTheme.colors.colorActionSupportHover)
    }

    @Test func colorsHomogeneityColorActionSupportLoading() throws {
        assertHomogeneity(inverseTheme.colors.colorActionSupportLoading)
    }

    @Test func colorsHomogeneityColorActionSupportPressed() throws {
        assertHomogeneity(inverseTheme.colors.colorActionSupportPressed)
    }

    @Test func colorsHomogeneityColorActionVisited() throws {
        assertHomogeneity(inverseTheme.colors.colorActionVisited)
    }

    // MARK: - Color - Always

    @Test func colorsHomogeneityColorAlwaysBlack() throws {
        assertHomogeneity(inverseTheme.colors.colorAlwaysBlack)
    }

    @Test func colorsHomogeneityColorAlwaysOnBlack() throws {
        assertHomogeneity(inverseTheme.colors.colorAlwaysOnBlack)
    }

    @Test func colorsHomogeneityColorAlwaysOnWhite() throws {
        assertHomogeneity(inverseTheme.colors.colorAlwaysOnWhite)
    }

    @Test func colorsHomogeneityColorAlwaysWhite() throws {
        assertHomogeneity(inverseTheme.colors.colorAlwaysWhite)
    }

    // MARK: - Color - Background

    @Test func colorsHomogeneityColorBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorBgEmphasized)
    }

    @Test func colorsHomogeneityColorBgPrimary() throws {
        assertHomogeneity(inverseTheme.colors.colorBgPrimary)
    }

    @Test func colorsHomogeneityColorBgSecondary() throws {
        assertHomogeneity(inverseTheme.colors.colorBgSecondary)
    }

    @Test func colorsHomogeneityColorBgTertiary() throws {
        assertHomogeneity(inverseTheme.colors.colorBgTertiary)
    }

    // MARK: - Color - Border

    @Test func colorsHomogeneityColorBorderBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colors.colorBorderBrandPrimary)
    }

    @Test func colorsHomogeneityColorBorderDefault() throws {
        assertHomogeneity(inverseTheme.colors.colorBorderDefault)
    }

    @Test func colorsHomogeneityColorBorderEmphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorBorderEmphasized)
    }

    @Test func colorsHomogeneityColorBorderFocus() throws {
        assertHomogeneity(inverseTheme.colors.colorBorderFocus)
    }

    @Test func colorsHomogeneityColorBorderFocusInset() throws {
        assertHomogeneity(inverseTheme.colors.colorBorderFocusInset)
    }

    @Test func colorsHomogeneityColorBorderOnBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colors.colorBorderOnBrandPrimary)
    }

    // MARK: - Color - Content

    @Test func colorsHomogeneityColorContentBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colors.colorContentBrandPrimary)
    }

    @Test func colorsHomogeneityColorContentDefault() throws {
        assertHomogeneity(inverseTheme.colors.colorContentDefault)
    }

    @Test func colorsHomogeneityColorContentDisabled() throws {
        assertHomogeneity(inverseTheme.colors.colorContentDisabled)
    }

    @Test func colorsHomogeneityColorContentMuted() throws {
        assertHomogeneity(inverseTheme.colors.colorContentMuted)
    }

    @Test func colorsHomogeneityColorContentOnActionDisabled() throws {
        assertHomogeneity(inverseTheme.colors.colorContentOnActionDisabled)
    }

    @Test func colorsHomogeneityColorContentOnActionEnabled() throws {
        assertHomogeneity(inverseTheme.colors.colorContentOnActionEnabled)
    }

    @Test func colorsHomogeneityColorContentOnActionFocus() throws {
        assertHomogeneity(inverseTheme.colors.colorContentOnActionFocus)
    }

    @Test func colorsHomogeneityColorContentOnActionHighlighted() throws {
        assertHomogeneity(inverseTheme.colors.colorContentOnActionHighlighted)
    }

    @Test func colorsHomogeneityColorContentOnActionHover() throws {
        assertHomogeneity(inverseTheme.colors.colorContentOnActionHover)
    }

    @Test func colorsHomogeneityColorContentOnActionLoading() throws {
        assertHomogeneity(inverseTheme.colors.colorContentOnActionLoading)
    }

    @Test func colorsHomogeneityColorContentOnActionPressed() throws {
        assertHomogeneity(inverseTheme.colors.colorContentOnActionPressed)
    }

    @Test func colorsHomogeneityColorContentOnBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colors.colorContentOnBrandPrimary)
    }

    @Test func colorsHomogeneityColorContentOnOverlayEmphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorContentOnOverlayEmphasized)
    }

    @Test func colorsHomogeneityColorContentOnStatusEmphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorContentOnStatusEmphasized)
    }

    @Test func colorsHomogeneityColorContentOnStatusEmphasizedAlt() throws {
        assertHomogeneity(inverseTheme.colors.colorContentOnStatusEmphasizedAlt)
    }

    @Test func colorsHomogeneityColorContentOnStatusMuted() throws {
        assertHomogeneity(inverseTheme.colors.colorContentOnStatusMuted)
    }

    @Test func colorsHomogeneityColorContentStatusInfo() throws {
        assertHomogeneity(inverseTheme.colors.colorContentStatusInfo)
    }

    @Test func colorsHomogeneityColorContentStatusNegative() throws {
        assertHomogeneity(inverseTheme.colors.colorContentStatusNegative)
    }

    @Test func colorsHomogeneityColorContentStatusPositive() throws {
        assertHomogeneity(inverseTheme.colors.colorContentStatusPositive)
    }

    @Test func colorsHomogeneityColorContentStatusWarning() throws {
        assertHomogeneity(inverseTheme.colors.colorContentStatusWarning)
    }

    // MARK: - Color - Overlay

    @Test func colorsHomogeneityColorOverlayDefault() throws {
        assertHomogeneity(inverseTheme.colors.colorOverlayDefault)
    }

    @Test func colorsHomogeneityColorOverlayDrag() throws {
        assertHomogeneity(inverseTheme.colors.colorOverlayDrag)
    }

    @Test func colorsHomogeneityColorOverlayEmphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorOverlayEmphasized)
    }

    @Test func colorsHomogeneityColorOverlayModal() throws {
        assertHomogeneity(inverseTheme.colors.colorOverlayModal)
    }

    // MARK: - Color - Surface

    @Test func colorsHomogeneityColorSurfaceBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceBrandPrimary)
    }

    @Test func colorsHomogeneityColorSurfaceStatusAccentEmphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceStatusAccentEmphasized)
    }

    @Test func colorsHomogeneityColorSurfaceStatusAccentMuted() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceStatusAccentMuted)
    }

    @Test func colorsHomogeneityColorSurfaceStatusInfoEmphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceStatusInfoEmphasized)
    }

    @Test func colorsHomogeneityColorSurfaceStatusInfoMuted() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceStatusInfoMuted)
    }

    @Test func colorsHomogeneityColorSurfaceStatusNegativeEmphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceStatusNegativeEmphasized)
    }

    @Test func colorsHomogeneityColorSurfaceStatusNegativeMuted() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceStatusNegativeMuted)
    }

    @Test func colorsHomogeneityColorSurfaceStatusNeutralEmphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceStatusNeutralEmphasized)
    }

    @Test func colorsHomogeneityColorSurfaceStatusNeutralMuted() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceStatusNeutralMuted)
    }

    @Test func colorsHomogeneityColorSurfaceStatusPositiveEmphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceStatusPositiveEmphasized)
    }

    @Test func colorsHomogeneityColorSurfaceStatusPositiveMuted() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceStatusPositiveMuted)
    }

    @Test func colorsHomogeneityColorSurfaceStatusWarningEmphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceStatusWarningEmphasized)
    }

    @Test func colorsHomogeneityColorSurfaceStatusWarningMuted() throws {
        assertHomogeneity(inverseTheme.colors.colorSurfaceStatusWarningMuted)
    }

    // MARK: - Color - Decorative

    @Test func colorsHomogeneityColorDecorativeAccent1Default() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent1Default)
    }

    @Test func colorsHomogeneityColorDecorativeAccent1Emphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent1Emphasized)
    }

    @Test func colorsHomogeneityColorDecorativeAccent1Muted() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent1Muted)
    }

    @Test func colorsHomogeneityColorDecorativeAccent2Default() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent2Default)
    }

    @Test func colorsHomogeneityColorDecorativeAccent2Emphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent2Emphasized)
    }

    @Test func colorsHomogeneityColorDecorativeAccent2Muted() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent2Muted)
    }

    @Test func colorsHomogeneityColorDecorativeAccent3Default() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent3Default)
    }

    @Test func colorsHomogeneityColorDecorativeAccent3Emphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent3Emphasized)
    }

    @Test func colorsHomogeneityColorDecorativeAccent3Muted() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent3Muted)
    }

    @Test func colorsHomogeneityColorDecorativeAccent4Default() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent4Default)
    }

    @Test func colorsHomogeneityColorDecorativeAccent4Emphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent4Emphasized)
    }

    @Test func colorsHomogeneityColorDecorativeAccent4Muted() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent4Muted)
    }

    @Test func colorsHomogeneityColorDecorativeAccent5Default() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent5Default)
    }

    @Test func colorsHomogeneityColorDecorativeAccent5Emphasized() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent5Emphasized)
    }

    @Test func colorsHomogeneityColorDecorativeAccent5Muted() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeAccent5Muted)
    }

    @Test func colorsHomogeneityColorDecorativeBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeBrandPrimary)
    }

    @Test func colorsHomogeneityColorDecorativeBrandSecondary() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeBrandSecondary)
    }

    @Test func colorsHomogeneityColorDecorativeBrandTertiary() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeBrandTertiary)
    }

    @Test func colorsHomogeneityColorDecorativeSkinTint100() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeSkinTint100)
    }

    @Test func colorsHomogeneityColorDecorativeSkinTint200() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeSkinTint200)
    }

    @Test func colorsHomogeneityColorDecorativeSkinTint300() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeSkinTint300)
    }

    @Test func colorsHomogeneityColorDecorativeSkinTint400() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeSkinTint400)
    }

    @Test func colorsHomogeneityColorDecorativeSkinTint500() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeSkinTint500)
    }

    @Test func colorsHomogeneityColorDecorativeSkinTint600() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeSkinTint600)
    }

    @Test func colorsHomogeneityColorDecorativeSkinTint700() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeSkinTint700)
    }

    @Test func colorsHomogeneityColorDecorativeSkinTint800() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeSkinTint800)
    }

    @Test func colorsHomogeneityColorDecorativeSkinTint900() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeSkinTint900)
    }

    @Test func colorsHomogeneityColorDecorativeNeutralEmphasizedHigher() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeNeutralEmphasizedHigher)
    }

    @Test func colorsHomogeneityColorDecorativeNeutralEmphasizedLow() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeNeutralEmphasizedLow)
    }

    @Test func colorsHomogeneityColorDecorativeNeutralEmphasizedLower() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeNeutralEmphasizedLower)
    }

    @Test func colorsHomogeneityColorDecorativeNeutralEmphasizedLowest() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeNeutralEmphasizedLowest)
    }

    @Test func colorsHomogeneityColorDecorativeNeutralMutedHigh() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeNeutralMutedHigh)
    }

    @Test func colorsHomogeneityColorDecorativeNeutralMutedHigher() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeNeutralMutedHigher)
    }

    @Test func colorsHomogeneityColorDecorativeNeutralMutedHighest() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeNeutralMutedHighest)
    }

    @Test func colorsHomogeneityColorDecorativeNeutralMutedLow() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeNeutralMutedLow)
    }

    @Test func colorsHomogeneityColorDecorativeNeutralMutedLower() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeNeutralMutedLower)
    }

    @Test func colorsHomogeneityColorDecorativeNeutralMutedLowest() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeNeutralMutedLowest)
    }

    @Test func colorsHomogeneityColorDecorativeNeutralMutedMedium() throws {
        assertHomogeneity(inverseTheme.colors.colorDecorativeNeutralMutedMedium)
    }

    // MARK: - Color - Chart

    @Test func colorsHomogeneityColorChartBorder() throws {
        assertHomogeneity(inverseTheme.colors.colorChartBorder)
    }

    @Test func colorsHomogeneityColorChartBorderContrast() throws {
        assertHomogeneity(inverseTheme.colors.colorChartBorderContrast)
    }

    @Test func colorsHomogeneityColorChartCategoricalTier1() throws {
        assertHomogeneity(inverseTheme.colors.colorChartCategoricalTier1)
    }

    @Test func colorsHomogeneityColorChartCategoricalTier2() throws {
        assertHomogeneity(inverseTheme.colors.colorChartCategoricalTier2)
    }

    @Test func colorsHomogeneityColorChartCategoricalTier3() throws {
        assertHomogeneity(inverseTheme.colors.colorChartCategoricalTier3)
    }

    @Test func colorsHomogeneityColorChartCategoricalTier4() throws {
        assertHomogeneity(inverseTheme.colors.colorChartCategoricalTier4)
    }

    @Test func colorsHomogeneityColorChartCategoricalTier5() throws {
        assertHomogeneity(inverseTheme.colors.colorChartCategoricalTier5)
    }

    @Test func colorsHomogeneityColorChartCategoricalTier6() throws {
        assertHomogeneity(inverseTheme.colors.colorChartCategoricalTier6)
    }

    @Test func colorsHomogeneityColorChartCategoricalTier7() throws {
        assertHomogeneity(inverseTheme.colors.colorChartCategoricalTier7)
    }

    @Test func colorsHomogeneityColorChartCategoricalTier8() throws {
        assertHomogeneity(inverseTheme.colors.colorChartCategoricalTier8)
    }

    @Test func colorsHomogeneityColorChartCategoricalTier9() throws {
        assertHomogeneity(inverseTheme.colors.colorChartCategoricalTier9)
    }

    @Test func colorsHomogeneityColorChartCategoricalTier10() throws {
        assertHomogeneity(inverseTheme.colors.colorChartCategoricalTier10)
    }

    @Test func colorsHomogeneityColorChartFunctionalInfo() throws {
        assertHomogeneity(inverseTheme.colors.colorChartFunctionalInfo)
    }

    @Test func colorsHomogeneityColorChartFunctionalNegative() throws {
        assertHomogeneity(inverseTheme.colors.colorChartFunctionalNegative)
    }

    @Test func colorsHomogeneityColorChartFunctionalPositive() throws {
        assertHomogeneity(inverseTheme.colors.colorChartFunctionalPositive)
    }

    @Test func colorsHomogeneityColorChartFunctionalWarning() throws {
        assertHomogeneity(inverseTheme.colors.colorChartFunctionalWarning)
    }

    @Test func colorsHomogeneityColorChartGridlines() throws {
        assertHomogeneity(inverseTheme.colors.colorChartGridlines)
    }

    @Test func colorsHomogeneityColorChartHighlight() throws {
        assertHomogeneity(inverseTheme.colors.colorChartHighlight)
    }

    @Test func colorsHomogeneityColorChartNeutral() throws {
        assertHomogeneity(inverseTheme.colors.colorChartNeutral)
    }

    // MARK: - Color - Repository

    @Test func colorsHomogeneityColorRepositoryAccentDefault() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryAccentDefault)
    }

    @Test func colorsHomogeneityColorRepositoryAccentHighest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryAccentHighest)
    }

    @Test func colorsHomogeneityColorRepositoryAccentLow() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryAccentLow)
    }

    @Test func colorsHomogeneityColorRepositoryAccentLowest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryAccentLowest)
    }

    @Test func colorsHomogeneityColorRepositoryInfoDefault() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryInfoDefault)
    }

    @Test func colorsHomogeneityColorRepositoryInfoHighest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryInfoHighest)
    }

    @Test func colorsHomogeneityColorRepositoryInfoLow() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryInfoLow)
    }

    @Test func colorsHomogeneityColorRepositoryInfoLowest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryInfoLowest)
    }

    @Test func colorsHomogeneityColorRepositoryNegativeDefault() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNegativeDefault)
    }

    @Test func colorsHomogeneityColorRepositoryNegativeHigh() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNegativeHigh)
    }

    @Test func colorsHomogeneityColorRepositoryNegativeHigher() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNegativeHigher)
    }

    @Test func colorsHomogeneityColorRepositoryNegativeHighest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNegativeHighest)
    }

    @Test func colorsHomogeneityColorRepositoryNegativeLow() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNegativeLow)
    }

    @Test func colorsHomogeneityColorRepositoryNegativeLower() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNegativeLower)
    }

    @Test func colorsHomogeneityColorRepositoryNegativeLowest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNegativeLowest)
    }

    @Test func colorsHomogeneityColorRepositoryNeutralEmphasizedBlack() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNeutralEmphasizedBlack)
    }

    @Test func colorsHomogeneityColorRepositoryNeutralEmphasizedHigh() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNeutralEmphasizedHigh)
    }

    @Test func colorsHomogeneityColorRepositoryNeutralEmphasizedHigher() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNeutralEmphasizedHigher)
    }

    @Test func colorsHomogeneityColorRepositoryNeutralEmphasizedHighest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNeutralEmphasizedHighest)
    }

    @Test func colorsHomogeneityColorRepositoryNeutralEmphasizedMedium() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNeutralEmphasizedMedium)
    }

    @Test func colorsHomogeneityColorRepositoryNeutralMutedLower() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNeutralMutedLower)
    }

    @Test func colorsHomogeneityColorRepositoryNeutralMutedLowest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNeutralMutedLowest)
    }

    @Test func colorsHomogeneityColorRepositoryNeutralMutedWhite() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryNeutralMutedWhite)
    }

    @Test func colorsHomogeneityColorRepositoryOpacityBlackHigh() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityBlackHigh)
    }

    @Test func colorsHomogeneityColorRepositoryOpacityBlackHigher() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityBlackHigher)
    }

    @Test func colorsHomogeneityColorRepositoryOpacityBlackHighest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityBlackHighest)
    }

    @Test func colorsHomogeneityColorRepositoryOpacityBlackLow() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityBlackLow)
    }

    @Test func colorsHomogeneityColorRepositoryOpacityBlackLower() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityBlackLower)
    }

    @Test func colorsHomogeneityColorRepositoryOpacityBlackLowest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityBlackLowest)
    }

    @Test func colorsHomogeneityColorRepositoryOpacityBlackMedium() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityBlackMedium)
    }

    @Test func colorsHomogeneityColorRepositoryOpacityBlackTransparent() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityBlackTransparent)
    }

    @Test func colorsHomogeneityColorRepositoryOpacityInfo() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityInfo)
    }

    @Test func colorsHomogeneityColorRepositoryOpacityNegative() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityNegative)
    }

    @Test func colorsHomogeneityColorRepositoryOpacityPositive() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityPositive)
    }

    @Test func colorsHomogeneityColorRepositoryOpacityWarning() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityWarning)
    }

    @Test func colorsHomogeneityColorRepositoryOpacityWhiteHigh() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityWhiteHigh)
    }

    @Test func colorsHomogeneityColorRepositoryOpacityWhiteHigher() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityWhiteHigher)
    }

    @Test func colorsHomogeneityColorRepositoryOpacityWhiteHighest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityWhiteHighest)
    }

    @Test func colorsHomogeneityColorRepositoryOpacityWhiteMedium() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityWhiteMedium)
    }

    @Test func colorsHomogeneityColorRepositoryOpacityWhiteLow() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityWhiteLow)
    }

    @Test func colorsHomogeneityColorRepositoryOpacityWhiteLower() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityWhiteLower)
    }

    @Test func colorsHomogeneityColorRepositoryOpacityWhiteLowest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityWhiteLowest)
    }

    @Test func colorsHomogeneityColorRepositoryOpacityWhiteLowTransparent() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryOpacityWhiteTransparent)
    }

    @Test func colorsHomogeneityColorRepositoryPositiveDefault() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryPositiveDefault)
    }

    @Test func colorsHomogeneityColorRepositoryPositiveHigh() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryPositiveHigh)
    }

    @Test func colorsHomogeneityColorRepositoryPositiveHighest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryPositiveHighest)
    }

    @Test func colorsHomogeneityColorRepositoryPositiveLow() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryPositiveLow)
    }

    @Test func colorsHomogeneityColorRepositoryPositiveLowest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryPositiveLowest)
    }

    @Test func colorsHomogeneityColorRepositoryPrimaryDefault() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryPrimaryDefault)
    }

    @Test func colorsHomogeneityColorRepositoryPrimaryLow() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryPrimaryLow)
    }

    @Test func colorsHomogeneityColorRepositoryWarningDefault() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryWarningDefault)
    }

    @Test func colorsHomogeneityColorRepositoryWarningHighest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryWarningHighest)
    }

    @Test func colorsHomogeneityColorRepositoryWarningLow() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryWarningLow)
    }

    @Test func colorsHomogeneityColorRepositoryWarningLowest() throws {
        assertHomogeneity(inverseTheme.colors.colorRepositoryWarningLowest)
    }
}

// swiftlint:enable type_body_length

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

    // MARK: Semantic token - Colors - Background

    func testColorsHomogeneityColorBackgroundPrimary() throws {
        assertHomogeneity(inverseTheme.colorBgPrimary)
    }

    func testColorsHomogeneityColorBackgroundSecondary() throws {
        assertHomogeneity(inverseTheme.colorBgSecondary)
    }

    func testColorsHomogeneityColorBackgroundTertiary() throws {
        assertHomogeneity(inverseTheme.colorBgTertiary)
    }

    func testColorsHomogeneityColorBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBgEmphasized)
    }

    func testColorsHomogeneityColorBackgroundBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colorBgBrandPrimary)
    }

    func testColorsHomogeneityColorBackgroundStatusNeutral() throws {
        assertHomogeneity(inverseTheme.colorBgStatusNeutral)
    }

    func testColorsHomogeneityColorBackgroundStatusNeutralOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBgStatusNeutralOnBgEmphasized)
    }

    func testColorsHomogeneityColorBackgroundStatusPositiveMuted() throws {
        assertHomogeneity(inverseTheme.colorBgStatusPositiveMuted)
    }

    func testColorsHomogeneityColorBackgroundStatusPositiveMutedOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBgStatusPositiveMutedOnBgEmphasized)
    }

    func testColorsHomogeneityColorBackgroundStatusPositiveEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBgStatusPositiveEmphasized)
    }

    func testColorsHomogeneityColorBackgroundStatusInfoMuted() throws {
        assertHomogeneity(inverseTheme.colorBgStatusInfoMuted)
    }

    func testColorsHomogeneityColorBackgroundStatusInfoMutedOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBgStatusInfoMutedOnBgEmphasized)
    }

    func testColorsHomogeneityColorBackgroundStatusInfoEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBgStatusInfoEmphasized)
    }

    func testColorsHomogeneityColorBackgroundStatusWarningMuted() throws {
        assertHomogeneity(inverseTheme.colorBgStatusWarningMuted)
    }

    func testColorsHomogeneityColorBackgroundStatusWarningMutedOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBgStatusWarningMutedOnBgEmphasized)
    }

    func testColorsHomogeneityColorBackgroundStatusWarningEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBgStatusWarningEmphasized)
    }

    func testColorsHomogeneityColorBackgroundStatusNegativeMuted() throws {
        assertHomogeneity(inverseTheme.colorBgStatusNegativeMuted)
    }

    func testColorsHomogeneityColorBackgroundStatusNegativeMutedOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBgStatusNegativeMutedOnBgEmphasized)
    }

    func testColorsHomogeneityColorBackgroundStatusNegativeEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBgStatusNegativeEmphasized)
    }

    func testColorsHomogeneityColorBackgroundStatusAccentMuted() throws {
        assertHomogeneity(inverseTheme.colorBgStatusAccentMuted)
    }

    func testColorsHomogeneityColorBackgroundStatusAccentMutedOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBgStatusAccentMutedOnBgEmphasized)
    }

    func testColorsHomogeneityColorBackgroundStatusAccentEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBgStatusAccentEmphasized)
    }

    // MARK: Semantic token - Colors - Content - Status

    func testColorsHomogeneityColorContentDefault() throws {
        assertHomogeneity(inverseTheme.colorContentDefault)
    }

    func testColorsHomogeneityColorContentDefaultOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorContentDefaultOnBgEmphasized)
    }

    func testColorsHomogeneityColorContentMuted() throws {
        assertHomogeneity(inverseTheme.colorContentMuted)
    }

    func testColorsHomogeneityColorContentMutedOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorContentMutedOnBgEmphasized)
    }

    func testColorsHomogeneityColorContentDisabled() throws {
        assertHomogeneity(inverseTheme.colorContentDisabled)
    }

    func testColorsHomogeneityColorContentDisabledOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorContentDisabledOnBgEmphasized)
    }

    func testColorsHomogeneityColorContentBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colorContentBrandPrimary)
    }

    func testColorsHomogeneityColorContentStatusPositive() throws {
        assertHomogeneity(inverseTheme.colorContentStatusPositive)
    }

    func testColorsHomogeneityColorContentStatusInfo() throws {
        assertHomogeneity(inverseTheme.colorContentStatusInfo)
    }

    func testColorsHomogeneityColorContentStatusWarning() throws {
        assertHomogeneity(inverseTheme.colorContentStatusWarning)
    }

    func testColorsHomogeneityColorContentStatusNegative() throws {
        assertHomogeneity(inverseTheme.colorContentStatusNegative)
    }

    // MARK: Semantic token - Colors - Border

    func testColorsHomogeneityColorBorderDefault() throws {
        assertHomogeneity(inverseTheme.colorBorderDefault)
    }

    func testColorsHomogeneityColorBorderDefaultOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBorderDefaultOnBgEmphasized)
    }

    func testColorsHomogeneityColorBorderEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBorderEmphasized)
    }

    func testColorsHomogeneityColorBorderEmphasizedOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBorderEmphasizedOnBgEmphasized)
    }

    func testColorsHomogeneityColorBorderFocus() throws {
        assertHomogeneity(inverseTheme.colorBorderFocus)
    }

    func testColorsHomogeneityColorBorderBrandPrimaryOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBorderBrandPrimaryOnBgEmphasized)
    }

    func testColorsHomogeneityColorBorderBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colorBorderBrandPrimary)
    }

    // MARK: Semantic token - Colors - Action

    func testColorsHomogeneityColorActionSelected() throws {
        assertHomogeneity(inverseTheme.colorActionSelected)
    }

    func testColorsHomogeneityColorActionSelectedOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionSelectedOnBgEmphasized)
    }

    func testColorsHomogeneityColorActionDisabled() throws {
        assertHomogeneity(inverseTheme.colorActionDisabled)
    }

    func testColorsHomogeneityColorActionDisabledOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionDisabledOnBgEmphasized)
    }

    func testColorsHomogeneityColorActionVisited() throws {
        assertHomogeneity(inverseTheme.colorActionVisited)
    }

    func testColorsHomogeneityColorActionPrimaryEnabled() throws {
        assertHomogeneity(inverseTheme.colorActionPrimaryEnabled)
    }

    func testColorsHomogeneityColorActionPrimaryEnabledOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionPrimaryEnabledOnBgEmphasized)
    }

    func testColorsHomogeneityColorActionPrimaryHover() throws {
        assertHomogeneity(inverseTheme.colorActionPrimaryHover)
    }

    func testColorsHomogeneityColorActionPrimaryHoverOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionPrimaryHoverOnBgEmphasized)
    }

    func testColorsHomogeneityColorActionPrimaryPressed() throws {
        assertHomogeneity(inverseTheme.colorActionPrimaryPressed)
    }

    func testColorsHomogeneityColorActionPrimaryPressedOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionPrimaryPressedOnBgEmphasized)
    }

    func testColorsHomogeneityColorActionPrimaryLoading() throws {
        assertHomogeneity(inverseTheme.colorActionPrimaryLoading)
    }

    func testColorsHomogeneityColorActionPrimaryLoadingOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionPrimaryLoadingOnBgEmphasized)
    }

    func testColorsHomogeneityColorActionPrimaryFocus() throws {
        assertHomogeneity(inverseTheme.colorActionPrimaryFocus)
    }

    func testColorsHomogeneityColorActionPrimaryFocusOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionPrimaryFocusOnBgEmphasized)
    }

    func testColorsHomogeneityColorActionSecondaryEnabled() throws {
        assertHomogeneity(inverseTheme.colorActionSecondaryEnabled)
    }

    func testColorsHomogeneityColorActionSecondaryEnabledOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionSecondaryEnabledOnBgEmphasized)
    }

    func testColorsHomogeneityColorActionSecondaryHover() throws {
        assertHomogeneity(inverseTheme.colorActionSecondaryHover)
    }

    func testColorsHomogeneityColorActionSecondaryHoverOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionSecondaryHoverOnBgEmphasized)
    }

    func testColorsHomogeneityColorActionSecondaryPressed() throws {
        assertHomogeneity(inverseTheme.colorActionSecondaryPressed)
    }

    func testColorsHomogeneityColorActionSecondaryPressedOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionSecondaryPressedOnBgEmphasized)
    }

    func testColorsHomogeneityColorActionSecondaryLoading() throws {
        assertHomogeneity(inverseTheme.colorActionSecondaryLoading)
    }

    func testColorsHomogeneityColorActionSecondaryLoadingOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionSecondaryLoadingOnBgEmphasized)
    }

    func testColorsHomogeneityColorActionSecondaryFocus() throws {
        assertHomogeneity(inverseTheme.colorActionSecondaryFocus)
    }

    func testColorsHomogeneityColorActionSecondaryFocusOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionSecondaryFocusOnBgEmphasized)
    }

    func testColorsHomogeneityColorActionNegativeEnabled() throws {
        assertHomogeneity(inverseTheme.colorActionNegativeEnabled)
    }

    func testColorsHomogeneityColorActionNegativeHover() throws {
        assertHomogeneity(inverseTheme.colorActionNegativeHover)
    }

    func testColorsHomogeneityColorActionNegativePressed() throws {
        assertHomogeneity(inverseTheme.colorActionNegativePressed)
    }

    func testColorsHomogeneityColorActionNegativeLoading() throws {
        assertHomogeneity(inverseTheme.colorActionNegativeLoading)
    }

    func testColorsHomogeneityColorActionNegativeFocus() throws {
        assertHomogeneity(inverseTheme.colorActionNegativeFocus)
    }

    // MARK: Semantic token - Colors - Always

    func testColorsHomogeneityColorAlwaysBlack() throws {
        assertHomogeneity(inverseTheme.colorAlwaysBlack)
    }

    func testColorsHomogeneityColorAlwaysWhite() throws {
        assertHomogeneity(inverseTheme.colorAlwaysWhite)
    }

    func testColorsHomogeneityColorAlwaysWarning() throws {
        assertHomogeneity(inverseTheme.colorAlwaysWarning)
    }

    func testColorsHomogeneityColorAlwaysNegative() throws {
        assertHomogeneity(inverseTheme.colorAlwaysNegative)
    }

    func testColorsHomogeneityColorAlwaysPositive() throws {
        assertHomogeneity(inverseTheme.colorAlwaysPositive)
    }

    func testColorsHomogeneityColorAlwaysInfo() throws {
        assertHomogeneity(inverseTheme.colorAlwaysInfo)
    }

    func testColorsHomogeneityColorAlwaysAccent() throws {
        assertHomogeneity(inverseTheme.colorAlwaysAccent)
    }

    // MARK: Semantic token - Colors - Transparent

    func testColorsHomogeneityColorTransparentDefault() throws {
        assertHomogeneity(inverseTheme.colorTransparentDefault)
    }

    // MARK: Semantic token - Colors - Elevation

    func testColorsHomogeneityColorElevationRaised() throws {
        assertHomogeneity(inverseTheme.colorElevationRaised)
    }

    func testColorsHomogeneityColorElevationRaisedOnBgSecondary() throws {
        assertHomogeneity(inverseTheme.colorElevationRaisedOnBgSecondary)
    }

    func testColorsHomogeneityColorElevationRaisedOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorElevationRaisedOnBgEmphasized)
    }

    func testColorsHomogeneityColorElevationDrag() throws {
        assertHomogeneity(inverseTheme.colorElevationDrag)
    }

    func testColorsHomogeneityColorElevationDragOnBgSecondary() throws {
        assertHomogeneity(inverseTheme.colorElevationDragOnBgSecondary)
    }

    func testColorsHomogeneityColorElevationDragOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorElevationDragOnBgEmphasized)
    }

    func testColorsHomogeneityColorElevationOverlayDefault() throws {
        assertHomogeneity(inverseTheme.colorElevationOverlayDefault)
    }

    func testColorsHomogeneityColorElevationOverlayDefaultOnBgSecondary() throws {
        assertHomogeneity(inverseTheme.colorElevationOverlayDefaultOnBgSecondary)
    }

    func testColorsHomogeneityColorElevationOverlayDefaultOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorElevationOverlayDefaultOnBgEmphasized)
    }

    func testColorsHomogeneityColorElevationOverlayEmphasized() throws {
        assertHomogeneity(inverseTheme.colorElevationOverlayEmphasized)
    }

    func testColorsHomogeneityColorElevationOverlayEmphasizedOnBgSecondary() throws {
        assertHomogeneity(inverseTheme.colorElevationOverlayEmphasizedOnBgSecondary)
    }

    func testColorsHomogeneityColorElevationOverlayEmphasizedOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorElevationOverlayEmphasizedOnBgEmphasized)
    }

    func testColorsHomogeneityColorElevationModal() throws {
        assertHomogeneity(inverseTheme.colorElevationModal)
    }

    // MARK: Semantic token - Colors - Decorative

    func testColorsHomogeneityColorDecorativeNeutralMuted() throws {
        assertHomogeneity(inverseTheme.colorDecorativeNeutralMuted)
    }

    func testColorsHomogeneityColorDecorativeNeutralDefault() throws {
        assertHomogeneity(inverseTheme.colorDecorativeNeutralDefault)
    }

    func testColorsHomogeneityColorDecorativeNeutralEmphasized() throws {
        assertHomogeneity(inverseTheme.colorDecorativeNeutralEmphasized)
    }

    func testColorsHomogeneityColorDecorativeAccent1Muted() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent1Muted)
    }

    func testColorsHomogeneityColorDecorativeAccent1Default() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent1Default)
    }

    func testColorsHomogeneityColorDecorativeAccent1Emphasized() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent1Emphasized)
    }

    func testColorsHomogeneityColorDecorativeAccent2Muted() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent2Muted)
    }

    func testColorsHomogeneityColorDecorativeAccent2Default() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent2Default)
    }

    func testColorsHomogeneityColorDecorativeAccent2Emphasized() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent2Emphasized)
    }

    func testColorsHomogeneityColorDecorativeAccent3Muted() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent3Muted)
    }

    func testColorsHomogeneityColorDecorativeAccent3Default() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent3Default)
    }

    func testColorsHomogeneityColorDecorativeAccent3Emphasized() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent3Emphasized)
    }

    func testColorsHomogeneityColorDecorativeAccent4Muted() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent4Muted)
    }

    func testColorsHomogeneityColorDecorativeAccent4Default() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent4Default)
    }

    func testColorsHomogeneityColorDecorativeAccent4Emphasized() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent4Emphasized)
    }

    func testColorsHomogeneityColorDecorativeAccent5Muted() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent5Muted)
    }

    func testColorsHomogeneityColorDecorativeAccent5Default() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent5Default)
    }

    func testColorsHomogeneityColorDecorativeAccent5Emphasized() throws {
        assertHomogeneity(inverseTheme.colorDecorativeAccent5Emphasized)
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

    // MARK: Semantic token - Colors - Chart

    func testColorsHomogeneityColorChartCategoricalNeutral() throws {
        assertHomogeneity(inverseTheme.colorChartCategoricalNeutral)
    }

    func testColorsHomogeneityColorChartCategoricalBrand() throws {
        assertHomogeneity(inverseTheme.colorChartCategoricalBrand)
    }

    func testColorsHomogeneityColorChartCategoricalPositive() throws {
        assertHomogeneity(inverseTheme.colorChartCategoricalPositive)
    }

    func testColorsHomogeneityColorChartCategoricalNegative() throws {
        assertHomogeneity(inverseTheme.colorChartCategoricalNegative)
    }

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

    func testColorsHomogeneityColorChartSequentialAccent1Tint100() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent1Tint100)
    }

    func testColorsHomogeneityColorChartSequentialAccent1Tint200() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent1Tint200)
    }

    func testColorsHomogeneityColorChartSequentialAccent1Tint300() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent1Tint300)
    }

    func testColorsHomogeneityColorChartSequentialAccent1Tint400() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent1Tint400)
    }

    func testColorsHomogeneityColorChartSequentialAccent1Tint500() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent1Tint500)
    }

    func testColorsHomogeneityColorChartSequentialAccent1Tint600() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent1Tint600)
    }

    func testColorsHomogeneityColorChartSequentialAccent1Tint700() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent1Tint700)
    }

    func testColorsHomogeneityColorChartSequentialAccent1Tint800() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent1Tint800)
    }

    func testColorsHomogeneityColorChartSequentialAccent1Tint900() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent1Tint900)
    }

    func testColorsHomogeneityColorChartSequentialAccent2Tint100() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent2Tint100)
    }

    func testColorsHomogeneityColorChartSequentialAccent2Tint200() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent2Tint200)
    }

    func testColorsHomogeneityColorChartSequentialAccent2Tint300() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent2Tint300)
    }

    func testColorsHomogeneityColorChartSequentialAccent2Tint400() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent2Tint400)
    }

    func testColorsHomogeneityColorChartSequentialAccent2Tint500() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent2Tint500)
    }

    func testColorsHomogeneityColorChartSequentialAccent2Tint600() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent2Tint600)
    }

    func testColorsHomogeneityColorChartSequentialAccent2Tint700() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent2Tint700)
    }

    func testColorsHomogeneityColorChartSequentialAccent2Tint800() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent2Tint800)
    }

    func testColorsHomogeneityColorChartSequentialAccent2Tint900() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent2Tint900)
    }

    func testColorsHomogeneityColorChartSequentialAccent3Tint100() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent3Tint100)
    }

    func testColorsHomogeneityColorChartSequentialAccent3Tint200() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent3Tint200)
    }

    func testColorsHomogeneityColorChartSequentialAccent3Tint300() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent3Tint300)
    }

    func testColorsHomogeneityColorChartSequentialAccent3Tint400() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent3Tint400)
    }

    func testColorsHomogeneityColorChartSequentialAccent3Tint500() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent3Tint500)
    }

    func testColorsHomogeneityColorChartSequentialAccent3Tint600() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent3Tint600)
    }

    func testColorsHomogeneityColorChartSequentialAccent3Tint700() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent3Tint700)
    }

    func testColorsHomogeneityColorChartSequentialAccent3Tint800() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent3Tint800)
    }

    func testColorsHomogeneityColorChartSequentialAccent3Tint900() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent3Tint900)
    }

    func testColorsHomogeneityColorChartSequentialAccent4Tint100() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent4Tint100)
    }

    func testColorsHomogeneityColorChartSequentialAccent4Tint200() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent4Tint200)
    }

    func testColorsHomogeneityColorChartSequentialAccent4Tint300() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent4Tint300)
    }

    func testColorsHomogeneityColorChartSequentialAccent4Tint400() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent4Tint400)
    }

    func testColorsHomogeneityColorChartSequentialAccent4Tint500() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent4Tint500)
    }

    func testColorsHomogeneityColorChartSequentialAccent4Tint600() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent4Tint600)
    }

    func testColorsHomogeneityColorChartSequentialAccent4Tint700() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent4Tint700)
    }

    func testColorsHomogeneityColorChartSequentialAccent4Tint800() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent4Tint800)
    }

    func testColorsHomogeneityColorChartSequentialAccent4Tint900() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent4Tint900)
    }

    func testColorsHomogeneityColorChartSequentialAccent5Tint100() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent5Tint100)
    }

    func testColorsHomogeneityColorChartSequentialAccent5Tint200() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent5Tint200)
    }

    func testColorsHomogeneityColorChartSequentialAccent5Tint300() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent5Tint300)
    }

    func testColorsHomogeneityColorChartSequentialAccent5Tint400() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent5Tint400)
    }

    func testColorsHomogeneityColorChartSequentialAccent5Tint500() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent5Tint500)
    }

    func testColorsHomogeneityColorChartSequentialAccent5Tint600() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent5Tint600)
    }

    func testColorsHomogeneityColorChartSequentialAccent5Tint700() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent5Tint700)
    }

    func testColorsHomogeneityColorChartSequentialAccent5Tint800() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent5Tint800)
    }

    func testColorsHomogeneityColorChartSequentialAccent5Tint900() throws {
        assertHomogeneity(inverseTheme.colorChartSequentialAccent5Tint900)
    }
}
// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_body_length

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

    private func assertHomogeneity(_ value: ColorSemanticToken) {
        XCTAssertEqual(value.light, value.dark)
    }

    // MARK: - Test cases

    // MARK: Semantic token - Colors - Background

    func testColorsHomogeneityColorBackgroundPrimary() throws {
        assertHomogeneity(inverseTheme.colorBackgroundPrimary)
    }

    func testColorsHomogeneityColorBackgroundSecondary() throws {
        assertHomogeneity(inverseTheme.colorBackgroundSecondary)
    }

    func testColorsHomogeneityColorBackgroundTertiary() throws {
        assertHomogeneity(inverseTheme.colorBackgroundTertiary)
    }

    func testColorsHomogeneityColorBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBackgroundEmphasized)
    }

    func testColorsHomogeneityColorBackgroundBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colorBackgroundBrandPrimary)
    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorBackgroundBrandSecondary() throws {
//        assertHomogeneity(inverseTheme.colorBackgroundBrandSecondary)
//    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorBackgroundBrandTertiary() throws {
//        assertHomogeneity(inverseTheme.colorBackgroundBrandTertiary)
//    }

    func testColorsHomogeneityColorBackgroundStatusNeutral() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusNeutral)
    }

    func testColorsHomogeneityColorBackgroundStatusNeutralOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusNeutralOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorBackgroundStatusPositiveMuted() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusPositiveMuted)
    }

    func testColorsHomogeneityColorBackgroundStatusPositiveMutedOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusPositiveMutedOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorBackgroundStatusPositiveEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusPositiveEmphasized)
    }

    func testColorsHomogeneityColorBackgroundStatusInfoMuted() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusInfoMuted)
    }

    func testColorsHomogeneityColorBackgroundStatusInfoMutedOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusInfoMutedOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorBackgroundStatusInfoEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusInfoEmphasized)
    }

    func testColorsHomogeneityColorBackgroundStatusWarningMuted() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusWarningMuted)
    }

    func testColorsHomogeneityColorBackgroundStatusWarningMutedOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusWarningMutedOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorBackgroundStatusWarningEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusWarningEmphasized)
    }

    func testColorsHomogeneityColorBackgroundStatusNegativeMuted() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusNegativeMuted)
    }

    func testColorsHomogeneityColorBackgroundStatusNegativeMutedOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusNegativeMutedOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorBackgroundStatusNegativeEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusNegativeEmphasized)
    }

    func testColorsHomogeneityColorBackgroundStatusAccentMuted() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusAccentMuted)
    }

    func testColorsHomogeneityColorBackgroundStatusAccentMutedOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusAccentMutedOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorBackgroundStatusAccentEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBackgroundStatusAccentEmphasized)
    }

    // MARK: Semantic token - Colors - Content - Status

    func testColorsHomogeneityColorContentDefault() throws {
        assertHomogeneity(inverseTheme.colorContentDefault)
    }

    func testColorsHomogeneityColorContentContentDefaultOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorContentContentDefaultOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorContentMuted() throws {
        assertHomogeneity(inverseTheme.colorContentMuted)
    }

    func testColorsHomogeneityColorContentContentMutedOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorContentContentMutedOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorContentDisabled() throws {
        assertHomogeneity(inverseTheme.colorContentDisabled)
    }

    func testColorsHomogeneityColorContentContentDisabledOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorContentContentDisabledOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorContentBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colorContentBrandPrimary)
    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorContentBrandSecondary() throws {
//        assertHomogeneity(inverseTheme.colorContentBrandSecondary)
//    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorContentBrandTertiary() throws {
//        assertHomogeneity(inverseTheme.colorContentBrandTertiary)
//    }

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

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorContentStatusAccent() throws {
//        assertHomogeneity(inverseTheme.colorContentStatusAccent)
//    }

    // MARK: Semantic token - Colors - Content - On Background

    func testColorsHomogeneityColorContentOnBackgroundPrimary() throws {
        assertHomogeneity(inverseTheme.colorContentOnBackgroundPrimary)
    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorContentOnBackgroundSecondary() throws {
//        assertHomogeneity(inverseTheme.colorContentOnBackgroundSecondary)
//    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorContentOnBackgroundTertiary() throws {
//        assertHomogeneity(inverseTheme.colorContentOnBackgroundTertiary)
//    }

    func testColorsHomogeneityColorContentOnBackgroundStatusPositiveMuted() throws {
        assertHomogeneity(inverseTheme.colorContentOnBackgroundStatusPositiveMuted)
    }

    func testColorsHomogeneityColorContentOnBackgroundStatusPositiveMutedOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorContentOnBackgroundStatusPositiveMutedOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorContentOnBackgroundStatusPositiveEmphasized() throws {
        assertHomogeneity(inverseTheme.colorContentOnBackgroundStatusPositiveEmphasized)
    }

    func testColorsHomogeneityColorContentOnBackgroundStatusInfoMuted() throws {
        assertHomogeneity(inverseTheme.colorContentOnBackgroundStatusInfoMuted)
    }

    func testColorsHomogeneityColorContentOnBackgroundStatusInfoMutedOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorContentOnBackgroundStatusInfoMutedOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorContentOnBackgroundStatusInfoEmphasized() throws {
        assertHomogeneity(inverseTheme.colorContentOnBackgroundStatusInfoEmphasized)
    }

    func testColorsHomogeneityColorContentOnBackgroundStatusWarningMuted() throws {
        assertHomogeneity(inverseTheme.colorContentOnBackgroundStatusWarningMuted)
    }

    func testColorsHomogeneityColorContentOnBackgroundStatusWarningMutedOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorContentOnBackgroundStatusWarningMutedOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorContentOnBackgroundStatusWarningEmphasized() throws {
        assertHomogeneity(inverseTheme.colorContentOnBackgroundStatusWarningEmphasized)
    }

    func testColorsHomogeneityColorContentOnBackgroundStatusNegativeMuted() throws {
        assertHomogeneity(inverseTheme.colorContentOnBackgroundStatusNegativeMuted)
    }

    func testColorsHomogeneityColorContentOnBackgroundStatusNegativeMutedOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorContentOnBackgroundStatusNegativeMutedOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorContentOnBackgroundStatusNegativeEmphasized() throws {
        assertHomogeneity(inverseTheme.colorContentOnBackgroundStatusNegativeEmphasized)
    }

    func testColorsHomogeneityColorContentOnBackgroundStatusAccentMuted() throws {
        assertHomogeneity(inverseTheme.colorContentOnBackgroundStatusAccentMuted)
    }

    func testColorsHomogeneityColorContentOnBackgroundStatusAccentMutedOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorContentOnBackgroundStatusAccentMutedOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorContentOnBackgroundStatusAccentedEmphasized() throws {
        assertHomogeneity(inverseTheme.colorContentOnBackgroundStatusAccentedEmphasized)
    }

    // MARK: Semantic token - Colors - Border

    func testColorsHomogeneityColorBorderDefault() throws {
        assertHomogeneity(inverseTheme.colorBorderDefault)
    }

    func testColorsHomogeneityColorBorderDefaultOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBorderDefaultOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorBorderEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBorderEmphasized)
    }

    func testColorsHomogeneityColorBorderEmphasizedOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBorderEmphasizedOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorBorderFocus() throws {
        assertHomogeneity(inverseTheme.colorBorderFocus)
    }

    func testColorsHomogeneityColorBorderBrandPrimaryOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorBorderBrandPrimaryOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorBorderBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colorBorderBrandPrimary)
    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorBorderBrandSecondary() throws {
//        assertHomogeneity(inverseTheme.colorBorderBrandSecondary)
//    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorBorderBrandTertiary() throws {
//        assertHomogeneity(inverseTheme.colorBorderBrandTertiary)
//    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorBorderStatusPositive() throws {
//        assertHomogeneity(inverseTheme.colorBorderStatusPositive)
//    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorBorderStatusInfo() throws {
//        assertHomogeneity(inverseTheme.colorBorderStatusInfo)
//    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorBorderStatusWarning() throws {
//        assertHomogeneity(inverseTheme.colorBorderStatusWarning)
//    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorBorderStatusNegative() throws {
//        assertHomogeneity(inverseTheme.colorBorderStatusNegative)
//    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorBorderStatusAccent() throws {
//        assertHomogeneity(inverseTheme.colorBorderStatusAccent)
//    }

    func testColorsHomogeneityColorBorderOnBackgroundBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colorBorderOnBackgroundBrandPrimary)
    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorBorderOnBackgroundBrandSecondary() throws {
//        assertHomogeneity(inverseTheme.colorBorderOnBackgroundBrandSecondary)
//    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorBorderOnBackgroundBrandTertiary() throws {
//        assertHomogeneity(inverseTheme.colorBorderOnBackgroundBrandTertiary)
//    }

    // MARK: Semantic token - Colors - Action

    func testColorsHomogeneityColorActionSelected() throws {
        assertHomogeneity(inverseTheme.colorActionSelected)
    }

    func testColorsHomogeneityColorActionSelectedOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionSelectedOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorActionDisabled() throws {
        assertHomogeneity(inverseTheme.colorActionDisabled)
    }

    func testColorsHomogeneityColorActionDisabledOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionDisabledOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorActionVisited() throws {
        assertHomogeneity(inverseTheme.colorActionVisited)
    }

    func testColorsHomogeneityColorActionVistedOnBgEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionVistedOnBgEmphasized)
    }

    func testColorsHomogeneityColorActionPrimaryEnabled() throws {
        assertHomogeneity(inverseTheme.colorActionPrimaryEnabled)
    }

    func testColorsHomogeneityColorActionPrimaryEnabledOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionPrimaryEnabledOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorActionPrimaryHover() throws {
        assertHomogeneity(inverseTheme.colorActionPrimaryHover)
    }

    func testColorsHomogeneityColorActionPrimaryHoverOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionPrimaryHoverOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorActionPrimaryPressed() throws {
        assertHomogeneity(inverseTheme.colorActionPrimaryPressed)
    }

    func testColorsHomogeneityColorActionPrimaryPressedOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionPrimaryPressedOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorActionPrimaryLoading() throws {
        assertHomogeneity(inverseTheme.colorActionPrimaryLoading)
    }

    func testColorsHomogeneityColorActionPrimaryLoadingOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionPrimaryLoadingOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorActionPrimaryFocus() throws {
        assertHomogeneity(inverseTheme.colorActionPrimaryFocus)
    }

    func testColorsHomogeneityColorActionPrimaryFocusOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionPrimaryFocusOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorActionSecondaryEnabled() throws {
        assertHomogeneity(inverseTheme.colorActionSecondaryEnabled)
    }

    func testColorsHomogeneityColorActionSecondaryEnabledOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionSecondaryEnabledOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorActionSecondaryHover() throws {
        assertHomogeneity(inverseTheme.colorActionSecondaryHover)
    }

    func testColorsHomogeneityColorActionSecondaryHoverOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionSecondaryHoverOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorActionSecondaryPressed() throws {
        assertHomogeneity(inverseTheme.colorActionSecondaryPressed)
    }

    func testColorsHomogeneityColorActionSecondaryPressedOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionSecondaryPressedOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorActionSecondaryLoading() throws {
        assertHomogeneity(inverseTheme.colorActionSecondaryLoading)
    }

    func testColorsHomogeneityColorActionSecondaryLoadingOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionSecondaryLoadingOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorActionSecondaryFocus() throws {
        assertHomogeneity(inverseTheme.colorActionSecondaryFocus)
    }

    func testColorsHomogeneityColorActionSecondaryFocusOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionSecondaryFocusOnBackgroundEmphasized)
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

    func testColorsHomogeneityColorActionOnBackgroundActionDisabled() throws {
        assertHomogeneity(inverseTheme.colorActionOnBackgroundActionDisabled)
    }

    func testColorsHomogeneityColorActionOnBackgroundActionDisabledOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionOnBackgroundActionDisabledOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorActionOnBackgroundActionNegative() throws {
        assertHomogeneity(inverseTheme.colorActionOnBackgroundActionNegative)
    }

    func testColorsHomogeneityColorActionOnBackgroundActionPrimaryEnabled() throws {
        assertHomogeneity(inverseTheme.colorActionOnBackgroundActionPrimaryEnabled)
    }

    func testColorsHomogeneityColorActionOnBackgroundActionPrimaryEnabledOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionOnBackgroundActionPrimaryEnabledOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorActionOnBackgroundActionPrimaryHover() throws {
        assertHomogeneity(inverseTheme.colorActionOnBackgroundActionPrimaryHover)
    }

    func testColorsHomogeneityColorActionOnBackgroundActionPrimaryHoverOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionOnBackgroundActionPrimaryHoverOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorActionOnBackgroundActionPrimaryPressed() throws {
        assertHomogeneity(inverseTheme.colorActionOnBackgroundActionPrimaryPressed)
    }

    func testColorsHomogeneityColorActionOnBackgroundActionPrimaryPressedOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionOnBackgroundActionPrimaryPressedOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorActionOnBackgroundActionPrimaryLoading() throws {
        assertHomogeneity(inverseTheme.colorActionOnBackgroundActionPrimaryLoading)
    }

    func testColorsHomogeneityColorActionOnBackgroundActionPrimaryLoadingOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionOnBackgroundActionPrimaryLoadingOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorActionOnBackgroundActionPrimaryFocus() throws {
        assertHomogeneity(inverseTheme.colorActionOnBackgroundActionPrimaryFocus)
    }

    func testColorsHomogeneityColorActionOnBackgroundActionPrimaryFocusOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorActionOnBackgroundActionPrimaryFocusOnBackgroundEmphasized)
    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorActionOnBackgroundActionSecondaryEnabled() throws {
//        assertHomogeneity(inverseTheme.colorActionOnBackgroundActionSecondaryEnabled)
//    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorActionOnBackgroundActionSecondaryEnabledOnBackgroundEmphasized() throws {
//        assertHomogeneity(inverseTheme.colorActionOnBackgroundActionSecondaryEnabledOnBackgroundEmphasized)
//    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorActionOnBackgroundActionSecondaryHover() throws {
//        assertHomogeneity(inverseTheme.colorActionOnBackgroundActionSecondaryHover)
//    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorActionOnBackgroundActionSecondaryHoverOnBackgroundEmphasized() throws {
//        assertHomogeneity(inverseTheme.colorActionOnBackgroundActionSecondaryHoverOnBackgroundEmphasized)
//    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorActionOnBackgroundActionSecondaryPressed() throws {
//        assertHomogeneity(inverseTheme.colorActionOnBackgroundActionSecondaryPressed)
//    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorActionOnBackgroundActionSecondaryPressedOnBackgroundEmphasized() throws {
//        assertHomogeneity(inverseTheme.colorActionOnBackgroundActionSecondaryPressedOnBackgroundEmphasized)
//    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorActionOnBackgroundActionSecondaryLoading() throws {
//        assertHomogeneity(inverseTheme.colorActionOnBackgroundActionSecondaryLoading)
//    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorActionOnBackgroundActionSecondaryLoadingOnBackgroundEmphasized() throws {
//        assertHomogeneity(inverseTheme.colorActionOnBackgroundActionSecondaryLoadingOnBackgroundEmphasized)
//    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorActionOnBackgroundActionSecondaryFocus() throws {
//        assertHomogeneity(inverseTheme.colorActionOnBackgroundActionSecondaryFocus)
//    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorActionOnBackgroundActionSecondaryFocusOnBackgroundEmphasized() throws {
//        assertHomogeneity(inverseTheme.colorActionOnBackgroundActionSecondaryFocusOnBackgroundEmphasized)
//    }

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

    func testColorsHomogeneityColorAlwaysOnBackgroundBlack() throws {
        assertHomogeneity(inverseTheme.colorAlwaysOnBackgroundBlack)
    }

    func testColorsHomogeneityColorAlwaysOnBackgroundWhite() throws {
        assertHomogeneity(inverseTheme.colorAlwaysOnBackgroundWhite)
    }

    func testColorsHomogeneityColorAlwaysOnBackgroundWarning() throws {
        assertHomogeneity(inverseTheme.colorAlwaysOnBackgroundWarning)
    }

    func testColorsHomogeneityColorAlwaysOnBackgroundNegative() throws {
        assertHomogeneity(inverseTheme.colorAlwaysOnBackgroundNegative)
    }

    func testColorsHomogeneityColorAlwaysOnBackgroundPositive() throws {
        assertHomogeneity(inverseTheme.colorAlwaysOnBackgroundPositive)
    }

    func testColorsHomogeneityColorAlwaysOnBackgroundInfo() throws {
        assertHomogeneity(inverseTheme.colorAlwaysOnBackgroundInfo)
    }

    func testColorsHomogeneityColorAlwaysOnBackgroundAccent() throws {
        assertHomogeneity(inverseTheme.colorAlwaysOnBackgroundAccent)
    }

    // MARK: Semantic token - Colors - Transparent

    func testColorsHomogeneityColorTransparentDefault() throws {
        assertHomogeneity(inverseTheme.colorTransparentDefault)
    }

    // MARK: Semantic token - Colors - Elevation

    func testColorsHomogeneityColorElevationRaised() throws {
        assertHomogeneity(inverseTheme.colorElevationRaised)
    }

    func testColorsHomogeneityColorElevationRaisedOnBackgroundSecondary() throws {
        assertHomogeneity(inverseTheme.colorElevationRaisedOnBackgroundSecondary)
    }

    func testColorsHomogeneityColorElevationRaisedOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorElevationRaisedOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorElevationDrag() throws {
        assertHomogeneity(inverseTheme.colorElevationDrag)
    }

    func testColorsHomogeneityColorElevationDragOnBackgroundSecondary() throws {
        assertHomogeneity(inverseTheme.colorElevationDragOnBackgroundSecondary)
    }

    func testColorsHomogeneityColorElevationDragOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorElevationDragOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorElevationOverlayDefault() throws {
        assertHomogeneity(inverseTheme.colorElevationOverlayDefault)
    }

    func testColorsHomogeneityColorElevationOverlayDefaultOnBackgroundSecondary() throws {
        assertHomogeneity(inverseTheme.colorElevationOverlayDefaultOnBackgroundSecondary)
    }

    func testColorsHomogeneityColorElevationOverlayDefaultOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorElevationOverlayDefaultOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorElevationOverlayEmphasized() throws {
        assertHomogeneity(inverseTheme.colorElevationOverlayEmphasized)
    }

    func testColorsHomogeneityColorElevationOverlayEmphasizedOnBackgroundSecondary() throws {
        assertHomogeneity(inverseTheme.colorElevationOverlayEmphasizedOnBackgroundSecondary)
    }

    func testColorsHomogeneityColorElevationOverlayEmphasizedOnBackgroundEmphasized() throws {
        assertHomogeneity(inverseTheme.colorElevationOverlayEmphasizedOnBackgroundEmphasized)
    }

    func testColorsHomogeneityColorElevationModal() throws {
        assertHomogeneity(inverseTheme.colorElevationModal)
    }

    // MARK: Semantic token - Colors - Decorative

    func testColorsHomogeneityColorDecorativeBrandPrimary() throws {
        assertHomogeneity(inverseTheme.colorDecorativePrimary)
    }

    func testColorsHomogeneityColorDecorativeSecondary() throws {
        assertHomogeneity(inverseTheme.colorDecorativeSecondary)
    }

    func testColorsHomogeneityColorDecorativeTertiary() throws {
        assertHomogeneity(inverseTheme.colorDecorativeTertiary)
    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorDecorativeBrandTertiaryMuted() throws {
//        assertHomogeneity(inverseTheme.colorDecorativeBrandTertiaryMuted)
//    }

    // In InverseTheme token not implemented yet
//    func testColorsHomogeneityColorDecorativeBrandTertiaryEmphasized() throws {
//        assertHomogeneity(inverseTheme.colorDecorativeBrandTertiaryEmphasized)
//    }

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

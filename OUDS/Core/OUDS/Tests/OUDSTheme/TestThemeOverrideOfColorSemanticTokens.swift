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
import XCTest

// swiftlint:disable type_body_length
// swiftlint:disable line_length
// swiftlint:disable file_length
// swiftlint:disable implicitly_unwrapped_optional
// swiftlint:disable required_deinit

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _colors semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// **These tests checks if any _colors semantic tokens_ can be surcharged by a child theme**
final class TestThemeOverrideOfColorSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: Semantic token - Colors - Background

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundPrimary, abstractTheme.colorBackgroundPrimary)
        XCTAssertTrue(inheritedTheme.colorBackgroundPrimary == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundSecondary, abstractTheme.colorBackgroundSecondary)
        XCTAssertTrue(inheritedTheme.colorBackgroundSecondary == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundTertiary, abstractTheme.colorBackgroundTertiary)
        XCTAssertTrue(inheritedTheme.colorBackgroundTertiary == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundEmphasized, abstractTheme.colorBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundBrandPrimary, abstractTheme.colorBackgroundBrandPrimary)
        XCTAssertTrue(inheritedTheme.colorBackgroundBrandPrimary == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundBrandSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundBrandSecondary, abstractTheme.colorBackgroundBrandSecondary)
        XCTAssertTrue(inheritedTheme.colorBackgroundBrandSecondary == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundBrandTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundBrandTertiary, abstractTheme.colorBackgroundBrandTertiary)
        XCTAssertTrue(inheritedTheme.colorBackgroundBrandTertiary == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNeutral() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNeutral, abstractTheme.colorBackgroundStatusNeutral)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNeutral == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNeutralOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNeutralOnBackgroundEmphasized, abstractTheme.colorBackgroundStatusNeutralOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNeutralOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusPositiveMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusPositiveMuted, abstractTheme.colorBackgroundStatusPositiveMuted)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusPositiveMuted == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusPositiveMutedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusPositiveMutedOnBackgroundEmphasized, abstractTheme.colorBackgroundStatusPositiveMutedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusPositiveMutedOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusPositiveEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusPositiveEmphasized, abstractTheme.colorBackgroundStatusPositiveEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusPositiveEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusInfoMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusInfoMuted, abstractTheme.colorBackgroundStatusInfoMuted)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusInfoMuted == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusInfoMutedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusInfoMutedOnBackgroundEmphasized, abstractTheme.colorBackgroundStatusInfoMutedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusInfoMutedOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusInfoEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusInfoEmphasized, abstractTheme.colorBackgroundStatusInfoEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusInfoEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusWarningMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusWarningMuted, abstractTheme.colorBackgroundStatusWarningMuted)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusWarningMuted == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusWarningMutedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusWarningMutedOnBackgroundEmphasized, abstractTheme.colorBackgroundStatusWarningMutedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusWarningMutedOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusWarningEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusWarningEmphasized, abstractTheme.colorBackgroundStatusWarningEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusWarningEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNegativeMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNegativeMuted, abstractTheme.colorBackgroundStatusNegativeMuted)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNegativeMuted == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNegativeMutedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNegativeMutedOnBackgroundEmphasized, abstractTheme.colorBackgroundStatusNegativeMutedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNegativeMutedOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNegativeEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNegativeEmphasized, abstractTheme.colorBackgroundStatusNegativeEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNegativeEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusAccentMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusAccentMuted, abstractTheme.colorBackgroundStatusAccentMuted)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusAccentMuted == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusAccentMutedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusAccentMutedOnBackgroundEmphasized, abstractTheme.colorBackgroundStatusAccentMutedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusAccentMutedOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusAccentEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusAccentEmphasized, abstractTheme.colorBackgroundStatusAccentEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusAccentEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    // MARK: Semantic token - Colors - Content - Status

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDefault, abstractTheme.colorContentDefault)
        XCTAssertTrue(inheritedTheme.colorContentDefault == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentContentDefaultOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentContentDefaultOnBackgroundEmphasized, abstractTheme.colorContentContentDefaultOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentContentDefaultOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentMuted, abstractTheme.colorContentMuted)
        XCTAssertTrue(inheritedTheme.colorContentMuted == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentContentMutedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentContentMutedOnBackgroundEmphasized, abstractTheme.colorContentContentMutedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentContentMutedOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDisabled, abstractTheme.colorContentDisabled)
        XCTAssertTrue(inheritedTheme.colorContentDisabled == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentContentDisabledOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentContentDisabledOnBackgroundEmphasized, abstractTheme.colorContentContentDisabledOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentContentDisabledOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandPrimary, abstractTheme.colorContentBrandPrimary)
        XCTAssertTrue(inheritedTheme.colorContentBrandPrimary == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandSecondary, abstractTheme.colorContentBrandSecondary)
        XCTAssertTrue(inheritedTheme.colorContentBrandSecondary == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandTertiary, abstractTheme.colorContentBrandTertiary)
        XCTAssertTrue(inheritedTheme.colorContentBrandTertiary == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusPositive, abstractTheme.colorContentStatusPositive)
        XCTAssertTrue(inheritedTheme.colorContentStatusPositive == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusInfo() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusInfo, abstractTheme.colorContentStatusInfo)
        XCTAssertTrue(inheritedTheme.colorContentStatusInfo == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusWarning() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusWarning, abstractTheme.colorContentStatusWarning)
        XCTAssertTrue(inheritedTheme.colorContentStatusWarning == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusNegative, abstractTheme.colorContentStatusNegative)
        XCTAssertTrue(inheritedTheme.colorContentStatusNegative == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusAccent() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusAccent, abstractTheme.colorContentStatusAccent)
        XCTAssertTrue(inheritedTheme.colorContentStatusAccent == MockTheme.mockThemeMultipleColorTokens)
    }

    // MARK: Semantic token - Colors - Content - On Background

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundPrimary, abstractTheme.colorContentOnBackgroundPrimary)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundPrimary == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundSecondary, abstractTheme.colorContentOnBackgroundSecondary)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundSecondary == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundTertiary, abstractTheme.colorContentOnBackgroundTertiary)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundTertiary == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusPositiveMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusPositiveMuted, abstractTheme.colorContentOnBackgroundStatusPositiveMuted)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusPositiveMuted == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusPositiveMutedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusPositiveMutedOnBackgroundEmphasized, abstractTheme.colorContentOnBackgroundStatusPositiveMutedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusPositiveMutedOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusPositiveEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusPositiveEmphasized, abstractTheme.colorContentOnBackgroundStatusPositiveEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusPositiveEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusInfoMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusInfoMuted, abstractTheme.colorContentOnBackgroundStatusInfoMuted)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusInfoMuted == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusInfoMutedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusInfoMutedOnBackgroundEmphasized, abstractTheme.colorContentOnBackgroundStatusInfoMutedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusInfoMutedOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusInfoEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusInfoEmphasized, abstractTheme.colorContentOnBackgroundStatusInfoEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusInfoEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusWarningMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusWarningMuted, abstractTheme.colorContentOnBackgroundStatusWarningMuted)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusWarningMuted == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusWarningMutedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusWarningMutedOnBackgroundEmphasized, abstractTheme.colorContentOnBackgroundStatusWarningMutedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusWarningMutedOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusWarningEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusWarningEmphasized, abstractTheme.colorContentOnBackgroundStatusWarningEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusWarningEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusNegativeMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusNegativeMuted, abstractTheme.colorContentOnBackgroundStatusNegativeMuted)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusNegativeMuted == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusNegativeMutedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusNegativeMutedOnBackgroundEmphasized, abstractTheme.colorContentOnBackgroundStatusNegativeMutedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusNegativeMutedOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusNegativeEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusNegativeEmphasized, abstractTheme.colorContentOnBackgroundStatusNegativeEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusNegativeEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusAccentMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusAccentMuted, abstractTheme.colorContentOnBackgroundStatusAccentMuted)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusAccentMuted == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusAccentMutedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusAccentMutedOnBackgroundEmphasized, abstractTheme.colorContentOnBackgroundStatusAccentMutedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusAccentMutedOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusAccentedEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusAccentedEmphasized, abstractTheme.colorContentOnBackgroundStatusAccentedEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusAccentedEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    // MARK: Semantic token - Colors - Border

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderDefault, abstractTheme.colorBorderDefault)
        XCTAssertTrue(inheritedTheme.colorBorderDefault == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefaultOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderDefaultOnBackgroundEmphasized, abstractTheme.colorBorderDefaultOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorBorderDefaultOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderEmphasized, abstractTheme.colorBorderEmphasized)
        XCTAssertTrue(inheritedTheme.colorBorderEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasizedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderEmphasizedOnBackgroundEmphasized, abstractTheme.colorBorderEmphasizedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorBorderEmphasizedOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderFocus, abstractTheme.colorBorderFocus)
        XCTAssertTrue(inheritedTheme.colorBorderFocus == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandPrimaryOnBackgroundEmphasized, abstractTheme.colorBorderBrandPrimaryOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorBorderBrandPrimaryOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandPrimary, abstractTheme.colorBorderBrandPrimary)
        XCTAssertTrue(inheritedTheme.colorBorderBrandPrimary == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandSecondary, abstractTheme.colorBorderBrandSecondary)
        XCTAssertTrue(inheritedTheme.colorBorderBrandSecondary == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandTertiary, abstractTheme.colorBorderBrandTertiary)
        XCTAssertTrue(inheritedTheme.colorBorderBrandTertiary == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderStatusPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderStatusPositive, abstractTheme.colorBorderStatusPositive)
        XCTAssertTrue(inheritedTheme.colorBorderStatusPositive == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderStatusInfo() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderStatusInfo, abstractTheme.colorBorderStatusInfo)
        XCTAssertTrue(inheritedTheme.colorBorderStatusInfo == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderStatusWarning() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderStatusWarning, abstractTheme.colorBorderStatusWarning)
        XCTAssertTrue(inheritedTheme.colorBorderStatusWarning == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderStatusNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderStatusNegative, abstractTheme.colorBorderStatusNegative)
        XCTAssertTrue(inheritedTheme.colorBorderStatusNegative == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderStatusAccent() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderStatusAccent, abstractTheme.colorBorderStatusAccent)
        XCTAssertTrue(inheritedTheme.colorBorderStatusAccent == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderOnBackgroundBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderOnBackgroundBrandPrimary, abstractTheme.colorBorderOnBackgroundBrandPrimary)
        XCTAssertTrue(inheritedTheme.colorBorderOnBackgroundBrandPrimary == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderOnBackgroundBrandSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderOnBackgroundBrandSecondary, abstractTheme.colorBorderOnBackgroundBrandSecondary)
        XCTAssertTrue(inheritedTheme.colorBorderOnBackgroundBrandSecondary == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderOnBackgroundBrandTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderOnBackgroundBrandTertiary, abstractTheme.colorBorderOnBackgroundBrandTertiary)
        XCTAssertTrue(inheritedTheme.colorBorderOnBackgroundBrandTertiary == MockTheme.mockThemeMultipleColorTokens)
    }

    // MARK: Semantic token - Colors - Action

    func testInheritedThemeCanOverrideSemanticTokenColorActionSelected() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSelected, abstractTheme.colorActionSelected)
        XCTAssertTrue(inheritedTheme.colorActionSelected == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSelectedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSelectedOnBackgroundEmphasized, abstractTheme.colorActionSelectedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionSelectedOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionDisabled, abstractTheme.colorActionDisabled)
        XCTAssertTrue(inheritedTheme.colorActionDisabled == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionDisabledOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionDisabledOnBackgroundEmphasized, abstractTheme.colorActionDisabledOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionDisabledOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionVisited() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionVisited, abstractTheme.colorActionVisited)
        XCTAssertTrue(inheritedTheme.colorActionVisited == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionVistedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionVistedOnBackgroundEmphasized, abstractTheme.colorActionVistedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionVistedOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryEnabled, abstractTheme.colorActionPrimaryEnabled)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryEnabled == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryEnabledOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryEnabledOnBackgroundEmphasized, abstractTheme.colorActionPrimaryEnabledOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryEnabledOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryHover() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryHover, abstractTheme.colorActionPrimaryHover)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryHover == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryHoverOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryHoverOnBackgroundEmphasized, abstractTheme.colorActionPrimaryHoverOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryHoverOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryPressed, abstractTheme.colorActionPrimaryPressed)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryPressed == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryPressedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryPressedOnBackgroundEmphasized, abstractTheme.colorActionPrimaryPressedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryPressedOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryLoading, abstractTheme.colorActionPrimaryLoading)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryLoading == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryLoadingOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryLoadingOnBackgroundEmphasized, abstractTheme.colorActionPrimaryLoadingOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryLoadingOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryFocus, abstractTheme.colorActionPrimaryFocus)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryFocus == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryFocusOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryFocusOnBackgroundEmphasized, abstractTheme.colorActionPrimaryFocusOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryFocusOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryEnabled, abstractTheme.colorActionSecondaryEnabled)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryEnabled == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryEnabledOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryEnabledOnBackgroundEmphasized, abstractTheme.colorActionSecondaryEnabledOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryEnabledOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryHover() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryHover, abstractTheme.colorActionSecondaryHover)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryHover == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryHoverOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryHoverOnBackgroundEmphasized, abstractTheme.colorActionSecondaryHoverOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryHoverOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryPressed, abstractTheme.colorActionSecondaryPressed)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryPressed == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryPressedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryPressedOnBackgroundEmphasized, abstractTheme.colorActionSecondaryPressedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryPressedOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryLoading, abstractTheme.colorActionSecondaryLoading)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryLoading == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryLoadingOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryLoadingOnBackgroundEmphasized, abstractTheme.colorActionSecondaryLoadingOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryLoadingOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryFocus, abstractTheme.colorActionSecondaryFocus)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryFocus == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryFocusOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryFocusOnBackgroundEmphasized, abstractTheme.colorActionSecondaryFocusOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryFocusOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativeEnabled, abstractTheme.colorActionNegativeEnabled)
        XCTAssertTrue(inheritedTheme.colorActionNegativeEnabled == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeHover() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativeHover, abstractTheme.colorActionNegativeHover)
        XCTAssertTrue(inheritedTheme.colorActionNegativeHover == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativePressed() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativePressed, abstractTheme.colorActionNegativePressed)
        XCTAssertTrue(inheritedTheme.colorActionNegativePressed == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativeLoading, abstractTheme.colorActionNegativeLoading)
        XCTAssertTrue(inheritedTheme.colorActionNegativeLoading == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativeFocus, abstractTheme.colorActionNegativeFocus)
        XCTAssertTrue(inheritedTheme.colorActionNegativeFocus == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionDisabled, abstractTheme.colorActionOnBackgroundActionDisabled)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionDisabled == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionDisabledOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionDisabledOnBackgroundEmphasized, abstractTheme.colorActionOnBackgroundActionDisabledOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionDisabledOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionNegative, abstractTheme.colorActionOnBackgroundActionNegative)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionNegative == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionPrimaryEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionPrimaryEnabled, abstractTheme.colorActionOnBackgroundActionPrimaryEnabled)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionPrimaryEnabled == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionPrimaryEnabledOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionPrimaryEnabledOnBackgroundEmphasized, abstractTheme.colorActionOnBackgroundActionPrimaryEnabledOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionPrimaryEnabledOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionPrimaryHover() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionPrimaryHover, abstractTheme.colorActionOnBackgroundActionPrimaryHover)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionPrimaryHover == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionPrimaryHoverOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionPrimaryHoverOnBackgroundEmphasized, abstractTheme.colorActionOnBackgroundActionPrimaryHoverOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionPrimaryHoverOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionPrimaryPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionPrimaryPressed, abstractTheme.colorActionOnBackgroundActionPrimaryPressed)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionPrimaryPressed == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionPrimaryPressedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionPrimaryPressedOnBackgroundEmphasized, abstractTheme.colorActionOnBackgroundActionPrimaryPressedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionPrimaryPressedOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionPrimaryLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionPrimaryLoading, abstractTheme.colorActionOnBackgroundActionPrimaryLoading)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionPrimaryLoading == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionPrimaryLoadingOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionPrimaryLoadingOnBackgroundEmphasized, abstractTheme.colorActionOnBackgroundActionPrimaryLoadingOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionPrimaryLoadingOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionPrimaryFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionPrimaryFocus, abstractTheme.colorActionOnBackgroundActionPrimaryFocus)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionPrimaryFocus == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionPrimaryFocusOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionPrimaryFocusOnBackgroundEmphasized, abstractTheme.colorActionOnBackgroundActionPrimaryFocusOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionPrimaryFocusOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionSecondaryEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionSecondaryEnabled, abstractTheme.colorActionOnBackgroundActionSecondaryEnabled)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionSecondaryEnabled == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionSecondaryEnabledOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionSecondaryEnabledOnBackgroundEmphasized, abstractTheme.colorActionOnBackgroundActionSecondaryEnabledOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionSecondaryEnabledOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionSecondaryHover() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionSecondaryHover, abstractTheme.colorActionOnBackgroundActionSecondaryHover)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionSecondaryHover == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionSecondaryHoverOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionSecondaryHoverOnBackgroundEmphasized, abstractTheme.colorActionOnBackgroundActionSecondaryHoverOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionSecondaryHoverOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionSecondaryPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionSecondaryPressed, abstractTheme.colorActionOnBackgroundActionSecondaryPressed)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionSecondaryPressed == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionSecondaryPressedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionSecondaryPressedOnBackgroundEmphasized, abstractTheme.colorActionOnBackgroundActionSecondaryPressedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionSecondaryPressedOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionSecondaryLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionSecondaryLoading, abstractTheme.colorActionOnBackgroundActionSecondaryLoading)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionSecondaryLoading == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionSecondaryLoadingOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionSecondaryLoadingOnBackgroundEmphasized, abstractTheme.colorActionOnBackgroundActionSecondaryLoadingOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionSecondaryLoadingOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionSecondaryFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionSecondaryFocus, abstractTheme.colorActionOnBackgroundActionSecondaryFocus)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionSecondaryFocus == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionSecondaryFocusOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionSecondaryFocusOnBackgroundEmphasized, abstractTheme.colorActionOnBackgroundActionSecondaryFocusOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionSecondaryFocusOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    // MARK: Semantic token - Colors - Always

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysBlack() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysBlack, abstractTheme.colorAlwaysBlack)
        XCTAssertTrue(inheritedTheme.colorAlwaysBlack == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysWhite() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysWhite, abstractTheme.colorAlwaysWhite)
        XCTAssertTrue(inheritedTheme.colorAlwaysWhite == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysWarning() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysWarning, abstractTheme.colorAlwaysWarning)
        XCTAssertTrue(inheritedTheme.colorAlwaysWarning == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysNegative, abstractTheme.colorAlwaysNegative)
        XCTAssertTrue(inheritedTheme.colorAlwaysNegative == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysPositive, abstractTheme.colorAlwaysPositive)
        XCTAssertTrue(inheritedTheme.colorAlwaysPositive == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysInfo() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysInfo, abstractTheme.colorAlwaysInfo)
        XCTAssertTrue(inheritedTheme.colorAlwaysInfo == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysAccent() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysAccent, abstractTheme.colorAlwaysAccent)
        XCTAssertTrue(inheritedTheme.colorAlwaysAccent == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBackgroundBlack() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBackgroundBlack, abstractTheme.colorAlwaysOnBackgroundBlack)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBackgroundBlack == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBackgroundWhite() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBackgroundWhite, abstractTheme.colorAlwaysOnBackgroundWhite)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBackgroundWhite == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBackgroundWarning() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBackgroundWarning, abstractTheme.colorAlwaysOnBackgroundWarning)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBackgroundWarning == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBackgroundNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBackgroundNegative, abstractTheme.colorAlwaysOnBackgroundNegative)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBackgroundNegative == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBackgroundPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBackgroundPositive, abstractTheme.colorAlwaysOnBackgroundPositive)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBackgroundPositive == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBackgroundInfo() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBackgroundInfo, abstractTheme.colorAlwaysOnBackgroundInfo)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBackgroundInfo == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBackgroundAccent() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBackgroundAccent, abstractTheme.colorAlwaysOnBackgroundAccent)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBackgroundAccent == MockTheme.mockThemeMultipleColorTokens)
    }

    // MARK: Semantic token - Colors - Transparent

    func testInheritedThemeCanOverrideSemanticTokenColorTransparentDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorTransparentDefault, abstractTheme.colorTransparentDefault)
        XCTAssertTrue(inheritedTheme.colorTransparentDefault == MockTheme.mockThemeMultipleColorTokens)
    }

    // MARK: Semantic token - Colors - Elevation

    func testInheritedThemeCanOverrideSemanticTokenColorElevationRaised() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationRaised, abstractTheme.colorElevationRaised)
        XCTAssertTrue(inheritedTheme.colorElevationRaised == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationRaisedOnBackgroundSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationRaisedOnBackgroundSecondary, abstractTheme.colorElevationRaisedOnBackgroundSecondary)
        XCTAssertTrue(inheritedTheme.colorElevationRaisedOnBackgroundSecondary == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationRaisedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationRaisedOnBackgroundEmphasized, abstractTheme.colorElevationRaisedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorElevationRaisedOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationDrag() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationDrag, abstractTheme.colorElevationDrag)
        XCTAssertTrue(inheritedTheme.colorElevationDrag == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationDragOnBackgroundSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationDragOnBackgroundSecondary, abstractTheme.colorElevationDragOnBackgroundSecondary)
        XCTAssertTrue(inheritedTheme.colorElevationDragOnBackgroundSecondary == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationDragOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationDragOnBackgroundEmphasized, abstractTheme.colorElevationDragOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorElevationDragOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayDefault, abstractTheme.colorElevationOverlayDefault)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayDefault == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayDefaultOnBackgroundSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayDefaultOnBackgroundSecondary, abstractTheme.colorElevationOverlayDefaultOnBackgroundSecondary)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayDefaultOnBackgroundSecondary == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayDefaultOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayDefaultOnBackgroundEmphasized, abstractTheme.colorElevationOverlayDefaultOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayDefaultOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayEmphasized, abstractTheme.colorElevationOverlayEmphasized)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayEmphasizedOnBackgroundSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayEmphasizedOnBackgroundSecondary, abstractTheme.colorElevationOverlayEmphasizedOnBackgroundSecondary)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayEmphasizedOnBackgroundSecondary == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayEmphasizedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayEmphasizedOnBackgroundEmphasized, abstractTheme.colorElevationOverlayEmphasizedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayEmphasizedOnBackgroundEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationModal() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationModal, abstractTheme.colorElevationModal)
        XCTAssertTrue(inheritedTheme.colorElevationModal == MockTheme.mockThemeMultipleColorTokens)
    }

    // MARK: Semantic token - Colors - Decorative

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeBrandPrimary, abstractTheme.colorDecorativeBrandPrimary)
        XCTAssertTrue(inheritedTheme.colorDecorativeBrandPrimary == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandPrimaryMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeBrandPrimaryMuted, abstractTheme.colorDecorativeBrandPrimaryMuted)
        XCTAssertTrue(inheritedTheme.colorDecorativeBrandPrimaryMuted == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandPrimaryEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeBrandPrimaryEmphasized, abstractTheme.colorDecorativeBrandPrimaryEmphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeBrandPrimaryEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSecondary, abstractTheme.colorDecorativeSecondary)
        XCTAssertTrue(inheritedTheme.colorDecorativeSecondary == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSecondaryMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSecondaryMuted, abstractTheme.colorDecorativeSecondaryMuted)
        XCTAssertTrue(inheritedTheme.colorDecorativeSecondaryMuted == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSecondaryEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSecondaryEmphasized, abstractTheme.colorDecorativeSecondaryEmphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeSecondaryEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeBrandTertiary, abstractTheme.colorDecorativeBrandTertiary)
        XCTAssertTrue(inheritedTheme.colorDecorativeBrandTertiary == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandTertiaryMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeBrandTertiaryMuted, abstractTheme.colorDecorativeBrandTertiaryMuted)
        XCTAssertTrue(inheritedTheme.colorDecorativeBrandTertiaryMuted == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandTertiaryEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeBrandTertiaryEmphasized, abstractTheme.colorDecorativeBrandTertiaryEmphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeBrandTertiaryEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeNeutralMuted, abstractTheme.colorDecorativeNeutralMuted)
        XCTAssertTrue(inheritedTheme.colorDecorativeNeutralMuted == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeNeutralDefault, abstractTheme.colorDecorativeNeutralDefault)
        XCTAssertTrue(inheritedTheme.colorDecorativeNeutralDefault == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeNeutralEmphasized, abstractTheme.colorDecorativeNeutralEmphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeNeutralEmphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent1Muted, abstractTheme.colorDecorativeAccent1Muted)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent1Muted == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Default() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent1Default, abstractTheme.colorDecorativeAccent1Default)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent1Default == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent1Emphasized, abstractTheme.colorDecorativeAccent1Emphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent1Emphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent2Muted, abstractTheme.colorDecorativeAccent2Muted)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent2Muted == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Default() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent2Default, abstractTheme.colorDecorativeAccent2Default)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent2Default == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent2Emphasized, abstractTheme.colorDecorativeAccent2Emphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent2Emphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent3Muted, abstractTheme.colorDecorativeAccent3Muted)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent3Muted == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Default() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent3Default, abstractTheme.colorDecorativeAccent3Default)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent3Default == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent3Emphasized, abstractTheme.colorDecorativeAccent3Emphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent3Emphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent4Muted, abstractTheme.colorDecorativeAccent4Muted)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent4Muted == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Default() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent4Default, abstractTheme.colorDecorativeAccent4Default)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent4Default == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent4Emphasized, abstractTheme.colorDecorativeAccent4Emphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent4Emphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent5Muted, abstractTheme.colorDecorativeAccent5Muted)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent5Muted == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Default() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent5Default, abstractTheme.colorDecorativeAccent5Default)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent5Default == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent5Emphasized, abstractTheme.colorDecorativeAccent5Emphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent5Emphasized == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkintTint100() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkintTint100, abstractTheme.colorDecorativeSkintTint100)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkintTint100 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkintTint200() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkintTint200, abstractTheme.colorDecorativeSkintTint200)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkintTint200 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkintTint300() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkintTint300, abstractTheme.colorDecorativeSkintTint300)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkintTint300 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkintTint400() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkintTint400, abstractTheme.colorDecorativeSkintTint400)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkintTint400 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkintTint500() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkintTint500, abstractTheme.colorDecorativeSkintTint500)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkintTint500 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkintTint600() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkintTint600, abstractTheme.colorDecorativeSkintTint600)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkintTint600 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkintTint700() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkintTint700, abstractTheme.colorDecorativeSkintTint700)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkintTint700 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkintTint800() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkintTint800, abstractTheme.colorDecorativeSkintTint800)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkintTint800 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkintTint900() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkintTint900, abstractTheme.colorDecorativeSkintTint900)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkintTint900 == MockTheme.mockThemeMultipleColorTokens)
    }

    // MARK: Semantic token - Colors - Chart

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalNeutral() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalNeutral, abstractTheme.colorChartCategoricalNeutral)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalNeutral == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalBrand() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalBrand, abstractTheme.colorChartCategoricalBrand)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalBrand == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalPositive, abstractTheme.colorChartCategoricalPositive)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalPositive == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalNegative, abstractTheme.colorChartCategoricalNegative)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalNegative == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier1() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier1, abstractTheme.colorChartCategoricalTier1)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier1 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier2() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier2, abstractTheme.colorChartCategoricalTier2)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier2 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier3() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier3, abstractTheme.colorChartCategoricalTier3)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier3 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier4() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier4, abstractTheme.colorChartCategoricalTier4)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier4 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier5() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier5, abstractTheme.colorChartCategoricalTier5)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier5 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier6() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier6, abstractTheme.colorChartCategoricalTier6)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier6 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier7() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier7, abstractTheme.colorChartCategoricalTier7)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier7 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier8() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier8, abstractTheme.colorChartCategoricalTier8)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier8 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier9() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier9, abstractTheme.colorChartCategoricalTier9)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier9 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier10() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier10, abstractTheme.colorChartCategoricalTier10)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier10 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint100() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint100, abstractTheme.colorChartSequentialAccent1Tint100)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint100 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint200() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint200, abstractTheme.colorChartSequentialAccent1Tint200)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint200 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint300() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint300, abstractTheme.colorChartSequentialAccent1Tint300)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint300 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint400() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint400, abstractTheme.colorChartSequentialAccent1Tint400)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint400 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint500() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint500, abstractTheme.colorChartSequentialAccent1Tint500)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint500 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint600() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint600, abstractTheme.colorChartSequentialAccent1Tint600)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint600 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint700() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint700, abstractTheme.colorChartSequentialAccent1Tint700)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint700 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint800() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint800, abstractTheme.colorChartSequentialAccent1Tint800)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint800 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint900() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint900, abstractTheme.colorChartSequentialAccent1Tint900)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint900 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint100() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint100, abstractTheme.colorChartSequentialAccent2Tint100)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint100 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint200() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint200, abstractTheme.colorChartSequentialAccent2Tint200)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint200 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint300() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint300, abstractTheme.colorChartSequentialAccent2Tint300)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint300 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint400() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint400, abstractTheme.colorChartSequentialAccent2Tint400)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint400 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint500() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint500, abstractTheme.colorChartSequentialAccent2Tint500)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint500 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint600() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint600, abstractTheme.colorChartSequentialAccent2Tint600)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint600 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint700() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint700, abstractTheme.colorChartSequentialAccent2Tint700)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint700 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint800() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint800, abstractTheme.colorChartSequentialAccent2Tint800)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint800 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint900() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint900, abstractTheme.colorChartSequentialAccent2Tint900)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint900 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint100() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint100, abstractTheme.colorChartSequentialAccent3Tint100)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint100 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint200() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint200, abstractTheme.colorChartSequentialAccent3Tint200)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint200 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint300() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint300, abstractTheme.colorChartSequentialAccent3Tint300)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint300 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint400() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint400, abstractTheme.colorChartSequentialAccent3Tint400)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint400 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint500() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint500, abstractTheme.colorChartSequentialAccent3Tint500)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint500 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint600() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint600, abstractTheme.colorChartSequentialAccent3Tint600)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint600 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint700() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint700, abstractTheme.colorChartSequentialAccent3Tint700)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint700 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint800() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint800, abstractTheme.colorChartSequentialAccent3Tint800)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint800 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint900() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint900, abstractTheme.colorChartSequentialAccent3Tint900)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint900 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint100() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint100, abstractTheme.colorChartSequentialAccent4Tint100)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint100 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint200() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint200, abstractTheme.colorChartSequentialAccent4Tint200)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint200 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint300() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint300, abstractTheme.colorChartSequentialAccent4Tint300)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint300 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint400() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint400, abstractTheme.colorChartSequentialAccent4Tint400)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint400 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint500() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint500, abstractTheme.colorChartSequentialAccent4Tint500)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint500 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint600() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint600, abstractTheme.colorChartSequentialAccent4Tint600)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint600 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint700() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint700, abstractTheme.colorChartSequentialAccent4Tint700)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint700 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint800() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint800, abstractTheme.colorChartSequentialAccent4Tint800)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint800 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint900() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint900, abstractTheme.colorChartSequentialAccent4Tint900)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint900 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint100() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint100, abstractTheme.colorChartSequentialAccent5Tint100)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint100 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint200() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint200, abstractTheme.colorChartSequentialAccent5Tint200)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint200 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint300() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint300, abstractTheme.colorChartSequentialAccent5Tint300)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint300 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint400() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint400, abstractTheme.colorChartSequentialAccent5Tint400)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint400 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint500() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint500, abstractTheme.colorChartSequentialAccent5Tint500)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint500 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint600() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint600, abstractTheme.colorChartSequentialAccent5Tint600)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint600 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint700() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint700, abstractTheme.colorChartSequentialAccent5Tint700)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint700 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint800() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint800, abstractTheme.colorChartSequentialAccent5Tint800)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint800 == MockTheme.mockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint900() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint900, abstractTheme.colorChartSequentialAccent5Tint900)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint900 == MockTheme.mockThemeMultipleColorTokens)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable line_length
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable required_deinit

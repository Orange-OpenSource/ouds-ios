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
import OUDSTokensSemantic
import XCTest

// swiftlint:disable type_body_length
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
        abstractTheme = MockTheme()
        inheritedTheme = OtherMockTheme()
    }

    // MARK: Semantic token - Colors - Background

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundPrimary, abstractTheme.colorBackgroundPrimary)
        XCTAssertTrue(inheritedTheme.colorBackgroundPrimary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundSecondary, abstractTheme.colorBackgroundSecondary)
        XCTAssertTrue(inheritedTheme.colorBackgroundSecondary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundTertiary, abstractTheme.colorBackgroundTertiary)
        XCTAssertTrue(inheritedTheme.colorBackgroundTertiary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundEmphasized, abstractTheme.colorBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundBrandPrimary, abstractTheme.colorBackgroundBrandPrimary)
        XCTAssertTrue(inheritedTheme.colorBackgroundBrandPrimary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundBrandSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundBrandSecondary, abstractTheme.colorBackgroundBrandSecondary)
        XCTAssertTrue(inheritedTheme.colorBackgroundBrandSecondary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundBrandTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundBrandTertiary, abstractTheme.colorBackgroundBrandTertiary)
        XCTAssertTrue(inheritedTheme.colorBackgroundBrandTertiary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNeutral() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNeutral, abstractTheme.colorBackgroundStatusNeutral)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNeutral == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNeutralOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNeutralOnBgEmphasized, abstractTheme.colorBackgroundStatusNeutralOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNeutralOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusPositiveMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusPositiveMuted, abstractTheme.colorBackgroundStatusPositiveMuted)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusPositiveMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusPositiveMutedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusPositiveMutedOnBgEmphasized, abstractTheme.colorBackgroundStatusPositiveMutedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusPositiveMutedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusPositiveEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusPositiveEmphasized, abstractTheme.colorBackgroundStatusPositiveEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusPositiveEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusInfoMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusInfoMuted, abstractTheme.colorBackgroundStatusInfoMuted)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusInfoMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusInfoMutedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusInfoMutedOnBgEmphasized, abstractTheme.colorBackgroundStatusInfoMutedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusInfoMutedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusInfoEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusInfoEmphasized, abstractTheme.colorBackgroundStatusInfoEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusInfoEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusWarningMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusWarningMuted, abstractTheme.colorBackgroundStatusWarningMuted)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusWarningMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusWarningMutedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusWarningMutedOnBgEmphasized, abstractTheme.colorBackgroundStatusWarningMutedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusWarningMutedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusWarningEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusWarningEmphasized, abstractTheme.colorBackgroundStatusWarningEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusWarningEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNegativeMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNegativeMuted, abstractTheme.colorBackgroundStatusNegativeMuted)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNegativeMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNegativeMutedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNegativeMutedOnBgEmphasized, abstractTheme.colorBackgroundStatusNegativeMutedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNegativeMutedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNegativeEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNegativeEmphasized, abstractTheme.colorBackgroundStatusNegativeEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNegativeEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusAccentMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusAccentMuted, abstractTheme.colorBackgroundStatusAccentMuted)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusAccentMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusAccentMutedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusAccentMutedOnBgEmphasized, abstractTheme.colorBackgroundStatusAccentMutedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusAccentMutedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusAccentEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusAccentEmphasized, abstractTheme.colorBackgroundStatusAccentEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusAccentEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    // MARK: Semantic token - Colors - Content - Status

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDefault, abstractTheme.colorContentDefault)
        XCTAssertTrue(inheritedTheme.colorContentDefault == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentContentDefaultOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentContentDefaultOnBgEmphasized, abstractTheme.colorContentContentDefaultOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentContentDefaultOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentMuted, abstractTheme.colorContentMuted)
        XCTAssertTrue(inheritedTheme.colorContentMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentContentMutedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentContentMutedOnBgEmphasized, abstractTheme.colorContentContentMutedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentContentMutedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDisabled, abstractTheme.colorContentDisabled)
        XCTAssertTrue(inheritedTheme.colorContentDisabled == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentContentDisabledOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentContentDisabledOnBgEmphasized, abstractTheme.colorContentContentDisabledOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentContentDisabledOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandPrimary, abstractTheme.colorContentBrandPrimary)
        XCTAssertTrue(inheritedTheme.colorContentBrandPrimary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandSecondary, abstractTheme.colorContentBrandSecondary)
        XCTAssertTrue(inheritedTheme.colorContentBrandSecondary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandTertiary, abstractTheme.colorContentBrandTertiary)
        XCTAssertTrue(inheritedTheme.colorContentBrandTertiary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusPositive, abstractTheme.colorContentStatusPositive)
        XCTAssertTrue(inheritedTheme.colorContentStatusPositive == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusInfo() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusInfo, abstractTheme.colorContentStatusInfo)
        XCTAssertTrue(inheritedTheme.colorContentStatusInfo == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusWarning() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusWarning, abstractTheme.colorContentStatusWarning)
        XCTAssertTrue(inheritedTheme.colorContentStatusWarning == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusNegative, abstractTheme.colorContentStatusNegative)
        XCTAssertTrue(inheritedTheme.colorContentStatusNegative == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusAccent() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusAccent, abstractTheme.colorContentStatusAccent)
        XCTAssertTrue(inheritedTheme.colorContentStatusAccent == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    // MARK: Semantic token - Colors - Content - On Background

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBgPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBgPrimary, abstractTheme.colorContentOnBgPrimary)
        XCTAssertTrue(inheritedTheme.colorContentOnBgPrimary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBgSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBgSecondary, abstractTheme.colorContentOnBgSecondary)
        XCTAssertTrue(inheritedTheme.colorContentOnBgSecondary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBgTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBgTertiary, abstractTheme.colorContentOnBgTertiary)
        XCTAssertTrue(inheritedTheme.colorContentOnBgTertiary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBgStatusPositiveMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBgStatusPositiveMuted, abstractTheme.colorContentOnBgStatusPositiveMuted)
        XCTAssertTrue(inheritedTheme.colorContentOnBgStatusPositiveMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBgStatusPositiveMutedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBgStatusPositiveMutedOnBgEmphasized, abstractTheme.colorContentOnBgStatusPositiveMutedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBgStatusPositiveMutedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBgStatusPositiveEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBgStatusPositiveEmphasized, abstractTheme.colorContentOnBgStatusPositiveEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBgStatusPositiveEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBgStatusInfoMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBgStatusInfoMuted, abstractTheme.colorContentOnBgStatusInfoMuted)
        XCTAssertTrue(inheritedTheme.colorContentOnBgStatusInfoMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBgStatusInfoMutedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBgStatusInfoMutedOnBgEmphasized, abstractTheme.colorContentOnBgStatusInfoMutedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBgStatusInfoMutedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBgStatusInfoEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBgStatusInfoEmphasized, abstractTheme.colorContentOnBgStatusInfoEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBgStatusInfoEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBgStatusWarningMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBgStatusWarningMuted, abstractTheme.colorContentOnBgStatusWarningMuted)
        XCTAssertTrue(inheritedTheme.colorContentOnBgStatusWarningMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBgStatusWarningMutedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBgStatusWarningMutedOnBgEmphasized, abstractTheme.colorContentOnBgStatusWarningMutedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBgStatusWarningMutedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBgStatusWarningEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBgStatusWarningEmphasized, abstractTheme.colorContentOnBgStatusWarningEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBgStatusWarningEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBgStatusNegativeMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBgStatusNegativeMuted, abstractTheme.colorContentOnBgStatusNegativeMuted)
        XCTAssertTrue(inheritedTheme.colorContentOnBgStatusNegativeMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBgStatusNegativeMutedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBgStatusNegativeMutedOnBgEmphasized, abstractTheme.colorContentOnBgStatusNegativeMutedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBgStatusNegativeMutedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBgStatusNegativeEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBgStatusNegativeEmphasized, abstractTheme.colorContentOnBgStatusNegativeEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBgStatusNegativeEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBgStatusAccentMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBgStatusAccentMuted, abstractTheme.colorContentOnBgStatusAccentMuted)
        XCTAssertTrue(inheritedTheme.colorContentOnBgStatusAccentMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBgStatusAccentMutedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBgStatusAccentMutedOnBgEmphasized, abstractTheme.colorContentOnBgStatusAccentMutedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBgStatusAccentMutedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBgStatusAccentedEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBgStatusAccentedEmphasized, abstractTheme.colorContentOnBgStatusAccentedEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBgStatusAccentedEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    // MARK: Semantic token - Colors - Border

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderDefault, abstractTheme.colorBorderDefault)
        XCTAssertTrue(inheritedTheme.colorBorderDefault == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefaultOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderDefaultOnBgEmphasized, abstractTheme.colorBorderDefaultOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorBorderDefaultOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderEmphasized, abstractTheme.colorBorderEmphasized)
        XCTAssertTrue(inheritedTheme.colorBorderEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasizedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderEmphasizedOnBgEmphasized, abstractTheme.colorBorderEmphasizedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorBorderEmphasizedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderFocus, abstractTheme.colorBorderFocus)
        XCTAssertTrue(inheritedTheme.colorBorderFocus == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandPrimaryOnBgEmphasized, abstractTheme.colorBorderBrandPrimaryOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorBorderBrandPrimaryOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandPrimary, abstractTheme.colorBorderBrandPrimary)
        XCTAssertTrue(inheritedTheme.colorBorderBrandPrimary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandSecondary, abstractTheme.colorBorderBrandSecondary)
        XCTAssertTrue(inheritedTheme.colorBorderBrandSecondary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandTertiary, abstractTheme.colorBorderBrandTertiary)
        XCTAssertTrue(inheritedTheme.colorBorderBrandTertiary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderStatusPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderStatusPositive, abstractTheme.colorBorderStatusPositive)
        XCTAssertTrue(inheritedTheme.colorBorderStatusPositive == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderStatusInfo() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderStatusInfo, abstractTheme.colorBorderStatusInfo)
        XCTAssertTrue(inheritedTheme.colorBorderStatusInfo == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderStatusWarning() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderStatusWarning, abstractTheme.colorBorderStatusWarning)
        XCTAssertTrue(inheritedTheme.colorBorderStatusWarning == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderStatusNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderStatusNegative, abstractTheme.colorBorderStatusNegative)
        XCTAssertTrue(inheritedTheme.colorBorderStatusNegative == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderStatusAccent() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderStatusAccent, abstractTheme.colorBorderStatusAccent)
        XCTAssertTrue(inheritedTheme.colorBorderStatusAccent == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderOnBgBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderOnBgBrandPrimary, abstractTheme.colorBorderOnBgBrandPrimary)
        XCTAssertTrue(inheritedTheme.colorBorderOnBgBrandPrimary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderOnBgBrandSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderOnBgBrandSecondary, abstractTheme.colorBorderOnBgBrandSecondary)
        XCTAssertTrue(inheritedTheme.colorBorderOnBgBrandSecondary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderOnBgBrandTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderOnBgBrandTertiary, abstractTheme.colorBorderOnBgBrandTertiary)
        XCTAssertTrue(inheritedTheme.colorBorderOnBgBrandTertiary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    // MARK: Semantic token - Colors - Action

    func testInheritedThemeCanOverrideSemanticTokenColorActionSelected() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSelected, abstractTheme.colorActionSelected)
        XCTAssertTrue(inheritedTheme.colorActionSelected == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSelectedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSelectedOnBgEmphasized, abstractTheme.colorActionSelectedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionSelectedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionDisabled, abstractTheme.colorActionDisabled)
        XCTAssertTrue(inheritedTheme.colorActionDisabled == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionDisabledOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionDisabledOnBgEmphasized, abstractTheme.colorActionDisabledOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionDisabledOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionVisited() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionVisited, abstractTheme.colorActionVisited)
        XCTAssertTrue(inheritedTheme.colorActionVisited == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionVistedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionVistedOnBgEmphasized, abstractTheme.colorActionVistedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionVistedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryEnabled, abstractTheme.colorActionPrimaryEnabled)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryEnabled == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryEnabledOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryEnabledOnBgEmphasized, abstractTheme.colorActionPrimaryEnabledOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryEnabledOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryHover() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryHover, abstractTheme.colorActionPrimaryHover)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryHover == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryHoverOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryHoverOnBgEmphasized, abstractTheme.colorActionPrimaryHoverOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryHoverOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryPressed, abstractTheme.colorActionPrimaryPressed)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryPressed == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryPressedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryPressedOnBgEmphasized, abstractTheme.colorActionPrimaryPressedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryPressedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryLoading, abstractTheme.colorActionPrimaryLoading)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryLoading == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryLoadingOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryLoadingOnBgEmphasized, abstractTheme.colorActionPrimaryLoadingOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryLoadingOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryFocus, abstractTheme.colorActionPrimaryFocus)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryFocus == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryFocusOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryFocusOnBgEmphasized, abstractTheme.colorActionPrimaryFocusOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryFocusOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryEnabled, abstractTheme.colorActionSecondaryEnabled)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryEnabled == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryEnabledOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryEnabledOnBgEmphasized, abstractTheme.colorActionSecondaryEnabledOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryEnabledOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryHover() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryHover, abstractTheme.colorActionSecondaryHover)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryHover == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryHoverOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryHoverOnBgEmphasized, abstractTheme.colorActionSecondaryHoverOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryHoverOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryPressed, abstractTheme.colorActionSecondaryPressed)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryPressed == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryPressedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryPressedOnBgEmphasized, abstractTheme.colorActionSecondaryPressedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryPressedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryLoading, abstractTheme.colorActionSecondaryLoading)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryLoading == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryLoadingOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryLoadingOnBgEmphasized, abstractTheme.colorActionSecondaryLoadingOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryLoadingOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryFocus, abstractTheme.colorActionSecondaryFocus)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryFocus == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryFocusOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryFocusOnBgEmphasized, abstractTheme.colorActionSecondaryFocusOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryFocusOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativeEnabled, abstractTheme.colorActionNegativeEnabled)
        XCTAssertTrue(inheritedTheme.colorActionNegativeEnabled == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeHover() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativeHover, abstractTheme.colorActionNegativeHover)
        XCTAssertTrue(inheritedTheme.colorActionNegativeHover == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativePressed() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativePressed, abstractTheme.colorActionNegativePressed)
        XCTAssertTrue(inheritedTheme.colorActionNegativePressed == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativeLoading, abstractTheme.colorActionNegativeLoading)
        XCTAssertTrue(inheritedTheme.colorActionNegativeLoading == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativeFocus, abstractTheme.colorActionNegativeFocus)
        XCTAssertTrue(inheritedTheme.colorActionNegativeFocus == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBgActionDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBgActionDisabled, abstractTheme.colorActionOnBgActionDisabled)
        XCTAssertTrue(inheritedTheme.colorActionOnBgActionDisabled == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBgActionDisabledOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBgActionDisabledOnBgEmphasized, abstractTheme.colorActionOnBgActionDisabledOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBgActionDisabledOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBgActionNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBgActionNegative, abstractTheme.colorActionOnBgActionNegative)
        XCTAssertTrue(inheritedTheme.colorActionOnBgActionNegative == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBgActionPrimaryEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBgActionPrimaryEnabled, abstractTheme.colorActionOnBgActionPrimaryEnabled)
        XCTAssertTrue(inheritedTheme.colorActionOnBgActionPrimaryEnabled == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBgActionPrimaryEnabledOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBgActionPrimaryEnabledOnBgEmphasized, abstractTheme.colorActionOnBgActionPrimaryEnabledOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBgActionPrimaryEnabledOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBgActionPrimaryHover() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBgActionPrimaryHover, abstractTheme.colorActionOnBgActionPrimaryHover)
        XCTAssertTrue(inheritedTheme.colorActionOnBgActionPrimaryHover == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBgActionPrimaryHoverOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBgActionPrimaryHoverOnBgEmphasized, abstractTheme.colorActionOnBgActionPrimaryHoverOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBgActionPrimaryHoverOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBgActionPrimaryPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBgActionPrimaryPressed, abstractTheme.colorActionOnBgActionPrimaryPressed)
        XCTAssertTrue(inheritedTheme.colorActionOnBgActionPrimaryPressed == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBgActionPrimaryPressedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBgActionPrimaryPressedOnBgEmphasized, abstractTheme.colorActionOnBgActionPrimaryPressedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBgActionPrimaryPressedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBgActionPrimaryLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBgActionPrimaryLoading, abstractTheme.colorActionOnBgActionPrimaryLoading)
        XCTAssertTrue(inheritedTheme.colorActionOnBgActionPrimaryLoading == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBgActionPrimaryLoadingOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBgActionPrimaryLoadingOnBgEmphasized, abstractTheme.colorActionOnBgActionPrimaryLoadingOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBgActionPrimaryLoadingOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBgActionPrimaryFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBgActionPrimaryFocus, abstractTheme.colorActionOnBgActionPrimaryFocus)
        XCTAssertTrue(inheritedTheme.colorActionOnBgActionPrimaryFocus == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBgActionPrimaryFocusOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBgActionPrimaryFocusOnBgEmphasized, abstractTheme.colorActionOnBgActionPrimaryFocusOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBgActionPrimaryFocusOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBgActionSecondaryEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBgActionSecondaryEnabled, abstractTheme.colorActionOnBgActionSecondaryEnabled)
        XCTAssertTrue(inheritedTheme.colorActionOnBgActionSecondaryEnabled == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBgActionSecondaryEnabledOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBgActionSecondaryEnabledOnBgEmphasized, abstractTheme.colorActionOnBgActionSecondaryEnabledOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBgActionSecondaryEnabledOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBgActionSecondaryHover() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBgActionSecondaryHover, abstractTheme.colorActionOnBgActionSecondaryHover)
        XCTAssertTrue(inheritedTheme.colorActionOnBgActionSecondaryHover == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBgActionSecondaryHoverOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBgActionSecondaryHoverOnBgEmphasized, abstractTheme.colorActionOnBgActionSecondaryHoverOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBgActionSecondaryHoverOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBgActionSecondaryPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBgActionSecondaryPressed, abstractTheme.colorActionOnBgActionSecondaryPressed)
        XCTAssertTrue(inheritedTheme.colorActionOnBgActionSecondaryPressed == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBgActionSecondaryPressedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBgActionSecondaryPressedOnBgEmphasized, abstractTheme.colorActionOnBgActionSecondaryPressedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBgActionSecondaryPressedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBgActionSecondaryLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBgActionSecondaryLoading, abstractTheme.colorActionOnBgActionSecondaryLoading)
        XCTAssertTrue(inheritedTheme.colorActionOnBgActionSecondaryLoading == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBgActionSecondaryLoadingOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBgActionSecondaryLoadingOnBgEmphasized, abstractTheme.colorActionOnBgActionSecondaryLoadingOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBgActionSecondaryLoadingOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBgActionSecondaryFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBgActionSecondaryFocus, abstractTheme.colorActionOnBgActionSecondaryFocus)
        XCTAssertTrue(inheritedTheme.colorActionOnBgActionSecondaryFocus == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBgActionSecondaryFocusOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBgActionSecondaryFocusOnBgEmphasized, abstractTheme.colorActionOnBgActionSecondaryFocusOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBgActionSecondaryFocusOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    // MARK: Semantic token - Colors - Always

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysBlack() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysBlack, abstractTheme.colorAlwaysBlack)
        XCTAssertTrue(inheritedTheme.colorAlwaysBlack == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysWhite() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysWhite, abstractTheme.colorAlwaysWhite)
        XCTAssertTrue(inheritedTheme.colorAlwaysWhite == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysWarning() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysWarning, abstractTheme.colorAlwaysWarning)
        XCTAssertTrue(inheritedTheme.colorAlwaysWarning == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysNegative, abstractTheme.colorAlwaysNegative)
        XCTAssertTrue(inheritedTheme.colorAlwaysNegative == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysPositive, abstractTheme.colorAlwaysPositive)
        XCTAssertTrue(inheritedTheme.colorAlwaysPositive == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysInfo() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysInfo, abstractTheme.colorAlwaysInfo)
        XCTAssertTrue(inheritedTheme.colorAlwaysInfo == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysAccent() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysAccent, abstractTheme.colorAlwaysAccent)
        XCTAssertTrue(inheritedTheme.colorAlwaysAccent == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBgBlack() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBgBlack, abstractTheme.colorAlwaysOnBgBlack)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBgBlack == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBgWhite() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBgWhite, abstractTheme.colorAlwaysOnBgWhite)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBgWhite == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBgWarning() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBgWarning, abstractTheme.colorAlwaysOnBgWarning)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBgWarning == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBgNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBgNegative, abstractTheme.colorAlwaysOnBgNegative)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBgNegative == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBgPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBgPositive, abstractTheme.colorAlwaysOnBgPositive)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBgPositive == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBgInfo() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBgInfo, abstractTheme.colorAlwaysOnBgInfo)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBgInfo == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBgAccent() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBgAccent, abstractTheme.colorAlwaysOnBgAccent)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBgAccent == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    // MARK: Semantic token - Colors - Transparent

    func testInheritedThemeCanOverrideSemanticTokenColorTransparentDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorTransparentDefault, abstractTheme.colorTransparentDefault)
        XCTAssertTrue(inheritedTheme.colorTransparentDefault == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    // MARK: Semantic token - Colors - Elevation

    func testInheritedThemeCanOverrideSemanticTokenColorElevationRaised() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationRaised, abstractTheme.colorElevationRaised)
        XCTAssertTrue(inheritedTheme.colorElevationRaised == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationRaisedOnBgSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationRaisedOnBgSecondary, abstractTheme.colorElevationRaisedOnBgSecondary)
        XCTAssertTrue(inheritedTheme.colorElevationRaisedOnBgSecondary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationRaisedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationRaisedOnBgEmphasized, abstractTheme.colorElevationRaisedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorElevationRaisedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationDrag() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationDrag, abstractTheme.colorElevationDrag)
        XCTAssertTrue(inheritedTheme.colorElevationDrag == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationDragOnBgSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationDragOnBgSecondary, abstractTheme.colorElevationDragOnBgSecondary)
        XCTAssertTrue(inheritedTheme.colorElevationDragOnBgSecondary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationDragOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationDragOnBgEmphasized, abstractTheme.colorElevationDragOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorElevationDragOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayDefault, abstractTheme.colorElevationOverlayDefault)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayDefault == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayDefaultOnBgSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayDefaultOnBgSecondary, abstractTheme.colorElevationOverlayDefaultOnBgSecondary)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayDefaultOnBgSecondary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayDefaultOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayDefaultOnBgEmphasized, abstractTheme.colorElevationOverlayDefaultOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayDefaultOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayEmphasized, abstractTheme.colorElevationOverlayEmphasized)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayEmphasizedOnBgSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayEmphasizedOnBgSecondary, abstractTheme.colorElevationOverlayEmphasizedOnBgSecondary)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayEmphasizedOnBgSecondary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayEmphasizedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayEmphasizedOnBgEmphasized, abstractTheme.colorElevationOverlayEmphasizedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayEmphasizedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationModal() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationModal, abstractTheme.colorElevationModal)
        XCTAssertTrue(inheritedTheme.colorElevationModal == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    // MARK: Semantic token - Colors - Decorative

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativePrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativePrimary, abstractTheme.colorDecorativePrimary)
        XCTAssertTrue(inheritedTheme.colorDecorativePrimary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSecondary, abstractTheme.colorDecorativeSecondary)
        XCTAssertTrue(inheritedTheme.colorDecorativeSecondary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeTertiary, abstractTheme.colorDecorativeTertiary)
        XCTAssertTrue(inheritedTheme.colorDecorativeTertiary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeNeutralMuted, abstractTheme.colorDecorativeNeutralMuted)
        XCTAssertTrue(inheritedTheme.colorDecorativeNeutralMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeNeutralDefault, abstractTheme.colorDecorativeNeutralDefault)
        XCTAssertTrue(inheritedTheme.colorDecorativeNeutralDefault == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeNeutralEmphasized, abstractTheme.colorDecorativeNeutralEmphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeNeutralEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent1Muted, abstractTheme.colorDecorativeAccent1Muted)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent1Muted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Default() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent1Default, abstractTheme.colorDecorativeAccent1Default)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent1Default == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent1Emphasized, abstractTheme.colorDecorativeAccent1Emphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent1Emphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent2Muted, abstractTheme.colorDecorativeAccent2Muted)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent2Muted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Default() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent2Default, abstractTheme.colorDecorativeAccent2Default)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent2Default == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent2Emphasized, abstractTheme.colorDecorativeAccent2Emphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent2Emphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent3Muted, abstractTheme.colorDecorativeAccent3Muted)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent3Muted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Default() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent3Default, abstractTheme.colorDecorativeAccent3Default)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent3Default == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent3Emphasized, abstractTheme.colorDecorativeAccent3Emphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent3Emphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent4Muted, abstractTheme.colorDecorativeAccent4Muted)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent4Muted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Default() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent4Default, abstractTheme.colorDecorativeAccent4Default)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent4Default == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent4Emphasized, abstractTheme.colorDecorativeAccent4Emphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent4Emphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent5Muted, abstractTheme.colorDecorativeAccent5Muted)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent5Muted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Default() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent5Default, abstractTheme.colorDecorativeAccent5Default)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent5Default == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent5Emphasized, abstractTheme.colorDecorativeAccent5Emphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent5Emphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint100() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint100, abstractTheme.colorDecorativeSkinTint100)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint100 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint200() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint200, abstractTheme.colorDecorativeSkinTint200)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint200 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint300() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint300, abstractTheme.colorDecorativeSkinTint300)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint300 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint400() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint400, abstractTheme.colorDecorativeSkinTint400)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint400 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint500() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint500, abstractTheme.colorDecorativeSkinTint500)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint500 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint600() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint600, abstractTheme.colorDecorativeSkinTint600)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint600 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint700() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint700, abstractTheme.colorDecorativeSkinTint700)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint700 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint800() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint800, abstractTheme.colorDecorativeSkinTint800)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint800 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint900() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint900, abstractTheme.colorDecorativeSkinTint900)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint900 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    // MARK: Semantic token - Colors - Chart

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalNeutral() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalNeutral, abstractTheme.colorChartCategoricalNeutral)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalNeutral == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalBrand() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalBrand, abstractTheme.colorChartCategoricalBrand)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalBrand == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalPositive, abstractTheme.colorChartCategoricalPositive)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalPositive == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalNegative, abstractTheme.colorChartCategoricalNegative)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalNegative == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier1() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier1, abstractTheme.colorChartCategoricalTier1)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier1 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier2() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier2, abstractTheme.colorChartCategoricalTier2)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier2 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier3() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier3, abstractTheme.colorChartCategoricalTier3)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier3 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier4() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier4, abstractTheme.colorChartCategoricalTier4)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier4 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier5() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier5, abstractTheme.colorChartCategoricalTier5)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier5 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier6() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier6, abstractTheme.colorChartCategoricalTier6)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier6 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier7() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier7, abstractTheme.colorChartCategoricalTier7)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier7 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier8() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier8, abstractTheme.colorChartCategoricalTier8)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier8 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier9() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier9, abstractTheme.colorChartCategoricalTier9)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier9 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier10() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier10, abstractTheme.colorChartCategoricalTier10)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier10 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint100() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint100, abstractTheme.colorChartSequentialAccent1Tint100)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint100 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint200() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint200, abstractTheme.colorChartSequentialAccent1Tint200)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint200 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint300() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint300, abstractTheme.colorChartSequentialAccent1Tint300)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint300 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint400() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint400, abstractTheme.colorChartSequentialAccent1Tint400)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint400 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint500() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint500, abstractTheme.colorChartSequentialAccent1Tint500)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint500 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint600() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint600, abstractTheme.colorChartSequentialAccent1Tint600)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint600 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint700() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint700, abstractTheme.colorChartSequentialAccent1Tint700)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint700 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint800() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint800, abstractTheme.colorChartSequentialAccent1Tint800)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint800 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint900() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint900, abstractTheme.colorChartSequentialAccent1Tint900)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint900 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint100() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint100, abstractTheme.colorChartSequentialAccent2Tint100)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint100 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint200() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint200, abstractTheme.colorChartSequentialAccent2Tint200)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint200 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint300() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint300, abstractTheme.colorChartSequentialAccent2Tint300)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint300 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint400() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint400, abstractTheme.colorChartSequentialAccent2Tint400)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint400 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint500() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint500, abstractTheme.colorChartSequentialAccent2Tint500)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint500 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint600() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint600, abstractTheme.colorChartSequentialAccent2Tint600)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint600 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint700() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint700, abstractTheme.colorChartSequentialAccent2Tint700)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint700 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint800() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint800, abstractTheme.colorChartSequentialAccent2Tint800)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint800 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint900() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint900, abstractTheme.colorChartSequentialAccent2Tint900)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint900 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint100() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint100, abstractTheme.colorChartSequentialAccent3Tint100)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint100 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint200() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint200, abstractTheme.colorChartSequentialAccent3Tint200)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint200 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint300() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint300, abstractTheme.colorChartSequentialAccent3Tint300)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint300 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint400() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint400, abstractTheme.colorChartSequentialAccent3Tint400)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint400 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint500() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint500, abstractTheme.colorChartSequentialAccent3Tint500)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint500 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint600() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint600, abstractTheme.colorChartSequentialAccent3Tint600)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint600 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint700() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint700, abstractTheme.colorChartSequentialAccent3Tint700)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint700 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint800() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint800, abstractTheme.colorChartSequentialAccent3Tint800)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint800 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint900() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint900, abstractTheme.colorChartSequentialAccent3Tint900)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint900 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint100() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint100, abstractTheme.colorChartSequentialAccent4Tint100)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint100 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint200() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint200, abstractTheme.colorChartSequentialAccent4Tint200)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint200 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint300() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint300, abstractTheme.colorChartSequentialAccent4Tint300)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint300 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint400() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint400, abstractTheme.colorChartSequentialAccent4Tint400)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint400 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint500() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint500, abstractTheme.colorChartSequentialAccent4Tint500)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint500 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint600() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint600, abstractTheme.colorChartSequentialAccent4Tint600)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint600 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint700() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint700, abstractTheme.colorChartSequentialAccent4Tint700)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint700 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint800() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint800, abstractTheme.colorChartSequentialAccent4Tint800)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint800 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint900() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint900, abstractTheme.colorChartSequentialAccent4Tint900)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint900 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint100() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint100, abstractTheme.colorChartSequentialAccent5Tint100)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint100 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint200() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint200, abstractTheme.colorChartSequentialAccent5Tint200)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint200 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint300() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint300, abstractTheme.colorChartSequentialAccent5Tint300)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint300 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint400() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint400, abstractTheme.colorChartSequentialAccent5Tint400)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint400 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint500() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint500, abstractTheme.colorChartSequentialAccent5Tint500)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint500 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint600() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint600, abstractTheme.colorChartSequentialAccent5Tint600)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint600 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint700() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint700, abstractTheme.colorChartSequentialAccent5Tint700)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint700 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint800() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint800, abstractTheme.colorChartSequentialAccent5Tint800)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint800 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint900() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint900, abstractTheme.colorChartSequentialAccent5Tint900)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint900 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable required_deinit

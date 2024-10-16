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

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNeutralOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNeutralOnBackgroundEmphasized, abstractTheme.colorBackgroundStatusNeutralOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNeutralOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusPositiveMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusPositiveMuted, abstractTheme.colorBackgroundStatusPositiveMuted)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusPositiveMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusPositiveMutedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusPositiveMutedOnBackgroundEmphasized, abstractTheme.colorBackgroundStatusPositiveMutedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusPositiveMutedOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusPositiveEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusPositiveEmphasized, abstractTheme.colorBackgroundStatusPositiveEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusPositiveEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusInfoMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusInfoMuted, abstractTheme.colorBackgroundStatusInfoMuted)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusInfoMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusInfoMutedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusInfoMutedOnBackgroundEmphasized, abstractTheme.colorBackgroundStatusInfoMutedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusInfoMutedOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusInfoEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusInfoEmphasized, abstractTheme.colorBackgroundStatusInfoEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusInfoEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusWarningMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusWarningMuted, abstractTheme.colorBackgroundStatusWarningMuted)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusWarningMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusWarningMutedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusWarningMutedOnBackgroundEmphasized, abstractTheme.colorBackgroundStatusWarningMutedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusWarningMutedOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusWarningEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusWarningEmphasized, abstractTheme.colorBackgroundStatusWarningEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusWarningEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNegativeMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNegativeMuted, abstractTheme.colorBackgroundStatusNegativeMuted)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNegativeMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNegativeMutedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNegativeMutedOnBackgroundEmphasized, abstractTheme.colorBackgroundStatusNegativeMutedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNegativeMutedOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusNegativeEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusNegativeEmphasized, abstractTheme.colorBackgroundStatusNegativeEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusNegativeEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusAccentMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusAccentMuted, abstractTheme.colorBackgroundStatusAccentMuted)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusAccentMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBackgroundStatusAccentMutedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBackgroundStatusAccentMutedOnBackgroundEmphasized, abstractTheme.colorBackgroundStatusAccentMutedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorBackgroundStatusAccentMutedOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
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

    func testInheritedThemeCanOverrideSemanticTokenColorContentContentDefaultOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentContentDefaultOnBackgroundEmphasized, abstractTheme.colorContentContentDefaultOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentContentDefaultOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentMuted, abstractTheme.colorContentMuted)
        XCTAssertTrue(inheritedTheme.colorContentMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentContentMutedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentContentMutedOnBackgroundEmphasized, abstractTheme.colorContentContentMutedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentContentMutedOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDisabled, abstractTheme.colorContentDisabled)
        XCTAssertTrue(inheritedTheme.colorContentDisabled == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentContentDisabledOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentContentDisabledOnBackgroundEmphasized, abstractTheme.colorContentContentDisabledOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentContentDisabledOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
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

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundPrimary, abstractTheme.colorContentOnBackgroundPrimary)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundPrimary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundSecondary, abstractTheme.colorContentOnBackgroundSecondary)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundSecondary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundTertiary, abstractTheme.colorContentOnBackgroundTertiary)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundTertiary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusPositiveMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusPositiveMuted, abstractTheme.colorContentOnBackgroundStatusPositiveMuted)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusPositiveMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusPositiveMutedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusPositiveMutedOnBackgroundEmphasized, abstractTheme.colorContentOnBackgroundStatusPositiveMutedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusPositiveMutedOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusPositiveEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusPositiveEmphasized, abstractTheme.colorContentOnBackgroundStatusPositiveEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusPositiveEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusInfoMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusInfoMuted, abstractTheme.colorContentOnBackgroundStatusInfoMuted)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusInfoMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusInfoMutedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusInfoMutedOnBackgroundEmphasized, abstractTheme.colorContentOnBackgroundStatusInfoMutedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusInfoMutedOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusInfoEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusInfoEmphasized, abstractTheme.colorContentOnBackgroundStatusInfoEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusInfoEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusWarningMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusWarningMuted, abstractTheme.colorContentOnBackgroundStatusWarningMuted)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusWarningMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusWarningMutedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusWarningMutedOnBackgroundEmphasized, abstractTheme.colorContentOnBackgroundStatusWarningMutedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusWarningMutedOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusWarningEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusWarningEmphasized, abstractTheme.colorContentOnBackgroundStatusWarningEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusWarningEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusNegativeMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusNegativeMuted, abstractTheme.colorContentOnBackgroundStatusNegativeMuted)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusNegativeMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusNegativeMutedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusNegativeMutedOnBackgroundEmphasized, abstractTheme.colorContentOnBackgroundStatusNegativeMutedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusNegativeMutedOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusNegativeEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusNegativeEmphasized, abstractTheme.colorContentOnBackgroundStatusNegativeEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusNegativeEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusAccentMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusAccentMuted, abstractTheme.colorContentOnBackgroundStatusAccentMuted)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusAccentMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusAccentMutedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusAccentMutedOnBackgroundEmphasized, abstractTheme.colorContentOnBackgroundStatusAccentMutedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusAccentMutedOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBackgroundStatusAccentedEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBackgroundStatusAccentedEmphasized, abstractTheme.colorContentOnBackgroundStatusAccentedEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnBackgroundStatusAccentedEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    // MARK: Semantic token - Colors - Border

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderDefault, abstractTheme.colorBorderDefault)
        XCTAssertTrue(inheritedTheme.colorBorderDefault == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefaultOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderDefaultOnBackgroundEmphasized, abstractTheme.colorBorderDefaultOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorBorderDefaultOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderEmphasized, abstractTheme.colorBorderEmphasized)
        XCTAssertTrue(inheritedTheme.colorBorderEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasizedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderEmphasizedOnBackgroundEmphasized, abstractTheme.colorBorderEmphasizedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorBorderEmphasizedOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderFocus, abstractTheme.colorBorderFocus)
        XCTAssertTrue(inheritedTheme.colorBorderFocus == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandPrimaryOnBackgroundEmphasized, abstractTheme.colorBorderBrandPrimaryOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorBorderBrandPrimaryOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
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

    func testInheritedThemeCanOverrideSemanticTokenColorBorderOnBackgroundBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderOnBackgroundBrandPrimary, abstractTheme.colorBorderOnBackgroundBrandPrimary)
        XCTAssertTrue(inheritedTheme.colorBorderOnBackgroundBrandPrimary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderOnBackgroundBrandSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderOnBackgroundBrandSecondary, abstractTheme.colorBorderOnBackgroundBrandSecondary)
        XCTAssertTrue(inheritedTheme.colorBorderOnBackgroundBrandSecondary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderOnBackgroundBrandTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderOnBackgroundBrandTertiary, abstractTheme.colorBorderOnBackgroundBrandTertiary)
        XCTAssertTrue(inheritedTheme.colorBorderOnBackgroundBrandTertiary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    // MARK: Semantic token - Colors - Action

    func testInheritedThemeCanOverrideSemanticTokenColorActionSelected() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSelected, abstractTheme.colorActionSelected)
        XCTAssertTrue(inheritedTheme.colorActionSelected == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSelectedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSelectedOnBackgroundEmphasized, abstractTheme.colorActionSelectedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionSelectedOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionDisabled, abstractTheme.colorActionDisabled)
        XCTAssertTrue(inheritedTheme.colorActionDisabled == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionDisabledOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionDisabledOnBackgroundEmphasized, abstractTheme.colorActionDisabledOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionDisabledOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionVisited() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionVisited, abstractTheme.colorActionVisited)
        XCTAssertTrue(inheritedTheme.colorActionVisited == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionVistedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionVistedOnBackgroundEmphasized, abstractTheme.colorActionVistedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionVistedOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryEnabled, abstractTheme.colorActionPrimaryEnabled)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryEnabled == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryEnabledOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryEnabledOnBackgroundEmphasized, abstractTheme.colorActionPrimaryEnabledOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryEnabledOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryHover() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryHover, abstractTheme.colorActionPrimaryHover)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryHover == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryHoverOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryHoverOnBackgroundEmphasized, abstractTheme.colorActionPrimaryHoverOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryHoverOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryPressed, abstractTheme.colorActionPrimaryPressed)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryPressed == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryPressedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryPressedOnBackgroundEmphasized, abstractTheme.colorActionPrimaryPressedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryPressedOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryLoading, abstractTheme.colorActionPrimaryLoading)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryLoading == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryLoadingOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryLoadingOnBackgroundEmphasized, abstractTheme.colorActionPrimaryLoadingOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryLoadingOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryFocus, abstractTheme.colorActionPrimaryFocus)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryFocus == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryFocusOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryFocusOnBackgroundEmphasized, abstractTheme.colorActionPrimaryFocusOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryFocusOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryEnabled, abstractTheme.colorActionSecondaryEnabled)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryEnabled == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryEnabledOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryEnabledOnBackgroundEmphasized, abstractTheme.colorActionSecondaryEnabledOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryEnabledOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryHover() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryHover, abstractTheme.colorActionSecondaryHover)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryHover == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryHoverOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryHoverOnBackgroundEmphasized, abstractTheme.colorActionSecondaryHoverOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryHoverOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryPressed, abstractTheme.colorActionSecondaryPressed)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryPressed == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryPressedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryPressedOnBackgroundEmphasized, abstractTheme.colorActionSecondaryPressedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryPressedOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryLoading, abstractTheme.colorActionSecondaryLoading)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryLoading == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryLoadingOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryLoadingOnBackgroundEmphasized, abstractTheme.colorActionSecondaryLoadingOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryLoadingOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryFocus, abstractTheme.colorActionSecondaryFocus)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryFocus == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryFocusOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryFocusOnBackgroundEmphasized, abstractTheme.colorActionSecondaryFocusOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryFocusOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
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

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionDisabled, abstractTheme.colorActionOnBackgroundActionDisabled)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionDisabled == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionDisabledOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionDisabledOnBackgroundEmphasized, abstractTheme.colorActionOnBackgroundActionDisabledOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionDisabledOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionNegative, abstractTheme.colorActionOnBackgroundActionNegative)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionNegative == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionPrimaryEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionPrimaryEnabled, abstractTheme.colorActionOnBackgroundActionPrimaryEnabled)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionPrimaryEnabled == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionPrimaryEnabledOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionPrimaryEnabledOnBackgroundEmphasized, abstractTheme.colorActionOnBackgroundActionPrimaryEnabledOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionPrimaryEnabledOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionPrimaryHover() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionPrimaryHover, abstractTheme.colorActionOnBackgroundActionPrimaryHover)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionPrimaryHover == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionPrimaryHoverOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionPrimaryHoverOnBackgroundEmphasized, abstractTheme.colorActionOnBackgroundActionPrimaryHoverOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionPrimaryHoverOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionPrimaryPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionPrimaryPressed, abstractTheme.colorActionOnBackgroundActionPrimaryPressed)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionPrimaryPressed == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionPrimaryPressedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionPrimaryPressedOnBackgroundEmphasized, abstractTheme.colorActionOnBackgroundActionPrimaryPressedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionPrimaryPressedOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionPrimaryLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionPrimaryLoading, abstractTheme.colorActionOnBackgroundActionPrimaryLoading)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionPrimaryLoading == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionPrimaryLoadingOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionPrimaryLoadingOnBackgroundEmphasized, abstractTheme.colorActionOnBackgroundActionPrimaryLoadingOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionPrimaryLoadingOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionPrimaryFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionPrimaryFocus, abstractTheme.colorActionOnBackgroundActionPrimaryFocus)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionPrimaryFocus == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionPrimaryFocusOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionPrimaryFocusOnBackgroundEmphasized, abstractTheme.colorActionOnBackgroundActionPrimaryFocusOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionPrimaryFocusOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionSecondaryEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionSecondaryEnabled, abstractTheme.colorActionOnBackgroundActionSecondaryEnabled)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionSecondaryEnabled == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionSecondaryEnabledOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionSecondaryEnabledOnBackgroundEmphasized, abstractTheme.colorActionOnBackgroundActionSecondaryEnabledOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionSecondaryEnabledOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionSecondaryHover() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionSecondaryHover, abstractTheme.colorActionOnBackgroundActionSecondaryHover)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionSecondaryHover == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionSecondaryHoverOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionSecondaryHoverOnBackgroundEmphasized, abstractTheme.colorActionOnBackgroundActionSecondaryHoverOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionSecondaryHoverOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionSecondaryPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionSecondaryPressed, abstractTheme.colorActionOnBackgroundActionSecondaryPressed)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionSecondaryPressed == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionSecondaryPressedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionSecondaryPressedOnBackgroundEmphasized, abstractTheme.colorActionOnBackgroundActionSecondaryPressedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionSecondaryPressedOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionSecondaryLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionSecondaryLoading, abstractTheme.colorActionOnBackgroundActionSecondaryLoading)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionSecondaryLoading == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionSecondaryLoadingOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionSecondaryLoadingOnBackgroundEmphasized, abstractTheme.colorActionOnBackgroundActionSecondaryLoadingOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionSecondaryLoadingOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionSecondaryFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionSecondaryFocus, abstractTheme.colorActionOnBackgroundActionSecondaryFocus)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionSecondaryFocus == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionOnBackgroundActionSecondaryFocusOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionOnBackgroundActionSecondaryFocusOnBackgroundEmphasized, abstractTheme.colorActionOnBackgroundActionSecondaryFocusOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionOnBackgroundActionSecondaryFocusOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
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

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBackgroundBlack() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBackgroundBlack, abstractTheme.colorAlwaysOnBackgroundBlack)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBackgroundBlack == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBackgroundWhite() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBackgroundWhite, abstractTheme.colorAlwaysOnBackgroundWhite)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBackgroundWhite == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBackgroundWarning() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBackgroundWarning, abstractTheme.colorAlwaysOnBackgroundWarning)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBackgroundWarning == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBackgroundNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBackgroundNegative, abstractTheme.colorAlwaysOnBackgroundNegative)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBackgroundNegative == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBackgroundPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBackgroundPositive, abstractTheme.colorAlwaysOnBackgroundPositive)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBackgroundPositive == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBackgroundInfo() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBackgroundInfo, abstractTheme.colorAlwaysOnBackgroundInfo)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBackgroundInfo == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBackgroundAccent() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBackgroundAccent, abstractTheme.colorAlwaysOnBackgroundAccent)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBackgroundAccent == OtherMockTheme.otherMockThemeMultipleColorTokens)
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

    func testInheritedThemeCanOverrideSemanticTokenColorElevationRaisedOnBackgroundSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationRaisedOnBackgroundSecondary, abstractTheme.colorElevationRaisedOnBackgroundSecondary)
        XCTAssertTrue(inheritedTheme.colorElevationRaisedOnBackgroundSecondary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationRaisedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationRaisedOnBackgroundEmphasized, abstractTheme.colorElevationRaisedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorElevationRaisedOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationDrag() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationDrag, abstractTheme.colorElevationDrag)
        XCTAssertTrue(inheritedTheme.colorElevationDrag == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationDragOnBackgroundSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationDragOnBackgroundSecondary, abstractTheme.colorElevationDragOnBackgroundSecondary)
        XCTAssertTrue(inheritedTheme.colorElevationDragOnBackgroundSecondary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationDragOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationDragOnBackgroundEmphasized, abstractTheme.colorElevationDragOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorElevationDragOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayDefault, abstractTheme.colorElevationOverlayDefault)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayDefault == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayDefaultOnBackgroundSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayDefaultOnBackgroundSecondary, abstractTheme.colorElevationOverlayDefaultOnBackgroundSecondary)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayDefaultOnBackgroundSecondary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayDefaultOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayDefaultOnBackgroundEmphasized, abstractTheme.colorElevationOverlayDefaultOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayDefaultOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayEmphasized, abstractTheme.colorElevationOverlayEmphasized)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayEmphasizedOnBackgroundSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayEmphasizedOnBackgroundSecondary, abstractTheme.colorElevationOverlayEmphasizedOnBackgroundSecondary)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayEmphasizedOnBackgroundSecondary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayEmphasizedOnBackgroundEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayEmphasizedOnBackgroundEmphasized, abstractTheme.colorElevationOverlayEmphasizedOnBackgroundEmphasized)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayEmphasizedOnBackgroundEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationModal() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationModal, abstractTheme.colorElevationModal)
        XCTAssertTrue(inheritedTheme.colorElevationModal == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    // MARK: Semantic token - Colors - Decorative

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeBrandPrimary, abstractTheme.colorDecorativeBrandPrimary)
        XCTAssertTrue(inheritedTheme.colorDecorativeBrandPrimary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandPrimaryMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeBrandPrimaryMuted, abstractTheme.colorDecorativeBrandPrimaryMuted)
        XCTAssertTrue(inheritedTheme.colorDecorativeBrandPrimaryMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandPrimaryEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeBrandPrimaryEmphasized, abstractTheme.colorDecorativeBrandPrimaryEmphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeBrandPrimaryEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSecondary, abstractTheme.colorDecorativeSecondary)
        XCTAssertTrue(inheritedTheme.colorDecorativeSecondary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSecondaryMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSecondaryMuted, abstractTheme.colorDecorativeSecondaryMuted)
        XCTAssertTrue(inheritedTheme.colorDecorativeSecondaryMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSecondaryEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSecondaryEmphasized, abstractTheme.colorDecorativeSecondaryEmphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeSecondaryEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeBrandTertiary, abstractTheme.colorDecorativeBrandTertiary)
        XCTAssertTrue(inheritedTheme.colorDecorativeBrandTertiary == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandTertiaryMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeBrandTertiaryMuted, abstractTheme.colorDecorativeBrandTertiaryMuted)
        XCTAssertTrue(inheritedTheme.colorDecorativeBrandTertiaryMuted == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandTertiaryEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeBrandTertiaryEmphasized, abstractTheme.colorDecorativeBrandTertiaryEmphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeBrandTertiaryEmphasized == OtherMockTheme.otherMockThemeMultipleColorTokens)
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

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkintTint100() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkintTint100, abstractTheme.colorDecorativeSkintTint100)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkintTint100 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkintTint200() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkintTint200, abstractTheme.colorDecorativeSkintTint200)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkintTint200 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkintTint300() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkintTint300, abstractTheme.colorDecorativeSkintTint300)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkintTint300 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkintTint400() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkintTint400, abstractTheme.colorDecorativeSkintTint400)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkintTint400 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkintTint500() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkintTint500, abstractTheme.colorDecorativeSkintTint500)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkintTint500 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkintTint600() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkintTint600, abstractTheme.colorDecorativeSkintTint600)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkintTint600 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkintTint700() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkintTint700, abstractTheme.colorDecorativeSkintTint700)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkintTint700 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkintTint800() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkintTint800, abstractTheme.colorDecorativeSkintTint800)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkintTint800 == OtherMockTheme.otherMockThemeMultipleColorTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkintTint900() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkintTint900, abstractTheme.colorDecorativeSkintTint900)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkintTint900 == OtherMockTheme.otherMockThemeMultipleColorTokens)
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
// swiftlint:enable line_length
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable required_deinit

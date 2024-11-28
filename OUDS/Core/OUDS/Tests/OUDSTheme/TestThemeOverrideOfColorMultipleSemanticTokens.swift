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
// swiftlint:disable type_name

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _abstract class_, exposing through its extensions and protocols _colors semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// 
/// **These tests checks if any _colors multiple semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfColorMultipleSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = MockTheme()
        inheritedTheme = OtherMockTheme()
    }

    // MARK: Semantic token - Colors - Background

    func testInheritedThemeCanOverrideSemanticTokenColorBgPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgPrimary, abstractTheme.colorBgPrimary)
        XCTAssertTrue(inheritedTheme.colorBgPrimary == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgSecondary, abstractTheme.colorBgSecondary)
        XCTAssertTrue(inheritedTheme.colorBgSecondary == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgTertiary, abstractTheme.colorBgTertiary)
        XCTAssertTrue(inheritedTheme.colorBgTertiary == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgEmphasized, abstractTheme.colorBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgBrandPrimary, abstractTheme.colorBgBrandPrimary)
        XCTAssertTrue(inheritedTheme.colorBgBrandPrimary == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusNeutral() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusNeutral, abstractTheme.colorBgStatusNeutral)
        XCTAssertTrue(inheritedTheme.colorBgStatusNeutral == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusNeutralOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusNeutralOnBgEmphasized, abstractTheme.colorBgStatusNeutralOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorBgStatusNeutralOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusPositiveMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusPositiveMuted, abstractTheme.colorBgStatusPositiveMuted)
        XCTAssertTrue(inheritedTheme.colorBgStatusPositiveMuted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusPositiveMutedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusPositiveMutedOnBgEmphasized, abstractTheme.colorBgStatusPositiveMutedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorBgStatusPositiveMutedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusPositiveEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusPositiveEmphasized, abstractTheme.colorBgStatusPositiveEmphasized)
        XCTAssertTrue(inheritedTheme.colorBgStatusPositiveEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusInfoMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusInfoMuted, abstractTheme.colorBgStatusInfoMuted)
        XCTAssertTrue(inheritedTheme.colorBgStatusInfoMuted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusInfoMutedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusInfoMutedOnBgEmphasized, abstractTheme.colorBgStatusInfoMutedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorBgStatusInfoMutedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusInfoEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusInfoEmphasized, abstractTheme.colorBgStatusInfoEmphasized)
        XCTAssertTrue(inheritedTheme.colorBgStatusInfoEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusWarningMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusWarningMuted, abstractTheme.colorBgStatusWarningMuted)
        XCTAssertTrue(inheritedTheme.colorBgStatusWarningMuted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusWarningMutedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusWarningMutedOnBgEmphasized, abstractTheme.colorBgStatusWarningMutedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorBgStatusWarningMutedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusWarningEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusWarningEmphasized, abstractTheme.colorBgStatusWarningEmphasized)
        XCTAssertTrue(inheritedTheme.colorBgStatusWarningEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusNegativeMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusNegativeMuted, abstractTheme.colorBgStatusNegativeMuted)
        XCTAssertTrue(inheritedTheme.colorBgStatusNegativeMuted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusNegativeMutedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusNegativeMutedOnBgEmphasized, abstractTheme.colorBgStatusNegativeMutedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorBgStatusNegativeMutedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusNegativeEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusNegativeEmphasized, abstractTheme.colorBgStatusNegativeEmphasized)
        XCTAssertTrue(inheritedTheme.colorBgStatusNegativeEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusAccentMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusAccentMuted, abstractTheme.colorBgStatusAccentMuted)
        XCTAssertTrue(inheritedTheme.colorBgStatusAccentMuted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusAccentMutedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusAccentMutedOnBgEmphasized, abstractTheme.colorBgStatusAccentMutedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorBgStatusAccentMutedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusAccentEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusAccentEmphasized, abstractTheme.colorBgStatusAccentEmphasized)
        XCTAssertTrue(inheritedTheme.colorBgStatusAccentEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: Semantic token - Colors - Content - Status

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDefault, abstractTheme.colorContentDefault)
        XCTAssertTrue(inheritedTheme.colorContentDefault == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefaultOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDefaultOnBgEmphasized, abstractTheme.colorContentDefaultOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentDefaultOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentMuted, abstractTheme.colorContentMuted)
        XCTAssertTrue(inheritedTheme.colorContentMuted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMutedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentMutedOnBgEmphasized, abstractTheme.colorContentMutedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentMutedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDisabled, abstractTheme.colorContentDisabled)
        XCTAssertTrue(inheritedTheme.colorContentDisabled == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDisabledOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDisabledOnBgEmphasized, abstractTheme.colorContentDisabledOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentDisabledOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandPrimary, abstractTheme.colorContentBrandPrimary)
        XCTAssertTrue(inheritedTheme.colorContentBrandPrimary == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandPrimaryOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandPrimaryOnBgEmphasized, abstractTheme.colorContentBrandPrimaryOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentBrandPrimaryOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }
    
    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusPositive, abstractTheme.colorContentStatusPositive)
        XCTAssertTrue(inheritedTheme.colorContentStatusPositive == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusInfo() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusInfo, abstractTheme.colorContentStatusInfo)
        XCTAssertTrue(inheritedTheme.colorContentStatusInfo == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusWarning() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusWarning, abstractTheme.colorContentStatusWarning)
        XCTAssertTrue(inheritedTheme.colorContentStatusWarning == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusNegative, abstractTheme.colorContentStatusNegative)
        XCTAssertTrue(inheritedTheme.colorContentStatusNegative == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusAccent() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusAccent, abstractTheme.colorContentStatusAccent)
        XCTAssertTrue(inheritedTheme.colorContentStatusAccent == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: Semantic token - Colors - Content - On Action
    
    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionDisabled, abstractTheme.colorContentOnActionDisabled)
        XCTAssertTrue(inheritedTheme.colorContentOnActionDisabled == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionDisabledOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionDisabledOnBgEmphasized, abstractTheme.colorContentOnActionDisabledOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnActionDisabledOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionNegative, abstractTheme.colorContentOnActionNegative)
        XCTAssertTrue(inheritedTheme.colorContentOnActionNegative == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionPrimaryEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionPrimaryEnabled, abstractTheme.colorContentOnActionPrimaryEnabled)
        XCTAssertTrue(inheritedTheme.colorContentOnActionPrimaryEnabled == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionPrimaryEnabledOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionPrimaryEnabledOnBgEmphasized, abstractTheme.colorContentOnActionPrimaryEnabledOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnActionPrimaryEnabledOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionPrimaryFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionPrimaryFocus, abstractTheme.colorContentOnActionPrimaryFocus)
        XCTAssertTrue(inheritedTheme.colorContentOnActionPrimaryFocus == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionPrimaryFocusOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionPrimaryFocusOnBgEmphasized, abstractTheme.colorContentOnActionPrimaryFocusOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnActionPrimaryFocusOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionPrimaryHover() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionPrimaryHover, abstractTheme.colorContentOnActionPrimaryHover)
        XCTAssertTrue(inheritedTheme.colorContentOnActionPrimaryHover == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionPrimaryHoverOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionPrimaryHoverOnBgEmphasized, abstractTheme.colorContentOnActionPrimaryHoverOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnActionPrimaryHoverOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionPrimaryLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionPrimaryLoading, abstractTheme.colorContentOnActionPrimaryLoading)
        XCTAssertTrue(inheritedTheme.colorContentOnActionPrimaryLoading == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionPrimaryLoadingOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionPrimaryLoadingOnBgEmphasized, abstractTheme.colorContentOnActionPrimaryLoadingOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnActionPrimaryLoadingOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionPrimaryPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionPrimaryPressed, abstractTheme.colorContentOnActionPrimaryPressed)
        XCTAssertTrue(inheritedTheme.colorContentOnActionPrimaryPressed == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionPrimaryPressedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionPrimaryPressedOnBgEmphasized, abstractTheme.colorContentOnActionPrimaryPressedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnActionPrimaryPressedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBrandPrimary, abstractTheme.colorContentOnBrandPrimary)
        XCTAssertTrue(inheritedTheme.colorContentOnBrandPrimary == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusAccentEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnStatusAccentEmphasized, abstractTheme.colorContentOnStatusAccentEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnStatusAccentEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusAccentMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnStatusAccentMuted, abstractTheme.colorContentOnStatusAccentMuted)
        XCTAssertTrue(inheritedTheme.colorContentOnStatusAccentMuted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusAccentMutedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnStatusAccentMutedOnBgEmphasized, abstractTheme.colorContentOnStatusAccentMutedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnStatusAccentMutedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusInfoEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnStatusInfoEmphasized, abstractTheme.colorContentOnStatusInfoEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnStatusInfoEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusInfoMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnStatusInfoMuted, abstractTheme.colorContentOnStatusInfoMuted)
        XCTAssertTrue(inheritedTheme.colorContentOnStatusInfoMuted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusInfoMutedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnStatusInfoMutedOnBgEmphasized, abstractTheme.colorContentOnStatusInfoMutedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnStatusInfoMutedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusNegativeEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnStatusNegativeEmphasized, abstractTheme.colorContentOnStatusNegativeEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnStatusNegativeEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusNegativeMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnStatusNegativeMuted, abstractTheme.colorContentOnStatusNegativeMuted)
        XCTAssertTrue(inheritedTheme.colorContentOnStatusNegativeMuted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusNegativeMutedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnStatusNegativeMutedOnBgEmphasized, abstractTheme.colorContentOnStatusNegativeMutedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnStatusNegativeMutedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusPositiveEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnStatusPositiveEmphasized, abstractTheme.colorContentOnStatusPositiveEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnStatusPositiveEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusPositiveMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnStatusPositiveMuted, abstractTheme.colorContentOnStatusPositiveMuted)
        XCTAssertTrue(inheritedTheme.colorContentOnStatusPositiveMuted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusPositiveMutedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnStatusPositiveMutedOnBgEmphasized, abstractTheme.colorContentOnStatusPositiveMutedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnStatusPositiveMutedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusWarningEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnStatusWarningEmphasized, abstractTheme.colorContentOnStatusWarningEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnStatusWarningEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusWarningMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnStatusWarningMuted, abstractTheme.colorContentOnStatusWarningMuted)
        XCTAssertTrue(inheritedTheme.colorContentOnStatusWarningMuted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusWarningMutedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnStatusWarningMutedOnBgEmphasized, abstractTheme.colorContentOnStatusWarningMutedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnStatusWarningMutedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: Semantic token - Colors - Border

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderDefault, abstractTheme.colorBorderDefault)
        XCTAssertTrue(inheritedTheme.colorBorderDefault == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefaultOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderDefaultOnBgEmphasized, abstractTheme.colorBorderDefaultOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorBorderDefaultOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderEmphasized, abstractTheme.colorBorderEmphasized)
        XCTAssertTrue(inheritedTheme.colorBorderEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasizedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderEmphasizedOnBgEmphasized, abstractTheme.colorBorderEmphasizedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorBorderEmphasizedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderFocus, abstractTheme.colorBorderFocus)
        XCTAssertTrue(inheritedTheme.colorBorderFocus == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }
    
    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusInset() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderFocusInset, abstractTheme.colorBorderFocusInset)
        XCTAssertTrue(inheritedTheme.colorBorderFocusInset == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusInsetOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderFocusInsetOnBgEmphasized, abstractTheme.colorBorderFocusInsetOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorBorderFocusInsetOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderFocusOnBgEmphasized, abstractTheme.colorBorderFocusOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorBorderFocusOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandPrimaryOnBgEmphasized, abstractTheme.colorBorderBrandPrimaryOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorBorderBrandPrimaryOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandPrimary, abstractTheme.colorBorderBrandPrimary)
        XCTAssertTrue(inheritedTheme.colorBorderBrandPrimary == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderOnBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderOnBrandPrimary, abstractTheme.colorBorderOnBrandPrimary)
        XCTAssertTrue(inheritedTheme.colorBorderOnBrandPrimary == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandPrimaryOnBgEmphasized, abstractTheme.colorBorderBrandPrimaryOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorBorderBrandPrimaryOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandPrimary, abstractTheme.colorBorderBrandPrimary)
        XCTAssertTrue(inheritedTheme.colorBorderBrandPrimary == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: Semantic token - Colors - Action

    func testInheritedThemeCanOverrideSemanticTokenColorActionSelected() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSelected, abstractTheme.colorActionSelected)
        XCTAssertTrue(inheritedTheme.colorActionSelected == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSelectedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSelectedOnBgEmphasized, abstractTheme.colorActionSelectedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionSelectedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionDisabled, abstractTheme.colorActionDisabled)
        XCTAssertTrue(inheritedTheme.colorActionDisabled == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionDisabledOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionDisabledOnBgEmphasized, abstractTheme.colorActionDisabledOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionDisabledOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionVisited() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionVisited, abstractTheme.colorActionVisited)
        XCTAssertTrue(inheritedTheme.colorActionVisited == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryEnabled, abstractTheme.colorActionPrimaryEnabled)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryEnabled == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryEnabledOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryEnabledOnBgEmphasized, abstractTheme.colorActionPrimaryEnabledOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryEnabledOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryHover() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryHover, abstractTheme.colorActionPrimaryHover)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryHover == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryHoverOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryHoverOnBgEmphasized, abstractTheme.colorActionPrimaryHoverOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryHoverOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryPressed, abstractTheme.colorActionPrimaryPressed)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryPressed == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryPressedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryPressedOnBgEmphasized, abstractTheme.colorActionPrimaryPressedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryPressedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryLoading, abstractTheme.colorActionPrimaryLoading)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryLoading == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryLoadingOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryLoadingOnBgEmphasized, abstractTheme.colorActionPrimaryLoadingOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryLoadingOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryFocus, abstractTheme.colorActionPrimaryFocus)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryFocus == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryFocusOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryFocusOnBgEmphasized, abstractTheme.colorActionPrimaryFocusOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryFocusOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryEnabled, abstractTheme.colorActionSecondaryEnabled)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryEnabled == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryEnabledOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryEnabledOnBgEmphasized, abstractTheme.colorActionSecondaryEnabledOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryEnabledOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryHover() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryHover, abstractTheme.colorActionSecondaryHover)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryHover == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryHoverOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryHoverOnBgEmphasized, abstractTheme.colorActionSecondaryHoverOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryHoverOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryPressed, abstractTheme.colorActionSecondaryPressed)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryPressed == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryPressedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryPressedOnBgEmphasized, abstractTheme.colorActionSecondaryPressedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryPressedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryLoading, abstractTheme.colorActionSecondaryLoading)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryLoading == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryLoadingOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryLoadingOnBgEmphasized, abstractTheme.colorActionSecondaryLoadingOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryLoadingOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryFocus, abstractTheme.colorActionSecondaryFocus)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryFocus == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryFocusOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryFocusOnBgEmphasized, abstractTheme.colorActionSecondaryFocusOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryFocusOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativeEnabled, abstractTheme.colorActionNegativeEnabled)
        XCTAssertTrue(inheritedTheme.colorActionNegativeEnabled == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeHover() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativeHover, abstractTheme.colorActionNegativeHover)
        XCTAssertTrue(inheritedTheme.colorActionNegativeHover == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativePressed() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativePressed, abstractTheme.colorActionNegativePressed)
        XCTAssertTrue(inheritedTheme.colorActionNegativePressed == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativeLoading, abstractTheme.colorActionNegativeLoading)
        XCTAssertTrue(inheritedTheme.colorActionNegativeLoading == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativeFocus, abstractTheme.colorActionNegativeFocus)
        XCTAssertTrue(inheritedTheme.colorActionNegativeFocus == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: Semantic token - Colors - Always

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysBlack() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysBlack, abstractTheme.colorAlwaysBlack)
        XCTAssertTrue(inheritedTheme.colorAlwaysBlack == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysWhite() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysWhite, abstractTheme.colorAlwaysWhite)
        XCTAssertTrue(inheritedTheme.colorAlwaysWhite == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysWarning() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysWarning, abstractTheme.colorAlwaysWarning)
        XCTAssertTrue(inheritedTheme.colorAlwaysWarning == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysNegative, abstractTheme.colorAlwaysNegative)
        XCTAssertTrue(inheritedTheme.colorAlwaysNegative == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }
    
    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysPositive, abstractTheme.colorAlwaysPositive)
        XCTAssertTrue(inheritedTheme.colorAlwaysPositive == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysInfo() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysInfo, abstractTheme.colorAlwaysInfo)
        XCTAssertTrue(inheritedTheme.colorAlwaysInfo == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysAccent() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysAccent, abstractTheme.colorAlwaysAccent)
        XCTAssertTrue(inheritedTheme.colorAlwaysAccent == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnAccent() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnAccent, abstractTheme.colorAlwaysOnAccent)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnAccent == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }
    
    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBlack() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBlack, abstractTheme.colorAlwaysOnBlack)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBlack == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }
    
    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnInfo() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnInfo, abstractTheme.colorAlwaysOnInfo)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnInfo == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }
    
    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnNegative, abstractTheme.colorAlwaysOnNegative)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnNegative == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }
    
    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnPositive, abstractTheme.colorAlwaysOnPositive)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnPositive == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }
    
    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnWarning() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnWarning, abstractTheme.colorAlwaysOnWarning)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnWarning == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }
    
    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnWhite() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnWhite, abstractTheme.colorAlwaysOnWhite)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnWhite == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }
    
    // MARK: Semantic token - Colors - Transparent

    func testInheritedThemeCanOverrideSemanticTokenColorTransparentDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorTransparentDefault, abstractTheme.colorTransparentDefault)
        XCTAssertTrue(inheritedTheme.colorTransparentDefault == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: Semantic token - Colors - Elevation

    func testInheritedThemeCanOverrideSemanticTokenColorElevationRaised() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationRaised, abstractTheme.colorElevationRaised)
        XCTAssertTrue(inheritedTheme.colorElevationRaised == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationRaisedOnBgSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationRaisedOnBgSecondary, abstractTheme.colorElevationRaisedOnBgSecondary)
        XCTAssertTrue(inheritedTheme.colorElevationRaisedOnBgSecondary == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationRaisedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationRaisedOnBgEmphasized, abstractTheme.colorElevationRaisedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorElevationRaisedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationDrag() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationDrag, abstractTheme.colorElevationDrag)
        XCTAssertTrue(inheritedTheme.colorElevationDrag == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationDragOnBgSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationDragOnBgSecondary, abstractTheme.colorElevationDragOnBgSecondary)
        XCTAssertTrue(inheritedTheme.colorElevationDragOnBgSecondary == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationDragOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationDragOnBgEmphasized, abstractTheme.colorElevationDragOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorElevationDragOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayDefault, abstractTheme.colorElevationOverlayDefault)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayDefault == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayDefaultOnBgSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayDefaultOnBgSecondary, abstractTheme.colorElevationOverlayDefaultOnBgSecondary)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayDefaultOnBgSecondary == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayDefaultOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayDefaultOnBgEmphasized, abstractTheme.colorElevationOverlayDefaultOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayDefaultOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayEmphasized, abstractTheme.colorElevationOverlayEmphasized)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayEmphasizedOnBgSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayEmphasizedOnBgSecondary, abstractTheme.colorElevationOverlayEmphasizedOnBgSecondary)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayEmphasizedOnBgSecondary == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayEmphasizedOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayEmphasizedOnBgEmphasized, abstractTheme.colorElevationOverlayEmphasizedOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayEmphasizedOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationModal() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationModal, abstractTheme.colorElevationModal)
        XCTAssertTrue(inheritedTheme.colorElevationModal == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: Semantic token - Colors - Decorative

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeNeutralMuted, abstractTheme.colorDecorativeNeutralMuted)
        XCTAssertTrue(inheritedTheme.colorDecorativeNeutralMuted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeNeutralDefault, abstractTheme.colorDecorativeNeutralDefault)
        XCTAssertTrue(inheritedTheme.colorDecorativeNeutralDefault == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeNeutralEmphasized, abstractTheme.colorDecorativeNeutralEmphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeNeutralEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent1Muted, abstractTheme.colorDecorativeAccent1Muted)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent1Muted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Default() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent1Default, abstractTheme.colorDecorativeAccent1Default)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent1Default == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent1Emphasized, abstractTheme.colorDecorativeAccent1Emphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent1Emphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent2Muted, abstractTheme.colorDecorativeAccent2Muted)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent2Muted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Default() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent2Default, abstractTheme.colorDecorativeAccent2Default)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent2Default == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent2Emphasized, abstractTheme.colorDecorativeAccent2Emphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent2Emphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent3Muted, abstractTheme.colorDecorativeAccent3Muted)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent3Muted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Default() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent3Default, abstractTheme.colorDecorativeAccent3Default)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent3Default == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent3Emphasized, abstractTheme.colorDecorativeAccent3Emphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent3Emphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent4Muted, abstractTheme.colorDecorativeAccent4Muted)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent4Muted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Default() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent4Default, abstractTheme.colorDecorativeAccent4Default)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent4Default == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent4Emphasized, abstractTheme.colorDecorativeAccent4Emphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent4Emphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent5Muted, abstractTheme.colorDecorativeAccent5Muted)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent5Muted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Default() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent5Default, abstractTheme.colorDecorativeAccent5Default)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent5Default == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent5Emphasized, abstractTheme.colorDecorativeAccent5Emphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent5Emphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint100() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint100, abstractTheme.colorDecorativeSkinTint100)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint100 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint200() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint200, abstractTheme.colorDecorativeSkinTint200)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint200 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint300() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint300, abstractTheme.colorDecorativeSkinTint300)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint300 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint400() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint400, abstractTheme.colorDecorativeSkinTint400)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint400 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint500() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint500, abstractTheme.colorDecorativeSkinTint500)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint500 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint600() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint600, abstractTheme.colorDecorativeSkinTint600)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint600 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint700() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint700, abstractTheme.colorDecorativeSkinTint700)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint700 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint800() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint800, abstractTheme.colorDecorativeSkinTint800)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint800 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint900() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint900, abstractTheme.colorDecorativeSkinTint900)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint900 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: Semantic token - Colors - Chart

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalNeutral() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalNeutral, abstractTheme.colorChartCategoricalNeutral)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalNeutral == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalBrand() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalBrand, abstractTheme.colorChartCategoricalBrand)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalBrand == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalPositive, abstractTheme.colorChartCategoricalPositive)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalPositive == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalNegative, abstractTheme.colorChartCategoricalNegative)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalNegative == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier1() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier1, abstractTheme.colorChartCategoricalTier1)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier1 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier2() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier2, abstractTheme.colorChartCategoricalTier2)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier2 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier3() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier3, abstractTheme.colorChartCategoricalTier3)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier3 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier4() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier4, abstractTheme.colorChartCategoricalTier4)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier4 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier5() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier5, abstractTheme.colorChartCategoricalTier5)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier5 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier6() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier6, abstractTheme.colorChartCategoricalTier6)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier6 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier7() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier7, abstractTheme.colorChartCategoricalTier7)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier7 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier8() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier8, abstractTheme.colorChartCategoricalTier8)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier8 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier9() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier9, abstractTheme.colorChartCategoricalTier9)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier9 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier10() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier10, abstractTheme.colorChartCategoricalTier10)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier10 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint100() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint100, abstractTheme.colorChartSequentialAccent1Tint100)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint100 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint200() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint200, abstractTheme.colorChartSequentialAccent1Tint200)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint200 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint300() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint300, abstractTheme.colorChartSequentialAccent1Tint300)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint300 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint400() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint400, abstractTheme.colorChartSequentialAccent1Tint400)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint400 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint500() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint500, abstractTheme.colorChartSequentialAccent1Tint500)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint500 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint600() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint600, abstractTheme.colorChartSequentialAccent1Tint600)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint600 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint700() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint700, abstractTheme.colorChartSequentialAccent1Tint700)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint700 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint800() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint800, abstractTheme.colorChartSequentialAccent1Tint800)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint800 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint900() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint900, abstractTheme.colorChartSequentialAccent1Tint900)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint900 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint100() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint100, abstractTheme.colorChartSequentialAccent2Tint100)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint100 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint200() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint200, abstractTheme.colorChartSequentialAccent2Tint200)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint200 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint300() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint300, abstractTheme.colorChartSequentialAccent2Tint300)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint300 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint400() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint400, abstractTheme.colorChartSequentialAccent2Tint400)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint400 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint500() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint500, abstractTheme.colorChartSequentialAccent2Tint500)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint500 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint600() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint600, abstractTheme.colorChartSequentialAccent2Tint600)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint600 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint700() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint700, abstractTheme.colorChartSequentialAccent2Tint700)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint700 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint800() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint800, abstractTheme.colorChartSequentialAccent2Tint800)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint800 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint900() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint900, abstractTheme.colorChartSequentialAccent2Tint900)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint900 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint100() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint100, abstractTheme.colorChartSequentialAccent3Tint100)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint100 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint200() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint200, abstractTheme.colorChartSequentialAccent3Tint200)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint200 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint300() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint300, abstractTheme.colorChartSequentialAccent3Tint300)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint300 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint400() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint400, abstractTheme.colorChartSequentialAccent3Tint400)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint400 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint500() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint500, abstractTheme.colorChartSequentialAccent3Tint500)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint500 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint600() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint600, abstractTheme.colorChartSequentialAccent3Tint600)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint600 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint700() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint700, abstractTheme.colorChartSequentialAccent3Tint700)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint700 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint800() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint800, abstractTheme.colorChartSequentialAccent3Tint800)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint800 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint900() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint900, abstractTheme.colorChartSequentialAccent3Tint900)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint900 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint100() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint100, abstractTheme.colorChartSequentialAccent4Tint100)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint100 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint200() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint200, abstractTheme.colorChartSequentialAccent4Tint200)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint200 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint300() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint300, abstractTheme.colorChartSequentialAccent4Tint300)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint300 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint400() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint400, abstractTheme.colorChartSequentialAccent4Tint400)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint400 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint500() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint500, abstractTheme.colorChartSequentialAccent4Tint500)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint500 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint600() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint600, abstractTheme.colorChartSequentialAccent4Tint600)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint600 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint700() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint700, abstractTheme.colorChartSequentialAccent4Tint700)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint700 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint800() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint800, abstractTheme.colorChartSequentialAccent4Tint800)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint800 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint900() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint900, abstractTheme.colorChartSequentialAccent4Tint900)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint900 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint100() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint100, abstractTheme.colorChartSequentialAccent5Tint100)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint100 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint200() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint200, abstractTheme.colorChartSequentialAccent5Tint200)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint200 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint300() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint300, abstractTheme.colorChartSequentialAccent5Tint300)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint300 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint400() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint400, abstractTheme.colorChartSequentialAccent5Tint400)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint400 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint500() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint500, abstractTheme.colorChartSequentialAccent5Tint500)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint500 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint600() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint600, abstractTheme.colorChartSequentialAccent5Tint600)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint600 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint700() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint700, abstractTheme.colorChartSequentialAccent5Tint700)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint700 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint800() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint800, abstractTheme.colorChartSequentialAccent5Tint800)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint800 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint900() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint900, abstractTheme.colorChartSequentialAccent5Tint900)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint900 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: Semantic token - Colors - Chart

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalNeutralLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalNeutralLight, abstractTheme.colorChartCategoricalNeutralLight)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalNeutralLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalNeutralDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalNeutralDark, abstractTheme.colorChartCategoricalNeutralDark)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalNeutralDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalBrandLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalBrandLight, abstractTheme.colorChartCategoricalBrandLight)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalBrandLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalBrandDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalBrandDark, abstractTheme.colorChartCategoricalBrandDark)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalBrandDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalPositiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalPositiveLight, abstractTheme.colorChartCategoricalPositiveLight)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalPositiveLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalPositiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalPositiveDark, abstractTheme.colorChartCategoricalPositiveDark)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalPositiveDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalNegativeLight, abstractTheme.colorChartCategoricalNegativeLight)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalNegativeLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalNegativeDark, abstractTheme.colorChartCategoricalNegativeDark)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalNegativeDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier1Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier1Light, abstractTheme.colorChartCategoricalTier1Light)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier1Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier1Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier1Dark, abstractTheme.colorChartCategoricalTier1Dark)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier1Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier2Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier2Light, abstractTheme.colorChartCategoricalTier2Light)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier2Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier2Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier2Dark, abstractTheme.colorChartCategoricalTier2Dark)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier2Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier3Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier3Light, abstractTheme.colorChartCategoricalTier3Light)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier3Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier3Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier3Dark, abstractTheme.colorChartCategoricalTier3Dark)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier3Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier4Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier4Light, abstractTheme.colorChartCategoricalTier4Light)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier4Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier4Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier4Dark, abstractTheme.colorChartCategoricalTier4Dark)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier4Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier5Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier5Light, abstractTheme.colorChartCategoricalTier5Light)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier5Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier5Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier5Dark, abstractTheme.colorChartCategoricalTier5Dark)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier5Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier6Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier6Light, abstractTheme.colorChartCategoricalTier6Light)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier6Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier6Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier6Dark, abstractTheme.colorChartCategoricalTier6Dark)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier6Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier7Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier7Light, abstractTheme.colorChartCategoricalTier7Light)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier7Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier7Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier7Dark, abstractTheme.colorChartCategoricalTier7Dark)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier7Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier8Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier8Light, abstractTheme.colorChartCategoricalTier8Light)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier8Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier8Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier8Dark, abstractTheme.colorChartCategoricalTier8Dark)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier8Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier9Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier9Light, abstractTheme.colorChartCategoricalTier9Light)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier9Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier9Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier9Dark, abstractTheme.colorChartCategoricalTier9Dark)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier9Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier10Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier10Light, abstractTheme.colorChartCategoricalTier10Light)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier10Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier10Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier10Dark, abstractTheme.colorChartCategoricalTier10Dark)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier10Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint100Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint100Light, abstractTheme.colorChartSequentialAccent1Tint100Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint100Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint100Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint100Dark, abstractTheme.colorChartSequentialAccent1Tint100Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint100Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint200Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint200Light, abstractTheme.colorChartSequentialAccent1Tint200Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint200Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint200Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint200Dark, abstractTheme.colorChartSequentialAccent1Tint200Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint200Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint300Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint300Light, abstractTheme.colorChartSequentialAccent1Tint300Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint300Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint300Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint300Dark, abstractTheme.colorChartSequentialAccent1Tint300Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint300Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint400Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint400Light, abstractTheme.colorChartSequentialAccent1Tint400Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint400Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint400Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint400Dark, abstractTheme.colorChartSequentialAccent1Tint400Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint400Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint500Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint500Light, abstractTheme.colorChartSequentialAccent1Tint500Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint500Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint500Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint500Dark, abstractTheme.colorChartSequentialAccent1Tint500Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint500Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint600Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint600Light, abstractTheme.colorChartSequentialAccent1Tint600Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint600Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint600Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint600Dark, abstractTheme.colorChartSequentialAccent1Tint600Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint600Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint700Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint700Light, abstractTheme.colorChartSequentialAccent1Tint700Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint700Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint700Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint700Dark, abstractTheme.colorChartSequentialAccent1Tint700Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint700Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint800Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint800Light, abstractTheme.colorChartSequentialAccent1Tint800Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint800Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint800Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint800Dark, abstractTheme.colorChartSequentialAccent1Tint800Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint800Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint900Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint900Light, abstractTheme.colorChartSequentialAccent1Tint900Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint900Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent1Tint900Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent1Tint900Dark, abstractTheme.colorChartSequentialAccent1Tint900Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent1Tint900Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint100Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint100Light, abstractTheme.colorChartSequentialAccent2Tint100Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint100Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint100Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint100Dark, abstractTheme.colorChartSequentialAccent2Tint100Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint100Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint200Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint200Light, abstractTheme.colorChartSequentialAccent2Tint200Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint200Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint200Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint200Dark, abstractTheme.colorChartSequentialAccent2Tint200Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint200Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint300Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint300Light, abstractTheme.colorChartSequentialAccent2Tint300Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint300Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint300Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint300Dark, abstractTheme.colorChartSequentialAccent2Tint300Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint300Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint400Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint400Light, abstractTheme.colorChartSequentialAccent2Tint400Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint400Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint400Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint400Dark, abstractTheme.colorChartSequentialAccent2Tint400Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint400Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint500Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint500Light, abstractTheme.colorChartSequentialAccent2Tint500Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint500Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint500Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint500Dark, abstractTheme.colorChartSequentialAccent2Tint500Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint500Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint600Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint600Light, abstractTheme.colorChartSequentialAccent2Tint600Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint600Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint600Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint600Dark, abstractTheme.colorChartSequentialAccent2Tint600Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint600Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint700Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint700Light, abstractTheme.colorChartSequentialAccent2Tint700Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint700Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint700Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint700Dark, abstractTheme.colorChartSequentialAccent2Tint700Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint700Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint800Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint800Light, abstractTheme.colorChartSequentialAccent2Tint800Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint800Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint800Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint800Dark, abstractTheme.colorChartSequentialAccent2Tint800Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint800Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint900Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint900Light, abstractTheme.colorChartSequentialAccent2Tint900Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint900Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent2Tint900Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent2Tint900Dark, abstractTheme.colorChartSequentialAccent2Tint900Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent2Tint900Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint100Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint100Light, abstractTheme.colorChartSequentialAccent3Tint100Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint100Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint100Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint100Dark, abstractTheme.colorChartSequentialAccent3Tint100Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint100Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint200Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint200Light, abstractTheme.colorChartSequentialAccent3Tint200Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint200Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint200Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint200Dark, abstractTheme.colorChartSequentialAccent3Tint200Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint200Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint300Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint300Light, abstractTheme.colorChartSequentialAccent3Tint300Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint300Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint300Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint300Dark, abstractTheme.colorChartSequentialAccent3Tint300Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint300Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint400Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint400Light, abstractTheme.colorChartSequentialAccent3Tint400Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint400Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint400Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint400Dark, abstractTheme.colorChartSequentialAccent3Tint400Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint400Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint500Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint500Light, abstractTheme.colorChartSequentialAccent3Tint500Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint500Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint500Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint500Dark, abstractTheme.colorChartSequentialAccent3Tint500Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint500Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint600Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint600Light, abstractTheme.colorChartSequentialAccent3Tint600Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint600Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint600Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint600Dark, abstractTheme.colorChartSequentialAccent3Tint600Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint600Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint700Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint700Light, abstractTheme.colorChartSequentialAccent3Tint700Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint700Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint700Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint700Dark, abstractTheme.colorChartSequentialAccent3Tint700Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint700Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint800Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint800Light, abstractTheme.colorChartSequentialAccent3Tint800Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint800Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint800Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint800Dark, abstractTheme.colorChartSequentialAccent3Tint800Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint800Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint900Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint900Light, abstractTheme.colorChartSequentialAccent3Tint900Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint900Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent3Tint900Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent3Tint900Dark, abstractTheme.colorChartSequentialAccent3Tint900Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent3Tint900Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint100Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint100Light, abstractTheme.colorChartSequentialAccent4Tint100Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint100Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint100Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint100Dark, abstractTheme.colorChartSequentialAccent4Tint100Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint100Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint200Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint200Light, abstractTheme.colorChartSequentialAccent4Tint200Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint200Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint200Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint200Dark, abstractTheme.colorChartSequentialAccent4Tint200Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint200Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint300Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint300Light, abstractTheme.colorChartSequentialAccent4Tint300Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint300Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint300Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint300Dark, abstractTheme.colorChartSequentialAccent4Tint300Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint300Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint400Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint400Light, abstractTheme.colorChartSequentialAccent4Tint400Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint400Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint400Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint400Dark, abstractTheme.colorChartSequentialAccent4Tint400Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint400Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint500Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint500Light, abstractTheme.colorChartSequentialAccent4Tint500Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint500Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint500Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint500Dark, abstractTheme.colorChartSequentialAccent4Tint500Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint500Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint600Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint600Light, abstractTheme.colorChartSequentialAccent4Tint600Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint600Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint600Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint600Dark, abstractTheme.colorChartSequentialAccent4Tint600Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint600Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint700Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint700Light, abstractTheme.colorChartSequentialAccent4Tint700Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint700Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint700Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint700Dark, abstractTheme.colorChartSequentialAccent4Tint700Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint700Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint800Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint800Light, abstractTheme.colorChartSequentialAccent4Tint800Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint800Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint800Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint800Dark, abstractTheme.colorChartSequentialAccent4Tint800Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint800Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint900Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint900Light, abstractTheme.colorChartSequentialAccent4Tint900Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint900Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent4Tint900Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent4Tint900Dark, abstractTheme.colorChartSequentialAccent4Tint900Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent4Tint900Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint100Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint100Light, abstractTheme.colorChartSequentialAccent5Tint100Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint100Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint100Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint100Dark, abstractTheme.colorChartSequentialAccent5Tint100Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint100Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint200Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint200Light, abstractTheme.colorChartSequentialAccent5Tint200Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint200Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint200Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint200Dark, abstractTheme.colorChartSequentialAccent5Tint200Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint200Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint300Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint300Light, abstractTheme.colorChartSequentialAccent5Tint300Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint300Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint300Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint300Dark, abstractTheme.colorChartSequentialAccent5Tint300Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint300Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint400Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint400Light, abstractTheme.colorChartSequentialAccent5Tint400Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint400Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint400Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint400Dark, abstractTheme.colorChartSequentialAccent5Tint400Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint400Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint500Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint500Light, abstractTheme.colorChartSequentialAccent5Tint500Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint500Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint500Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint500Dark, abstractTheme.colorChartSequentialAccent5Tint500Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint500Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint600Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint600Light, abstractTheme.colorChartSequentialAccent5Tint600Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint600Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint600Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint600Dark, abstractTheme.colorChartSequentialAccent5Tint600Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint600Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint700Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint700Light, abstractTheme.colorChartSequentialAccent5Tint700Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint700Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint700Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint700Dark, abstractTheme.colorChartSequentialAccent5Tint700Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint700Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint800Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint800Light, abstractTheme.colorChartSequentialAccent5Tint800Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint800Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint800Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint800Dark, abstractTheme.colorChartSequentialAccent5Tint800Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint800Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint900Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint900Light, abstractTheme.colorChartSequentialAccent5Tint900Light)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint900Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartSequentialAccent5Tint900Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartSequentialAccent5Tint900Dark, abstractTheme.colorChartSequentialAccent5Tint900Dark)
        XCTAssertTrue(inheritedTheme.colorChartSequentialAccent5Tint900Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }
    
    // MARK: - Semantic token - Colors - Gradient
    
    func testInheritedThemeCanOverrideSemanticTokenColorColorGradientSkeletonMiddle() throws {
        XCTAssertNotEqual(inheritedTheme.colorGradientSkeletonMiddle, abstractTheme.colorGradientSkeletonMiddle)
        XCTAssertTrue(inheritedTheme.colorGradientSkeletonMiddle == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }
  
    func testInheritedThemeCanOverrideSemanticTokenColorColorGradientSkeletonMiddleOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorGradientSkeletonMiddleOnBgEmphasized, abstractTheme.colorGradientSkeletonMiddleOnBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorGradientSkeletonMiddleOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }
    
    func testInheritedThemeCanOverrideSemanticTokenColorColorGradientSkeletonStartEnd() throws {
        XCTAssertNotEqual(inheritedTheme.colorGradientSkeletonStartEnd, abstractTheme.colorGradientSkeletonStartEnd)
        XCTAssertTrue(inheritedTheme.colorGradientSkeletonStartEnd == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }
    
    func testInheritedThemeCanOverrideSemanticTokenColorColorGradientSkeletonStartEndOnBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorGradientSkeletonStartEndOnBgEmphasized, colorGradientSkeletonStartEndOnBgEmphasized.colorGradientSkeletonMiddle)
        XCTAssertTrue(inheritedTheme.colorGradientSkeletonStartEndOnBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable required_deinit
// swiftlint:enable type_name

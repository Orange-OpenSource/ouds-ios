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
/// In fact the `OUDSTheme` object is a class, which can be seen as an _abstract class_, exposing through its extensions and protocols _colors semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// 
/// **These tests checks if any _colors semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfColorSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = MockTheme()
        inheritedTheme = OtherMockTheme()
    }

    // MARK: Semantic token - Colors - Background

    func testInheritedThemeCanOverrideSemanticTokenColorBgPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgPrimaryLight, abstractTheme.colorBgPrimaryLight)
        XCTAssertTrue(inheritedTheme.colorBgPrimaryLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgPrimaryDark, abstractTheme.colorBgPrimaryDark)
        XCTAssertTrue(inheritedTheme.colorBgPrimaryDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgSecondaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgSecondaryLight, abstractTheme.colorBgSecondaryLight)
        XCTAssertTrue(inheritedTheme.colorBgSecondaryLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgSecondaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgSecondaryDark, abstractTheme.colorBgSecondaryDark)
        XCTAssertTrue(inheritedTheme.colorBgSecondaryDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgTertiaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgTertiaryLight, abstractTheme.colorBgTertiaryLight)
        XCTAssertTrue(inheritedTheme.colorBgTertiaryLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgTertiaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgTertiaryDark, abstractTheme.colorBgTertiaryDark)
        XCTAssertTrue(inheritedTheme.colorBgTertiaryDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgEmphasizedLight, abstractTheme.colorBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgEmphasizedDark, abstractTheme.colorBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgBrandPrimaryLight, abstractTheme.colorBgBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colorBgBrandPrimaryLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgBrandPrimaryDark, abstractTheme.colorBgBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colorBgBrandPrimaryDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusNeutralLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusNeutralLight, abstractTheme.colorBgStatusNeutralLight)
        XCTAssertTrue(inheritedTheme.colorBgStatusNeutralLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusNeutralDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusNeutralDark, abstractTheme.colorBgStatusNeutralDark)
        XCTAssertTrue(inheritedTheme.colorBgStatusNeutralDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusNeutralOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusNeutralOnBgEmphasizedLight, abstractTheme.colorBgStatusNeutralOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorBgStatusNeutralOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusNeutralOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusNeutralOnBgEmphasizedDark, abstractTheme.colorBgStatusNeutralOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorBgStatusNeutralOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusPositiveMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusPositiveMutedLight, abstractTheme.colorBgStatusPositiveMutedLight)
        XCTAssertTrue(inheritedTheme.colorBgStatusPositiveMutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusPositiveMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusPositiveMutedDark, abstractTheme.colorBgStatusPositiveMutedDark)
        XCTAssertTrue(inheritedTheme.colorBgStatusPositiveMutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusPositiveMutedOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusPositiveMutedOnBgEmphasizedLight, abstractTheme.colorBgStatusPositiveMutedOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorBgStatusPositiveMutedOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusPositiveMutedOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusPositiveMutedOnBgEmphasizedDark, abstractTheme.colorBgStatusPositiveMutedOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorBgStatusPositiveMutedOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusPositiveEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusPositiveEmphasizedLight, abstractTheme.colorBgStatusPositiveEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorBgStatusPositiveEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusPositiveEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusPositiveEmphasizedDark, abstractTheme.colorBgStatusPositiveEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorBgStatusPositiveEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusInfoMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusInfoMutedLight, abstractTheme.colorBgStatusInfoMutedLight)
        XCTAssertTrue(inheritedTheme.colorBgStatusInfoMutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusInfoMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusInfoMutedDark, abstractTheme.colorBgStatusInfoMutedDark)
        XCTAssertTrue(inheritedTheme.colorBgStatusInfoMutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusInfoMutedOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusInfoMutedOnBgEmphasizedLight, abstractTheme.colorBgStatusInfoMutedOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorBgStatusInfoMutedOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusInfoMutedOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusInfoMutedOnBgEmphasizedDark, abstractTheme.colorBgStatusInfoMutedOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorBgStatusInfoMutedOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusInfoEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusInfoEmphasizedLight, abstractTheme.colorBgStatusInfoEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorBgStatusInfoEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusInfoEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusInfoEmphasizedDark, abstractTheme.colorBgStatusInfoEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorBgStatusInfoEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusWarningMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusWarningMutedLight, abstractTheme.colorBgStatusWarningMutedLight)
        XCTAssertTrue(inheritedTheme.colorBgStatusWarningMutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusWarningMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusWarningMutedDark, abstractTheme.colorBgStatusWarningMutedDark)
        XCTAssertTrue(inheritedTheme.colorBgStatusWarningMutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusWarningMutedOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusWarningMutedOnBgEmphasizedLight, abstractTheme.colorBgStatusWarningMutedOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorBgStatusWarningMutedOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusWarningMutedOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusWarningMutedOnBgEmphasizedDark, abstractTheme.colorBgStatusWarningMutedOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorBgStatusWarningMutedOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusWarningEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusWarningEmphasizedLight, abstractTheme.colorBgStatusWarningEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorBgStatusWarningEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusWarningEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusWarningEmphasizedDark, abstractTheme.colorBgStatusWarningEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorBgStatusWarningEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusNegativeMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusNegativeMutedLight, abstractTheme.colorBgStatusNegativeMutedLight)
        XCTAssertTrue(inheritedTheme.colorBgStatusNegativeMutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusNegativeMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusNegativeMutedDark, abstractTheme.colorBgStatusNegativeMutedDark)
        XCTAssertTrue(inheritedTheme.colorBgStatusNegativeMutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusNegativeMutedOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusNegativeMutedOnBgEmphasizedLight, abstractTheme.colorBgStatusNegativeMutedOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorBgStatusNegativeMutedOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusNegativeMutedOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusNegativeMutedOnBgEmphasizedDark, abstractTheme.colorBgStatusNegativeMutedOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorBgStatusNegativeMutedOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusNegativeEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusNegativeEmphasizedLight, abstractTheme.colorBgStatusNegativeEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorBgStatusNegativeEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusNegativeEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusNegativeEmphasizedDark, abstractTheme.colorBgStatusNegativeEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorBgStatusNegativeEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusAccentMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusAccentMutedLight, abstractTheme.colorBgStatusAccentMutedLight)
        XCTAssertTrue(inheritedTheme.colorBgStatusAccentMutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusAccentMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusAccentMutedDark, abstractTheme.colorBgStatusAccentMutedDark)
        XCTAssertTrue(inheritedTheme.colorBgStatusAccentMutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusAccentMutedOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusAccentMutedOnBgEmphasizedLight, abstractTheme.colorBgStatusAccentMutedOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorBgStatusAccentMutedOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusAccentMutedOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusAccentMutedOnBgEmphasizedDark, abstractTheme.colorBgStatusAccentMutedOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorBgStatusAccentMutedOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusAccentEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusAccentEmphasizedLight, abstractTheme.colorBgStatusAccentEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorBgStatusAccentEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgStatusAccentEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgStatusAccentEmphasizedDark, abstractTheme.colorBgStatusAccentEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorBgStatusAccentEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    // MARK: Semantic token - Colors - Content - Status

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDefaultLight, abstractTheme.colorContentDefaultLight)
        XCTAssertTrue(inheritedTheme.colorContentDefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDefaultDark, abstractTheme.colorContentDefaultDark)
        XCTAssertTrue(inheritedTheme.colorContentDefaultDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefaultOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDefaultOnBgEmphasizedLight, abstractTheme.colorContentDefaultOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorContentDefaultOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefaultOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDefaultOnBgEmphasizedDark, abstractTheme.colorContentDefaultOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorContentDefaultOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentMutedLight, abstractTheme.colorContentMutedLight)
        XCTAssertTrue(inheritedTheme.colorContentMutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentMutedDark, abstractTheme.colorContentMutedDark)
        XCTAssertTrue(inheritedTheme.colorContentMutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMutedOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentMutedOnBgEmphasizedLight, abstractTheme.colorContentMutedOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorContentMutedOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMutedOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentMutedOnBgEmphasizedDark, abstractTheme.colorContentMutedOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorContentMutedOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDisabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDisabledLight, abstractTheme.colorContentDisabledLight)
        XCTAssertTrue(inheritedTheme.colorContentDisabledLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDisabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDisabledDark, abstractTheme.colorContentDisabledDark)
        XCTAssertTrue(inheritedTheme.colorContentDisabledDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDisabledOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDisabledOnBgEmphasizedLight, abstractTheme.colorContentDisabledOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorContentDisabledOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDisabledOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDisabledOnBgEmphasizedDark, abstractTheme.colorContentDisabledOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorContentDisabledOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandPrimaryLight, abstractTheme.colorContentBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colorContentBrandPrimaryLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandPrimaryDark, abstractTheme.colorContentBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colorContentBrandPrimaryDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusPositiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusPositiveLight, abstractTheme.colorContentStatusPositiveLight)
        XCTAssertTrue(inheritedTheme.colorContentStatusPositiveLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusPositiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusPositiveDark, abstractTheme.colorContentStatusPositiveDark)
        XCTAssertTrue(inheritedTheme.colorContentStatusPositiveDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusInfoLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusInfoLight, abstractTheme.colorContentStatusInfoLight)
        XCTAssertTrue(inheritedTheme.colorContentStatusInfoLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusInfoDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusInfoDark, abstractTheme.colorContentStatusInfoDark)
        XCTAssertTrue(inheritedTheme.colorContentStatusInfoDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusWarningLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusWarningLight, abstractTheme.colorContentStatusWarningLight)
        XCTAssertTrue(inheritedTheme.colorContentStatusWarningLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusWarningDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusWarningDark, abstractTheme.colorContentStatusWarningDark)
        XCTAssertTrue(inheritedTheme.colorContentStatusWarningDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusNegativeLight, abstractTheme.colorContentStatusNegativeLight)
        XCTAssertTrue(inheritedTheme.colorContentStatusNegativeLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusNegativeDark, abstractTheme.colorContentStatusNegativeDark)
        XCTAssertTrue(inheritedTheme.colorContentStatusNegativeDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    // MARK: Semantic token - Colors - Border

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderDefaultLight, abstractTheme.colorBorderDefaultLight)
        XCTAssertTrue(inheritedTheme.colorBorderDefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderDefaultDark, abstractTheme.colorBorderDefaultDark)
        XCTAssertTrue(inheritedTheme.colorBorderDefaultDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefaultOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderDefaultOnBgEmphasizedLight, abstractTheme.colorBorderDefaultOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorBorderDefaultOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefaultOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderDefaultOnBgEmphasizedDark, abstractTheme.colorBorderDefaultOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorBorderDefaultOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderEmphasizedLight, abstractTheme.colorBorderEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorBorderEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderEmphasizedDark, abstractTheme.colorBorderEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorBorderEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasizedOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderEmphasizedOnBgEmphasizedLight, abstractTheme.colorBorderEmphasizedOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorBorderEmphasizedOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasizedOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderEmphasizedOnBgEmphasizedDark, abstractTheme.colorBorderEmphasizedOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorBorderEmphasizedOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderFocusLight, abstractTheme.colorBorderFocusLight)
        XCTAssertTrue(inheritedTheme.colorBorderFocusLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderFocusDark, abstractTheme.colorBorderFocusDark)
        XCTAssertTrue(inheritedTheme.colorBorderFocusDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    // WARNING: #124 - Colors to use sont part of Orange Theme so sont not reachable at this level, as un workaround add raw values
    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandPrimaryOnBgEmphasizedLight, abstractTheme.colorBorderBrandPrimaryOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorBorderBrandPrimaryOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandPrimaryOnBgEmphasizedDark, abstractTheme.colorBorderBrandPrimaryOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorBorderBrandPrimaryOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    // WARNING: #124 - Colors to use sont part of Orange Theme so sont not reachable at this level, as un workaround add raw values
    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandPrimaryLight, abstractTheme.colorBorderBrandPrimaryLight)
        XCTAssertTrue(inheritedTheme.colorBorderBrandPrimaryLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandPrimaryDark, abstractTheme.colorBorderBrandPrimaryDark)
        XCTAssertTrue(inheritedTheme.colorBorderBrandPrimaryDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    // MARK: Semantic token - Colors - Action

    func testInheritedThemeCanOverrideSemanticTokenColorActionSelectedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSelectedLight, abstractTheme.colorActionSelectedLight)
        XCTAssertTrue(inheritedTheme.colorActionSelectedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSelectedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSelectedDark, abstractTheme.colorActionSelectedDark)
        XCTAssertTrue(inheritedTheme.colorActionSelectedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSelectedOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSelectedOnBgEmphasizedLight, abstractTheme.colorActionSelectedOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorActionSelectedOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSelectedOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSelectedOnBgEmphasizedDark, abstractTheme.colorActionSelectedOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorActionSelectedOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionDisabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionDisabledLight, abstractTheme.colorActionDisabledLight)
        XCTAssertTrue(inheritedTheme.colorActionDisabledLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionDisabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionDisabledDark, abstractTheme.colorActionDisabledDark)
        XCTAssertTrue(inheritedTheme.colorActionDisabledDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionDisabledOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionDisabledOnBgEmphasizedLight, abstractTheme.colorActionDisabledOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorActionDisabledOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionDisabledOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionDisabledOnBgEmphasizedDark, abstractTheme.colorActionDisabledOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorActionDisabledOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionVisitedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionVisitedLight, abstractTheme.colorActionVisitedLight)
        XCTAssertTrue(inheritedTheme.colorActionVisitedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionVisitedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionVisitedDark, abstractTheme.colorActionVisitedDark)
        XCTAssertTrue(inheritedTheme.colorActionVisitedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryEnabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryEnabledLight, abstractTheme.colorActionPrimaryEnabledLight)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryEnabledLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryEnabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryEnabledDark, abstractTheme.colorActionPrimaryEnabledDark)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryEnabledDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryEnabledOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryEnabledOnBgEmphasizedLight, abstractTheme.colorActionPrimaryEnabledOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryEnabledOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryEnabledOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryEnabledOnBgEmphasizedDark, abstractTheme.colorActionPrimaryEnabledOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryEnabledOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryHoverLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryHoverLight, abstractTheme.colorActionPrimaryHoverLight)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryHoverLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryHoverDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryHoverDark, abstractTheme.colorActionPrimaryHoverDark)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryHoverDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryHoverOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryHoverOnBgEmphasizedLight, abstractTheme.colorActionPrimaryHoverOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryHoverOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryHoverOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryHoverOnBgEmphasizedDark, abstractTheme.colorActionPrimaryHoverOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryHoverOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryPressedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryPressedLight, abstractTheme.colorActionPrimaryPressedLight)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryPressedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryPressedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryPressedDark, abstractTheme.colorActionPrimaryPressedDark)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryPressedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryPressedOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryPressedOnBgEmphasizedLight, abstractTheme.colorActionPrimaryPressedOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryPressedOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryPressedOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryPressedOnBgEmphasizedDark, abstractTheme.colorActionPrimaryPressedOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryPressedOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryLoadingLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryLoadingLight, abstractTheme.colorActionPrimaryLoadingLight)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryLoadingLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryLoadingDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryLoadingDark, abstractTheme.colorActionPrimaryLoadingDark)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryLoadingDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryLoadingOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryLoadingOnBgEmphasizedLight, abstractTheme.colorActionPrimaryLoadingOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryLoadingOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryLoadingOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryLoadingOnBgEmphasizedDark, abstractTheme.colorActionPrimaryLoadingOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryLoadingOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryFocusLight, abstractTheme.colorActionPrimaryFocusLight)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryFocusLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryFocusDark, abstractTheme.colorActionPrimaryFocusDark)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryFocusDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryFocusOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryFocusOnBgEmphasizedLight, abstractTheme.colorActionPrimaryFocusOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryFocusOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPrimaryFocusOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPrimaryFocusOnBgEmphasizedDark, abstractTheme.colorActionPrimaryFocusOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorActionPrimaryFocusOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryEnabledLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryEnabledLight, abstractTheme.colorActionSecondaryEnabledLight)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryEnabledLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryEnabledDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryEnabledDark, abstractTheme.colorActionSecondaryEnabledDark)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryEnabledDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryEnabledOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryEnabledOnBgEmphasizedLight, abstractTheme.colorActionSecondaryEnabledOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryEnabledOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryEnabledOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryEnabledOnBgEmphasizedDark, abstractTheme.colorActionSecondaryEnabledOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryEnabledOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryHoverLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryHoverLight, abstractTheme.colorActionSecondaryHoverLight)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryHoverLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryHoverDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryHoverDark, abstractTheme.colorActionSecondaryHoverDark)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryHoverDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryHoverOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryHoverOnBgEmphasizedLight, abstractTheme.colorActionSecondaryHoverOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryHoverOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryHoverOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryHoverOnBgEmphasizedDark, abstractTheme.colorActionSecondaryHoverOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryHoverOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryPressedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryPressedLight, abstractTheme.colorActionSecondaryPressedLight)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryPressedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryPressedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryPressedDark, abstractTheme.colorActionSecondaryPressedDark)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryPressedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryPressedOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryPressedOnBgEmphasizedLight, abstractTheme.colorActionSecondaryPressedOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryPressedOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryPressedOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryPressedOnBgEmphasizedDark, abstractTheme.colorActionSecondaryPressedOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryPressedOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryLoadingLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryLoadingLight, abstractTheme.colorActionSecondaryLoadingLight)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryLoadingLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryLoadingDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryLoadingDark, abstractTheme.colorActionSecondaryLoadingDark)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryLoadingDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryLoadingOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryLoadingOnBgEmphasizedLight, abstractTheme.colorActionSecondaryLoadingOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryLoadingOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryLoadingOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryLoadingOnBgEmphasizedDark, abstractTheme.colorActionSecondaryLoadingOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryLoadingOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryFocusLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryFocusLight, abstractTheme.colorActionSecondaryFocusLight)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryFocusLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryFocusDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryFocusDark, abstractTheme.colorActionSecondaryFocusDark)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryFocusDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryFocusOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryFocusOnBgEmphasizedLight, abstractTheme.colorActionSecondaryFocusOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryFocusOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSecondaryFocusOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSecondaryFocusOnBgEmphasizedDark, abstractTheme.colorActionSecondaryFocusOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorActionSecondaryFocusOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    // MARK: Semantic token - Colors - Always

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysBlackLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysBlackLight, abstractTheme.colorAlwaysBlackLight)
        XCTAssertTrue(inheritedTheme.colorAlwaysBlackLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysBlackDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysBlackDark, abstractTheme.colorAlwaysBlackDark)
        XCTAssertTrue(inheritedTheme.colorAlwaysBlackDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysWhiteLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysWhiteLight, abstractTheme.colorAlwaysWhiteLight)
        XCTAssertTrue(inheritedTheme.colorAlwaysWhiteLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysWhiteDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysWhiteDark, abstractTheme.colorAlwaysWhiteDark)
        XCTAssertTrue(inheritedTheme.colorAlwaysWhiteDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysWarningLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysWarningLight, abstractTheme.colorAlwaysWarningLight)
        XCTAssertTrue(inheritedTheme.colorAlwaysWarningLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysWarningDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysWarningDark, abstractTheme.colorAlwaysWarningDark)
        XCTAssertTrue(inheritedTheme.colorAlwaysWarningDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysNegativeLight, abstractTheme.colorAlwaysNegativeLight)
        XCTAssertTrue(inheritedTheme.colorAlwaysNegativeLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysNegativeDark, abstractTheme.colorAlwaysNegativeDark)
        XCTAssertTrue(inheritedTheme.colorAlwaysNegativeDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysPositiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysPositiveLight, abstractTheme.colorAlwaysPositiveLight)
        XCTAssertTrue(inheritedTheme.colorAlwaysPositiveLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysPositiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysPositiveDark, abstractTheme.colorAlwaysPositiveDark)
        XCTAssertTrue(inheritedTheme.colorAlwaysPositiveDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysInfoLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysInfoLight, abstractTheme.colorAlwaysInfoLight)
        XCTAssertTrue(inheritedTheme.colorAlwaysInfoLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysInfoDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysInfoDark, abstractTheme.colorAlwaysInfoDark)
        XCTAssertTrue(inheritedTheme.colorAlwaysInfoDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysAccentLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysAccentLight, abstractTheme.colorAlwaysAccentLight)
        XCTAssertTrue(inheritedTheme.colorAlwaysAccentLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysAccentDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysAccentDark, abstractTheme.colorAlwaysAccentDark)
        XCTAssertTrue(inheritedTheme.colorAlwaysAccentDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }
    
    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnAccentLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnAccentLight, abstractTheme.colorAlwaysOnAccentLight)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnAccentLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwayOnAccentDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnAccentDark, abstractTheme.colorAlwaysOnAccentDark)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnAccentDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBlackLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBlackLight, abstractTheme.colorAlwaysOnBlackLight)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBlackLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwayOnBlackDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBlackDark, abstractTheme.colorAlwaysOnBlackDark)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBlackDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }
    
    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnInfoLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnInfoLight, abstractTheme.colorAlwaysOnInfoLight)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnInfoLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwayOnInfoDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnInfoDark, abstractTheme.colorAlwaysOnInfoDark)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnInfoDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }
    
    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnNegativeLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnNegativeLight, abstractTheme.colorAlwaysOnNegativeLight)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnNegativeLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwayOnNegativeDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnNegativeDark, abstractTheme.colorAlwaysOnNegativeDark)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnNegativeDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }
    
    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnPositiveLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnPositiveLight, abstractTheme.colorAlwaysOnPositiveLight)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnPositiveLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwayOnPositiveDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnPositiveDark, abstractTheme.colorAlwaysOnPositiveDark)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnPositiveDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }
    
    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnWarningLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnWarningLight, abstractTheme.colorAlwaysOnWarningLight)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnWarningLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwayOnWarningDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnWarningDark, abstractTheme.colorAlwaysOnWarningDark)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnWarningDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }
    
    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnWhiteLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnWhiteLight, abstractTheme.colorAlwaysOnWhiteLight)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnWhiteLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwayOnWhiteDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnWhiteDark, abstractTheme.colorAlwaysOnWhiteDark)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnWhiteDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    // MARK: Semantic token - Colors - Transparent

    func testInheritedThemeCanOverrideSemanticTokenColorTransparentDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorTransparentDefaultLight, abstractTheme.colorTransparentDefaultLight)
        XCTAssertTrue(inheritedTheme.colorTransparentDefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorTransparentDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorTransparentDefaultDark, abstractTheme.colorTransparentDefaultDark)
        XCTAssertTrue(inheritedTheme.colorTransparentDefaultDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    // MARK: Semantic token - Colors - Elevation

    func testInheritedThemeCanOverrideSemanticTokenColorElevationRaisedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationRaisedLight, abstractTheme.colorElevationRaisedLight)
        XCTAssertTrue(inheritedTheme.colorElevationRaisedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationRaisedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationRaisedDark, abstractTheme.colorElevationRaisedDark)
        XCTAssertTrue(inheritedTheme.colorElevationRaisedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationRaisedOnBgSecondaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationRaisedOnBgSecondaryLight, abstractTheme.colorElevationRaisedOnBgSecondaryLight)
        XCTAssertTrue(inheritedTheme.colorElevationRaisedOnBgSecondaryLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationRaisedOnBgSecondaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationRaisedOnBgSecondaryDark, abstractTheme.colorElevationRaisedOnBgSecondaryDark)
        XCTAssertTrue(inheritedTheme.colorElevationRaisedOnBgSecondaryDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationRaisedOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationRaisedOnBgEmphasizedLight, abstractTheme.colorElevationRaisedOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorElevationRaisedOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationRaisedOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationRaisedOnBgEmphasizedDark, abstractTheme.colorElevationRaisedOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorElevationRaisedOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationDragLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationDragLight, abstractTheme.colorElevationDragLight)
        XCTAssertTrue(inheritedTheme.colorElevationDragLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationDragDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationDragDark, abstractTheme.colorElevationDragDark)
        XCTAssertTrue(inheritedTheme.colorElevationDragDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationDragOnBgSecondaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationDragOnBgSecondaryLight, abstractTheme.colorElevationDragOnBgSecondaryLight)
        XCTAssertTrue(inheritedTheme.colorElevationDragOnBgSecondaryLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationDragOnBgSecondaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationDragOnBgSecondaryDark, abstractTheme.colorElevationDragOnBgSecondaryDark)
        XCTAssertTrue(inheritedTheme.colorElevationDragOnBgSecondaryDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationDragOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationDragOnBgEmphasizedLight, abstractTheme.colorElevationDragOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorElevationDragOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationDragOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationDragOnBgEmphasizedDark, abstractTheme.colorElevationDragOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorElevationDragOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayDefaultLight, abstractTheme.colorElevationOverlayDefaultLight)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayDefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayDefaultDark, abstractTheme.colorElevationOverlayDefaultDark)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayDefaultDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayDefaultOnBgSecondaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayDefaultOnBgSecondaryLight, abstractTheme.colorElevationOverlayDefaultOnBgSecondaryLight)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayDefaultOnBgSecondaryLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayDefaultOnBgSecondaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayDefaultOnBgSecondaryDark, abstractTheme.colorElevationOverlayDefaultOnBgSecondaryDark)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayDefaultOnBgSecondaryDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayDefaultOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayDefaultOnBgEmphasizedLight, abstractTheme.colorElevationOverlayDefaultOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayDefaultOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayDefaultOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayDefaultOnBgEmphasizedDark, abstractTheme.colorElevationOverlayDefaultOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayDefaultOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayEmphasizedLight, abstractTheme.colorElevationOverlayEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayEmphasizedDark, abstractTheme.colorElevationOverlayEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayEmphasizedOnBgSecondaryLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayEmphasizedOnBgSecondaryLight, abstractTheme.colorElevationOverlayEmphasizedOnBgSecondaryLight)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayEmphasizedOnBgSecondaryLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayEmphasizedOnBgSecondaryDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayEmphasizedOnBgSecondaryDark, abstractTheme.colorElevationOverlayEmphasizedOnBgSecondaryDark)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayEmphasizedOnBgSecondaryDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayEmphasizedOnBgEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayEmphasizedOnBgEmphasizedLight, abstractTheme.colorElevationOverlayEmphasizedOnBgEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayEmphasizedOnBgEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationOverlayEmphasizedOnBgEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationOverlayEmphasizedOnBgEmphasizedDark, abstractTheme.colorElevationOverlayEmphasizedOnBgEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorElevationOverlayEmphasizedOnBgEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationModalLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationModalLight, abstractTheme.colorElevationModalLight)
        XCTAssertTrue(inheritedTheme.colorElevationModalLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorElevationModalDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorElevationModalDark, abstractTheme.colorElevationModalDark)
        XCTAssertTrue(inheritedTheme.colorElevationModalDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    // MARK: Semantic token - Colors - Decorative

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralMutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeNeutralMutedLight, abstractTheme.colorDecorativeNeutralMutedLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeNeutralMutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralMutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeNeutralMutedDark, abstractTheme.colorDecorativeNeutralMutedDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeNeutralMutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeNeutralDefaultLight, abstractTheme.colorDecorativeNeutralDefaultLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeNeutralDefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeNeutralDefaultDark, abstractTheme.colorDecorativeNeutralDefaultDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeNeutralDefaultDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeNeutralEmphasizedLight, abstractTheme.colorDecorativeNeutralEmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeNeutralEmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeNeutralEmphasizedDark, abstractTheme.colorDecorativeNeutralEmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeNeutralEmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent1MutedLight, abstractTheme.colorDecorativeAccent1MutedLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent1MutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent1MutedDark, abstractTheme.colorDecorativeAccent1MutedDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent1MutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent1DefaultLight, abstractTheme.colorDecorativeAccent1DefaultLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent1DefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent1DefaultDark, abstractTheme.colorDecorativeAccent1DefaultDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent1DefaultDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent1EmphasizedLight, abstractTheme.colorDecorativeAccent1EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent1EmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent1EmphasizedDark, abstractTheme.colorDecorativeAccent1EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent1EmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent2MutedLight, abstractTheme.colorDecorativeAccent2MutedLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent2MutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent2MutedDark, abstractTheme.colorDecorativeAccent2MutedDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent2MutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent2DefaultLight, abstractTheme.colorDecorativeAccent2DefaultLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent2DefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent2DefaultDark, abstractTheme.colorDecorativeAccent2DefaultDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent2DefaultDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent2EmphasizedLight, abstractTheme.colorDecorativeAccent2EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent2EmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent2EmphasizedDark, abstractTheme.colorDecorativeAccent2EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent2EmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent3MutedLight, abstractTheme.colorDecorativeAccent3MutedLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent3MutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent3MutedDark, abstractTheme.colorDecorativeAccent3MutedDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent3MutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent3DefaultLight, abstractTheme.colorDecorativeAccent3DefaultLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent3DefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent3DefaultDark, abstractTheme.colorDecorativeAccent3DefaultDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent3DefaultDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent3EmphasizedLight, abstractTheme.colorDecorativeAccent3EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent3EmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent3EmphasizedDark, abstractTheme.colorDecorativeAccent3EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent3EmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent4MutedLight, abstractTheme.colorDecorativeAccent4MutedLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent4MutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent4MutedDark, abstractTheme.colorDecorativeAccent4MutedDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent4MutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent4DefaultLight, abstractTheme.colorDecorativeAccent4DefaultLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent4DefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent4DefaultDark, abstractTheme.colorDecorativeAccent4DefaultDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent4DefaultDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent4EmphasizedLight, abstractTheme.colorDecorativeAccent4EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent4EmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent4EmphasizedDark, abstractTheme.colorDecorativeAccent4EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent4EmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5MutedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent5MutedLight, abstractTheme.colorDecorativeAccent5MutedLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent5MutedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5MutedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent5MutedDark, abstractTheme.colorDecorativeAccent5MutedDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent5MutedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5DefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent5DefaultLight, abstractTheme.colorDecorativeAccent5DefaultLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent5DefaultLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5DefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent5DefaultDark, abstractTheme.colorDecorativeAccent5DefaultDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent5DefaultDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5EmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent5EmphasizedLight, abstractTheme.colorDecorativeAccent5EmphasizedLight)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent5EmphasizedLight == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5EmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent5EmphasizedDark, abstractTheme.colorDecorativeAccent5EmphasizedDark)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent5EmphasizedDark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint100Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint100Light, abstractTheme.colorDecorativeSkinTint100Light)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint100Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint100Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint100Dark, abstractTheme.colorDecorativeSkinTint100Dark)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint100Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint200Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint200Light, abstractTheme.colorDecorativeSkinTint200Light)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint200Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint200Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint200Dark, abstractTheme.colorDecorativeSkinTint200Dark)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint200Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint300Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint300Light, abstractTheme.colorDecorativeSkinTint300Light)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint300Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint300Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint300Dark, abstractTheme.colorDecorativeSkinTint300Dark)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint300Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint400Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint400Light, abstractTheme.colorDecorativeSkinTint400Light)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint400Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint400Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint400Dark, abstractTheme.colorDecorativeSkinTint400Dark)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint400Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint500Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint500Light, abstractTheme.colorDecorativeSkinTint500Light)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint500Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint500Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint500Dark, abstractTheme.colorDecorativeSkinTint500Dark)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint500Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint600Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint600Light, abstractTheme.colorDecorativeSkinTint600Light)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint600Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint600Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint600Dark, abstractTheme.colorDecorativeSkinTint600Dark)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint600Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint700Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint700Light, abstractTheme.colorDecorativeSkinTint700Light)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint700Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint700Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint700Dark, abstractTheme.colorDecorativeSkinTint700Dark)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint700Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint800Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint800Light, abstractTheme.colorDecorativeSkinTint800Light)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint800Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint800Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint800Dark, abstractTheme.colorDecorativeSkinTint800Dark)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint800Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint900Light() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint900Light, abstractTheme.colorDecorativeSkinTint900Light)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint900Light == OtherMockTheme.otherMockThemeSemanticColorToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint900Dark() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint900Dark, abstractTheme.colorDecorativeSkinTint900Dark)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint900Dark == OtherMockTheme.otherMockThemeSemanticColorToken)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable required_deinit

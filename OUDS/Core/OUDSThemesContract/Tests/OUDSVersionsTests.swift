//
// Software Name: OUDSThemesContract iOS
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

import Foundation
import OUDSThemesContract
import Testing
import TestsUtils

/// Some tests on versions of of OUDSThemesContract parts to be sure they are well defined
struct OUDSVersionsTests {

    // swiftlint:disable force_try
    private static let oudsVersionsFormat = try! NSRegularExpression(pattern: "^\\d+\\.\\d+\\.\\d+$")
    // swiftlint:enable force_try

    // MARK: - Tests - Themes versions - Core

    @Test func themeCoreVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.themeCoreVersion, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Themes versions - Orange

    @Test func themeOrangeCoreVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.themeOrangeCoreVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func themeOrangeBrandVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.themeOrangeBrandVersion, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Themes versions - Orange Business Tools

    @Test func themeOrangeBusinessToolsBrandVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.themeOrangeBusinessToolsBrandVersion, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Themes versions - Sosh

    @Test func themeSoshCoreVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.themeSoshCoreVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func themeSoshBrandVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.themeSoshBrandVersion, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Themes versions - Wireframe

    @Test func themeWireframeCoreVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.themeWireframeCoreVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func themeWireframeBrandVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.themeWireframeBrandVersion, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Component versions - Actions

    @Test func componentButtonVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentButtonVersion, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Component versions - Navigation

    @Test func componentLinkVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentLinkVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentExpandLinkVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentExpandLinkVersion, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Component versions - Controls

    @Test func componentCheckboxVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentCheckboxVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentChipVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentChipVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentRadioButtonVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentRadioButtonVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentSwitchVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentSwitchVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentTextInputVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentTextInputVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentPhoneNumberInputVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentPhoneNumberInputVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentPasswordInputVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentPasswordInputVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentPinCodeInputVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentPinCodeInputVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentQuantityInputVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentQuantityInputVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentSelectInputVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentSelectInputVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentTextAreaVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentTextAreaVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentBadgeVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentBadgeVersion, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Component versions - Tag

    @Test func componentSkeletonVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentSkeletonVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentTagVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentTagVersion, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Component versions - Divider

    @Test func componentDividerVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentDividerVersion, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Component versions - Content display

    @Test func componentBulletListVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentBulletListVersion, regexp: Self.oudsVersionsFormat)
    }
}

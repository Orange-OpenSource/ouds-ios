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

import Foundation
import OUDS
import Testing
import TestsUtils

/// Some tests on versions of of OUDS parts to be sure they are well defined
struct OUDSVersionsTests {

    // swiftlint:disable force_try
    private static let oudsVersionsFormat = try! NSRegularExpression(pattern: "^\\d+\\.\\d+\\.\\d+$")
    // swiftlint:enable force_try

    // MARK: - Tests - Themes versions

    @Test func themeCoreVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.themeCoreVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func themeOrangeCoreVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.themeOrangeCoreVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func themeOrangeBrandVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.themeOrangeBrandVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func themeSoshCoreVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.themeSoshCoreVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func themeSoshBrandVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.themeSoshBrandVersion, regexp: Self.oudsVersionsFormat)
    }

    // MARK: - Tests - Component versions

    @Test func componentButtonVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentButtonVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentLinkVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentLinkVersion, regexp: Self.oudsVersionsFormat)
    }

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

    @Test func componentBadgeVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentBadgeVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentSkeletonVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentSkeletonVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentTagVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentTagVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentDividerVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentDividerVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func componentBulletListVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.componentBulletListVersion, regexp: Self.oudsVersionsFormat)
    }
}

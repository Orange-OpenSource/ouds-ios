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

    private static let oudsVersionsFormat = try! NSRegularExpression(pattern: "^\\d+\\.\\d+\\.\\d+$")

    // MARK: - Tests

    @Test func themeCoreVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.themeCoreVersion, regexp: Self.oudsVersionsFormat)
    }

    @Test func themeOrangeVersionMustBeConform() throws {
        TestsUtils.assertMatches(OUDSVersions.themeOrangeVersion, regexp: Self.oudsVersionsFormat)
    }
}

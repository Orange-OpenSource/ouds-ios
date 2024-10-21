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
import OUDSComponents
import OUDSThemesInverse
import OUDSThemesOrange
import OUDSTokensSemantic
import SnapshotTesting
import SwiftUI
import XCTest

// swiftlint:disable required_deinit

/// To ensure the Components Screen  are tested for UI compatibility with the reference image previously recorded.

final class OUDSComponentsUITests: XCTestCase {

    // MARK: - Orange Theme Light Mode Components Page Tests

    /// Verifies that the components from the orange theme's page match the saved reference image in light mode using snapshot testing.
    func testComponents_OrangeTheme_Page_Light() {
        let vc = ComponentsPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testComponents_OrangeTheme_Page_Light")
    }

    // MARK: - Inverse Theme Light Mode Components Page Tests

    /// Verifies that the components from the inverse theme's page match the saved reference image in light mode using snapshot testing.
    func testComponents_InverseTheme_Page_Light() {
        let vc = ComponentsPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testComponents_InverseTheme_Page_Light")
    }
}

// swiftlint:enable required_deinit

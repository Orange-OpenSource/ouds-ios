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

import SwiftUI
import XCTest

import OUDS
import OUDSComponents
import OUDSThemesInverse
import OUDSThemesOrange
import OUDSTokensSemantic
import SnapshotTesting

final class OUDSTokensElevationUITests: XCTestCase {
    deinit {
    }
    // MARK: - Tests
    // MARK: - Orange Theme Light Mode Tests
    func testElevationToken_OrangeTheme_ElevationNone_Light() {
        let vc = ElevationTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testElevationToken_OrangeTheme_ElevationNone_Light")
    }
    func testElevationToken_OrangeTheme_ElevationFocus_Light() {
        let vc = ElevationTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testElevationToken_OrangeTheme_ElevationFocus_Light")
    }
    func testElevationToken_OrangeTheme_ElevationRaised_Light() {
        let vc = ElevationTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testElevationToken_OrangeTheme_ElevationRaised_Light")
    }
    func testElevationToken_OrangeTheme_ElevationStickyNavigationScrolled_Light() {
        let vc = ElevationTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testElevationToken_OrangeTheme_ElevationStickyNavigationScrolled_Light")
    }
    func testElevationToken_OrangeTheme_ElevationOverlayDefault_Light() {
        let vc = ElevationTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testElevationToken_OrangeTheme_ElevationOverlayDefault_Light")
    }
    func testElevationToken_OrangeTheme_ElevationStickyDefault_Light() {
        let vc = ElevationTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testElevationToken_OrangeTheme_ElevationStickyDefault_Light")
    }
    func testElevationToken_OrangeTheme_ElevationStickyEmphasized_Light() {
        let vc = ElevationTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testElevationToken_OrangeTheme_ElevationStickyEmphasized_Light")
    }
    func testElevationToken_OrangeTheme_ElevationDrag_Light() {
        let vc = ElevationTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testElevationToken_OrangeTheme_ElevationDrag_Light")
    }
    func testElevationToken_OrangeTheme_ElevationOverlayEmphasized_Light() {
        let vc = ElevationTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testElevationToken_OrangeTheme_ElevationOverlayEmphasized_Light")
    }
    // MARK: - Tests
    // MARK: - Inverse Theme Light Mode Tests
    func testElevationToken_InverseTheme_ElevationNone_Light() {
        let vc = ElevationTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testElevationToken_InverseTheme_ElevationNone_Light")
    }
    func testElevationToken_InverseTheme_ElevationFocus_Light() {
        let vc = ElevationTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testElevationToken_InverseTheme_ElevationFocus_Light")
    }
    func testElevationToken_InverseTheme_ElevationRaised_Light() {
        let vc = ElevationTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testElevationToken_InverseTheme_ElevationRaised_Light")
    }
    func testElevationToken_InverseTheme_ElevationStickyNavigationScrolled_Light() {
        let vc = ElevationTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testElevationToken_InverseTheme_ElevationStickyNavigationScrolled_Light")
    }
    func testElevationToken_InverseTheme_ElevationOverlayDefault_Light() {
        let vc = ElevationTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testElevationToken_InverseTheme_ElevationOverlayDefault_Light")
    }
    func testElevationToken_InverseTheme_ElevationStickyDefault_Light() {
        let vc = ElevationTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testElevationToken_InverseTheme_ElevationStickyDefault_Light")
    }
    func testElevationToken_InverseTheme_ElevationStickyEmphasized_Light() {
        let vc = ElevationTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testElevationToken_InverseTheme_ElevationStickyEmphasized_Light")
    }
    func testElevationToken_InverseTheme_ElevationDrag_Light() {
        let vc = ElevationTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testElevationToken_InverseTheme_ElevationDrag_Light")
    }
    func testElevationToken_InverseTheme_ElevationOverlayEmphasized_Light() {
        let vc = ElevationTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testElevationToken_InverseTheme_ElevationOverlayEmphasized_Light")
    }
}

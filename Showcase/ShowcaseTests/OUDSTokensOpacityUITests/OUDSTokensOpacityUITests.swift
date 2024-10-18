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

/// To ensure the TokensOpacity are tested for UI compatibility with the reference image previously recorded

class OUDSTokensOpacityUITests: XCTestCase {

    // MARK: - Orange Theme Light Mode Opacity Tests

    /// Verifies that the `OpacityTransparent` token from the orange theme's matches the saved reference image in light mode using snapshot testing.
    func testOpacityToken_OrangeTheme_OpacityTransparent_Light() {
        let vc = OpacityTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testOpacityToken_OrangeTheme_OpacityTransparent_Light")
    }

    /// Verifies that the `OpacityWeaker` token from the orange theme's matches the saved reference image in light mode using snapshot testing.
    func testOpacityToken_OrangeTheme_OpacityWeaker_Light() {
        let vc = OpacityTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testOpacityToken_OrangeTheme_OpacityWeaker_Light")
    }

    /// Verifies that the `OpacityWeak` token from the orange theme's matches the saved reference image in light mode using snapshot testing.
    func testOpacityToken_OrangeTheme_OpacityWeak_Light() {
        let vc = OpacityTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testOpacityToken_OrangeTheme_OpacityWeak_Light")
    }

    /// Verifies that the `OpacityMedium` token from the orange theme's matches the saved reference image in light mode using snapshot testing.
    func testOpacityToken_OrangeTheme_OpacityMedium_Light() {
        let vc = OpacityTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testOpacityToken_OrangeTheme_OpacityMedium_Light")
    }

    /// Verifies that the `OpacityStrong` token from the orange theme's matches the saved reference image in light mode using snapshot testing.
    func testOpacityToken_OrangeTheme_OpacityStrong_Light() {
        let vc = OpacityTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testOpacityToken_OrangeTheme_OpacityStrong_Light")
    }

    /// Verifies that the `OpacityOpaque` token from the orange theme's matches the saved reference image in light mode using snapshot testing.
    func testOpacityToken_OrangeTheme_OpacityOpaque_Light() {
        let vc = OpacityTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testOpacityToken_OrangeTheme_OpacityOpaque_Light")
    }

    // MARK: - Inverse Theme Light Mode Opacity Tests

    /// Verifies that the `OpacityTransparent` token from the inverse theme's matches the saved reference image in light mode using snapshot testing.
    func testOpacityToken_InverseTheme_OpacityTransparent_Light() {
        let vc = OpacityTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testOpacityToken_InverseTheme_OpacityTransparent_Light")
    }

    /// Verifies that the `OpacityWeaker` token from the inverse theme's matches the saved reference image in light mode using snapshot testing.
    func testOpacityToken_InverseTheme_OpacityWeaker_Light() {
        let vc = OpacityTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testOpacityToken_InverseTheme_OpacityWeaker_Light")
    }

    /// Verifies that the `OpacityWeak` token from the inverse theme's matches the saved reference image in light mode using snapshot testing.
    func testOpacityToken_InverseTheme_OpacityWeak_Light() {
        let vc = OpacityTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testOpacityToken_InverseTheme_OpacityWeak_Light")
    }

    /// Verifies that the `OpacityMedium` token from the inverse theme's matches the saved reference image in light mode using snapshot testing.
    func testOpacityToken_InverseTheme_OpacityMedium_Light() {
        let vc = OpacityTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testOpacityToken_InverseTheme_OpacityMedium_Light")
    }

    /// Verifies that the `OpacityStrong` token from the inverse theme's matches the saved reference image in light mode using snapshot testing.
    func testOpacityToken_InverseTheme_OpacityStrong_Light() {
        let vc = OpacityTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testOpacityToken_InverseTheme_OpacityStrong_Light")
    }

    /// Verifies that the `OpacityOpaque` token from the inverse theme's matches the saved reference image in light mode using snapshot testing.
    func testOpacityToken_InverseTheme_OpacityOpaque_Light() {
        let vc = OpacityTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testOpacityToken_InverseTheme_OpacityOpaque_Light")
    }
}

// swiftlint:enable required_deinit

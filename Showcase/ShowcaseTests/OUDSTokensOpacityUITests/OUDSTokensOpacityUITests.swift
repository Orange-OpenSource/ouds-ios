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

import XCTest
import SnapshotTesting
import SwiftUI
import OUDS
import OUDSComponents
import OUDSTokensSemantic

class OUDSTokensOpacityUITests: XCTestCase {
    
    // MARK: - Tests
    
    // MARK: - Orange Theme Light Mode Tests
    
    func testOpacityToken_OrangeTheme_OpacityTransparent_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testOpacityToken_OrangeTheme_OpacityTransparent_Light")
    }
    
    func testOpacityToken_OrangeTheme_OpacityWeaker_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testOpacityToken_OrangeTheme_OpacityWeaker_Light")
    }
    
    func testOpacityToken_OrangeTheme_OpacityWeak_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testOpacityToken_OrangeTheme_OpacityWeak_Light")
    }
    
    func testOpacityToken_OrangeTheme_OpacityMedium_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testOpacityToken_OrangeTheme_OpacityMedium_Light")
    }
    
    func testOpacityToken_OrangeTheme_OpacityStrong_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testOpacityToken_OrangeTheme_OpacityStrong_Light")
    }
    
    func testOpacityToken_OrangeTheme_OpacityOpaque_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testOpacityToken_OrangeTheme_OpacityOpaque_Light")
    }
    
    // MARK: - Tests
    
    // MARK: - Inverse Theme Light Mode Tests
    
    func testOpacityToken_InverseTheme_OpacityTransparent_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testOpacityToken_InverseTheme_OpacityTransparent_Light")
    }
    
    func testOpacityToken_InverseTheme_OpacityWeaker_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testOpacityToken_InverseTheme_OpacityWeaker_Light")
    }
    
    func testOpacityToken_InverseTheme_OpacityWeak_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testOpacityToken_InverseTheme_OpacityWeak_Light")
    }
    
    func testOpacityToken_InverseTheme_OpacityMedium_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testOpacityToken_InverseTheme_OpacityMedium_Light")
    }
    
    func testOpacityToken_InverseTheme_OpacityStrong_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testOpacityToken_InverseTheme_OpacityStrong_Light")
    }
    
    func testOpacityToken_InverseTheme_OpacityOpaque_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testOpacityToken_InverseTheme_OpacityOpaque_Light")
    }
    
}

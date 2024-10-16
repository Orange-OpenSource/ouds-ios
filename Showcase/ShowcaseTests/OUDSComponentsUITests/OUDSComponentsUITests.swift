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
import OUDSThemesOrange
import OUDSThemesInverse

class OUDSComponentsUITests: XCTestCase {
    
    // MARK: - Tests
    
    // MARK: - Orange Theme Light Mode Components Page Tests
    
    func testComponents_OrangeTheme_Page_Light() {
        let vc = ComponentsPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testComponents_OrangeTheme_Page_Light")
    }
    
    // MARK: - Tests
    
    // MARK: - Inverse Theme Light Mode Components Page Tests
    
    func testComponents_InverseTheme_Page_Light() {
        let vc = ComponentsPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testComponents_InverseTheme_Page_Light")
    }
}



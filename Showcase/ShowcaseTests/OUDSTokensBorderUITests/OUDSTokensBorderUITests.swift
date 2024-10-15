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

class OUDSTokensBorderUITests: XCTestCase {
    
    // MARK: - Tests
    
    // MARK: - Orange Theme Light Mode Width Tests
    
    // MARK: - Width Tokens Tests
    
    func testBorderToken_OrangeTheme_SectionWidth_BorderWidthNone_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionWidth_BorderWidthNone_Light")
    }
    
    func testBorderToken_OrangeTheme_SectionWidth_BorderWidthDefault_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionWidth_BorderWidthDefault_Light")
    }
    
    func testBorderToken_OrangeTheme_SectionWidth_BorderWidthThin_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionWidth_BorderWidthThin_Light")
    }
    
    func testBorderToken_OrangeTheme_SectionWidth_BorderWidthMedium_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionWidth_BorderWidthMedium_Light")
    }
    
    func testBorderToken_OrangeTheme_SectionWidth_BorderWidthThick_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionWidth_BorderWidthThick_Light")
    }
    
    func testBorderToken_OrangeTheme_SectionWidth_BorderWidthThicker_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionWidth_BorderWidthThicker_Light")
    }
    
    func testBorderToken_OrangeTheme_SectionWidth_BorderWidthOutsideFocus_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionWidth_BorderWidthOutsideFocus_Light")
    }
    
    // MARK: - Orange Theme Light Mode Width Tests
    
    // MARK: - Radius Tokens Tests
    
    func testBorderToken_OrangeTheme_SectionRadius_BorderRadiusNone_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionRadius_BorderRadiusNone_Light")
    }
    
    func testBorderToken_OrangeTheme_SectionRadius_BorderRadiusDefault_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionRadius_BorderRadiusDefault_Light")
    }
    
    func testBorderToken_OrangeTheme_SectionRadius_BorderRadiusShort_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionRadius_BorderRadiusShort_Light")
    }
    
    func testBorderToken_OrangeTheme_SectionRadius_BorderRadiusMedium_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionRadius_BorderRadiusMedium_Light")
    }
    
    func testBorderToken_OrangeTheme_SectionRadius_BorderRadiusTall_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionRadius_BorderRadiusTall_Light")
    }
    
    // MARK: - Orange Theme Light Mode Width Tests
    
    // MARK: - Style Tokens Tests
    
    func testBorderToken_OrangeTheme_SectionStyle_BorderStyleDefault_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionStyle_BorderStyleDefault_Light")
    }
    
    func testBorderToken_OrangeTheme_SectionStyle_BorderStyleDrag_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testBorderToken_OrangeTheme_SectionStyle_BorderStyleDrag_Light")
    }
    
    // MARK: - Tests
    
    // MARK: - Inverse Theme Light Mode Width Tests
    
    // MARK: - Width Tokens Tests
    
    func testBorderToken_InverseTheme_SectionWidth_BorderWidthNone_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_InverseTheme_SectionWidth_BorderWidthNone_Light")
    }
    
    func testBorderToken_InverseTheme_SectionWidth_BorderWidthDefault_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_InverseTheme_SectionWidth_BorderWidthDefault_Light")
    }
    
    func testBorderToken_InverseTheme_SectionWidth_BorderWidthThin_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_InverseTheme_SectionWidth_BorderWidthThin_Light")
    }
    
    func testBorderToken_InverseTheme_SectionWidth_BorderWidthMedium_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_InverseTheme_SectionWidth_BorderWidthMedium_Light")
    }
    
    func testBorderToken_InverseTheme_SectionWidth_BorderWidthThick_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_InverseTheme_SectionWidth_BorderWidthThick_Light")
    }
    
    func testBorderToken_InverseTheme_SectionWidth_BorderWidthThicker_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_InverseTheme_SectionWidth_BorderWidthThicker_Light")
    }
    
    func testBorderToken_InverseTheme_SectionWidth_BorderWidthOutsideFocus_Light() {
        let vc = BorderTokenPage()
        assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_InverseTheme_SectionWidth_BorderWidthOutsideFocus_Light")
    }
}

// MARK: - Inverse Theme Light Mode Width Tests

// MARK: - Radius Tokens Tests

func testBorderToken_InverseTheme_SectionRadius_BorderRadiusNone_Light() {
    let vc = BorderTokenPage()
    assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_OrangeTheme_SectionRadius_BorderRadiusNone_Light")
}

func testBorderToken_InverseTheme_SectionRadius_BorderRadiusDefault_Light() {
    let vc = BorderTokenPage()
    assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_OrangeTheme_SectionRadius_BorderRadiusDefault_Light")
}

func testBorderToken_InverseTheme_SectionRadius_BorderRadiusShort_Light() {
    let vc = BorderTokenPage()
    assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_OrangeTheme_SectionRadius_BorderRadiusShort_Light")
}

func testBorderToken_InverseTheme_SectionRadius_BorderRadiusMedium_Light() {
    let vc = BorderTokenPage()
    assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_OrangeTheme_SectionRadius_BorderRadiusMedium_Light")
}

func testBorderToken_InverseTheme_SectionRadius_BorderRadiusTall_Light() {
    let vc = BorderTokenPage()
    assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_OrangeTheme_SectionRadius_BorderRadiusTall_Light")
}

// MARK: - Inverse Theme Light Mode Width Tests

// MARK: - Style Tokens Tests

func testBorderToken_InverseTheme_SectionStyle_BorderStyleDefault_Light() {
    let vc = BorderTokenPage()
    assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_OrangeTheme_SectionStyle_BorderStyleDefault_Light")
}

func testBorderToken_InverseTheme_SectionStyle_BorderStyleDrag_Light() {
    let vc = BorderTokenPage()
    assertSnapshot(of: vc, as: .image, named: "InverseTheme/testBorderToken_OrangeTheme_SectionStyle_BorderStyleDrag_Light")
}

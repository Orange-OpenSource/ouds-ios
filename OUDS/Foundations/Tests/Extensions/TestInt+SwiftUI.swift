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
import OUDSFoundations
import SwiftUI
import XCTest

/// Class to test `Int` extensions related to `SwiftUI`
final class TestInt_SwiftUI: XCTestCase {
    
    /// Tests values of font weight
    func testFontWeightValues() {

        // Expected values
        XCTAssertTrue(0.fontWeight == Font.Weight.thin)
        XCTAssertTrue(1.fontWeight == Font.Weight.thin)
        XCTAssertTrue(99.fontWeight == Font.Weight.thin)
        XCTAssertTrue(100.fontWeight == Font.Weight.thin)
        
        XCTAssertTrue(101.fontWeight == Font.Weight.ultraLight)
        XCTAssertTrue(200.fontWeight == Font.Weight.ultraLight)
        
        XCTAssertTrue(201.fontWeight == Font.Weight.light)
        XCTAssertTrue(300.fontWeight == Font.Weight.light)
        
        XCTAssertTrue(301.fontWeight == Font.Weight.regular)
        XCTAssertTrue(400.fontWeight == Font.Weight.regular)
        
        XCTAssertTrue(401.fontWeight == Font.Weight.medium)
        XCTAssertTrue(500.fontWeight == Font.Weight.medium)
        
        XCTAssertTrue(501.fontWeight == Font.Weight.semibold)
        XCTAssertTrue(600.fontWeight == Font.Weight.semibold)
        
        XCTAssertTrue(601.fontWeight == Font.Weight.bold)
        XCTAssertTrue(700.fontWeight == Font.Weight.bold)
        
        XCTAssertTrue(701.fontWeight == Font.Weight.black)
        XCTAssertTrue(800.fontWeight == Font.Weight.black)
        XCTAssertTrue(801.fontWeight == Font.Weight.black)
        XCTAssertTrue(900.fontWeight == Font.Weight.black)
        XCTAssertTrue(901.fontWeight == Font.Weight.black)
        XCTAssertTrue(950.fontWeight == Font.Weight.black)
        
        XCTAssertTrue(951.fontWeight == Font.Weight.regular)
        
        // Other default cases
        XCTAssertTrue(1000.fontWeight == Font.Weight.regular)
        XCTAssertTrue((-1).fontWeight == Font.Weight.regular)
    }
}

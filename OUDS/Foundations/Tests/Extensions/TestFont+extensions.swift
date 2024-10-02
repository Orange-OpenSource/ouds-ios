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

/// Class to test `Font` extensions related to `SwiftUI`
final class TestFont_SwiftUI: XCTestCase {

    /// Tests description values of font weight
    func testFontWeightDescription() throws {
        XCTAssertTrue(Font.Weight.ultraLight == "Ultra-Light")
        XCTAssertTrue(Font.Weight.thin == "Thin")
        XCTAssertTrue(Font.Weight.light == "Light")
        XCTAssertTrue(Font.Weight.regular == "Regular")
        XCTAssertTrue(Font.Weight.medium == "Medium")
        XCTAssertTrue(Font.Weight.semibold == "Semi-Bold")
        XCTAssertTrue(Font.Weight.bold == "Bold")
        XCTAssertTrue(Font.Weight.heavy == "Heavy")
        XCTAssertTrue(Font.Weight.black == "Black")
    }
}

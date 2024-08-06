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
import SwiftUI
import XCTest

extension XCTestCase {

    public func XCTAssertColorDarkerThan(_ left: String, _ right: String, file: StaticString = #file, line: UInt = #line) {
        let leftBrightness = Color(hexadecimalCode: left).brightness
        let rightBrightness = Color(hexadecimalCode: right).brightness
        XCTAssertGreaterThan(rightBrightness, leftBrightness, "Right color is not darker than the left color", file: file, line: line)
    }
}

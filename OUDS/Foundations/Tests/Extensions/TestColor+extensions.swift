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
import SwiftUI
import OUDSFoundations

/// To test some extensions of `SwiftUI.Color`
final class TestColor_extensions: XCTestCase {

    func testInitWithHexadecimalValue() throws {

        // White
        let pureWhite = Color(hexadecimalCode: "#FFFFFF")!
        XCTAssertEqual(pureWhite, Color.white)

        // Black
        let pureBlack = Color(hexadecimalCode: "#000000")!
        XCTAssertEqual(pureBlack, Color.black)

        // Color form palette
        let malachite500 = Color(hexadecimalCode: "#3DE35A")!
        XCTAssertTrue(malachite500.rgba!.red == 61, "Value is instead '\(malachite500.rgba!.red)'")
        XCTAssertTrue(malachite500.rgba!.green == 227, "Value is instead '\(malachite500.rgba!.green)'")
        XCTAssertTrue(malachite500.rgba!.blue == 90, "Value is instead '\(malachite500.rgba!.blue)'")

        // Color with transparency
        let colorTransparentWhite500 = Color(hexadecimalCode: "#FFFFFF52")!
        XCTAssertTrue(colorTransparentWhite500.rgba!.red == 255, "Value is instead '\(colorTransparentWhite500.rgba!.red)'")
        XCTAssertTrue(colorTransparentWhite500.rgba!.green == 255, "Value is instead '\(colorTransparentWhite500.rgba!.green)'")
        XCTAssertTrue(colorTransparentWhite500.rgba!.blue == 255, "Value is instead '\(colorTransparentWhite500.rgba!.blue)'")
        XCTAssertTrue(colorTransparentWhite500.rgba!.alpha == 82, "Value is instead '\(colorTransparentWhite500.rgba!.alpha)'")
        /*
         colorTransparentWhite500 is white with opacity500.
         In base 16, white is #FFFFFF and opacity500 adds 52 suffix.
         FF in base 16 is 255 in base 10, and 52 in base 16 is 82 in base 10.
         So, #FFFFFF52 is RGBA(255, 255, 255, 82)
         */
    }
}

// swiftlint:disable large_tuple
extension Color {

    var uiColor: UIColor { .init(self) }

    typealias RGBA = (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)

    /// SwiftUI does not expose efficiently RGBA balues, and when computed these values are not that pure, thus we need to round to integer.
    var rgba: RGBA? {
        var (r, g, b, a): RGBA = (0, 0, 0, 0)
        return uiColor.getRed(&r, green: &g, blue: &b, alpha: &a) ? ((r * 255).rounded(), (g * 255).rounded(), (b * 255).rounded(), (a * 255).rounded()) : nil
    }
}
// swiftlint:enable large_tuple

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

import OUDSFoundations
import SwiftUI
import Testing

// swiftlint:disable force_unwrapping

/// To test some extensions of `SwiftUI.Color`
struct ColorExtensionsTests {

    @Test func initWithHexadecimalValue() throws {

        // White
        let pureWhite = Color(hexadecimalCode: "#FFFFFF")!
        #expect(pureWhite == Color.white)

        // Black
        let pureBlack = Color(hexadecimalCode: "#000000")!
        #expect(pureBlack == Color.black)

        // Color form palette
        let malachite500 = Color(hexadecimalCode: "#3DE35A")!
        #expect(malachite500.rgba!.red == 61, "Value is instead '\(malachite500.rgba!.red)'")
        #expect(malachite500.rgba!.green == 227, "Value is instead '\(malachite500.rgba!.green)'")
        #expect(malachite500.rgba!.blue == 90, "Value is instead '\(malachite500.rgba!.blue)'")

        // Color with transparency
        let colorOpacityWhite500 = Color(hexadecimalCode: "#FFFFFF52")!
        #expect(colorOpacityWhite500.rgba!.red == 255, "Value is instead '\(colorOpacityWhite500.rgba!.red)'")
        #expect(colorOpacityWhite500.rgba!.green == 255, "Value is instead '\(colorOpacityWhite500.rgba!.green)'")
        #expect(colorOpacityWhite500.rgba!.blue == 255, "Value is instead '\(colorOpacityWhite500.rgba!.blue)'")
        #expect(colorOpacityWhite500.rgba!.alpha == 82, "Value is instead '\(colorOpacityWhite500.rgba!.alpha)'")
        /*
         colorOpacityWhite500 is white with opacity500.
         In base 16, white is #FFFFFF and opacity500 adds 52 suffix.
         FF in base 16 is 255 in base 10, and 52 in base 16 is 82 in base 10.
         So, #FFFFFF52 is RGBA(255, 255, 255, 82)
         */
    }
}
// swiftlint:enable force_unwrapping

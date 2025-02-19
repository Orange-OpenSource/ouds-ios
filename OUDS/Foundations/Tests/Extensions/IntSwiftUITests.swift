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
import Testing

/// Struct to test `Int` extensions related to `SwiftUI`
struct IntSwiftUITests {

    /// Tests values of font weight
    @Test
    func testFontWeightValues() throws {
        // Expected values
        #expect(0.fontWeight == Font.Weight.thin)
        #expect(1.fontWeight == Font.Weight.thin)
        #expect(99.fontWeight == Font.Weight.thin)
        #expect(100.fontWeight == Font.Weight.thin)

        #expect(101.fontWeight == Font.Weight.ultraLight)
        #expect(200.fontWeight == Font.Weight.ultraLight)

        #expect(201.fontWeight == Font.Weight.light)
        #expect(300.fontWeight == Font.Weight.light)

        #expect(301.fontWeight == Font.Weight.regular)
        #expect(400.fontWeight == Font.Weight.regular)

        #expect(401.fontWeight == Font.Weight.medium)
        #expect(500.fontWeight == Font.Weight.medium)

        #expect(501.fontWeight == Font.Weight.semibold)
        #expect(600.fontWeight == Font.Weight.semibold)

        #expect(601.fontWeight == Font.Weight.bold)
        #expect(700.fontWeight == Font.Weight.bold)

        #expect(701.fontWeight == Font.Weight.black)
        #expect(800.fontWeight == Font.Weight.black)
        #expect(801.fontWeight == Font.Weight.black)
        #expect(900.fontWeight == Font.Weight.black)
        #expect(901.fontWeight == Font.Weight.black)
        #expect(950.fontWeight == Font.Weight.black)

        #expect(951.fontWeight == Font.Weight.regular)

        // Other default cases
        #expect(1_000.fontWeight == Font.Weight.regular)
        #expect((-1).fontWeight == Font.Weight.regular)
    }
}

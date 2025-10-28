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
    func fontWeightValues() throws {
        // Expected values
        #expect(0.weight == Font.Weight.thin)
        #expect(1.weight == Font.Weight.thin)
        #expect(99.weight == Font.Weight.thin)
        #expect(100.weight == Font.Weight.thin)

        #expect(101.weight == Font.Weight.ultraLight)
        #expect(200.weight == Font.Weight.ultraLight)

        #expect(201.weight == Font.Weight.light)
        #expect(300.weight == Font.Weight.light)

        #expect(301.weight == Font.Weight.regular)
        #expect(400.weight == Font.Weight.regular)

        #expect(401.weight == Font.Weight.medium)
        #expect(500.weight == Font.Weight.medium)

        #expect(501.weight == Font.Weight.semibold)
        #expect(600.weight == Font.Weight.semibold)

        #expect(601.weight == Font.Weight.bold)
        #expect(700.weight == Font.Weight.bold)

        #expect(701.weight == Font.Weight.black)
        #expect(800.weight == Font.Weight.black)
        #expect(801.weight == Font.Weight.black)
        #expect(900.weight == Font.Weight.black)
        #expect(901.weight == Font.Weight.black)
        #expect(950.weight == Font.Weight.black)

        #expect(951.weight == Font.Weight.regular)

        // Other default cases
        #expect(1_000.weight == Font.Weight.regular)
        #expect((-1).weight == Font.Weight.regular)
    }
}

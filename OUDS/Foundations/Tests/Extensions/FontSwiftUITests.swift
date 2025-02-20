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

/// Class to test `Font` extensions related to `SwiftUI`
struct FontSwiftUITests {

    /// Tests description values of font weight
    @Test func fontWeightDescription() throws {
        #expect(Font.Weight.ultraLight.description == "Ultra-Light")
        #expect(Font.Weight.thin.description == "Thin")
        #expect(Font.Weight.light.description == "Light")
        #expect(Font.Weight.regular.description == "Regular")
        #expect(Font.Weight.medium.description == "Medium")
        #expect(Font.Weight.semibold.description == "Semi-Bold")
        #expect(Font.Weight.bold.description == "Bold")
        #expect(Font.Weight.heavy.description == "Heavy")
        #expect(Font.Weight.black.description == "Black")

        #expect("\(Font.Weight.ultraLight)" == "Ultra-Light")
        #expect("\(Font.Weight.thin)" == "Thin")
        #expect("\(Font.Weight.light)" == "Light")
        #expect("\(Font.Weight.regular)" == "Regular")
        #expect("\(Font.Weight.medium)" == "Medium")
        #expect("\(Font.Weight.semibold)" == "Semi-Bold")
        #expect("\(Font.Weight.bold)" == "Bold")
        #expect("\(Font.Weight.heavy)" == "Heavy")
        #expect("\(Font.Weight.black)" == "Black")
    }
}

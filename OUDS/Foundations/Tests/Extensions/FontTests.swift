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

    /// Tests the instanciations of a `Font.Weight` object based on a raw integer value like font raw token
    @Test func fontWeightInitFromInt() {
        #expect(Font.Weight(weight: 0) == Font.Weight.thin)
        #expect(Font.Weight(weight: 1) == Font.Weight.thin)
        #expect(Font.Weight(weight: 99) == Font.Weight.thin)
        #expect(Font.Weight(weight: 100) == Font.Weight.thin)

        #expect(Font.Weight(weight: 101) == Font.Weight.ultraLight)
        #expect(Font.Weight(weight: 200) == Font.Weight.ultraLight)

        #expect(Font.Weight(weight: 201) == Font.Weight.light)
        #expect(Font.Weight(weight: 300) == Font.Weight.light)

        #expect(Font.Weight(weight: 301) == Font.Weight.regular)
        #expect(Font.Weight(weight: 400) == Font.Weight.regular)

        #expect(Font.Weight(weight: 401) == Font.Weight.medium)
        #expect(Font.Weight(weight: 500) == Font.Weight.medium)

        #expect(Font.Weight(weight: 501) == Font.Weight.semibold)
        #expect(Font.Weight(weight: 600) == Font.Weight.semibold)

        #expect(Font.Weight(weight: 601) == Font.Weight.bold)
        #expect(Font.Weight(weight: 700) == Font.Weight.bold)

        #expect(Font.Weight(weight: 701) == Font.Weight.black)
        #expect(Font.Weight(weight: 800) == Font.Weight.black)
        #expect(Font.Weight(weight: 801) == Font.Weight.black)
        #expect(Font.Weight(weight: 900) == Font.Weight.black)
        #expect(Font.Weight(weight: 901) == Font.Weight.black)
        #expect(Font.Weight(weight: 950) == Font.Weight.black)

        #expect(Font.Weight(weight: 951) == Font.Weight.regular)

        #expect(Font.Weight(weight: 1_000) == Font.Weight.regular)
        #expect(Font.Weight(weight: -1) == Font.Weight.regular)
    }

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

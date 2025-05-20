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
import Testing

// swiftlint:disable force_unwrapping

/// To test  the extension `String`, here the `toHex6` utils.
struct StringExtensionsTests {

    // Some tools:
    // - https://borderleft.com/toolbox/rgba/
    // - https://rgbacolorpicker.com/hex-to-rgba
    // - https://webaim.org/resources/contrastchecker/

    // MARK: - Opacity colors

    @Test("#26B2FF14 in hexa6 must be #EDF8FF")
    func convertOpacityDodgerBlue() {
        #expect("#26B2FF14".toHex6()! == "#EDF8FF")
    }

    @Test("#EA030514 in hexa6 must be #FDEAEB")
    func convertOpacityScarlet() {
        #expect("#EA030514".toHex6()! == "#FDEAEB")
    }

    @Test("#FFFFFFCC in hexa6 must be #FAFAFA")
    func convertOpacityWhite800() {
        #expect("#FFFFFFCC".toHex6()! == "#FFFFFF")
    }

    @Test("#000000D6 in hexa6 must be #282828")
    func convertOpacityBlack840() {
        #expect("#000000D6".toHex6()! == "#282828")
    }

    @Test("#FFD00029 in hexa6 must be #FFF7D6")
    func convertOpacitySun() {
        #expect("#FFD00029".toHex6()! == "#FFF7D6")
    }

    // MARK: - Colors

    @Test("#FFFFFFFF and #00000000 in hexa6 must be #FFFFFF")
    func convertColorWhite() {
        #expect("#FFFFFFFF".toHex6()! == "#FFFFFF")
        #expect("#00000000".toHex6()! == "#FFFFFF")
        #expect("#FFFFFF00".toHex6()! == "#FFFFFF")
    }

    @Test("#000000FF in hexa6 must be #000000")
    func convertColorBlack() {
        #expect("#000000FF".toHex6()! == "#000000")
    }

    @Test("#A99275FF in hexa6 must be #A99275")
    func convertWarmGray500() {
        #expect("#A99275FF".toHex6()! == "#A99275")
    }

    @Test("#FF7900FF in hexa6 must be #F4F4F4")
    func convertColorOrange500() {
        #expect("#FF7900FF".toHex6()! == "#FF7900")
    }

    @Test("#3DE35A1F in hexa6 must be #E2F1F1")
    func convertFunctionalMalachite() {
        #expect("#3DE35A1F".toHex6()! == "#E7FBEB")
    }
}

// swiftlint:enable force_unwrapping

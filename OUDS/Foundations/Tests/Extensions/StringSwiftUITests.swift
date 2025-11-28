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

/// Struct to test `String` extensions related to `SwiftUI`
struct StringSwiftUITests {

    /// Tests the Arial font family values created using a font family name and a weight
    @Test
    func fontNameInPostScriptForArial() throws {
        var result: String

        result = "Arial".fontNameInPostScript(using: "\(Font.Weight.regular)")
        #expect(result == "ArialMT", "Current value is '\(result)'")

        result = "Arial".fontNameInPostScript(using: "\(Font.Weight.bold)")
        #expect(result == "Arial-BoldMT", "Current value is '\(result)'")
    }

    /// Tests the Helvetica font family values created using a font family name and a weight
    @Test
    func fontNameInPostScriptForHelvetica() throws {
        var result: String

        result = "Helvetica".fontNameInPostScript(using: "\(Font.Weight.light)")
        #expect(result == "Helvetica-Light", "Current value is '\(result)'")

        result = "Helvetica".fontNameInPostScript(using: "\(Font.Weight.bold)")
        #expect(result == "Helvetica-Bold", "Current value is '\(result)'")
    }

    /// Tests the SF Pro font family values created using a font family name and a weight
    @Test
    func fontNameInPostScriptForSFPro() throws {
        var result: String

        result = "SF Pro".fontNameInPostScript(using: "\(Font.Weight.ultraLight)")
        #expect(result == "SFPro-Ultralight", "Current value is '\(result)'")

        result = "SF Pro".fontNameInPostScript(using: "\(Font.Weight.thin)")
        #expect(result == "SFPro-Thin", "Current value is '\(result)'")

        result = "SF Pro".fontNameInPostScript(using: "\(Font.Weight.light)")
        #expect(result == "SFPro-Light", "Current value is '\(result)'")

        result = "SF Pro".fontNameInPostScript(using: "\(Font.Weight.medium)")
        #expect(result == "SFPro-Medium", "Current value is '\(result)'")

        result = "SF Pro".fontNameInPostScript(using: "\(Font.Weight.semibold)")
        #expect(result == "SFPro-Semibold", "Current value is '\(result)'")

        result = "SF Pro".fontNameInPostScript(using: "\(Font.Weight.bold)")
        #expect(result == "SFPro-Bold", "Current value is '\(result)'")

        result = "SF Pro".fontNameInPostScript(using: "\(Font.Weight.heavy)")
        #expect(result == "SFPro-Heavy", "Current value is '\(result)'")

        result = "SF Pro".fontNameInPostScript(using: "\(Font.Weight.black)")
        #expect(result == "SFPro-Black", "Current value is '\(result)'")
    }

    /// Tests the Menlo font family values created using a font family name and a weight
    @Test
    func fontNameInPostScriptForMenlo() throws {
        var result: String

        result = "Menlo".fontNameInPostScript(using: "\(Font.Weight.regular)")
        #expect(result == "Menlo-Regular", "Current value is '\(result)'")

        result = "Menlo".fontNameInPostScript(using: "\(Font.Weight.bold)")
        #expect(result == "Menlo-Bold", "Current value is '\(result)'")
    }

    /// Tests the Courrier New font family values created using a font family name and a weight
    @Test
    func fontNameInPostScriptForCourrierNew() throws {
        var result: String

        result = "Courier New".fontNameInPostScript(using: "\(Font.Weight.bold)")
        #expect(result == "CourierNewPS-BoldMT", "Current value is '\(result)'")
    }

    /// Tests the Helvetica Neue font family values created using a font family name and a weight
    @Test
    func fontNameInPostScriptForHelveticaNeue() throws {
        var result: String

        result = "Helvetica Neue".fontNameInPostScript(using: "\(Font.Weight.ultraLight)")
        #expect(result == "HelveticaNeue-Ultralight", "Current value is '\(result)'")

        result = "Helvetica Neue".fontNameInPostScript(using: "\(Font.Weight.thin)")
        #expect(result == "HelveticaNeue-Thin", "Current value is '\(result)'")

        result = "Helvetica Neue".fontNameInPostScript(using: "\(Font.Weight.light)")
        #expect(result == "HelveticaNeue-Light", "Current value is '\(result)'")

        result = "Helvetica Neue".fontNameInPostScript(using: "\(Font.Weight.regular)")
        #expect(result == "HelveticaNeue", "Current value is '\(result)'")

        result = "Helvetica Neue".fontNameInPostScript(using: "\(Font.Weight.medium)")
        #expect(result == "HelveticaNeue-Medium", "Current value is '\(result)'")

        result = "Helvetica Neue".fontNameInPostScript(using: "\(Font.Weight.semibold)")
        #expect(result == "HelveticaNeue", "Current value is '\(result)'")

        result = "Helvetica Neue".fontNameInPostScript(using: "\(Font.Weight.bold)")
        #expect(result == "HelveticaNeue-Bold", "Current value is '\(result)'")
    }

    /// Tests the Sosh font family values created using a font family name and a weight
    @Test
    func fontNameInPostScriptForSosh() throws {
        var result: String

        result = "Sosh".fontNameInPostScript(using: "\(Font.Weight.thin)")
        #expect(result == "Sosh-Thin", "Current value is '\(result)'")

        result = "Sosh".fontNameInPostScript(using: "\(Font.Weight.regular)")
        #expect(result == "Sosh-Regular", "Current value is '\(result)'")

        result = "Sosh".fontNameInPostScript(using: "\(Font.Weight.medium)")
        #expect(result == "Sosh-Medium", "Current value is '\(result)'")

        result = "Sosh".fontNameInPostScript(using: "\(Font.Weight.bold)")
        #expect(result == "Sosh-Bold", "Current value is '\(result)'")

        result = "Sosh".fontNameInPostScript(using: "\(Font.Weight.black)")
        #expect(result == "Sosh-Black", "Current value is '\(result)'")
    }

    /// Tests the Shantell Sans family values created using a font family name and a weight
    @Test
    func fontNameInPostScriptForShantellSans() throws {
        var result: String

        result = "Shantell Sans".fontNameInPostScript(using: "\(Font.Weight.light)")
        #expect(result == "ShantellSans-Light", "Current value is '\(result)'")

        result = "Shantell Sans".fontNameInPostScript(using: "\(Font.Weight.regular)")
        #expect(result == "ShantellSans-Regular", "Current value is '\(result)'")

        result = "Shantell Sans".fontNameInPostScript(using: "\(Font.Weight.medium)")
        #expect(result == "ShantellSans-Medium", "Current value is '\(result)'")

        result = "Shantell Sans".fontNameInPostScript(using: "\(Font.Weight.semibold)")
        #expect(result == "ShantellSans-SemiBold", "Current value is '\(result)'")

        result = "Shantell Sans".fontNameInPostScript(using: "\(Font.Weight.bold)")
        #expect(result == "ShantellSans-Bold", "Current value is '\(result)'")
    }
}

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

@testable import OUDSFoundations
import Testing

@Suite("OUDSLogger Tests")
struct OUDSLoggerTests {

    @Test("verbose flag is false by default")
    func verboseFlagDefaultValue() {
        // The documented default is false; verify without resetting first
        // so we can detect if the declaration default were ever changed.
        #expect(OUDSLogger.verbose == false)
    }

    @Test("verbose flag can be toggled by consumers")
    func verboseFlagCanBeChanged() {
        defer { OUDSLogger.verbose = false } // Always restore, even on failure
        OUDSLogger.verbose = true
        #expect(OUDSLogger.verbose == true)
        OUDSLogger.verbose = false
        #expect(OUDSLogger.verbose == false)
    }
}

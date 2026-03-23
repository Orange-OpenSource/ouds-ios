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

import OUDSComponents
import Testing

/// Tests some API for `OUDSPinCodeInput`
struct OUDSPinCodeInputTests {

    /// Test the raw values for the length of the component
    @Test func pinCodeInputLengthValues() {
        #expect(OUDSPinCodeInput.Length.four.rawValue == 4)
        #expect(OUDSPinCodeInput.Length.six.rawValue == 6)
        #expect(OUDSPinCodeInput.Length.eight.rawValue == 8)
    }
}

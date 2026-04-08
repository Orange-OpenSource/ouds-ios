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

/// Tests the public static constants exposed by `OUDSTextArea`.
struct OUDSTextAreaTests {

    @Test func minLinesValue() {
        #expect(OUDSTextArea.minLines == 3)
    }

    @Test func maxLinesValue() {
        #expect(OUDSTextArea.maxLines == 10)
    }

    @Test func minLinesIsLessThanMaxLines() {
        #expect(OUDSTextArea.minLines < OUDSTextArea.maxLines)
    }
}

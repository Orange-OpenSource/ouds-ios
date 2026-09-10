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
import SwiftUI
import Testing

/// Tests the `OUDSListItemTrailing` cases.
struct OUDSListItemTrailingTests {

    // MARK: - .custom builds a .slot case

    @Test func customFactoryBuildsSlotCase() {
        let trailing = OUDSListItemTrailing.slot { Text("Gauge") }
        guard case .slot = trailing else {
            Issue.record("Expected .slot case")
            return
        }
    }
}

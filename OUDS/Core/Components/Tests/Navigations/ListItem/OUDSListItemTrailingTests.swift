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

    // MARK: - .custom builds a .customView case

    @Test func customFactoryBuildsCustomViewCase() {
        let trailing = OUDSListItemTrailing.custom { Text("Gauge") }
        guard case .customView = trailing else {
            Issue.record("Expected .customView case")
            return
        }
    }
}

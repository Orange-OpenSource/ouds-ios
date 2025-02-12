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

import OUDS
import OUDSComponents
import XCTest

// swiftlint:disable required_deinit

/// Tests some helper functions defined in extensions of `OUDSComponents` module.
final class TestOUDSCheckboxState: XCTestCase {

    /// A selected checkbox must be toggled to an unselected checkbox.
    /// An unselected checkbox must be toggled to a selected checkbox.
    /// An undterminate  checkbox must be toggled to a selected checkbox.
    func testToggle() {

        var selectedState = OUDSCheckboxSelectorState.selected
        selectedState.toggle()
        XCTAssertTrue(selectedState == OUDSCheckboxSelectorState.unselected)

        var unselectedState = OUDSCheckboxSelectorState.unselected
        unselectedState.toggle()
        XCTAssertTrue(unselectedState == OUDSCheckboxSelectorState.selected)

        var undeterminateState = OUDSCheckboxSelectorState.undeterminate
        undeterminateState.toggle()
        XCTAssertTrue(undeterminateState == OUDSCheckboxSelectorState.selected)
    }
}

// swiftlint:enable required_deinit

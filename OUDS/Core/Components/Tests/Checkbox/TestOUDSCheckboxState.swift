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

        var selectedState = OUDSCheckbox.State.selected
        selectedState.toggle()
        XCTAssertTrue(selectedState == OUDSCheckbox.State.unselected)

        var unselectedState = OUDSCheckbox.State.unselected
        unselectedState.toggle()
        XCTAssertTrue(unselectedState == OUDSCheckbox.State.selected)

        var undeterminateState = OUDSCheckbox.State.undeterminate
        undeterminateState.toggle()
        XCTAssertTrue(undeterminateState == OUDSCheckbox.State.selected)
    }
}

// swiftlint:enable required_deinit

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
import Testing

/// Tests some helper functions defined in extensions of `OUDSComponents` module.
struct OUDSCheckboxStateTests {

    /// A selected checkbox must be toggled to an unselected checkbox.
    @Test func toogleSelectedMustGiveUnselected() {
        var selectedState = OUDSCheckboxSelectorState.selected
        selectedState.toggle()
        #expect(selectedState == OUDSCheckboxSelectorState.unselected)
    }

    /// An unselected checkbox must be toggled to a selected checkbox.
    @Test func toogleUnselectedMustGiveSelected() {
        var unselectedState = OUDSCheckboxSelectorState.unselected
        unselectedState.toggle()
        #expect(unselectedState == OUDSCheckboxSelectorState.selected)
    }

    /// An undeterminate checkbox must be toggled to a selected checkbox.
    @Test func toogleUndetermibateMustGiveSelected() {
        var undeterminateState = OUDSCheckboxSelectorState.undeterminate
        undeterminateState.toggle()
        #expect(undeterminateState == OUDSCheckboxSelectorState.selected)
    }
}

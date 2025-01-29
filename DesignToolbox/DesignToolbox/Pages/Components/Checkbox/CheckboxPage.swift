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
import OUDSFoundations
import SwiftUI

// MARK: Checkbox page

// TODO: #264 - Update page

struct CheckboxPage: View {

    var body: some View {

        // Enabled
        OUDSCheckbox(status: .selected, style: .default) { print("@@@ high level tap") }
        OUDSCheckbox(status: .unselected, style: .default) { }
        OUDSCheckbox(status: .undeterminate, style: .default) { }
        OUDSCheckbox(status: .errorSelected, style: .default) { }
        OUDSCheckbox(status: .errorUnselected, style: .default) { }
        OUDSCheckbox(status: .errorUndeterminate, style: .default) { }

        // Disabled
        OUDSCheckbox(status: .selected, style: .default) { }.disabled(true)
        OUDSCheckbox(status: .unselected, style: .default) { }.disabled(true)
        OUDSCheckbox(status: .undeterminate, style: .default) { }.disabled(true)
    }
}

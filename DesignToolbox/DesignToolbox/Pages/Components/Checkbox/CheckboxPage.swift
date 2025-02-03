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

// swiftlint:disable accessibility_label_for_image
struct CheckboxPage: View {

    var body: some View {

        VStack(spacing: 2) {

            // Enabled
            OUDSCheckbox(label: "Hello world", icon: Image(systemName: "heart"), status: .constant(.selected), style: .default, layout: .inverse) { }
            OUDSCheckbox(label: "Hello world", icon: Image(systemName: "heart"), status: .constant(.unselected), style: .default, layout: .inverse) { }
            OUDSCheckbox(label: "Hello world", icon: Image(systemName: "heart"), status: .constant(.undeterminate), style: .default, layout: .inverse) { }
            OUDSCheckbox(label: "Hello world", icon: Image(systemName: "heart"), status: .constant(.errorSelected), style: .default, layout: .inverse) { }
            OUDSCheckbox(label: "Hello world", icon: Image(systemName: "heart"), status: .constant(.errorUnselected), style: .default, layout: .inverse) { }
            OUDSCheckbox(label: "Hello world", icon: Image(systemName: "heart"), status: .constant(.errorUndeterminate), style: .default, layout: .inverse) { }

            // Disabled
            OUDSCheckbox(label: "Hello world", icon: Image(systemName: "heart"), status: .constant(.selected), style: .default, layout: .inverse) { }.disabled(true)
            OUDSCheckbox(label: "Hello world", icon: Image(systemName: "heart"), status: .constant(.unselected), style: .default, layout: .inverse) { }.disabled(true)
            OUDSCheckbox(label: "Hello world", icon: Image(systemName: "heart"), status: .constant(.undeterminate), style: .default, layout: .inverse) { }.disabled(true)

//            // Enabled
//            OUDSCheckbox(label: "Hello", helper: "World", icon: Image(systemName: "heart"), status: .selected, style: .default, layout: .inverse) { }
//            OUDSCheckbox(label: "Hello", helper: "World", icon: Image(systemName: "heart"), status: .unselected, style: .default, layout: .inverse) { }
//            OUDSCheckbox(label: "Hello", helper: "World", icon: Image(systemName: "heart"), status: .undeterminate, style: .default, layout: .inverse) { }
//            OUDSCheckbox(label: "Hello", helper: "World", icon: Image(systemName: "heart"), status: .errorSelected, style: .default, layout: .inverse) { }
//            OUDSCheckbox(label: "Hello", helper: "World", icon: Image(systemName: "heart"), status: .errorUnselected, style: .default, layout: .inverse) { }
//            OUDSCheckbox(label: "Hello", helper: "World", icon: Image(systemName: "heart"), status: .errorUndeterminate, style: .default, layout: .inverse) { }
//
//            // Disabled
//            OUDSCheckbox(label: "Hello", helper: "World", icon: Image(systemName: "heart"), status: .selected, style: .default, layout: .inverse) { }.disabled(true)
//            OUDSCheckbox(label: "Hello", helper: "World", icon: Image(systemName: "heart"), status: .unselected, style: .default, layout: .inverse) { }.disabled(true)
//            OUDSCheckbox(label: "Hello", helper: "World", icon: Image(systemName: "heart"), status: .undeterminate, style: .default, layout: .inverse) { }.disabled(true)
//
//            // Enabled
//            OUDSCheckbox(label: "Hello world", icon: Image(systemName: "heart"), status: .selected, style: .default) { }
//            OUDSCheckbox(label: "Hello world", icon: Image(systemName: "heart"), status: .unselected, style: .default) { }
//            OUDSCheckbox(label: "Hello world", icon: Image(systemName: "heart"), status: .undeterminate, style: .default) { }
//            OUDSCheckbox(label: "Hello world", icon: Image(systemName: "heart"), status: .errorSelected, style: .default) { }
//            OUDSCheckbox(label: "Hello world", icon: Image(systemName: "heart"), status: .errorUnselected, style: .default) { }
//            OUDSCheckbox(label: "Hello world", icon: Image(systemName: "heart"), status: .errorUndeterminate, style: .default) { }
//
//            // Disabled
//            OUDSCheckbox(label: "Hello world", icon: Image(systemName: "heart"), status: .selected, style: .default) { }.disabled(true)
//            OUDSCheckbox(label: "Hello world", icon: Image(systemName: "heart"), status: .unselected, style: .default) { }.disabled(true)
//            OUDSCheckbox(label: "Hello world", icon: Image(systemName: "heart"), status: .undeterminate, style: .default) { }.disabled(true)
//
//            // Enabled
//            OUDSCheckbox(label: "Hello", helper: "World", icon: Image(systemName: "heart"), status: .selected, style: .default) { }
//            OUDSCheckbox(label: "Hello", helper: "World", icon: Image(systemName: "heart"), status: .unselected, style: .default) { }
//            OUDSCheckbox(label: "Hello", helper: "World", icon: Image(systemName: "heart"), status: .undeterminate, style: .default) { }
//            OUDSCheckbox(label: "Hello", helper: "World", icon: Image(systemName: "heart"), status: .errorSelected, style: .default) { }
//            OUDSCheckbox(label: "Hello", helper: "World", icon: Image(systemName: "heart"), status: .errorUnselected, style: .default) { }
//            OUDSCheckbox(label: "Hello", helper: "World", icon: Image(systemName: "heart"), status: .errorUndeterminate, style: .default) { }
//
//            // Disabled
//            OUDSCheckbox(label: "Hello", helper: "World", icon: Image(systemName: "heart"), status: .selected, style: .default) { }.disabled(true)
//            OUDSCheckbox(label: "Hello", helper: "World", icon: Image(systemName: "heart"), status: .unselected, style: .default) { }.disabled(true)
//            OUDSCheckbox(label: "Hello", helper: "World", icon: Image(systemName: "heart"), status: .undeterminate, style: .default) { }.disabled(true)
//
//            // Enabled
//            OUDSCheckbox(label: "Hello", helper: "World", status: .selected, style: .default) { }
//            OUDSCheckbox(label: "Hello", helper: "World", status: .unselected, style: .default) { }
//            OUDSCheckbox(label: "Hello", helper: "World", status: .undeterminate, style: .default) { }
//            OUDSCheckbox(label: "Hello", helper: "World", status: .errorSelected, style: .default) { }
//            OUDSCheckbox(label: "Hello", helper: "World", status: .errorUnselected, style: .default) { }
//            OUDSCheckbox(label: "Hello", helper: "World", status: .errorUndeterminate, style: .default) { }
//
//            // Disabled
//            OUDSCheckbox(label: "Hello", helper: "World", status: .selected, style: .default) { }.disabled(true)
//            OUDSCheckbox(label: "Hello", helper: "World", status: .unselected, style: .default) { }.disabled(true)
//            OUDSCheckbox(label: "Hello", helper: "World", status: .undeterminate, style: .default) { }.disabled(true)
//
//            // Enabled
//            OUDSCheckbox(label: "Hello world", status: .selected, style: .default) { }
//            OUDSCheckbox(label: "Hello world", status: .unselected, style: .default) { }
//            OUDSCheckbox(label: "Hello world", status: .undeterminate, style: .default) { }
//            OUDSCheckbox(label: "Hello world", status: .errorSelected, style: .default) { }
//            OUDSCheckbox(label: "Hello world", status: .errorUnselected, style: .default) { }
//            OUDSCheckbox(label: "Hello world", status: .errorUndeterminate, style: .default) { }
//
//            // Disabled
//            OUDSCheckbox(label: "Hello world", status: .selected, style: .default) { }.disabled(true)
//            OUDSCheckbox(label: "Hello world", status: .unselected, style: .default) { }.disabled(true)
//            OUDSCheckbox(label: "Hello world", status: .undeterminate, style: .default) { }.disabled(true)
//
//            // Enabled
//            OUDSCheckbox(status: .selected, style: .default) { print("@@@ high level tap") }
//            OUDSCheckbox(status: .unselected, style: .default) { }
//            OUDSCheckbox(status: .undeterminate, style: .default) { }
//            OUDSCheckbox(status: .errorSelected, style: .default) { }
//            OUDSCheckbox(status: .errorUnselected, style: .default) { }
//            OUDSCheckbox(status: .errorUndeterminate, style: .default) { }
//
//            // Disabled
//            OUDSCheckbox(status: .selected, style: .default) { }.disabled(true)
//            OUDSCheckbox(status: .unselected, style: .default) { }.disabled(true)
//            OUDSCheckbox(status: .undeterminate, style: .default) { }.disabled(true)
        }
    }
}
// swiftlint:enable accessibility_label_for_image

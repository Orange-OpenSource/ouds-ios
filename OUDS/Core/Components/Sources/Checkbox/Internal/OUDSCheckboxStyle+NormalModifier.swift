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
import OUDSTokensSemantic
import SwiftUI

/// `ViewModifier` which has in charge to apply styles for foreground, background and border elements for example.
/// The applied styles are based on the  given ``OUDSCheckbox.Status``, ``OUDSCheckbox.State`` and ``OUDSCheckbox.Layout`` of the ``ODUSCheckbox``.
struct CheckboxViewModifier: ViewModifier {

    // MARK: - Properties

    let status: OUDSCheckbox.Status
    let state: OUDSCheckbox.State
    let item: OUDSCheckbox.Item

    // MARK: - Body

    func body(content: Content) -> some View {
        if item == .checkbox {
            content
                .modifier(CheckboxSelectorBorderModifier(status: status, state: state))
                .modifier(CheckboxForegroundModifier(status: status, state: state, item: item))
                .modifier(CheckboxSelectorBackgroundModifier(status: status, state: state))
        } else {
            content
                .modifier(CheckboxForegroundModifier(status: status, state: state, item: item))
        }
    }
}

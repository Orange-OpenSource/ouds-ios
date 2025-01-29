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

/// `ViewModifier` which has iin charge to apply styles for foreground, background and border elements
/// associated to the given ``OUDSCheckbox.Status`` and ``InternalCheckboxState`` of the ``ODUSCheckbox``
struct CheckboxViewModifier: ViewModifier {

    // MARK: - Properties

    let status: OUDSCheckbox.Status
    let state: InternalCheckboxState

    // MARK: - Body

    func body(content: Content) -> some View {
        content
            .modifier(CheckboxSelectorBorderModifier(status: status, state: state))
            .modifier(CheckboxSelectorForegroundModifier(status: status, state: state))
            .modifier(CheckboxSelectorBackgroundModifier(status: status, state: state))
    }
}

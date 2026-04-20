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

import SwiftUI

struct ControlItemData {
    struct Texts {
        let label: String
        let overline: String?
        let extraLabel: String?
        let description: String?
    }

    struct Style {
        let isOutlined: Bool
        let isError: Bool
        let errorText: TextualContent?
        let isReadOnly: Bool
        let hasDivider: Bool
        let constrainedMaxWidth: Bool
        let isReversed: Bool
    }

    let texts: Texts
    let style: Style
}

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
        let helperErrorText: TextualContent?
        let isReadOnly: Bool
        let hasDivider: Bool
        let constrainedMaxWidth: Bool
        let isReversed: Bool
    }

    enum AffordanceType {
        case next
        case previous
        case external
    }

    enum `Type` {
        case `static`
        case grouped
        case separated
    }

    let texts: Texts
    let style: Style
    let type: `Type`
    let affordanceType: AffordanceType?

    init(texts: Texts, style: Style, type: Type = .grouped, affordanceType: AffordanceType? = nil) {
        self.texts = texts
        self.style = style
        self.type = type
        self.affordanceType = affordanceType
    }
}

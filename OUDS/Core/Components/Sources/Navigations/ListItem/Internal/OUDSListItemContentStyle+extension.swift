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

extension OUDSListItemContentStyle {

    /// Define if it is an outlined style
    var isOutlined: Bool {
        switch self {
        case .item:
            false
        case let .card(decoration):
            switch decoration {
            case .outlined:
                true
            case .standard:
                false
            }
        }
    }

    /// Define if style has a divider
    var hasDivider: Bool {
        switch self {
        case let .item(divider, _):
            divider
        case let .card(decoration):
            switch decoration {
            case let .standard(divider, _):
                divider
            case .outlined:
                false
            }
        }
    }
}

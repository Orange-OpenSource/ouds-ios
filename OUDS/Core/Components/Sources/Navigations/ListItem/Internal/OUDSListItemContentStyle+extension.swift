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

    /// Define if it's a outlined style
    var isOutlined: Bool {
        switch self {
        case .item:
            return false
        case .card(let decoration):
            switch decoration {
            case .outlined:
                return true
            case .standard:
                return false
            }
        }
    }

    /// Define if style has a divider
    var hasDivider: Bool {
        switch self {
        case .item(let divider, _):
            return divider
        case .card(let decoration):
            switch decoration {
            case .standard(let divider, _):
                return divider
            case .outlined:
                return false
            }
        }
    }
}

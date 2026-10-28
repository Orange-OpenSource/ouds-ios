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

extension OUDSAlertBanner.Layout {

    var label: OUDSTextualContent {
        switch self {
        case .center(let label, _,  _),
                .start(let label, _, _, _, _, _):
            return label
        }
    }

    var status: OUDSAlertStatus {
        switch self {
        case .center(_, let status, _),
                .start(_, let status, _, _, _, _):
            return status
        }
    }

    var actionLink: OUDSAlertBanner.ActionLink? {
        switch self {
        case .center(_, _, let action):
            if let action {
                return OUDSAlertBanner.ActionLink(text: action.label, position: .topTrailing, action: action.onClick)
            } else {
                return nil
            }

        case .start(_, _, _, let actionLink, _, _):
            return actionLink
        }
    }

    var description: OUDSTextualContent? {
        switch self {
        case .center:
            return nil
        case .start(_, _, let description, _, _, _):
            return description
        }
    }

    var alignment: OUDSAlertBanner.Alignment {
        switch self {
        case .center:
                .top
        case .start(_, _, _, _, let alignment, _):
            alignment
        }
    }

    var onClose: (() -> Void)? {
        switch self {
        case .center:
            return nil
        case .start(_, _, _, _, _, let onClose):
            return onClose
        }
    }

    var isCentered: Bool {
        switch self {
        case .center:
            return true
        case .start:
            return false
        }
    }
}

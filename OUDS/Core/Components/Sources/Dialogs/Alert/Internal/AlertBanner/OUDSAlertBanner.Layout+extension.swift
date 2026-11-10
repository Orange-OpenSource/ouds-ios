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
        case let .center(label, _, _),
             let .start(label, _, _, _, _, _):
            label
        }
    }

    var status: OUDSAlertStatus {
        switch self {
        case let .center(_, status, _),
             let .start(_, status, _, _, _, _):
            status
        }
    }

    var actionLink: OUDSAlertBanner.ActionLink? {
        switch self {
        case let .center(_, _, action):
            if let action {
                OUDSAlertBanner.ActionLink(text: action.label, position: .topTrailing, action: action.onClick)
            } else {
                nil
            }

        case let .start(_, _, _, actionLink, _, _):
            actionLink
        }
    }

    var description: OUDSTextualContent? {
        switch self {
        case .center:
            nil
        case let .start(_, _, description, _, _, _):
            description
        }
    }

    var alignment: OUDSAlertBanner.Alignment {
        switch self {
        case .center:
            .top
        case let .start(_, _, _, _, alignment, _):
            alignment
        }
    }

    var onClose: (() -> Void)? {
        switch self {
        case .center:
            nil
        case let .start(_, _, _, _, _, onClose):
            onClose
        }
    }

    var isCentered: Bool {
        switch self {
        case .center:
            true
        case .start:
            false
        }
    }
}

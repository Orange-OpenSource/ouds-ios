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

#if !os(watchOS)
/// Supplementary information following a tab's label (right in LTR, left in RTL).
/// Only one trailing indicator can be supplied. Unlike list items, tabs do not accept
/// arbitrary views or icon badges. Badge sizes are fixed by the design specification.
@available(iOS 15, macOS 13, tvOS 16, visionOS 1, *)
@frozen public enum OUDSTabItemTrailing {
    /// A standard notification dot or a count badge.
    case badge(Badge)
    /// An OUDS tag, retaining its appearance, status and accessible label.
    case tag(OUDSTag)

    /// Allowed badge content. The tabs component creates and sizes the native OUDS badge.
    @frozen public enum Badge {
        /// A standard badge, always rendered at `.extraSmall` size.
        case standard(accessibilityLabel: String, status: OUDSBadgeStandard.Status = .neutral)
        /// A count badge, always rendered at `.medium` size.
        case count(UInt8, accessibilityLabel: String, status: OUDSBadgeStandard.Status = .neutral)
    }

    @MainActor var accessibilityLabel: String {
        switch self {
        case let .badge(.standard(label, _)), let .badge(.count(_, label, _)):
            label
        case let .tag(tag):
            tag.accessibilityLabel
        }
    }
}
#endif

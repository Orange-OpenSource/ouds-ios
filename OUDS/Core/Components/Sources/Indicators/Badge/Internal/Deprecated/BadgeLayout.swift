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

// MARK: - Badge Layout

/// The status of an ``OUDSBadge`` determines the leading element, the background
/// and the content colors of the badge according to the category.
@available(*, deprecated, message: "Use BadgeStandardConfiguration, BadgeIconConfiguration or BadgeCountConfiguration instead.")
struct BadgeLayout {

    let type: Self.`Type`
    let status: OUDSBadge.Status

    /// The type of the badge
    enum `Type` {
        /// Means no element on badge, only pure colored shape
        case empty(size: OUDSBadge.StandardSize)

        /// To display a count on badge
        case count(value: UInt8, size: OUDSBadge.IllustrationSize)

        /// To display an icon. For `neutral` and `.accent`
        /// the decorative icon must be provided. For other categories, a default icon is already provided.
        case icon(customIcon: Image? = nil, flipIcon: Bool = false, size: OUDSBadge.IllustrationSize)
    }

    /// Internal initializer
    ///
    /// - Parameters:
    ///    - type: The type of the badge
    ///    - status: The category of the status
    init(type: Self.`Type`, status: OUDSBadge.Status) {
        self.type = type
        self.status = status
    }

    var size: OUDSBadge.StandardSize {
        switch type {
        case let .empty(size):
            size
        case let .icon(_, _, illustrationSize), let .count(_, illustrationSize):
            illustrationSize.standardSize
        }
    }
}

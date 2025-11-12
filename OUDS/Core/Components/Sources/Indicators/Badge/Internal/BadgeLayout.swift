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

/// The status of an `OUDSBadge` determines the leading element, the background
/// and the content colors of the tag according to the category.
struct BadgeLayout {

    let type: Self.`Type`
    let status: OUDSBadge.Status

    /// The type element of the badge
    enum `Type` {
        /// Means no element on badge
        case empty(size: OUDSBadge.StandardSize)

        /// To display a count on badge
        case count(value: UInt, size: OUDSBadge.IllustrationSize)

        /// To display an icon. For `OUDSTag.Status.Category.neutral` and `OUDSTag.Status.Category.accent`
        /// the decorative icon need to be provided. For other categories, a default icon is already provided.
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
        case let .count(_, illustrationSize),
             let .icon(_, _, illustrationSize):
            illustrationSize.standardSize
        }
    }
}

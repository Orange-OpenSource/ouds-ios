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
    let status: OUDSBadge.Status?

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
        case let .count(_, countSize):
            countSize.standardSize
        case let .icon(_, _, illustrationSize):
            illustrationSize.standardSize
        }
    }
}

// MARK: - Badge Standard Configuration

/// The status of an ``OUDSBadgeStandard`` determines the leading element, the background
/// and the content colors of the badge according to the category.
struct BadgeStandardConfiguration {
    let size: OUDSBadgeStandard.Size
    let status: OUDSBadgeStandard.Status
}

// MARK: - Badge Count Configuration

/// The status of an ``OUDSBadgeCount`` determines the leading element, the background
/// and the content colors of the badge according to the category.
struct BadgeCountConfiguration {

    let value: UInt8
    let size: OUDSBadgeCount.Size
    let status: OUDSBadgeStandard.Status
}

// MARK: - Badge Icon Configuration

/// The status of an ``OUDSBadgeIcon`` determines the leading element, the background
/// and the content colors of the badge according to the category.
struct BadgeIconConfiguration {

    let customIcon: Image?
    let flipIcon: Bool
    let size: OUDSBadgeIcon.Size
    let status: OUDSBadgeIcon.Status

    // swiftlint:disable discouraged_optional_boolean
    // swiftlint:disable function_default_parameter_at_end
    init(customIcon: Image? = nil, flipIcon: Bool? = nil, size: OUDSBadgeIcon.Size, status: OUDSBadgeIcon.Status) {
        self.customIcon = customIcon
        self.flipIcon = flipIcon ?? false
        self.size = size
        self.status = status
    }
    // swiftlint:enable discouraged_optional_boolean
    // swiftlint:enable function_default_parameter_at_end
}

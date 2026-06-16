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

// MARK: - Badge Standard Configuration

protocol BadgeConfiguration {}

/// The status of an ``OUDSBadgeStandard`` determines the leading element, the background
/// and the content colors of the badge according to the category.
struct BadgeStandardConfiguration: BadgeConfiguration {
    let size: OUDSBadgeStandard.Size
    let status: OUDSBadgeStandard.Status
}

// MARK: - Badge Count Configuration

/// The status of an ``OUDSBadgeCount`` determines the leading element, the background
/// and the content colors of the badge according to the category.
struct BadgeCountConfiguration: BadgeConfiguration {
    let value: UInt8
    let size: OUDSBadgeCount.Size
    let status: OUDSBadgeStandard.Status
}

// MARK: - Badge Icon Configuration

/// The status of an ``OUDSBadgeIcon`` determines the leading element, the background
/// and the content colors of the badge according to the category.
struct BadgeIconConfiguration: BadgeConfiguration {
    let size: OUDSBadgeStandard.Size
    let status: OUDSBadgeIcon.Status
}

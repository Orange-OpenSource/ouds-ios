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

#if canImport(UIKit)
import OUDSComponents // NOTE: "unused" false positive by periphery (https://github.com/peripheryapp/periphery/issues/908)
import OUDSFoundations // NOTE: "unused" false positive by periphery (https://github.com/peripheryapp/periphery/issues/908)
import SwiftUI
import UIKit

extension OUDSUIKitBrige {

    /// Create a SwiftUI `OUDSBadge` basic.
    ///
    /// **This is an experimental feature, feedback and support is appreciated**
    ///
    /// - Parameters:
    ///    - accessibilityLabel: The accessibility label bringing meanings to the badge
    ///    - status: The status of this badge. The background color of the badge is based on this status, *neutral* by default
    ///    - size: The size of this badge, *medium* by default
    @MainActor public static func createBadge(accessibilityLabel: String,
                                              status: OUDSBadge.Status = .neutral,
                                              size: OUDSBadge.StandardSize = .medium) -> UIViewController
    {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSBadge(status:size)")
        let swiftUIBadge = OUDSBadge(accessibilityLabel: accessibilityLabel, status: status, size: size)
        return wrap(component: swiftUIBadge)
    }

    /// Create a SwiftUI `OUDSBadge` which displays numerical value (e.g., unread messages, notifications).
    /// Minimum and maximum values are 0 and 99 respectively. If value is greater than 99, "+99" is displayed.
    /// Negative values are not allowed by design.
    /// The background color of the badge and the number color are based on the given `status`.
    ///
    /// **This is an experimental feature, feedback and support is appreciated**
    ///
    /// - Parameters:
    ///    - count:The number displayed in the badge.
    ///    - accessibilityLabel: The accessibility label bringing meanings to the badge
    ///    - status: The status of this badge, default set to *neutral*
    ///    - size: The size of this badge, default set to *medium*
    @MainActor public static func createBadge(count: UInt,
                                              accessibilityLabel: String,
                                              status: OUDSBadge.Status = .neutral,
                                              size: OUDSBadge.IllustrationSize = .medium) -> UIViewController
    {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSBadge(count:status:size)")
        let swiftUIBadge = OUDSBadge(count: count, accessibilityLabel: accessibilityLabel, status: status, size: size)
        return wrap(component: swiftUIBadge)
    }

    /// Create a SwiftUI `OUDSBadge` which displays an icon to visually reinforce meaning.
    /// It is used for status indicators (e.g., "New", "Pending", "Success").
    /// The background color of the badge and the icon color are based on the given `status`.
    ///
    /// **This is an experimental feature, feedback and support is appreciated**
    ///
    /// - Parameters:
    ///    - status: The status of this badge, with a predefined icon or not
    ///    - accessibilityLabel: The accessibility label the badge should have, describing the icon or brining meanings
    ///    - size: The size of this badge, default set to *medium*
    @MainActor public static func createBadge(status: OUDSBadge.StatusWithIcon,
                                              accessibilityLabel: String,
                                              size: OUDSBadge.IllustrationSize = .medium) -> UIViewController
    {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSBadge(icon:accessibilityLabel:status:size)")
        let swiftUIBadge = OUDSBadge(status: status, accessibilityLabel: accessibilityLabel, size: size)
        return wrap(component: swiftUIBadge)
    }
}
#endif

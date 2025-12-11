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

import OUDSFoundations
import SwiftUI

/// The ``OUDSBadge`` is a small UI element used to highlight status, notifications, or categorization
/// within an interface. It is often displayed as a label or indicator with a distinct background color and text.
///
/// ## Code samples
///
/// ```swift
///     // Default badge is neutral with medium size
///     OUDSBadge(accessibilityLabel: "New feature available")
///
///     // Accent badge in small size without information
///     OUDSBadge(accessibilityLabel: "New feature available", status: .accent, size: .small)
///
///     // Negative badge in large size with count information
///     OUDSBadge(count: 9, accessibilityLabel: "9 new messages", status: .negative, size: .large)
///
///     // Info badge in medium size (default size) with default icon information
///     OUDSBadge(status: .info, accessibilityLabel: "Like", size: .medium)
///
///     // Badge with neutral status with a custom decorative icon
///     OUDSBadge(status: .neutral(icon: Image(decorative: "ic_heart")), accessibilityLabel: "Like", size: .medium)
///
///     // If your layout is in RTL mode but your badge has an icon with another meaning because of bad orientation,
///     // you can flip the icon
///     OUDSBadge(status: .neutral(icon: Image(decorative: "ic_heart"), flipped: true), accessibilityLabel: "Like", size: .medium)
/// ```
///
/// ## Accessibility considerations
///
/// ### Sizes
///
/// Users may need to increase their text sizes. However by design their is no tokens for such cases.
/// Thus, if large text is used, a factor is applied on the largest token value based on the size percentage rate.
/// Thus it will make users able to have bigger badges.
///
/// ### Vocalizations
///
/// A badge needs an accessibility label to decribe the meaning that will be vocalized.
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-badge)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A badge component in light and dark mode with Orange theme](component_badge_Orange)
///
/// ### Orange Business Tools
///
/// ![A badge component in light and dark mode with Orange Business Tools theme](component_badge_OrangeBusinessTools)
///
/// ### Sosh
///
/// ![A badge component in light and dark mode with Sosh theme](component_badge_Sosh)
///
/// ### Wireframe
///
/// ![A badge component in light and dark mode with Wireframe theme](component_badge_Wireframe)
///
/// - Version: 1.2.0 (Figma component design version)
/// - Since: 0.17.0
@available(iOS 15, macOS 15, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSBadge: View {

    static let maxCount = 99

    // MARK: Stored properties

    private let layout: BadgeLayout
    private let accessibilityLabel: String

    // MARK: - Configurations

    /// The status depends on the context of the information it represents.
    public enum Status {

        /// Used for general labels without specific emphasis
        case neutral

        /// Employed to highlight discovery or exploration-related content
        case accent

        /// Indicates success, completion, or approval
        case positive

        /// Provides informational context without urgency
        case info

        /// Notifies the user to potential risks or cautionary messages
        case warning

        /// Draws attention to important or critical information.
        /// Often used for errors, restrictions, or urgent messages, but not exclusively for failures.
        case negative
    }

    /// The status depends on the context of the information it represents.
    public enum StatusWithIcon {

        /// Used for general labels without specific emphasis
        case neutral(icon: Image, flipped: Bool = false)

        /// Employed to highlight discovery or exploration-related content
        case accent(icon: Image, flipped: Bool = false)

        /// Indicates success, completion, or approval
        case positive

        /// Provides informational context without urgency
        case info

        /// Notifies the user to potential risks or cautionary messages
        case warning

        /// Draws attention to important or critical information.
        /// Often used for errors, restrictions, or urgent messages, but not exclusively for failures.
        case negative
    }

    /// All available sizes of a badge as *standard* type
    public enum StandardSize {

        /// A compact badge for minimal space usage, ideal for small UI elements like icons or tooltips.
        case extraSmall

        /// A slightly larger badge that remains subtle but improves readability, often used for inline labels.
        case small

        /// The default size, providing a balance between visibility and space efficiency, suitable for most use cases.
        case medium

        /// A prominent badge for drawing more attention, often used in dashboards or highlighted sections.
        case large
    }

    /// All available sizes of a badge with *count* or *icon*
    public enum IllustrationSize {

        /// The default size, providing a balance between visibility and space efficiency, suitable for most use cases.
        case medium

        /// A prominent badge for drawing more attention, often used in dashboards or highlighted sections.
        case large
    }

    // MARK: Initializers

    /// Creates a basic badge.
    ///
    /// Use the `View/disabled(_:)` method to have badge in disabled state.
    ///
    /// - Parameters:
    ///    - status: The status of this badge. The background color of the badge is based on this status, *neutral* by default
    ///    - size: The size of this badge, *medium* by default
    public init(status: Status = .neutral, size: StandardSize = .medium) {
        layout = BadgeLayout(type: .empty(size: size), status: status)
        accessibilityLabel = ""
    }

    /// Creates a badge which displays numerical value (e.g., unread messages, notifications).
    /// Minimum and maximum values are 0 and 99 respectively. If value is greater than 99, "+99" is displayed.
    /// Negative values are not allowed by design.
    /// The background color of the badge and the number color are based on the given `status`.
    ///
    /// Use the `View/disabled(_:)` method to have badge in disabled state.
    ///
    /// - Parameters:
    ///    - count:The number displayed in the badge.
    ///    - status: The status of this badge, default set to *neutral*
    ///    - size: The size of this badge, default set to *medium*
    public init(count: UInt, status: Status = .neutral, size: IllustrationSize = .medium) {
        layout = BadgeLayout(type: .count(value: count, size: size), status: status)
        accessibilityLabel = "\(count)"
    }

    /// Creates a badge which displays an icon to visually reinforce meaning.
    /// It is used for status indicators (e.g., "New", "Pending", "Success").
    /// The background color of the badge and the icon color are based on the given `status`.
    ///
    /// Use the `View/disabled(_:)` method to have badge in disabled state.
    ///
    /// - Parameters:
    ///    - status: The status of this badge with icon (for all status, a default icon is displayed except for **accent**
    ///    and **neutral** status whrere a decorative icon is required)
    ///    - accessibilityLabel: The accessibility label the badge should have, describing the icon or brining meanings
    ///    - size: The size of this badge, default set to *medium*
    public init(status: StatusWithIcon,
                accessibilityLabel: String,
                size: IllustrationSize = .medium)
    {
        if accessibilityLabel.isEmpty {
            OL.warning("The OUDSBadge with an icon should not have an empty accessibility label, think about your disabled users!")
        }

        layout = BadgeLayout(type: .icon(customIcon: status.icon?.image, flipIcon: status.icon?.flipped ?? false, size: size), status: status.status)
        self.accessibilityLabel = accessibilityLabel
    }

    // MARK: Body

    public var body: some View {
        HStack(alignment: .center) {
            BadgeCount(layout: layout)
            BadgeIcon(layout: layout)
        }
        .modifier(BadgeModifier(layout: layout, accessibilityLabel: accessibilityLabel))
    }
}

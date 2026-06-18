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

/// Badge is a UI element that emphasizes system notifications, status, or the categorization of an information, throughout colour only.
/// Badge is rendered as a coloured shape, without icon, text or number; and its chosen size remains unchanged regardless of the changes of the interface size.
/// ``OUDSBadgeCount`` displays a text, as integer, limited to 99.
///
/// ## Code samples
///
/// ```swift
///     // Negative badge in large size with count information
///     OUDSBadgeCount(9, accessibilityLabel: "9 new messages", status: .negative, size: .large)
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
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-badge-count)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A badge component in light and dark modes with Orange theme](component_badge_count_Orange)
///
/// ### Orange Compact
///
/// ![A badge component in light and dark modes with Orange Compact theme](component_badge_count_OrangeCompact)
///
/// ### Sosh
///
/// ![A badge component in light and dark modes with Sosh theme](component_badge_count_Sosh)
///
/// ### Wireframe
///
/// ![A badge component in light and dark modes with Wireframe theme](component_badge_count_Wireframe)
///
/// - Version: 1.2.0 (Figma component design version)
/// - Since: 2.2.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSBadgeCount: View {

    static let maxCount = 99

    // MARK: - Properties

    private let configuration: BadgeCountConfiguration
    private let accessibilityLabel: String

    // MARK: - Configurations

    /// All available sizes of a badge as *count* type
    /// - Since: 2.2.0
    @frozen public enum Size {

        /// The default size, providing a balance between visibility and space efficiency, suitable for most use cases.
        case medium

        /// A prominent badge for drawing more attention, often used in dashboards or highlighted sections.
        case large
    }

    // MARK: - Initializers

    /// Creates a badge which displays numerical value (e.g., unread messages, notifications).
    /// Minimum and maximum values are 0 and 99 respectively. If value is greater than 99, "+99" is displayed.
    /// Negative values are not allowed by design.
    /// The background color of the badge and the number color are based on the given `status`.
    ///
    /// Use the `View/disabled(_:)` method to have badge in disabled state.
    ///
    /// ```swift
    ///     OUDSBadgeCount(9, accessibilityLabel: "9 new messages", status: .negative)
    /// ```
    ///
    /// - Parameters:
    ///    - count: The number displayed in the badge.
    ///    - accessibilityLabel: The accessibility label the badge should have to provide meaning.
    ///    - status: The status of this badge, default set to *neutral*
    ///    - size: The size of this badge, default set to *medium*
    public init(_ count: UInt8, accessibilityLabel: String, status: OUDSBadgeStandard.Status = .neutral, size: OUDSBadgeCount.Size = .medium) {
        self.init(count: count, size: size, status: status, accessibilityLabel: accessibilityLabel)
    }

    /// Creates a badge which displays numerical value (e.g., unread messages, notifications).
    /// Minimum and maximum values are 0 and 99 respectively. If value is greater than 99, "+99" is displayed.
    /// Negative values are not allowed by design.
    /// The background color of the badge and the number color are based on the given `status`.
    ///
    /// Use the `View/disabled(_:)` method to have badge in disabled state.
    ///
    /// ```swift
    ///     OUDSBadgeCount(9, accessibilityLabel: LocalizedStringKey("new_messages"), bundle: Bundle.module, status: .negative)
    /// ```
    ///
    /// - Parameters:
    ///    - count:The number displayed in the badge.
    ///    - key: The text to vocalize with *Voice Over* the component must have, as as `LocalizedStringKey` for the given `Bundle`
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - status: The status of this badge, default set to *neutral*
    ///    - size: The size of this badge, default set to *medium*
    public init(_ count: UInt8,
                accessibilityLabel key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                status: OUDSBadgeStandard.Status = .neutral,
                size: OUDSBadgeCount.Size = .medium)
    {
        let resolvedText = key.resolved(tableName: tableName, bundle: bundle)
        self.init(count: count, size: size, status: status, accessibilityLabel: resolvedText)
    }

    /// Private initializer of the badge
    ///
    /// - Parameters:
    ///    - count:The number displayed in the badge.
    ///    - size: The size of this badge
    ///    - status: The status of this badge with icon
    ///    - accessibilityLabel: The accessibility label the badge should have, describing the icon or brining meanings
    private init(count: UInt8, size: OUDSBadgeCount.Size, status: OUDSBadgeStandard.Status, accessibilityLabel: String) {
        if accessibilityLabel.isEmpty {
            OL.warning("The OUDSBadgeCount should not have an empty accessibility label, think about your disabled users!")
        }
        configuration = .init(value: count, size: size, status: status)
        self.accessibilityLabel = accessibilityLabel
    }

    // MARK: - Body

    public var body: some View {
        HStack {
            BadgeCount(configuration: configuration)
        }
        .modifier(BadgeModifier(configuration: configuration, accessibilityLabel: accessibilityLabel))
    }
}

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
/// ``OUDSBadgeIcon`` displays an image.
///
/// ## Code samples
///
/// ```swift
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
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-badge-icon)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A badge component in light and dark modes with Orange theme](component_badge_Orange)
///
/// ### Orange Compact
///
/// ![A badge component in light and dark modes with Orange Compact theme](component_badge_OrangeCompact)
///
/// ### Sosh
///
/// ![A badge component in light and dark modes with Sosh theme](component_badge_Sosh)
///
/// ### Wireframe
///
/// ![A badge component in light and dark modes with Wireframe theme](component_badge_Wireframe)
///
/// - Version: 1.3.0 Figma component design version)
/// - Since: 2.1.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSBadgeIcon: View { // TODO: #1439 - Update illustrations

    // MARK: Properties

    private let size: OUDSBadgeIcon.Size
    private let status: OUDSBadgeIcon.Status
    private let accessibilityLabel: String

    private var configuration: BadgeIconConfiguration {
        .init(
            customIcon: status.icon?.image,
            flipIcon: status.icon?.flipped,
            size: size,
            status: status)
    }

    // MARK: - Configurations

    /// The status depends on the context of the information it represents.
    /// - Since: 2.1.0
    @frozen public enum Status {

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

        var icon: (image: Image, flipped: Bool)? {
            switch self {
            case let .neutral(icon, flipped):
                (icon, flipped)
            case let .accent(icon, flipped):
                (icon, flipped)
            default:
                nil
            }
        }

        /// The ``OUDSBadgeIcon`` has in fact the same status as the ``OUDSBadgeStandard`` but with
        /// elements abouts images. Man may need to just keep the information about the status.
        var toStandardStatus: OUDSBadgeStandard.Status {
            switch self {
            case .neutral:
                .neutral
            case .accent:
                .accent
            case .positive:
                .positive
            case .info:
                .info
            case .warning:
                .warning
            case .negative:
                .negative
            }
        }

        /// The ``OUDSBadgeIcon`` has in fact the same status as the ``OUDSBadge`` but with
        /// elements abouts images. Man may need to just keep the information about the status.
        var toBadgeStatus: OUDSBadge.Status {
            switch self {
            case .neutral:
                .neutral
            case .accent:
                .accent
            case .positive:
                .positive
            case .info:
                .info
            case .warning:
                .warning
            case .negative:
                .negative
            }
        }
    }

    /// All available sizes of a badge as *icon* type
    /// - Since: 2.1.0
    @frozen public enum Size {

        /// A compact badge for minimal space usage, ideal for small UI elements like icons or tooltips.
        case extraSmall

        /// A slightly larger badge that remains subtle but improves readability, often used for inline labels.
        case small

        /// The default size, providing a balance between visibility and space efficiency, suitable for most use cases.
        case medium

        /// A prominent badge for drawing more attention, often used in dashboards or highlighted sections.
        case large
    }

    // MARK: Initializers

    /// Creates a badge which displays an icon to visually reinforce meaning.
    /// It is used for status indicators (e.g., "New", "Pending", "Success").
    /// The background color of the badge and the icon color are based on the given `status`.
    ///
    /// Use the `View/disabled(_:)` method to have badge in disabled state.
    ///
    /// ```swift
    ///     OUDSBadgeIcon(status: .info, accessibilityLabel: "Information", size: .medium, size: .large)
    /// ```
    ///
    /// - Parameters:
    ///    - status: The status of this badge with icon (for all status, a default icon is displayed except for **accent**
    ///    and **neutral** status whrere a decorative icon is required)
    ///    - accessibilityLabel: The accessibility label the badge should have, describing the icon or brining meanings
    ///    - size: The size of this badge, default set to *medium*
    public init(status: OUDSBadgeIcon.Status,
                accessibilityLabel: String,
                size: OUDSBadgeIcon.Size = .medium)
    {
        self.init(status: status, size: size, accessibilityLabel: accessibilityLabel)
    }

    /// Creates a badge which displays an icon to visually reinforce meaning.
    /// It is used for status indicators (e.g., "New", "Pending", "Success").
    /// The background color of the badge and the icon color are based on the given `status`.
    ///
    /// Use the `View/disabled(_:)` method to have badge in disabled state.
    ///
    /// ```swift
    ///     OUDSBadge(status: .info, accessibilityLabel: LocalizedStringKey("info_badge"), bundle: Bundle.module, iconSize: .large)
    /// ```
    ///
    /// - Parameters:
    ///    - status: The status of this badge with icon (for all status, a default icon is displayed except for **accent**
    ///    and **neutral** status whrere a decorative icon is required)
    ///    - key: The text to vocalize with *Voice Over* the component must have, as as `LocalizedStringKey` for the given `Bundle`
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - size: The size of this badge, default set to *medium*
    public init(status: OUDSBadgeIcon.Status,
                accessibilityLabel key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                size: OUDSBadgeIcon.Size = .medium)
    {
        let resolvedText = key.resolved(tableName: tableName, bundle: bundle)
        self.init(status: status, size: size, accessibilityLabel: resolvedText)
    }

    private init(status: OUDSBadgeIcon.Status, size: OUDSBadgeIcon.Size, accessibilityLabel: String) {
        if accessibilityLabel.isEmpty {
            OL.warning("The OUDSBadgeIcon should not have an empty accessibility label, think about your disabled users!")
        }
        self.status = status
        self.size = size
        self.accessibilityLabel = accessibilityLabel
    }

    // MARK: Body

    public var body: some View {
        HStack {
            BadgeIcon(customIcon: status.icon?.image, flipped: status.icon?.flipped, status: status.toBadgeStatus)
        }
        .modifier(BadgeLayoutModifier(configuration: configuration, accessibilityLabel: accessibilityLabel))
    }
}

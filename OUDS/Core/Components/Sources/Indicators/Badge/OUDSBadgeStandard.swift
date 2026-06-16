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
/// ``OUDSBadgeStandard`` displays only a colored pastille.
///
/// ## Code samples
///
/// ```swift
///     // Default badge is neutral with medium size
///     OUDSBadgeStandard(accessibilityLabel: "New feature available")
///
///     // Accent badge in small size without information
///     OUDSBadgeStandard(accessibilityLabel: "New feature available", status: .accent, size: .small)
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
/// ![A badge component in light and dark modes with Orange theme](component_badge_standard_Orange)
///
/// ### Orange Compact
///
/// ![A badge component in light and dark modes with Orange Compact theme](component_badge_standard_OrangeCompact)
///
/// ### Sosh
///
/// ![A badge component in light and dark modes with Sosh theme](component_badge_standard_Sosh)
///
/// ### Wireframe
///
/// ![A badge component in light and dark modes with Wireframe theme](component_badge_standard_Wireframe)
///
/// - Version: 1.2.0 (Figma component design version)
/// - Since: 2.1.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSBadgeStandard: View {

    // MARK: Stored properties

    private let accessibilityLabel: String
    private let configuration: BadgeStandardConfiguration

    // MARK: - Configurations

    /// The status depends on the context of the information it represents.
    /// Badges components like ``OUDSBadge`` and ``OUDSBadgeCount`` share the sames status.
    ///
    /// - Since: 2.1.0
    @frozen public enum Status {

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

    /// All available sizes of a badge as *standard* type
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

    /// Creates a basic badge.
    ///
    /// Use the `View/disabled(_:)` method to have badge in disabled state.
    ///
    /// ```swift
    ///     OUDSBadgeStandard(accessibilityLabel: LocalizedStringKey("new_badge"), bundle: Bundle.module, status: .info)
    /// ```
    ///
    /// - Parameters:
    ///    - key: The text to vocalize with *Voice Over* the component must have, as as `LocalizedStringKey` for the given `Bundle`
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - status: The status of this badge. The background color of the badge is based on this status, *neutral* by default
    ///    - size: The size of this badge, *medium* by default
    public init(accessibilityLabel key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                status: OUDSBadgeStandard.Status = .neutral,
                size: OUDSBadgeStandard.Size = .medium)
    {
        let resolvedText = key.resolved(tableName: tableName, bundle: bundle)
        self.init(size: size, status: status, accessibilityLabel: resolvedText)
    }

    /// Creates a basic badge.
    ///
    /// Use the `View/disabled(_:)` method to have badge in disabled state.
    ///
    /// ```swift
    ///     OUDSBadge(accessibilityLabel: "New", status: .info)
    /// ```
    ///
    /// - Parameters:
    ///    - accessibilityLabel: The accessibility label the badge should have to provide meaning.
    ///    - status: The status of this badge. The background color of the badge is based on this status, *neutral* by default
    ///    - size: The size of this badge, *medium* by default
    public init(accessibilityLabel: String, status: OUDSBadgeStandard.Status = .neutral, size: Size = .medium) {
        self.init(size: size, status: status, accessibilityLabel: accessibilityLabel)
    }

    // Private initializer of the badge

    /// - Parameters:
    ///    - size: The size of this badge
    ///    - status: The status of this badge. The background color of the badge is based on this status
    ///    - accessibilityLabel: The accessibility label the badge should have to provide meaning.
    private init(size: OUDSBadgeStandard.Size, status: OUDSBadgeStandard.Status, accessibilityLabel: String) {
        if accessibilityLabel.isEmpty {
            OL.warning("The OUDSBadgeStandard should not have an empty accessibility label, think about your disabled users!")
        }
        configuration = .init(size: size, status: status)
        self.accessibilityLabel = accessibilityLabel
    }

    // MARK: Body

    public var body: some View {
        HStack {
            EmptyView()
        }
        .modifier(BadgeModifier(configuration: configuration, accessibilityLabel: accessibilityLabel))
    }
}

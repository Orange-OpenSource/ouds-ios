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
///     OUDSBadgeIcon(status: .info, accessibilityLabel: "Like", size: .medium)
///
///     // Badge with neutral status with a custom decorative icon
///     OUDSBadgeIcon(status: .neutral(icon: Image(decorative: "ic_heart")), accessibilityLabel: "Like", size: .medium)
///
///     // If your layout is in RTL mode but your badge has an icon with another meaning because of bad orientation,
///     // you can flip the icon
///     OUDSBadgeIcon(status: .neutral(icon: Image(decorative: "ic_heart"), flipped: true), accessibilityLabel: "Like", size: .medium)
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
/// ![A badge component in light and dark modes with Orange theme](component_badge_icon_Orange)
///
/// ### Orange Compact
///
/// ![A badge component in light and dark modes with Orange Compact theme](component_badge_icon_OrangeCompact)
///
/// ### Sosh
///
/// ![A badge component in light and dark modes with Sosh theme](component_badge_icon_Sosh)
///
/// ### Wireframe
///
/// ![A badge component in light and dark modes with Wireframe theme](component_badge_icon_Wireframe)
///
/// - Version: 1.3.0 Figma component design version)
/// - Since: 2.2.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSBadgeIcon: View {

    // MARK: - Properties

    private let accessibilityLabel: String
    private let configuration: BadgeIconConfiguration

    // MARK: - Configurations

    /// The status depends on the context of the information it represents.
    /// - Since: 2.2.0
    @frozen public enum Status {

        // TODO: For version v3, use OUDSImage instead of icon, accessibilityLabel and renderingMode
        // Not done yet to not break public API
        /// Used for general labels without specific emphasis.
        ///
        /// - Parameters:
        ///    - icon: The `Image` to display in the badge
        ///    - flipped: Default set to `false`, set to `true` to mirror the image (e.g. in RTL cases if relevant)
        ///    - renderingMode: Default set to `.template`, set to `.original` if the image of the badge should not be tinted
        case neutral(icon: Image, flipped: Bool = false, renderingMode: Image.TemplateRenderingMode = .template)

        // TODO: For version v3, use OUDSImage instead of icon, accessibilityLabel and renderingMode
        // Not done yet to not break public API
        /// Employed to highlight discovery or exploration-related content
        ///
        /// - Parameters:
        ///    - icon: The `Image` to display in the badge
        ///    - flipped: Default set to `false`, set to `true` to mirror the image (e.g. in RTL cases if relevant)
        ///    - renderingMode: Default set to `.template`, set to `.original` if the image of the badge should not be tinted
        case accent(icon: Image, flipped: Bool = false, renderingMode: Image.TemplateRenderingMode = .template)

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

    // MARK: - Initializers

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
                size: OUDSBadgeStandard.Size = .medium)
    {
        self.init(size: size, status: status, accessibilityLabel: accessibilityLabel)
    }

    /// Creates a badge which displays an icon to visually reinforce meaning.
    /// It is used for status indicators (e.g., "New", "Pending", "Success").
    /// The background color of the badge and the icon color are based on the given `status`.
    ///
    /// Use the `View/disabled(_:)` method to have badge in disabled state.
    ///
    /// ```swift
    ///     OUDSBadgeIcon(status: .info, accessibilityLabel: LocalizedStringKey("info_badge"), bundle: Bundle.module, size: .large)
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
                size: OUDSBadgeStandard.Size = .medium)
    {
        let resolvedText = key.resolved(tableName: tableName, bundle: bundle)
        self.init(size: size, status: status, accessibilityLabel: resolvedText)
    }

    /// Private initializer of the badge
    ///
    /// - Parameters:
    ///    - size: The size of this badge
    ///    - status: The status of this badge with icon
    ///    - accessibilityLabel: The accessibility label the badge should have, describing the icon or brining meanings
    private init(size: OUDSBadgeStandard.Size, status: OUDSBadgeIcon.Status, accessibilityLabel: String) {
        if accessibilityLabel.isEmpty {
            OL.warning("The OUDSBadgeIcon should not have an empty accessibility label, think about your disabled users!")
        }

        configuration = .init(size: size, status: status)
        self.accessibilityLabel = accessibilityLabel
    }

    // MARK: Body

    public var body: some View {
        HStack {
            BadgeIcon(configuration: configuration)
        }
        .modifier(BadgeModifier(configuration: configuration, accessibilityLabel: accessibilityLabel))
    }
}

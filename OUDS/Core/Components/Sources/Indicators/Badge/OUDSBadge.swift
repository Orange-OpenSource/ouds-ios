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

import OUDSTokensSemantic
import SwiftUI

// MARK: - OUDS Badge

/// The ``OUDSBadge`` is a small UI element used to highlight status, notifications, or categorization
/// within an interface. It is often displayed as a label or indicator with a distinct background color and text.
///
/// ## Code samples
///
/// ```swift
///     // Default badge is netral with medium size
///     OUDSBadge()
///
///     // Accent badge in small size without information
///     OUDSBadge(status: .accent, size: .small)
///
///     // Negative badge in large size with count information
///     OUDSBadge(count: 1, status: .negative, size: .large)
///
///     // Info badge in medium size (default size) with icon information
///     OUDSBadge(icon: Image("ic_heart"), status: .info)
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/73c701-components)
///
/// - Version:1.1.0 (Figma component design version)
/// - Since: 0.17.0
public struct OUDSBadge: View { // TODO: #514 - Add hyperlink for badge documentation in documentation above

    static let maxCount = 99

    // MARK: Stored Properties

    private let status: Status
    private let size: Size
    private let count: UInt?
    private let icon: Image?

    @Environment(\.theme) private var theme
    @Environment(\.sizeCategory) private var sizeCategory: ContentSizeCategory

    // MARK: - Configuration

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

        /// Indicates when the user isn’t allowed to interact with an element.
        /// They remove all interactivity from a text or icon elements.
        case disabled
    }

    /// All available sizes of a badge
    public enum Size {
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
    /// - Parameters:
    ///    - status: The status of this badge. The background color of the badge is based on this status, *neutral* by default
    ///    - size: The size of this badge, *medium* by default
    public init(status: Status = .neutral, size: Size = .medium) {
        self.status = status
        self.size = size
        icon = nil
        count = nil
    }

    /// Creates a badge which displays numerical value (e.g., unread messages, notifications).
    /// Minimum and maximum values are 0 and 99 respectively. If value is greater than 99, "+99" is displayed.
    /// Negative values are not allowed.
    /// The number is not displayed when size is `OUDSBadge.Size.extraSmall` or `OUDSBadge.Size.small`.
    /// The background color of the badge and the number color are based on thie given `status`.
    ///
    /// - Parameters:
    ///    - count:The number displayed in the badge.
    ///    - status: The status of this badge, default set to *neutral*
    ///    - size: The size of this badge, default set to *medium*
    public init(count: UInt, status: Status = .neutral, size: Size = .medium) {
        self.status = status
        self.size = size
        self.count = count
        icon = nil
    }

    /// Create a badge which displays an icon to visually reinforce meaning.
    /// It is used for status indicators (e.g., "New", "Pending", "Success").
    /// The size remains unchanged despite the increase in the interface size.
    /// The background color of the badge and the icon color are based on the given `status`.
    /// The icon is not displayed when size is `OUDSBadge.Size.extraSmall` or `OUDSBadge.Size.small`.
    ///
    /// - Parameters:
    ///    - icon: The icon displayed in the badge
    ///    - status: The status of this badge, default set to *neutral*
    ///    - size: The size of this badge, default set to *medium*
    public init(icon: Image, status: Status = .neutral, size: Size = .medium) {
        self.status = status
        self.size = size
        count = nil
        self.icon = icon
    }

    // MARK: Body

    public var body: some View {
        HStack(alignment: .center) {
            BadgeCount(count: count, size: size)
            BadgeIcon(icon: icon, size: size)
        }
        .oudsForegroundColor(contentColor)
        .frame(minWidth: frameSize,
               maxWidth: count != nil ? nil : frameSize, // if count defined, i.e. means a text, don't limit width
               minHeight: frameSize,
               maxHeight: count != nil ? nil : frameSize, // if count defined, i.e. means a text, don't limit height
               alignment: .center)
        .oudsBackground(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: theme.borders.borderRadiusPill))
    }

    // MARK: Private helpers

    private var frameSize: SizeSemanticToken {
        if sizeCategory.isLargeTextUsed {
            theme.badge.badgeSizeLarge
        } else {
            switch size {
            case .extraSmall:
                theme.badge.badgeSizeXsmall
            case .small:
                theme.badge.badgeSizeSmall
            case .medium:
                theme.badge.badgeSizeMedium
            case .large:
                theme.badge.badgeSizeLarge
            }
        }
    }

    private var backgroundColor: MultipleColorSemanticTokens {
        switch status {
        case .neutral:
            theme.colors.colorSurfaceStatusNeutralEmphasized
        case .accent:
            theme.colors.colorSurfaceStatusAccentEmphasized
        case .positive:
            theme.colors.colorSurfaceStatusPositiveEmphasized
        case .info:
            theme.colors.colorSurfaceStatusInfoEmphasized
        case .warning:
            theme.colors.colorSurfaceStatusWarningEmphasized
        case .negative:
            theme.colors.colorSurfaceStatusNegativeEmphasized
        case .disabled:
            theme.colors.colorActionDisabled
        }
    }

    private var contentColor: MultipleColorSemanticTokens {
        switch status {
        case .neutral:
            theme.colors.colorContentOnStatusNeutralEmphasized
        case .accent:
            theme.colors.colorContentOnStatusAccentEmphasized
        case .positive:
            theme.colors.colorContentOnStatusPositiveEmphasized
        case .info:
            theme.colors.colorContentOnStatusInfoEmphasized
        case .warning:
            theme.colors.colorContentOnStatusWarningEmphasized
        case .negative:
            theme.colors.colorContentOnStatusNegativeEmphasized
        case .disabled:
            theme.colors.colorContentOnActionDisabled
        }
    }
}

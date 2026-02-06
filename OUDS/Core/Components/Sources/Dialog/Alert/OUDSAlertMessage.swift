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
import OUDSTokensSemantic
import SwiftUI

/// Alert message is a UI element that displays system feedback, status changes or required action; throughout detailed, prominent, persistent and actionable
/// communication. Alert message includes functional icon and semantic colour, and may include as well a close button and/or action link.
/// Alert Message does not disappear automatically and remains visible until dismissed or resolved by the user.
///
/// ## Code samples
///
/// ```swift
///
/// ```
///
/// ## Accessibility considerations
///
/// ### Sizes
///
/// ### Vocalizations
///
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-alert-message)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![An alert message component in light and dark modes with Orange theme](component_alertMessage_Orange)
///
/// ### Orange Business Tools
///
/// ![An alert message component in light and dark modes with Orange Business Tools theme](component_alertMessage_OrangeBusinessTools)
///
/// ### Sosh
///
/// ![An alert message component in light and dark modes with Sosh theme](component_alertMessage_Sosh)
///
/// ### Wireframe
///
/// ![An alert message component in light and dark modes with Wireframe theme](component_alertMessage_Wireframe)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 1.2.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSAlertMessage: View {

    // MARK: Stored properties

    private let text: String
    private let status: Self.Status
    private let link: Self.Link?
    private let description: String?
    private let onClose: (() -> Void)?

    @Environment(\.theme) private var theme

    // MARK: - Configurations

    /// The status depends on the context of the information it represents.
    public enum Status {

        /// Neutral status can be used as a generic informative alert without semantic meaning or colour association.
        /// Suitable for a wide range of contexts — such as tips, general information, or descriptive labels — where
        /// no specific feedback or urgency is required. Appropriate for help sections, dashboards, or onboarding flows.
        ///
        /// - Parameter icon: Optional icon to be displayed in the alert message. Pass `nil` if no icon is needed.
        case neutral(icon: Image, flipIcon: Bool = false)

        /// Accent status uses brand colours to draw attention to promotional or highlighted information while remaining non-critical. Ideal for marketing content,
        /// announcements, or feature highlights, where you want to subtly engage users without introducing functional semantics. Ideal for promotional banners,
        /// product updates, or customer engagement moments.
        ///
        /// - Parameter icon: Optional icon to be displayed in the alert message. Pass `nil` if no icon is needed.
        case accent(icon: Image, flipIcon: Bool = false)

        /// Positive status indicates that a task or process has been completed successfully. These alerts reassure users and confirm that no further action is needed.
        /// This status displays a dedicated default icon.
        ///
        /// - Parameter showIcon: Controls whether the icon should be displayed or not. `true` displays the default positive icon.
        case positive(showIcon: Bool = true)

        /// Info status is used to share neutral system information or service updates that do not require immediate action. Ideal for background processes or status
        /// messages where users simply need to stay informed.
        /// This status displays a dedicated default icon.
        ///
        /// - Parameter showIcon: Controls whether the icon should be displayed or not. `true` displays the default info icon.
        case info(showIcon: Bool = true)

        /// Used to draw attention to potential issues or upcoming changes that might affect the user’s service or experience. Warnings encourage awareness but
        /// typically do not block actions.
        /// This status displays a dedicated default icon.
        ///
        /// - Parameter showIcon: Controls whether the icon should be displayed or not. `true` displays the default warning icon.
        case warning(showIcon: Bool = true)

        /// Negative status communicates a critical issue or error that prevents the user from proceeding until it is resolved. These alerts remain visible until
        /// the problem is fixed or dismissed by the user.
        /// This status displays a dedicated default icon.
        ///
        /// - Parameter showIcon: Controls whether the icon should be displayed or not. `true` displays the default negative icon.
        case negative(showIcon: Bool = true)
    }

    // MARK: - Link

    /// Used to describe the link display in the `OUDSAlertMessage`
    public struct Link {

        /// The position of an `OUDSAlertMessage.Link`in the alert message.
        public enum Position {
            /// The link is displayed at the bottom of the alert message below the main message content.
            /// Recommended for mobile or narrow layouts, or when the text spans multiple lines. This vertical structure improves clarity and ensures the action remains
            /// visible after the message is read.
            case bottom

            /// The link is displayed at the top-end corner of the alert message.
            /// Best suited for wider layouts or short, single-line alerts where horizontal alignment keeps content compact and balanced.
            case topTrailing
        }

        let text: String
        let position: Position
        let action: () -> Void

        /// Creates a link with text and associated action.
        ///
        /// - Parameters:
        ///   - text: The text (could be the url)
        ///   - posiiton: `OUDSAlertMessage.Link.Position` of the link within the alert message.
        ///   - action: The action when clicked
        public init(text: String, position: Position = .bottom, action: @escaping () -> Void) {
            if text.isEmpty {
                OL.warning("The link text for the OUDSalertMessage is empty, avoid using it in that case.")
            }
            self.text = text
            self.action = action
            self.position = .bottom
        }
    }

    // MARK: Initializers

    /// Creates a alert message.
    ///
    /// Use the `View/disabled(_:)` method to have badge in disabled state.
    ///
    /// - Parameters:
    ///   - label: Label displayed in the alert message. Main message that should be short, clear, and readable at a glance.
    ///   - status: The status of the alert message. Its background color and its icon color are based on this status. There are two types of statuses see `OUDSAlertMessage.Status`
    ///   - description: An optional supplementary text in an alert message. Use only when additional detail or guidance is needed beyond the label. It should remain
    ///   short, clear and scannable, helping the user to understand what happened and what he can do next.
    ///   - link: An optional link to be displayed in the alert message. It can be used to trigger an action.
    ///   - onClose: An optional callback invoked when the close button is clicked. If `nil`, the close button is not displayed and the alert message remains visible until
    ///  the context changes (e.g., the issue is resolved, the screen is refreshed). Otherwise, the alert message is dismissable and includes a close button,
    ///  allowing the user to dismiss it when he has acknowledged the message.
    ///  Some alerts must remain visible to ensure user is aware of important information; others can be closed to reduce visual clutter.
    public init(label: String, status: Status, description: String? = nil, link: Self.Link? = nil, onClose: (() -> Void)? = nil) {
        text = label
        self.status = status
        self.description = description
        self.link = link
        self.onClose = onClose
    }

    // MARK: Body

    public var body: some View {
        // TODO: theme.alertMessage.spaceColumnGap
        HStack(alignment: .top, spacing: theme.spaces.columnGapMedium) {
            leasingIcon

            VStack {
                Text(text)
                    .labelModerateLarge(theme)
                    .oudsForegroundColor(theme.colors.contentDefault)

                if let description {
                    Text(description)
                        .labelDefaultMedium(theme)
                        .oudsForegroundColor(theme.colors.contentMuted)
                }

                if let link {
                    OUDSLink(text: link.text, size: .default, action: link.action)
                }
            }

            if let onClose {
                OUDSButton(icon: Image("ic_button_expurge", bundle: theme.resourcesBundle),
                           accessibilityLabel: "core_alertMessage_close_a11y".localized(),
                           appearance: .minimal, action: onClose)
            }
        }
        .padding(.horizontal, theme.spaces.paddingInlineLarge) // TODO: theme.alertMessage.spacePaddingInline
        .oudsBackground(backgroundColor)
    }

    private var backgroundColor: MultipleColorSemanticToken {
        switch status {
        case .neutral:
            theme.colors.surfaceSecondary
        case .accent:
            theme.colors.surfaceStatusAccentMuted
        case .positive:
            theme.colors.surfaceStatusPositiveMuted
        case .warning:
            theme.colors.surfaceStatusWarningMuted
        case .negative:
            theme.colors.surfaceStatusNegativeMuted
        case .info:
            theme.colors.surfaceStatusInfoMuted
        }
    }

    @ViewBuilder
    private var leasingIcon: some View {
        switch status {
        case let .accent(icon, flipIcon):
            icon.toFlip(flipIcon)
        case let .neutral(icon, flipIcon):
            icon.toFlip(flipIcon)
        case let .negative(showIcon) where showIcon == true:
            Image("ic_alert_important_fill", bundle: theme.resourcesBundle)
        case let .positive(showIcon) where showIcon == true:
            Image("ic_alert_tick_confirmation_fill", bundle: theme.resourcesBundle)
        case let .info(showIcon) where showIcon == true:
            Image("ic_alert_info_fill", bundle: theme.resourcesBundle)
        case let .warning(showIcon) where showIcon == true:
            Image("ic_alert_warning_external_shape", bundle: theme.resourcesBundle)
        default:
            EmptyView()
        }
    }
}

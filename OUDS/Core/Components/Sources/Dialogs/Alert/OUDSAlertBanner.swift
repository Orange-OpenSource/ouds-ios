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
import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

/// Alert banner is a messaging component used to communicate important information, system states, or service updates across an interface. It supports multiple semantic statuses, layouts, actions, and responsive behaviours to ensure consistent communication across products and platforms.
/// It includes functional icon and semantic colour, and may include as well a close button and/or action link.
///
/// ## Code samples
///
/// ```swift
///         // A basic positive alert banner with text and description
///         OUDSAlertBanner(label: "Label", description: "You should read this text")
///
///         // A more complex alert banner for warning status with a description and a close action
///         // to dismiss the banner.
///         OUDSAlertBanner(label: "Warning", status: .warning, description: "Some details about the warning") {
///               // Do some stuff here to dismiss the alert banner when clicked
///         }
///
///         // Add a custom action (i.e Link) at bottom (could also at top trailing position)
///         @Environment(\.openURL) private var openUrl
///         let link = OUDSAlertBanner.Link(text: "Action", position: .bottom) {
///            openUrl.callAsFunction(url)
///         }
///         OUDSAlertBanner(label: "Label", link: link)
/// ```
///
/// - Since: 1.3.0
@available(iOS 15, macOS 13, visionOS 1, tvOS 16, *)
public struct OUDSAlertBanner: View {

    // MARK: Stored properties

    private let text: String
    private let status: OUDSAlertStatus
    private let description: OUDSTextualContent?
    private let link: Self.Link?
    private let onClose: (() -> Void)?

    @Environment(\.theme) private var theme

    // MARK: - Constants

    static let textsAccessibilityPriority = 300.0
    static let actionLinkAccessibilityPriority = 200.0
    static let closeButtonAccessibilityPriority = 100.0

    // MARK: - Link

    // swiftlint:disable nesting
    /// Used to describe the link display in the `OUDSAlertBanner`
    @frozen public struct Link {

        /// The position of an `OUDSAlertBanner.Link`in the alert banner.
        @frozen public enum Position {
            /// The link is displayed at the bottom of the alert banner below the main message content.
            case bottom

            /// The link is displayed at the top-end corner of the alert banner.
            case topTrailing
        }

        let text: String
        let position: Position
        let action: () -> Void

        /// Creates a link with text and associated action.
        ///
        /// - Parameters:
        ///   - text: The text (could be the url)
        ///   - position: `OUDSAlertBanner.Link.Position` of the link within the alert banner.
        ///   - action: The action to process when clicked
        public init(text: String, position: Position = .bottom, action: @escaping () -> Void) {
            if text.isEmpty {
                OL.warning("The link text for the OUDSAlertBanner is empty, avoid using it in that case.")
            }
            self.text = text
            self.action = action
            self.position = position
        }
    }

    // swiftlint:enable nesting

    // MARK: - Initializers

    /// Create an Alert banner with center layout.
    ///
    /// - Parameters:
    ///   - label: Label displayed in the alert bannert. Main message that should be short, clear, and readable at a glance.
    ///   - status: The status of the alert banner. Its background color and its icon color are based on this status. There are two types of statuses (see ``OUDSAlertStatus``)
    ///   - action: An optional action to be displayed at traling of the alert banner. It can be used to trigger an action.
    public init(label: String,
                status: OUDSAlertStatus = .positive,
                action: (label: String, onClick: () -> Void)? = nil) {
        text = label
        if text.isEmpty {
            OL.warning("The label for the OUDSAlertBanner must not be empty!")
        }
        self.status = status
        self.description = nil

        if let action {
            self.link = Self.Link.init(text: action.label, position: .topTrailing, action: action.onClick)
        }else {
            self.link = nil
        }

        self.onClose = nil
    }

    // For API signature consistency disable this warning
    // swiftlint:disable function_default_parameter_at_end

    /// Creates an alert banner in start layout.
    ///
    /// Use the `View/disabled(_:)` method to have component in disabled state.
    ///
    /// ```swift
    ///     OUDSAlertMessage(label: "Success! Your form was submitted.", status: .positive)
    /// ```
    ///
    /// - Parameters:
    ///   - label: Label displayed in the alert banner. Main message that should be short, clear, and readable at a glance.
    ///   - status: The status of the alert banner. Its background color and its icon color are based on this status. There are two types of statuses (see ``OUDSAlertStatus``)
    ///   - description: An optional supplementary text in an alert banner. Use only when additional detail or guidance is needed beyond the label. It should remain
    ///   short, clear and scannable, helping the user to understand what happened and what he can do next.
    ///   - link: An optional link to be displayed in the alert message. It can be used to trigger an action.
    ///   - onClose: An optional callback invoked when the close button is clicked. If `nil`, the close button is not displayed and the alert message
    ///   remains visible until the context changes (e.g., the issue is resolved, the screen is refreshed). Otherwise, the alert message is dismissable and
    ///   includes a close button, allowing the user to dismiss it when he has acknowledged the message.  Some alerts must remain visible to ensure
    ///   user is aware of important information; others can be closed to reduce visual clutter.
    // TODO: Add alignemnt
    public init(label: String,
                status: OUDSAlertStatus = .positive,
                description: OUDSTextualContent? = nil,
                link: Self.Link? = nil,
                onClose: (() -> Void)? = nil)
    {
        text = label
        if text.isEmpty {
            OL.warning("The label for the OUDSAlertMessage must not be empty!")
        }
        self.status = status
        self.description = description 
        self.link = link
        self.onClose = onClose
    }

    // swiftlint:enable function_default_parameter_at_end

    // MARK: - Body

    public var body: some View {
        HStack(alignment: .top, spacing: theme.alert.spaceColumnGap) {
            AlertBannerLeadingIcon(status: status)
                .padding(.vertical, theme.alert.spacePaddingBlock)
            AlertBannerContent(text: text, status: status, description: description, link: link, onClose: onClose)
            OUDSColoredSurface(color: color) {
                AlertBannerActionContainer(link: link, onClose: onClose)
            }
        }
        .gridMargin(.horizontal)
        .frame(minWidth: theme.alert.sizeMinWidth, minHeight: minHeight, alignment: .leading)
        .modifier(AlertBannerBackgroundModifier(status: status))
        .accessibilityElement(children: .contain)
        .skeleton()
    }

    private var minHeight: SizeSemanticToken {
        link?.position == .bottom ? theme.alert.sizeMinHeightBottomAction : theme.alert.sizeMinHeight
    }

    private var color: MultipleColorModeSemanticToken {
        switch status {
        case .neutral:
            theme.colorModes.onBgInverseHigh
        case .accent:
            theme.colorModes.onStatusAccentEmphasized
        case .positive:
            theme.colorModes.onStatusPositiveEmphasized
        case .warning:
            theme.colorModes.onStatusWarningEmphasized
        case .negative:
            theme.colorModes.onStatusNegativeEmphasized
        case .info:
            theme.colorModes.onStatusInfoEmphasized
        }
    }
}

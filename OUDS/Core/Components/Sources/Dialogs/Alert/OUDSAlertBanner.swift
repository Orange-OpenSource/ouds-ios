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

/// Alert banner is a messaging component used to communicate important information, system states, or service updates across an interface.
/// It supports multiple semantic statuses, layouts, actions, and responsive behaviours to ensure consistent communication across products
/// and platforms.
/// It includes functional icon and semantic colour, and may include as well a close button and/or action link.
///
/// ## Layouts
///
/// Two layouts are available for a banner content:
///
/// - **center**
///  The basic layout with label and optional action as link. The content of the banner is centerted into the screen.
///
/// - **start **
/// The banner with mode information with label, description, close button and additional action link.
/// The content of the banner is at leading and action link can be placed at trailing or at the bottom of banner.
///
/// Both propose a status to inforce information displayed in the banner by applying background colors.
///
/// ## Code samples
///
/// ```swift
///         // A banner with center layout in a positive status
///         OUDSAlertBanner(layout: .center(label: "Label", status: .positive))
///
///         // A banner with center layout in a positive status with action (i.e Link)
///         OUDSAlertBanner(layout: .center(label: "Label",
///                                         status: .negative,
///                                         action: (label: "Action", onClick: { // do something }))
///
///         // A more complex alert banner for warning status with a description and a close action
///         // to dismiss the banner.
///         OUDSAlertBanner(layout: .start(label: "Warning",
///                                        status: .warning,
///                                        description: "Some details about the warning",
///                                        onClose: {
///                                           // Do some stuff here to dismiss the alert banner when clicked
///                                         })
///
///         // Add a custom action (i.e Link) at bottom (could also at top trailing position)
///         @Environment(\.openURL) private var openUrl
///         let actionLink = OUDSAlertBanner.ActionLink(text: "Action", position: .bottom) {
///            openUrl.callAsFunction(url)
///         }
///         OUDSAlertBanner(layout: .start(label: "Label", actionLink: actionLink))
///
///         // Adjust containers alignment (icon, action link, close button)
///         OUDSAlertBanner(layout: .start(label: "Label", status: .warning, actionLink: actionLink, alignment: .top)
/// ```
///
/// ## Rich text
///
/// All texts in the alert banner (label and description) can use rich text.
/// They are ``OUDSTextualContent`` values: a raw `String` (a string literal is enough), a localized string
/// with `.localized(_:tableName:bundle:)` or a rich text with `.rich(_:)` and an `AttributedString`.
/// With the initializer taking a `LocalizedStringKey`, prefer `.raw(_:)` to a bare string literal for the `description`
/// to avoid a deprecation warning.
///
/// Strong text can be used sparingly within alert banner to highlight key information.
/// Underlined text must not be used for emphasis, as it is commonly associated with links.
/// If a hyperlink is needed within the content, the underlined style should be used.
/// Italic should be used with care, some brands do not allow it like Orange brand.
/// No other text styles should be used.
///
/// ## Accessibility considerations
///
/// Always check the results of rich text mode with high contrast, light and dark modes, and Voice Over vocalization.
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-alert-banner)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![An alert banner component in light and dark modes with Orange theme](component_alertBanner_Orange)
///
/// ### Orange Compact
///
/// ![An alert banner component in light and dark modes with Orange Compact theme](component_alertBanner_OrangeCompact)
///
/// ### Sosh
///
/// ![An alert banner component in light and dark modes with Sosh theme](component_alertBanner_Sosh)
///
/// ### Wireframe
///
/// ![An alert banner component in light and dark modes with Wireframe theme](component_alertBanner_Wireframe)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 3.2.0
@available(iOS 15, macOS 13, visionOS 1, tvOS 16, *)
public struct OUDSAlertBanner: View {

    // MARK: Stored properties

    private let isCenterLayout: Bool
    private let text: String
    private let status: OUDSAlertStatus
    private let description: OUDSTextualContent?
    private let actionLink: Self.ActionLink?
    private let alignment: Self.Alignment
    private let onClose: (() -> Void)?

    @Environment(\.theme) private var theme

    // MARK: - Constants

    static let textsAccessibilityPriority = 300.0
    static let actionLinkAccessibilityPriority = 200.0
    static let closeButtonAccessibilityPriority = 100.0

    // TODO: 1. voir pour definir dans ouds un typealias pour action avec label et onClick, ici et partout
    // TODO: 2. faire que le composant soit présenté edge to edge dans l'app de démo
    // TODO: 3. mettre a jour la doc et tests snapshots
    @frozen public enum Layout {
        /// Used to create an Alert banner with center layout.
        ///
        /// - Parameters:
        ///   - label: Label displayed in the alert banner. Main message that should be short, clear, and readable at a glance.
        ///   - status: The status of the alert banner. Its background color and its icon color are based on this status. There are two types of statuses (see ``OUDSAlertStatus``)
        ///   - action: An optional action to be displayed at traling of the alert banner. It can be used to trigger an action.
        case center(label: String, status: OUDSAlertStatus, action: (label: String, onClick: () -> Void)? = nil)

        /// Used to create an alert banner in start layout.
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
        ///   - actionLink: An optional action link to be displayed in the alert message. It can be used to trigger an action.
        ///   - alignment: The current vertical alignment of icon, text and action containers.
        ///   - onClose: An optional callback invoked when the close button is clicked. If `nil`, the close button is not displayed and the alert message
        ///   remains visible until the context changes (e.g., the issue is resolved, the screen is refreshed). Otherwise, the alert message is dismissable and
        ///   includes a close button, allowing the user to dismiss it when he has acknowledged the message.  Some alerts must remain visible to ensure
        ///   user is aware of important information; others can be closed to reduce visual clutter.
        case start(label: String,
                   status: OUDSAlertStatus,
                   description: OUDSTextualContent? = nil,
                   actionLink: OUDSAlertBanner.ActionLink? = nil,
                   alignment: OUDSAlertBanner.Alignment = .top,
                   onClose: (() -> Void)? = nil)
    }

    /// Defines the vertical alignment of the leading, trailing, and text containers within the banner.
    @frozen public enum Alignment {
        /// Containers are aligned to the top of the banner.
        /// Best suited when the text has multiple lines and
        /// leading/trailing elements should stay anchored at the top.
        case top

        /// Containers are vertically centered within the banner.
        case center
    }

    // MARK: - Action

    // swiftlint:disable nesting
    /// Used to describe the action link display in the `OUDSAlertBanner`
    @frozen public struct ActionLink {

        /// The position of an `OUDSAlertBanner.ActionLink`in the alert banner.
        @frozen public enum Position {
            /// The link is displayed at the bottom of the alert banner below the main message content.
            case bottom

            /// The link is displayed at the top-end corner of the alert banner.
            case topTrailing
        }

        let text: String
        let position: Position
        let action: () -> Void

        /// Creates an action link with text and associated action in a desired position.
        ///
        /// - Parameters:
        ///   - text: The text (could be the url)
        ///   - position: `OUDSAlertBanner.ActionLink.Position` of the link within the alert banner.
        ///   - action: The action to process when clicked
        public init(text: String, position: Position = .bottom, action: @escaping () -> Void) {
            if text.isEmpty {
                OL.warning("The action link text for the OUDSAlertBanner is empty, avoid using it in that case.")
            }
            self.text = text
            self.action = action
            self.position = position
        }
    }

    // swiftlint:enable nesting

    // MARK: - Initializers

    /// Create an Alert banner with a dedicated layout.
    ///
    /// - Parameters:
    ///   - layout: The ``OUDSAlertBanner.Layout``descibe the content of the banner.
    public init(layout: OUDSAlertBanner.Layout) {
        self.isCenterLayout = layout.isCentered
        self.text = layout.label
        self.description = layout.description
        self.alignment = layout.alignment
        self.status = layout.status
        self.onClose = layout.onClose
        self.actionLink = layout.actionLink

        if layout.label.isEmpty {
            OL.warning("The label for the OUDSAlertBanner must not be empty!")
        }
    }

    // MARK: - Body

    public var body: some View {
        HStack(alignment: verticalAlignment, spacing: theme.alert.spaceColumnGap) {
            AlertBannerLeadingIcon(status: status)
                .padding(.vertical, theme.alert.spacePaddingBlock)

            AlertBannerContent(isCenterLayout: isCenterLayout,
                               text: text,
                               status: status,
                               description: description,
                               actionLink: actionLink,
                               onClose:onClose)

            OUDSColoredSurface(color: status.bannerBackgroungColor(for: theme)) {
                AlertBannerActionContainer(actionLink: actionLink, onClose: onClose)
            }
        }
        .gridMargin(.horizontal)
        .frame(minWidth: theme.alert.sizeMinWidth, maxWidth: .infinity, minHeight: minHeight, alignment: horizontaAlignment)
        .modifier(AlertBannerBackgroundModifier(status: status))
        .accessibilityElement(children: .contain)
        .skeleton()
    }

    // MARK: - Helpers

    private var minHeight: SizeSemanticToken {
        actionLink?.position == .bottom ? theme.alert.sizeMinHeightBottomAction : theme.alert.sizeMinHeight
    }

    private var horizontaAlignment: SwiftUI.Alignment {
        isCenterLayout ? .center : .leading
    }

    private var verticalAlignment: VerticalAlignment {
        switch alignment {
        case .top:
            .top
        case .center:
            .center
        }
    }
}

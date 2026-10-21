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
///         // A basic positive alert message with text and description
///         OUDSAlertMessage(label: "Label", description: "You should read this text")
///         // From a localizable in a bundle
///         OUDSAlertMessage(LocalizedStringKey("label_wording"), bundle: Bundle.module)
///
///         // With a rich text for the description (e.g. markdown here, do not forget to manage the errors)
///         let richDescription = AttributedString(markdown: "You **must read this text**")
///         OUDSAlertMessage(label: "Label", description: .rich(richDescription))
///
///         // With a localized description and a bullet list mixing raw, localized and rich texts
///         OUDSAlertMessage(label: "Label",
///                          description: .localized("description_wording", bundle: Bundle.module),
///                          bulletList: [
///                             "First thing", // Same as .raw("First thing")
///                             .localized("second_thing_wording", bundle: Bundle.module),
///                             .rich(AttributedString(markdown: "One **more thing**")), // Manage in your side errors for init
///                          ])
///
///         // A more complex alert message for warning status with a description and a close action
///         // to dismiss the message.
///         OUDSAlertMessage(label: "Warning", status: .warning, description: "Some details about the warning") {
///               // Do some stuff here to dismiss the alert message when clicked
///         }
///
///         // Add a custom icon for accent and neutral status
///         // with original rendering mode (to avoid tints) or not.
///         // By default, tinted, template mode.
///         OUDSAlertMessage(label: "Label", status: .accent(image: OUDSImage(asset: Image("ic_heart"))))
///         OUDSAlertMessage(label: "Label", status: .neutral(image: OUDSImage(asset: Image("ic_heart"), renderingMode: .original)))
///
///         // Add a custom action (i.e Link) at bottom (could also at top trailing position)
///         @Environment(\.openURL) private var openUrl
///         let link = OUDSAlertMessage.Link(text: "Action", position: .bottom) {
///            openUrl.callAsFunction(url)
///         }
///         OUDSAlertMessage(label: "Label", link: link)
/// ```
///
/// ## Rich text
///
/// Only the alert message description and bullet list can use rich text.
/// They are ``OUDSTextualContent`` values: a raw `String` (a string literal is enough), a localized string
/// with `.localized(_:tableName:bundle:)` or a rich text with `.rich(_:)` and an `AttributedString`.
/// With the initializer taking a `LocalizedStringKey`, prefer `.raw(_:)` to a bare string literal for the `description`
/// to avoid a deprecation warning.
///
/// Strong text can be used sparingly within alert messages to highlight key information.
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
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-alert-message)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![An alert message component in light and dark modes with Orange theme](component_alertMessage_Orange)
///
/// ### Orange Compact
///
/// ![An alert message component in light and dark modes with Orange Compact theme](component_alertMessage_OrangeCompact)
///
/// ### Sosh
///
/// ![An alert message component in light and dark modes with Sosh theme](component_alertMessage_Sosh)
///
/// ### Wireframe
///
/// ![An alert message component in light and dark modes with Wireframe theme](component_alertMessage_Wireframe)
///
/// - Version: 1.2.0 (Figma component design version)
/// - Since: 1.3.0
@available(iOS 15, macOS 13, visionOS 1, tvOS 16, *)
public struct OUDSAlertMessage: View {

    // MARK: Stored properties

    private let text: String
    private let status: OUDSAlertStatus
    private let description: OUDSTextualContent?
    private let bulletList: [OUDSTextualContent]
    private let link: Self.Link?
    private let disableVoiceOverAnnouncement: Bool
    private let onClose: (() -> Void)?

    @Environment(\.theme) private var theme

    // MARK: - Constants

    static let textsAccessibilityPriority = 300.0
    static let actionLinkAccessibilityPriority = 200.0
    static let closeButtonAccessibilityPriority = 100.0

    // MARK: - Link

    // swiftlint:disable nesting
    /// Used to describe the link display in the `OUDSAlertMessage`
    @frozen public struct Link {

        /// The position of an `OUDSAlertMessage.Link`in the alert message.
        @frozen public enum Position {
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
        ///   - position: `OUDSAlertMessage.Link.Position` of the link within the alert message.
        ///   - action: The action to process when clicked
        public init(text: String, position: Position = .bottom, action: @escaping () -> Void) {
            if text.isEmpty {
                OL.warning("The link text for the OUDSAlertMessage is empty, avoid using it in that case.")
            }
            self.text = text
            self.action = action
            self.position = position
        }
    }

    // swiftlint:enable nesting

    // MARK: - Initializers

    // For API signature consistency disable this warning

    /// Creates an alert message.
    ///
    /// Use the `View/disabled(_:)` method to have component in disabled state.
    ///
    /// The `description` and the elements of the `bulletList` are ``OUDSTextualContent`` values: a raw `String`
    /// (a string literal is enough), a localized string or a rich `AttributedString`.
    ///
    /// ```swift
    ///     OUDSAlertMessage(label: "Success! Your form was submitted.", status: .positive)
    ///
    ///     OUDSAlertMessage(label: "Success! Your form was submitted.",
    ///                      status: .positive,
    ///                      description: .rich(AttributedString(markdown: "This is **an important notice**")), // Manage in your side errors for init
    ///                      bulletList: [
    ///                         "First thing",
    ///                         .localized("second_thing_wording", bundle: Bundle.module),
    ///                         .rich(AttributedString(markdown: "One **more thing**")), // Manage in your side errors for init
    ///                      ])
    /// ```
    ///
    /// - Parameters:
    ///   - label: Label displayed in the alert message. Main message that should be short, clear, and readable at a glance.
    ///   - status: The status of the alert message. Its background color and its icon color are based on this status. There are two types of statuses (see ``OUDSAlertStatus``)
    ///   - description: An optional supplementary text in an alert message, raw, localized or rich. Use only when additional detail or guidance is needed beyond the label.
    ///   It should remain short, clear and scannable, helping the user to understand what happened and what he can do next.
    ///   - bulletList: An optional list of bullet points, each one raw, localized or rich, to be displayed in the alert message following the label or the optional `description`.
    ///   - link: An optional link to be displayed in the alert message. It can be used to trigger an action.
    ///   - disableVoiceOverAnnouncement: Disables the automatic VoiceOver announcement of the alert message when it appears. Default is `false`.
    ///   - onClose: An optional callback invoked when the close button is clicked. If `nil`, the close button is not displayed and the alert message
    ///   remains visible until the context changes (e.g., the issue is resolved, the screen is refreshed). Otherwise, the alert message is dismissable and
    ///   includes a close button, allowing the user to dismiss it when he has acknowledged the message.  Some alerts must remain visible to ensure
    ///   user is aware of important information; others can be closed to reduce visual clutter.
    ///
    /// - Since: 3.2.0
    public init(label: String,
                status: OUDSAlertStatus = .positive,
                description: OUDSTextualContent? = nil,
                bulletList: [OUDSTextualContent] = [],
                link: Self.Link? = nil,
                disableVoiceOverAnnouncement: Bool = false,
                onClose: (() -> Void)? = nil)
    {
        text = label
        if text.isEmpty {
            OL.warning("The label for the OUDSAlertMessage must not be empty!")
        }
        self.status = status
        self.description = description
        self.link = link
        self.disableVoiceOverAnnouncement = disableVoiceOverAnnouncement
        self.onClose = onClose
        self.bulletList = bulletList
    }

    /// Creates an alert message with a localized label, looking up the key in the given bundle.
    ///
    /// The `description` and the elements of the `bulletList` are ``OUDSTextualContent`` values: a raw `String`,
    /// a localized string or a rich `AttributedString`.
    /// For this initializer, prefer `.raw(_:)` to a bare string literal for the `description`, so the compiler selects without any doubt
    /// the initializer taking an ``OUDSTextualContent`` and does not emit a deprecation warning.
    ///
    /// ```swift
    ///     OUDSAlertMessage(LocalizedStringKey("error_message"), bundle: Bundle.module, status: .negative)
    ///
    ///     OUDSAlertMessage(LocalizedStringKey("error_message"),
    ///                      bundle: Bundle.module,
    ///                      status: .negative,
    ///                      description: .rich(AttributedString(markdown: "This is **an important notice**")), // Manage in your side errors for init
    ///                      bulletList: [
    ///                         "First thing",
    ///                         .rich(AttributedString(markdown: "One **more thing**")), // Manage in your side errors for init
    ///                      ])
    /// ```
    ///
    /// - Parameters:
    ///   - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///   - tableName: The name of the `.strings` file, or `nil` for the default
    ///   - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///   - status: The status of the alert message. Its background color and its icon color are based on this status. There are two types of statuses (see ``OUDSAlertStatus``)
    ///   - description: An optional supplementary text in an alert message, raw, localized or rich. Use only when additional detail or guidance is needed beyond the label.
    ///   It should remain short, clear and scannable, helping the user to understand what happened and what he can do next.
    ///   - bulletList: An optional list of bullet points, each one raw, localized or rich, to be displayed in the alert message following the label or the optional `description`.
    ///   - link: An optional link to be displayed in the alert message. It can be used to trigger an action.
    ///   - disableVoiceOverAnnouncement: Disables the automatic VoiceOver announcement of the alert message when it appears. Default is `false`.
    ///   - onClose: An optional callback invoked when the close button is clicked. If `nil`, the close button is not displayed and the alert message
    ///   remains visible until the context changes (e.g., the issue is resolved, the screen is refreshed). Otherwise, the alert message is dismissable and
    ///   includes a close button, allowing the user to dismiss it when he has acknowledged the message.  Some alerts must remain visible to ensure
    ///   user is aware of important information; others can be closed to reduce visual clutter.
    ///
    /// - Since: 3.2.0
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                status: OUDSAlertStatus = .positive,
                description: OUDSTextualContent? = nil,
                bulletList: [OUDSTextualContent] = [],
                link: Self.Link? = nil,
                disableVoiceOverAnnouncement: Bool = false,
                onClose: (() -> Void)? = nil)
    {
        self.init(label: key.resolved(tableName: tableName, bundle: bundle),
                  status: status,
                  description: description,
                  bulletList: bulletList,
                  link: link,
                  disableVoiceOverAnnouncement: disableVoiceOverAnnouncement,
                  onClose: onClose)
    }

    // MARK: - Body

    public var body: some View {
        HStack(alignment: .top, spacing: theme.alert.spaceColumnGap) {
            AlertLeadingIcon(status: status)
                .padding(.vertical, theme.alert.spacePaddingBlock)
            AlertMessageContent(text: text,
                                status: status,
                                description: description,
                                bulletList: bulletList,
                                link: link,
                                disableVoiceOverAnnouncement: disableVoiceOverAnnouncement,
                                onClose: onClose)
            AlertMessageAction(link: link, onClose: onClose)
        }
        .padding(.leading, theme.alert.spacePaddingInline)
        .padding(.trailing, onClose == nil ? theme.alert.spacePaddingInline : 0)
        .frame(minWidth: theme.alert.sizeMinWidth, minHeight: minHeight, alignment: .leading)
        .modifier(AlertMessageBackgroundModifier(status: status))
        .modifier(AlertMessageBorderModifier(status: status))
        .accessibilityElement(children: .contain)
        .skeleton()
    }

    private var minHeight: SizeSemanticToken {
        link?.position == .bottom ? theme.alert.sizeMinHeightBottomAction : theme.alert.sizeMinHeight
    }
}

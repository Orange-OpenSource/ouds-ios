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

#if !os(watchOS) && !os(tvOS)
import OUDSFoundations
import OUDSThemesContract
import OUDSTokensComponent
import OUDSTokensSemantic
import SwiftUI

// TODO: When v3 in development and deprecated API removed, fine-tune these warnings
// swiftlint:disable file_length
// swiftlint:disable function_default_parameter_at_end
// swiftlint:disable line_length
// swiftlint:disable type_body_length

/// Text input is a UI element that allows to enter, edit, or select single-line textual data.
/// Text input is one of the most fundamental form elements used to capture user input such as names, emails, passwords, or search queries.
/// It provides a visual and interactive affordance for text entry while supporting labels, placeholders, icons, descriptions, and validation feedback.
///
/// ## Layout
///
/// Text input is based on several configurable UI elements:
///
/// - **label**: It is used to describe the purpose of the input.
/// In some UI contexts, especially when space is limited or when the input is part of a compact layout (search bars, filters, inline forms), the label can be hidden.
/// However, hiding the label should only be done if the purpose of the input remains clear thanks to a placeholder or contextual icon
/// and if the label is still accessible to screen readers
/// Hiding a label is a design choice that must balance visual simplicity and clarity of intent, without compromising inclusiveness or form guidance.
///
/// - **placeholder**: if the text of the text input is empty a placeholder provides a hint or guidance inside the field to suggest expected input.
/// A prefix and a suffix can be added to give more context.
///
/// - **leading icon**: it helps indicate the purpose of the input (magnifying glass for search, envelope for email, phone device for phone number).
/// Only use a leading icon if it adds clear functional or contextual value.
///
/// - **trailing action**: it is used to provide actions related to the field: clear input, toggle password visibility, open a date picker, etc.
/// Can also indicate status or feedback (error checkmark, loading spinner).
///
/// ## Outlined style
///
/// By **default**, the input is with a subtle background fill and invisible bottom border, creating a softer and more contained look.
/// Best suited for dense layouts or to enhance visibility.
///
/// When **outlined**, the text input is a minimalist design with a transparent background and a visible stroke outlining the field.
/// This style may be interesting for contexts other than form pages:
/// - When inputs need to feel lightweight and unobtrusive
/// - In a header (search field)
/// - In a selection/filtering feature in a product catalog
///
///  ```swift
///     // An outlined text input
///     OUDSTextInput(label: "Label", text: $text, isOutlined: true)
///
///     // With a localizable and a bundle
///     OUDSTextInput(LocalizedStringKey("label_wording"), bundle: Bundle.module, text: $text)
/// ```
///
/// ### Rounded layout
///
/// Text input can have rounded layouts to be favored in more emotional, immersive contexts or those tied to specific visual identities.
/// For standard or business-oriented journeys, keep the default corners.
/// This evolution addresses the need for flexibility in adapting the design to some brand contexts.
///
/// To activate the rounded corner behavior, set to true the `hasRoundedTextInputs` values of the `Tuning` object
/// in your theme configuration (if the theme exposes this property at init).
/// Some themes do not have this flexibility like `SoshTheme` and `WireframeTheme`.
///
/// ## Status
///
/// Five status are proposed for all layouts:
///
/// - **default (by default)**: Default neutral appearance, whether empty or filled.
/// It allows users to click, focus, and type freely without restrictions.
///
/// - **error**: The `error` status indicates that the user input does not meet validation rules or
/// expected formatting. It provides immediate visual feedback, typically through a red border,
/// error icon, and a clear, accessible error message positioned below the input. The error messages replaces the helper text.
///
/// - **loading**: The `loading` state indicates that the system is processing or retrieving data
/// related to the text entered. A progress indicator appears to inform the user that an action is in progress.
///
/// - **readOnly** :The`readOnly`, lets the text visible but not editable
///
/// - **disabled**: In `disabled` status, the field is non-interactive and grayed out to indicate it cannot be changed.
/// Note the SwiftUI `View.disabled()` is ignored.
///
/// ## Helpers
///
/// - **Helper text**:  A supporting text conveys additional information about the input field,
/// such as how it will be used. It should ideally only take up a single line, though may wrap
/// to multiple lines if required, and be either persistently visible or visible only on focus.
///
/// - **Helper link**: If the helper text is not sufficient, it's possible to offer the user
/// an additional help link (the link can be external or open a modal).
///
/// ## Accessibility considerations
///
/// By default no haptics are done by the component for the trailing action.
/// However you should think about cases wher you will have to make the devices vibrates.
/// You can refer to the [Human Interface Guidelines of Apple](https://developer.apple.com/design/human-interface-guidelines/playing-haptics).
///
/// ## Mandatory field indication
///
/// If all fields are mandatory (several fields present): display the message “All fields are mandatory” at the top of your formular.
/// Do not use an asterisk at the end of each field label, nor the word “mandatory.”
///
/// If not all fields are mandatory (several fields present): display the message “All fields marked with an \* are mandatory” at the top of your formular.
/// Use an asterisk (\*) at the end of each mandatory field label, and ensures this is well vocalized.
///
/// UI rendering of the asterisk must be done with *bold font weight* and *negative content color* (red on light backgrounds).
///
/// Use the mention “(optional)” at the end of each optional field label. Note that this rule is not systematic, it remains an option, to be used if needed.
///
/// If there is only one field in the formular, or if the mandatory nature is obvious (such as login/password),
/// no mention is necessary since the fields are essential to the formular's functionality.
///
/// ## Rich text
///
/// Rich text can be used for error and helper texts.
///
/// Strong text can be used sparingly to highlight key information within the content.
/// No other text styles should be used.
/// Underlined text must not be applied manually (e.g. in error message), as it is commonly associated with hyperlinks and may mislead users.
///
/// ## Code samples
///
/// ```swift
///     // The text to display and edit
///     @State var text: String = ""
///
///     // Empty text and no placeholder
///     OUDSTextInput(label: "Email", text: $text)
///
///     // Empty text with placeholder and suffix
///     OUDSTextInput(label: "Email", text: $text, placeholder: "firstName.lastName", suffix: "@orange.com")
///
///     // Empty text with prefix and suffix
///     OUDSTextInput(label: "Email", text: $text, prefix: "Distance", suffix: "km")
///
///     // Add a leading icon for more context
///     OUDSTextInput(label: "Email", text: $text, placeholder: "firstName.lastName", suffix: "@orange.com",
///                   leadingIcon: OUDSImage(asset: Image(systemName: "envelope")))
///
///     // Add a leading icon displayed as raw image (not tinted)
///     OUDSTextInput(label: "Brand", text: $text,
///                   leadingIcon: OUDSImage(asset: Image("ic_brand"), renderingMode: .original))
///
///     // Flip the leading icon for RTL layouts using OUDSImage.flipped
///     OUDSTextInput(label: "Label", text: $text,
///                   leadingIcon: OUDSImage(asset: Image("ic_arrow"), flipped: layoutDirection == .rightToLeft))
///
///     // Add a trailing button with local image named "ic_cross" for additional action
///     let trailingAction = OUDSTextInput.TrailingAction(icon: OUDSImage(asset: Image("ic_cross")), actionHint: "Delete") { text = "" }
///     OUDSTextInput(label: "Email", text: $text, trailingAction: trailingAction)
///
///     // With helper text
///     OUDSTextInput(label: "Email",
///                   text: $text,
///                   placeholder: "firstName.lastName",
///                   suffix: "@orange.com",
///                   helperText: "The email will be automatically completed with @orange.com")
///
///     // With helper link
///     @Environment(\.openURL) private var openUrl
///
///     let helperLink = OUDSTextInput.HelperLink(text: "Helper Link") {
///        openUrl.callAsFunction(url)
///     }
///
///     OUDSTextInput(label: "Label", text: $text, placeholder: "Placeholder", helperLink: helperLink)
/// ```
///
/// If you need to flip your leading icon for RTL, use the `flipped` property of ``OUDSImage``:
/// ```swift
///     @Environment(\.layoutDirection) var layoutDirection
///
///     OUDSTextInput(label: "Label", text: $text,
///                   leadingIcon: OUDSImage(asset: Image("ic_arrow"), flipped: layoutDirection == .rightToLeft))
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-text-input)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A text input component in light and dark modes with Orange theme](component_textInput_Orange)
///
/// ### Orange Compact
///
/// ![A text input component in light and dark modes with Orange Compact theme](component_textInput_OrangeCompact)
///
/// ### Sosh
///
/// ![A text input component in light and dark modes with Sosh theme](component_textInput_Sosh)
///
/// ### Wireframe
///
/// ![A text input component in light and dark modes with Wireframe theme](component_textInput_Wireframe)
///
/// - Version: 1.4.0 (Figma component design version)
/// - Since: 0.20.0
@available(iOS 15, macOS 13, visionOS 1, *)
public struct OUDSTextInput: View {

    // MARK: - Properties

    let label: String
    let text: Binding<String>
    let placeholder: String?
    let prefix: String?
    let suffix: String?
    let leadingIcon: OUDSImage?
    let trailingAction: TrailingAction?
    let helperText: TextualContent?
    let helperLink: Helperlink?
    let status: Self.Status
    let isOutlined: Bool
    let constrainedMaxWidth: Bool

    @Environment(\.theme) private var theme

    // MARK: - Trailing Action

    /// Used to describe the trailing action of the text input
    ///
    /// A trailing action contains an image which must bring meanings.
    /// This image should not be vocalized.
    /// The trailing action contains also an accessibility action hint used for the button to describe the action.
    /// The action can be any action.
    ///
    /// For iOS 17+ it is possible to define a sensory feeback for the button.
    /// - Since: 0.20.0
    public struct TrailingAction {

        let icon: OUDSImage
        let actionHint: String
        let action: () -> Void

        /// Creates a trailing action.
        ///
        /// - Parameters:
        ///   - icon: The icon set in the ``OUDSButton``
        ///   - actionHint: A string that describes the purpose of the button's `action`
        ///   - flipIcon: Default set to `false`, set to `true` to reverse the image (i.e. flip vertically)
        ///   - renderingMode: The rendering mode to apply on the icon
        ///   - action: The action to perform when the user triggers the button
        @available(*, deprecated, message: "Use OUDSTextInput.TrailingAction(icon: OUDSImage, actionHint:action:) instead.")
        public init(icon: Image, actionHint: String, flipIcon: Bool = false, renderingMode: Image.TemplateRenderingMode = .template, action: @escaping () -> Void) {
            self.init(icon: OUDSImage(asset: icon, flipped: flipIcon, renderingMode: renderingMode),
                      actionHint: actionHint,
                      action: action)
        }

        /// Creates a trailing action.
        ///
        /// ```swift
        ///     OUDSTextInput.TrailingAction(icon: OUDSImage(asset: Image("ic_cross")),
        ///                                 actionHint: "Delete") { text = "" }
        ///
        ///     // Raw (non-tinted) icon:
        ///     OUDSTextInput.TrailingAction(icon: OUDSImage(asset: Image("ic_brand"), renderingMode: .original),
        ///                                 actionHint: "Brand") { }
        /// ```
        ///
        /// - Parameters:
        ///   - icon: An ``OUDSImage`` encapsulating the asset, its flip flag and its rendering mode
        ///   - actionHint: A string that describes the purpose of the button's `action`
        ///   - action: The action to perform when the user triggers the button
        public init(icon: OUDSImage, actionHint: String, action: @escaping () -> Void) {
            if actionHint.isEmpty {
                OL.warning("The accessibility action hint for the OUDSTextInput trailing action should not be empty, think about your disabled users!")
            }
            self.icon = icon
            self.actionHint = actionHint
            self.action = action
        }
    }

    // MARK: - Status

    /// Define all available status for the text input
    /// - Since: 0.20.0
    @frozen public enum Status: Equatable {
        /// The `enabled` status (default)
        case enabled

        /// The `error` status indicates that the user input does not meet validation rules or expected formatting.
        /// It provides immediate visual feedback, typically through a red border, error icon, and a clear,
        /// accessible error `message` positioned below the input.
        case error(message: String)

        /// The `error` status indicates that the user input does not meet validation rules or expected formatting.
        /// It provides immediate visual feedback, typically through a red border, error icon, and a clear,
        /// accessible error `message` positioned below the input.
        /// The error message can be a rich text.
        case richError(message: AttributedString)

        /// The `loading` state indicates that the system is processing or retrieving data related to the
        /// text entered. A progress indicator appears to inform the user that an action is in progress.
        case loading

        /// The`readOnly`, lets the text visible but not editable
        case readOnly

        /// In `disabled` status, the field is non-interactive and grayed out to indicate it cannot be changed.
        /// Note the SwiftUI `View.disabled()` is ignored.
        case disabled

        public static func == (lhs: Self, rhs: Self) -> Bool {
            switch (lhs, rhs) {
            case (.enabled, .enabled), (.loading, .loading), (.readOnly, .readOnly), (.disabled, .disabled):
                true
            case let (.error(lhsMessage), .error(rhsMessage)):
                lhsMessage == rhsMessage
            case let (.richError(lhsMessage), .richError(rhsMessage)):
                lhsMessage == rhsMessage
            default:
                false
            }
        }
    }

    // MARK: - Helper link

    /// Used to describe the helper link above the helper text.
    /// - Since: 0.20.0
    public struct Helperlink {
        let text: String
        let action: () -> Void

        /// Creates an helper link with text and associated action.
        ///
        /// - Parameters:
        ///   - text: The helper text (could be the url)
        ///   - action: The action when clicked
        public init(text: String, action: @escaping () -> Void) {
            if text.isEmpty {
                OL.warning("The helper link text for the OUDSTextInput is empty, avoid using it in that case.")
            }
            self.text = text
            self.action = action
        }
    }

    // MARK: - Initializers — String label + helperText: String?

    /// Creates a text input.
    ///
    /// - Parameters:
    ///    - label: The label displayed above the text input
    ///    - text: The text to display and edit
    ///    - placeholder: The text displayed when the text input is empty, by default is *nil*
    ///    - prefix: Text placed before the user's input, by default is *nil*
    ///    - suffix: Text placed after the user's input, by default is *nil*
    ///    - leadingIcon: An optional leading icon, by default is *nil*
    ///    - flipLeadingIcon: Default set to *false*, set to *true* to mirror the leading icon
    ///    - leadingIconRenderingMode: The rendering mode to apply on the leading icon
    ///    - trailingAction: An optional trailing action, by default is *nil*
    ///    - helperText: An optional helper text, by default is *nil*
    ///    - helperLink: An optional helper link, by default is *nil*
    ///    - isOutlined: Controls the style of the text input, by default is *false*
    ///    - constrainedMaxWidth: When `true`, the width is constrained, defaults to `false`
    ///    - status: The current status of the text input, default set to *enabled*
    @available(*, deprecated, message: "Use OUDSTextInput(label:text:placeholder:prefix:suffix:leadingIcon:OUDSImage:trailingAction:helperText:helperLink:isOutlined:constrainedMaxWidth:status:) instead.")
    public init(label: String,
                text: Binding<String>,
                placeholder: String? = nil,
                prefix: String? = nil,
                suffix: String? = nil,
                leadingIcon: Image? = nil,
                flipLeadingIcon: Bool = false,
                leadingIconRenderingMode: Image.TemplateRenderingMode = .template,
                trailingAction: Self.TrailingAction? = nil,
                helperText: String? = nil,
                helperLink: Self.Helperlink? = nil,
                isOutlined: Bool = false,
                constrainedMaxWidth: Bool = false,
                status: Self.Status = .enabled)
    {
        self.init(label: label,
                  text: text,
                  placeholder: placeholder,
                  prefix: prefix,
                  suffix: suffix,
                  leadingIcon: leadingIcon.map { OUDSImage(asset: $0, flipped: flipLeadingIcon, renderingMode: leadingIconRenderingMode) },
                  trailingAction: trailingAction,
                  helperText: helperText,
                  helperLink: helperLink,
                  isOutlined: isOutlined,
                  constrainedMaxWidth: constrainedMaxWidth,
                  status: status)
    }

    /// Creates a text input.
    ///
    /// ```swift
    ///     OUDSTextInput(label: "Email", text: $text)
    ///
    ///     OUDSTextInput(label: "Email", text: $text,
    ///                   leadingIcon: OUDSImage(asset: Image(systemName: "envelope")))
    ///
    ///     OUDSTextInput(label: "Brand", text: $text,
    ///                   leadingIcon: OUDSImage(asset: Image("ic_brand"), renderingMode: .original))
    /// ```
    ///
    /// - Parameters:
    ///    - label: The label displayed above the text input. It describes the purpose of the input
    ///    - text: The text to display and edit
    ///    - placeholder: The text displayed when the text input is empty, by default is *nil*
    ///    - prefix: Text placed before the user's input, by default is *nil*
    ///    - suffix: Text placed after the user's input, by default is *nil*
    ///    - leadingIcon: An optional ``OUDSImage`` encapsulating the asset, its flip flag and its rendering mode, by default is *nil*
    ///    - trailingAction: An optional trailing action, by default is *nil*
    ///    - helperText: An optional helper text, by default is *nil*
    ///    - helperLink: An optional helper link, by default is *nil*
    ///    - isOutlined: Controls the style of the text input, by default is *false*
    ///    - constrainedMaxWidth: When `true`, the width is constrained, defaults to `false`
    ///    - status: The current status of the text input, default set to *enabled*
    public init(label: String,
                text: Binding<String>,
                placeholder: String? = nil,
                prefix: String? = nil,
                suffix: String? = nil,
                leadingIcon: OUDSImage? = nil,
                trailingAction: Self.TrailingAction? = nil,
                helperText: String? = nil,
                helperLink: Self.Helperlink? = nil,
                isOutlined: Bool = false,
                constrainedMaxWidth: Bool = false,
                status: Self.Status = .enabled)
    {
        self.label = label
        self.text = text
        self.helperText = if let helperText {
            .raw(helperText)
        } else {
            nil
        }
        self.placeholder = placeholder
        self.prefix = prefix
        self.suffix = suffix
        self.leadingIcon = leadingIcon
        self.trailingAction = trailingAction
        self.helperLink = helperLink
        self.status = status
        self.isOutlined = isOutlined
        self.constrainedMaxWidth = constrainedMaxWidth
    }

    // MARK: - Initializers — String label + helperText: AttributedString

    /// Creates a text input.
    ///
    /// - Parameters:
    ///    - label: The label displayed above the text input
    ///    - text: The text to display and edit
    ///    - placeholder: The text displayed when the text input is empty, by default is *nil*
    ///    - prefix: Text placed before the user's input, by default is *nil*
    ///    - suffix: Text placed after the user's input, by default is *nil*
    ///    - leadingIcon: An optional leading icon, by default is *nil*
    ///    - flipLeadingIcon: Default set to *false*, set to *true* to mirror the leading icon
    ///    - leadingIconRenderingMode: The rendering mode to apply on the leading icon
    ///    - trailingAction: An optional trailing action, by default is *nil*
    ///    - helperText: A rich `AttributedString` helper text
    ///    - helperLink: An optional helper link, by default is *nil*
    ///    - isOutlined: Controls the style of the text input, by default is *false*
    ///    - constrainedMaxWidth: When `true`, the width is constrained, defaults to `false`
    ///    - status: The current status of the text input, default set to *enabled*
    @available(*, deprecated, message: "Use OUDSTextInput(label:text:placeholder:prefix:suffix:leadingIcon:OUDSImage:trailingAction:helperText:AttributedString:helperLink:isOutlined:constrainedMaxWidth:status:) instead.")
    public init(label: String,
                text: Binding<String>,
                placeholder: String? = nil,
                prefix: String? = nil,
                suffix: String? = nil,
                leadingIcon: Image? = nil,
                flipLeadingIcon: Bool = false,
                leadingIconRenderingMode: Image.TemplateRenderingMode = .template,
                trailingAction: Self.TrailingAction? = nil,
                helperText: AttributedString,
                helperLink: Self.Helperlink? = nil,
                isOutlined: Bool = false,
                constrainedMaxWidth: Bool = false,
                status: Self.Status = .enabled)
    {
        self.init(label: label,
                  text: text,
                  placeholder: placeholder,
                  prefix: prefix,
                  suffix: suffix,
                  leadingIcon: leadingIcon.map { OUDSImage(asset: $0, flipped: flipLeadingIcon, renderingMode: leadingIconRenderingMode) },
                  trailingAction: trailingAction,
                  helperText: helperText,
                  helperLink: helperLink,
                  isOutlined: isOutlined,
                  constrainedMaxWidth: constrainedMaxWidth,
                  status: status)
    }

    /// Creates a text input with a rich attributed helper text.
    ///
    /// ```swift
    ///     OUDSTextInput(label: "Email",
    ///                   text: $text,
    ///                   helperText: AttributedString(markdown: "You should use your **corporate email**"))
    /// ```
    ///
    /// - Parameters:
    ///    - label: The label displayed above the text input
    ///    - text: The text to display and edit
    ///    - placeholder: The text displayed when the text input is empty, by default is *nil*
    ///    - prefix: Text placed before the user's input, by default is *nil*
    ///    - suffix: Text placed after the user's input, by default is *nil*
    ///    - leadingIcon: An optional ``OUDSImage`` encapsulating the asset, its flip flag and its rendering mode, by default is *nil*
    ///    - trailingAction: An optional trailing action, by default is *nil*
    ///    - helperText: A rich `AttributedString` helper text
    ///    - helperLink: An optional helper link, by default is *nil*
    ///    - isOutlined: Controls the style of the text input, by default is *false*
    ///    - constrainedMaxWidth: When `true`, the width is constrained, defaults to `false`
    ///    - status: The current status of the text input, default set to *enabled*
    public init(label: String,
                text: Binding<String>,
                placeholder: String? = nil,
                prefix: String? = nil,
                suffix: String? = nil,
                leadingIcon: OUDSImage? = nil,
                trailingAction: Self.TrailingAction? = nil,
                helperText: AttributedString,
                helperLink: Self.Helperlink? = nil,
                isOutlined: Bool = false,
                constrainedMaxWidth: Bool = false,
                status: Self.Status = .enabled)
    {
        self.label = label
        self.text = text
        self.helperText = .attributed(helperText)
        self.placeholder = placeholder
        self.prefix = prefix
        self.suffix = suffix
        self.leadingIcon = leadingIcon
        self.trailingAction = trailingAction
        self.helperLink = helperLink
        self.status = status
        self.isOutlined = isOutlined
        self.constrainedMaxWidth = constrainedMaxWidth
    }

    // MARK: - Initializers — LocalizedStringKey + helperText: String?

    /// Creates a text input with a localized label.
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - text: The text to display and edit
    ///    - placeholder: The text displayed when the text input is empty, by default is *nil*
    ///    - prefix: Text placed before the user's input, by default is *nil*
    ///    - suffix: Text placed after the user's input, by default is *nil*
    ///    - leadingIcon: An optional leading icon, by default is *nil*
    ///    - flipLeadingIcon: Default set to *false*, set to *true* to mirror the leading icon
    ///    - leadingIconRenderingMode: The rendering mode to apply on the leading icon
    ///    - trailingAction: An optional trailing action, by default is *nil*
    ///    - helperText: An optional helper text, by default is *nil*
    ///    - helperLink: An optional helper link, by default is *nil*
    ///    - isOutlined: Controls the style of the text input, by default is *false*
    ///    - constrainedMaxWidth: When `true`, the width is constrained, defaults to `false`
    ///    - status: The current status of the text input, default set to *enabled*
    @available(*, deprecated, message: "Use OUDSTextInput(_:tableName:bundle:text:placeholder:prefix:suffix:leadingIcon:OUDSImage:trailingAction:helperText:helperLink:isOutlined:constrainedMaxWidth:status:) instead.")
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                text: Binding<String>,
                placeholder: String? = nil,
                prefix: String? = nil,
                suffix: String? = nil,
                leadingIcon: Image? = nil,
                flipLeadingIcon: Bool = false,
                leadingIconRenderingMode: Image.TemplateRenderingMode = .template,
                trailingAction: Self.TrailingAction? = nil,
                helperText: String? = nil,
                helperLink: Self.Helperlink? = nil,
                isOutlined: Bool = false,
                constrainedMaxWidth: Bool = false,
                status: Self.Status = .enabled)
    {
        self.init(label: key.resolved(tableName: tableName, bundle: bundle),
                  text: text,
                  placeholder: placeholder,
                  prefix: prefix,
                  suffix: suffix,
                  leadingIcon: leadingIcon.map { OUDSImage(asset: $0, flipped: flipLeadingIcon, renderingMode: leadingIconRenderingMode) },
                  trailingAction: trailingAction,
                  helperText: helperText,
                  helperLink: helperLink,
                  isOutlined: isOutlined,
                  constrainedMaxWidth: constrainedMaxWidth,
                  status: status)
    }

    /// Creates a text input with a localized label, looking up the key in the given bundle.
    ///
    /// ```swift
    ///     OUDSTextInput(LocalizedStringKey("email_label"), bundle: Bundle.module, text: $text)
    ///
    ///     OUDSTextInput(LocalizedStringKey("email_label"), bundle: Bundle.module, text: $text,
    ///                   leadingIcon: OUDSImage(asset: Image(systemName: "envelope")))
    /// ```
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - text: The text to display and edit
    ///    - placeholder: The text displayed when the text input is empty, by default is *nil*
    ///    - prefix: Text placed before the user's input, by default is *nil*
    ///    - suffix: Text placed after the user's input, by default is *nil*
    ///    - leadingIcon: An optional ``OUDSImage`` encapsulating the asset, its flip flag and its rendering mode, by default is *nil*
    ///    - trailingAction: An optional trailing action, by default is *nil*
    ///    - helperText: An optional helper text, by default is *nil*
    ///    - helperLink: An optional helper link, by default is *nil*
    ///    - isOutlined: Controls the style of the text input, by default is *false*
    ///    - constrainedMaxWidth: When `true`, the width is constrained, defaults to `false`
    ///    - status: The current status of the text input, default set to *enabled*
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                text: Binding<String>,
                placeholder: String? = nil,
                prefix: String? = nil,
                suffix: String? = nil,
                leadingIcon: OUDSImage? = nil,
                trailingAction: Self.TrailingAction? = nil,
                helperText: String? = nil,
                helperLink: Self.Helperlink? = nil,
                isOutlined: Bool = false,
                constrainedMaxWidth: Bool = false,
                status: Self.Status = .enabled)
    {
        self.init(label: key.resolved(tableName: tableName, bundle: bundle),
                  text: text,
                  placeholder: placeholder,
                  prefix: prefix,
                  suffix: suffix,
                  leadingIcon: leadingIcon,
                  trailingAction: trailingAction,
                  helperText: helperText,
                  helperLink: helperLink,
                  isOutlined: isOutlined,
                  constrainedMaxWidth: constrainedMaxWidth,
                  status: status)
    }

    // MARK: - Initializers — LocalizedStringKey + helperText: AttributedString

    /// Creates a text input with a localized label and a rich attributed helper text.
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - text: The text to display and edit
    ///    - placeholder: The text displayed when the text input is empty, by default is *nil*
    ///    - prefix: Text placed before the user's input, by default is *nil*
    ///    - suffix: Text placed after the user's input, by default is *nil*
    ///    - leadingIcon: An optional leading icon, by default is *nil*
    ///    - flipLeadingIcon: Default set to *false*, set to *true* to mirror the leading icon
    ///    - leadingIconRenderingMode: The rendering mode to apply on the leading icon
    ///    - trailingAction: An optional trailing action, by default is *nil*
    ///    - helperText: A rich `AttributedString` helper text
    ///    - helperLink: An optional helper link, by default is *nil*
    ///    - isOutlined: Controls the style of the text input, by default is *false*
    ///    - constrainedMaxWidth: When `true`, the width is constrained, defaults to `false`
    ///    - status: The current status of the text input, default set to *enabled*
    @available(*, deprecated, message: "Use OUDSTextInput(_:tableName:bundle:text:placeholder:prefix:suffix:leadingIcon:OUDSImage:trailingAction:helperText:AttributedString:helperLink:isOutlined:constrainedMaxWidth:status:) instead.")
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                text: Binding<String>,
                placeholder: String? = nil,
                prefix: String? = nil,
                suffix: String? = nil,
                leadingIcon: Image? = nil,
                flipLeadingIcon: Bool = false,
                leadingIconRenderingMode: Image.TemplateRenderingMode = .template,
                trailingAction: Self.TrailingAction? = nil,
                helperText: AttributedString,
                helperLink: Self.Helperlink? = nil,
                isOutlined: Bool = false,
                constrainedMaxWidth: Bool = false,
                status: Self.Status = .enabled)
    {
        self.init(label: key.resolved(tableName: tableName, bundle: bundle),
                  text: text,
                  placeholder: placeholder,
                  prefix: prefix,
                  suffix: suffix,
                  leadingIcon: leadingIcon.map { OUDSImage(asset: $0, flipped: flipLeadingIcon, renderingMode: leadingIconRenderingMode) },
                  trailingAction: trailingAction,
                  helperText: helperText,
                  helperLink: helperLink,
                  isOutlined: isOutlined,
                  constrainedMaxWidth: constrainedMaxWidth,
                  status: status)
    }

    /// Creates a text input with a localized label and a rich attributed helper text.
    ///
    /// ```swift
    ///     OUDSTextInput(LocalizedStringKey("email_label"),
    ///                   bundle: Bundle.module,
    ///                   text: $text,
    ///                   helperText: AttributedString(markdown: "You should use your **corporate email**"))
    /// ```
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - text: The text to display and edit
    ///    - placeholder: The text displayed when the text input is empty, by default is *nil*
    ///    - prefix: Text placed before the user's input, by default is *nil*
    ///    - suffix: Text placed after the user's input, by default is *nil*
    ///    - leadingIcon: An optional ``OUDSImage`` encapsulating the asset, its flip flag and its rendering mode, by default is *nil*
    ///    - trailingAction: An optional trailing action, by default is *nil*
    ///    - helperText: A rich `AttributedString` helper text
    ///    - helperLink: An optional helper link, by default is *nil*
    ///    - isOutlined: Controls the style of the text input, by default is *false*
    ///    - constrainedMaxWidth: When `true`, the width is constrained, defaults to `false`
    ///    - status: The current status of the text input, default set to *enabled*
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                text: Binding<String>,
                placeholder: String? = nil,
                prefix: String? = nil,
                suffix: String? = nil,
                leadingIcon: OUDSImage? = nil,
                trailingAction: Self.TrailingAction? = nil,
                helperText: AttributedString,
                helperLink: Self.Helperlink? = nil,
                isOutlined: Bool = false,
                constrainedMaxWidth: Bool = false,
                status: Self.Status = .enabled)
    {
        self.init(label: key.resolved(tableName: tableName, bundle: bundle),
                  text: text,
                  placeholder: placeholder,
                  prefix: prefix,
                  suffix: suffix,
                  leadingIcon: leadingIcon,
                  trailingAction: trailingAction,
                  helperText: helperText,
                  helperLink: helperLink,
                  isOutlined: isOutlined,
                  constrainedMaxWidth: constrainedMaxWidth,
                  status: status)
    }

    // MARK: - Body

    public var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {
            VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {
                TextInputContainer(label: label,
                                   text: text,
                                   placeholder: placeholder,
                                   prefix: prefix,
                                   suffix: suffix,
                                   leadingIcon: leadingIcon,
                                   trailingAction: trailingAction,
                                   isOutlined: isOutlined,
                                   status: status,
                                   accessibilityHint: helperText)

                HelperErrorTextContainer(helperText: helperText, status: status)
                    .accessibilityHidden(true)
            }
            .accessibilityElement(children: .contain)

            if let helperLink, !helperLink.text.isEmpty {
                OUDSLink(text: helperLink.text, size: .small, action: helperLink.action)
                    .padding(.horizontal, theme.textInput.spacePaddingInlineDefault)
            }
        }
        .frame(minWidth: theme.textInput.sizeMinWidth,
               maxWidth: constrainedMaxWidth ? theme.textInput.sizeMaxWidth : .infinity,
               minHeight: theme.textInput.sizeMinHeight,
               alignment: .leading)
    }
}

// swiftlint:enable function_default_parameter_at_end
// swiftlint:enable line_length
// swiftlint:enable type_body_length
#endif

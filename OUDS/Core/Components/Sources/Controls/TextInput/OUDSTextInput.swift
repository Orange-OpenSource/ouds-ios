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

import OUDS
import OUDSFoundations
import OUDSTokensComponent
import OUDSTokensSemantic
import SwiftUI

/// The ``OUDSTextInput`` is a user interface component that allows users to enter, edit, or select
/// single-line textual data. It's one of the most fundamental form elements used to capture user input such as names, emails, passwords, or search queries.
///
/// It provides a visual and interactive affordance for text entry while supporting labels, placeholders, icons and helper messages.
///
/// ## Layout
///
/// Text input is based on several configurable UI elements:
///
/// - **label**: It is used to describe the purpose of the input.
/// In some UI contexts, especially when space is limited or when the input is part of a compact layout (search bars, filters, inline forms), the label can be hidden.
/// However, hiding the label should only be done if:
/// - The purpose of the input remains clear thanks to a placeholder or contextual icon.
/// - The label is still accessible to screen readers
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
/// When **outlined**, the text input is a minimalist design with a transparent background and a  visible stroke outlining the field.
/// This style may be interesting for contexts other than form pages:
/// - When inputs need to feel lightweight and unobtrusive
/// - In a header (search field)
/// - In a selection/filtering feature in a product catalog
///
///  ```swift
///     // An outlined text input
///     OUDSTextInput(label: "Label", text: $text, isOutlined: true)
/// ```
///
/// ### Rounded layout
///
/// Text input can have rounded layouts to be favored in more emotional, immersive contexts or those tied to specific visual identities.
/// For standard or business-oriented journeys, keep the default corners.
/// This evolution addresses the need for flexibility in adapting the design to some brand contexts.
///
/// To activate the rounded button behavior, set to true the `hasRoundedTextInputs` values of the `Tuning` object
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
/// - **error** The `error` status indicates that the user input does not meet validation rules or
/// expected formatting. It provides immediate visual feedback, typically through a red border,
/// error icon, and a clear, accessible error message positioned below the input.
///
/// - **loading** The `loading` state indicates that the system is processing or retrieving data
/// related to the text entered. A progress indicator appears to inform the user that an action is in progress.
///
/// - **readOnly** The`readOnly`, lets the text visible but not editable
///
/// - **disabled** In `disabled` status, the field is non-interactive and grayed out to indicate it cannot be changed.
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
/// ## Code samples
///
/// ```swift
///     // The text to display and edit
///     @State var text: String = ""
///
///     // Empty text and no placeholder
///     OUDSTextInput(label: "Email", text: $text)
///
///     // Empty text with placeholder
///     OUDSTextInput(label: "Email", text: $text, placeholder: .init(text: "firstName.lastName", suffix "@orange.com"))
///
///     // Add a leading icon for more context
///     OUDSTextInput(label: "Email", text: $text, placeholder: .init(text: "Enter email"), leadingIcon: Image(systemName: "envelope"))
///
///     // Add a trailing button for additional action
///     let trailingAction = OUDSTextInput.TrailingAction(icon: Image("ic_cross"), accessibilityLabel: "Delete") { text = "" }
///     OUDSTextInput(label: "Email", text: $text, trailingAction: trailingAction)
///
///     // With helper text
///     let placeholder =
///     OUDSTextInput(label: "Email", text: $text,
///                      placeholder: .init(text: "firstName.lastName", suffix "@orange.com"),
///                      helperText: "The email will be automatically completed with @orange.com")
///
///     // With helper link
///     @Environment(\.openURL) private var openUrl
///
///     let helperLink = OUDSTextInput.HelperLink(text: "Helper Link") {
///        openUrl.callAsFunction(url)
///     }
///
///     OUDSTextInput(label: "Label", text: $text, placeholder: .init(text: "Placeholder"), helperLink: helperLink)
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A text input component in light and dark mode with Orange theme](component_textInput_Orange)
///
/// ### Orange Business Tools
///
/// ![A text input component in light and dark mode with Orange Business Tools theme](component_textInput_OrangeBusinessTools)
///
/// ### Orange Inverse
///
/// ![A text input component in light and dark mode with Orange Inverse theme](component_textInput_OrangeInverse)
///
/// ### Sosh
///
/// ![A text input component in light and dark mode with Sosh theme](component_textInput_Sosh)
///
/// ### Wireframe
///
/// ![A text input component in light and dark mode with Wireframe theme](component_textInput_Wireframe)
///
/// - Version: 1.3.0 (Figma component design version)
/// - Since: 0.19.0
public struct OUDSTextInput: View { // TODO: #406 - Add documentation hyperlink in doc above

    // MARK: - Properties

    @Environment(\.theme) private var theme

    let label: String
    let text: Binding<String>
    let placeholder: Self.Placeholder?
    let leadingIcon: Image?
    let flipLeadingIcon: Bool
    let trailingAction: TrailingAction?
    let helperText: String?
    let helperLink: Helperlink?
    let status: Self.Status
    let isOutlined: Bool

    // MARK: - Trailing Action

    /// Used to describe the trailing action of the text input
    ///
    /// A trailing action contains an image which must bring meanings.
    /// This image should not be vocalized.
    /// The trailing action contains also an accessibility action hint used for the button to describe the action.
    /// The action can be any action.
    ///
    /// For iOS 17+ it is possible to define a sensory feeback for the button.
    public struct TrailingAction {

        let icon: Image
        let actionHint: String
        let action: () -> Void

        /// Create a trailing action.
        ///
        /// - Parameters:
        ///   - icon: The icon set in the ``OUDSButton``
        ///   - actionHint: A string that describes the purpose of the button's `action`
        ///   - action: The action to perform when the user triggers the button
        public init(icon: Image, actionHint: String, action: @escaping () -> Void) {
            if actionHint.isEmpty {
                OL.warning("The accessibility action hint for the text input trailing action should not be empty, think about your disabled users!")
            }
            self.icon = icon
            self.actionHint = actionHint
            self.action = action
        }
    }

    // MARK: - Placeholder

    /// Used to define the placeholder of the text input
    public struct Placeholder {
        public let text: String
        public let suffix: String?
        public let prefix: String?

        /// Creates a placeholder with text and additional (optional) prefix and suffix.
        ///
        /// - Parameters:
        ///   - text: The placeholder text
        ///   - prefix: Optional prefix, by default is *nil*
        ///   - suffix: Optional suffix, by default is *nil*
        public init(text: String, prefix: String? = nil, suffix: String? = nil) {
            self.text = text
            self.prefix = prefix
            self.suffix = suffix
        }
    }

    // MARK: - Style

    /// The prefered style of the text input
    public enum Style {
        /// An input with a subtle background fill and a visible bottom border,
        /// creating a softer and more contained look. Best suited for dense layouts or to enhance visibility.
        case `default`
        /// A minimalist input with a transparent background and a visible stroke outlining the field.
        case alternative
    }

    // MARK: - Status

    /// Define all available status for the text input
    public enum Status {
        /// The `default` status
        case `default`

        /// The `error` status indicates that the user input does not meet validation rules or expected formatting.
        /// It provides immediate visual feedback, typically through a red border, error icon, and a clear,
        /// accessible error message positioned below the input.
        case error

        /// The `loading` state indicates that the system is processing or retrieving data related to the
        /// text entered. A progress indicator appears to inform the user that an action is in progress.
        case loading

        /// The`readOnly`, lets the text visible but not editable
        case readOnly

        /// In `disabled` status, the field is non-interactive and grayed out to indicate it cannot be changed.
        /// Note the SwiftUI `View.disabled()` is ignored.
        case disabled
    }

    // MARK: - Helper link

    /// Used to describe the helper link above the helper text.
    public struct Helperlink {
        let text: String
        let action: () -> Void

        /// Creates an helper link with text and associated action.
        ///
        /// - Parameters:
        ///   - text: The helper text (could be the url)
        ///   - action: The action when clicked
        public init(text: String, action: @escaping () -> Void) {
            self.text = text
            self.action = action
        }
    }

    // MARK: - Initializers

    /// Creates a text input.
    ///
    /// **The design system does not allow to have both an error situation and a disabled state for the component.**
    ///
    /// - Parameters:
    ///    - label: The label displayed above the text input. It describes the purpose of the input
    ///    - text: The text to display and edit
    ///    - placeholder: The text displayed when the text input is empty, by default is *nil*
    ///    - leadingIcon: An optional leading icon to provide more context (magnifying glass for search,
    ///      envelope for email, etc.), by default is *nil*
    ///    - flipLeadingIcon: Default set to *false*, set to *true* to mirror the leading icon (e.g. in RTL case)
    ///    - trailingAction: An optional trailing action related to the field: (clear input,
    ///      toggle password visibility, etc.), by default is *nil*
    ///    - helperText: An optional helper text displayed below the text input. It conveys additional, by default is *nil*
    ///      information about the input field, such as how it will be used., by default is *nil*
    ///    - helperLink: An optional helper link displayed below or in place of the helper text., by default is *nil*
    ///    - isOutlined: Controls the style of the text input. When `true`, it displays a minimalist
    ///      text input with a transparent background and a visible stroke outlining the field, by default is *false*
    ///    - status: The current status of the text input, by default to set *default*
    public init(label: String,
                text: Binding<String>,
                placeholder: Placeholder? = nil,
                leadingIcon: Image? = nil,
                flipLeadingIcon: Bool = false,
                trailingAction: Self.TrailingAction? = nil,
                helperText: String? = nil,
                helperLink: Self.Helperlink? = nil,
                isOutlined: Bool = false,
                status: Self.Status = .default)
    {
        self.label = label
        self.text = text
        self.helperText = helperText
        self.placeholder = placeholder
        self.leadingIcon = leadingIcon
        self.flipLeadingIcon = flipLeadingIcon
        self.trailingAction = trailingAction
        self.helperLink = helperLink
        self.status = status
        self.isOutlined = isOutlined
    }

    // MARK: Body

    public var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedNone) {
            VStack(alignment: .leading, spacing: theme.spaces.spaceFixedNone) {
                TextInputContainer(label: label,
                                   text: text,
                                   placeholder: placeholder,
                                   leadingIcon: leadingIcon,
                                   flipIcon: flipLeadingIcon,
                                   trailingAction: trailingAction,
                                   isOutlined: isOutlined,
                                   status: status)

                if let helperText, !helperText.isEmpty {
                    HelperTextContainer(helperText: helperText, status: status)
                        .accessibilityHidden(true)
                }
            }
            .accessibilityLabel(accessibilityLabel)
            .accessibilityHint(Text(helperText ?? ""))
            .accessibilityValue(accessibilityValue)
            .accessibilityAction(named: Text(trailingAction?.actionHint ?? "")) {
                trailingAction?.action()
            }

            if let helperLink, !helperLink.text.isEmpty {
                OUDSLink(text: helperLink.text, size: .small, action: helperLink.action)
                    .padding(.horizontal, theme.textInput.textInputSpacePaddingInlineDefault)
            }
        }
        .frame(minWidth: theme.textInput.textInputSizeMinWidth,
               maxWidth: theme.textInput.textInputSizeMaxWidth,
               minHeight: theme.textInput.textInputSizeMinHeight,
               alignment: .leading)
    }

    // MARK: Helpers

    private var accessibilityLabel: String {

        let emptyValueDescription = text.wrappedValue.isEmpty ? "core_textInput_empty_a11y".localized() : ""

        var errorDescription = ""
        if status == .error, helperText?.isEmpty != false {
            errorDescription = "core_common_onError_a11y".localized()
        }

        var loadingDescription = ""
        if status == .loading {
            loadingDescription = "core_common_loading_a11y".localized()
        }

        var labelDescription = label
        if label.isEmpty {
            labelDescription = "\(placeholder?.text ?? "")"
        }

        return "\(labelDescription), \(emptyValueDescription), \(errorDescription), \(loadingDescription)"
    }

    private var accessibilityValue: String {
        guard !text.wrappedValue.isEmpty else {
            return ""
        }

        return "\(placeholder?.prefix ?? "") \(text.wrappedValue) \(placeholder?.suffix ?? "")"
    }
}

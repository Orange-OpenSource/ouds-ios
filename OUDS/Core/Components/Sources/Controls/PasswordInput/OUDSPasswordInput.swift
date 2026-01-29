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
/// UI rendering of the asterisk must be done with *fbold font weight* and *negative content color* (red-.
///
/// Use the mention “(optional)” at the end of each optional field label. Note that this rule is not systematic, it remains an option, to be used if needed.
///
/// If there is only one field in the formular, or if the mandatory nature is obvious (such as login/password),
/// no mention is necessary since the fields are essential to the formular's functionality.
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
///     OUDSTextInput(label: "Email", text: $text, placeholder: "firstName.lastName", suffix: "@orange.com", leadingIcon: Image(systemName: "envelope"))
///
///     // Add a trailing button with local image namde "ic_cross" for additional action
///     let trailingAction = OUDSTextInput.TrailingAction(icon: Image("ic_cross"), actionHint: "Delete") { text = "" }
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
/// If you need to flip your icon depending to the layout direction or not (e.g. if RTL mode lose semantics  / meanings):
/// ```swift
///     @Environment(\.layoutDirection) var layoutDirection
///
///     OUDSTextInput(label: "Label", text: $text, flipLeadingIcon: layoutDirection == .rightToLeft)
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com]( https://r.orange.fr/r/S-ouds-doc-text-input)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A text input component in light and dark modes with Orange theme](component_textInput_Orange)
///
/// ### Orange Business Tools
///
/// ![A text input component in light and dark modes with Orange Business Tools theme](component_textInput_OrangeBusinessTools)
///
/// ### Sosh
///
/// ![A text input component in light and dark modes with Sosh theme](component_textInput_Sosh)
///
/// ### Wireframe
///
/// ![A text input component in light and dark modes with Wireframe theme](component_textInput_Wireframe)
///
/// - Version: 1.3.0 (Figma component design version)
/// - Since: 0.20.0
@available(iOS 15, macOS 13, visionOS 1, *)
public struct OUDSPasswordInput: View {

    // MARK: - Properties

    let label: String
    let text: Binding<String>
    let placeholder: String?
    let prefix: String?
    let suffix: String?
    let hasLeadingIcon: Bool
    let helperText: String?
    let helperLink: Helperlink?
    let status: Self.Status
    let isOutlined: Bool
    let constrainedMaxWidth: Bool

    @State private var isPasswordVisible: Bool = false

    @Environment(\.theme) private var theme

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
    public enum Status: Equatable {
        /// The `enabled` status (default)
        case enabled

        /// The `error` status indicates that the user input does not meet validation rules or expected formatting.
        /// It provides immediate visual feedback, typically through a red border, error icon, and a clear,
        /// accessible error `message` positioned below the input.
        case error(message: String)

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
            default:
                false
            }
        }
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
            if text.isEmpty {
                OL.warning("The helper link text for the OUDSTextInput is empty, avoid using it in that case.")
            }
            self.text = text
            self.action = action
        }
    }

    // MARK: - Initializers

    /// Creates a text input.
    ///
    /// - Parameters:
    ///    - label: The label displayed above the text input. It describes the purpose of the input
    ///    - text: The text to display and edit
    ///    - placeholder: The text displayed when the text input is empty, by default is *nil*
    ///    - prefix: Text placed before the user's input. Commonly used to indicate expected formatting like a country code, a unit...
    ///      The `prefix` is hidden if a `placeholder` is not provided or empty. But it is visible in focus state or if the value is not empty.
    ///    - suffix: Text placed after the user's input, often used to display a currency or a unit (kg, %, cm…).
    ///      The `suffix` is hidden if a `placeholder` is not provided or empty. But it is visible in focus state or if the value is not empty.
    ///    - hasLeadingIcon: When `true`, a lock icon is displayed at the start of the password input to visually reinforce the security context. Defaults to `false`.
    ///      envelope for email, etc.), by default is *nil*
    ///    - helperText: An optional helper text displayed below the text input. It conveys additional, by default is *nil*
    ///      information about the input field, such as how it will be used., by default is *nil*. If `status` is set to OUDSTextInput.Status.Error,
    ///      this `helperText` is ignored.
    ///    - helperLink: An optional helper link displayed below or in place of the helper text., by default is *nil*
    ///    - isOutlined: Controls the style of the text input. When `true`, it displays a minimalist
    ///      text input with a transparent background and a visible stroke outlining the field, by default is *false*
    ///    - constrainedMaxWidth: When `true`, the width is constrained to a maximum value defined by the design system.
    ///      When `false`, no specific width constraint is applied, allowing the component to size itself or follow external
    ///      modifier. Defaults to `false`.
    ///    - status: The current status of the text input, by default to set *enabled*
    public init(label: String,
                text: Binding<String>,
                placeholder: String? = nil,
                prefix: String? = nil,
                suffix: String? = nil,
                hasLeadingIcon: Bool = false,
                helperText: String? = nil,
                helperLink: Self.Helperlink? = nil,
                isOutlined: Bool = false,
                constrainedMaxWidth: Bool = false,
                status: Self.Status = .enabled)
    {
        self.label = label
        self.text = text
        self.helperText = helperText
        self.placeholder = placeholder
        self.prefix = prefix
        self.suffix = suffix
        self.hasLeadingIcon = hasLeadingIcon
        self.helperLink = helperLink
        self.status = status
        self.isOutlined = isOutlined
        self.constrainedMaxWidth = constrainedMaxWidth
    }

    // MARK: Body

    public var body: some View {
        OUDSTextInput(label: label,
                      text: text,
                      placeholder: placeholder,
                      prefix: prefix,
                      suffix: suffix,
                      leadingIcon: leadingIcon,
                      trailingAction: trailingAction,
                      helperText: helperText,
                      isOutlined: isOutlined,
                      constrainedMaxWidth: constrainedMaxWidth)
//                      status: status) // TODO
    }

    private var leadingIcon: Image? {
        // TODO: Doit on ajouter un acessibility label ?
        hasLeadingIcon ? Image(decorative: "ic_communication_security_and_safety_lock", bundle: theme.resourcesBundle) : nil
    }

    private var trailingAction: OUDSTextInput.TrailingAction {
        let iconName = isPasswordVisible ? "ic_functional_settings_and_tools_hide" : "ic_communication_accessibility_vision"

        return .init(icon: Image(decorative: iconName, bundle: theme.resourcesBundle),
                     actionHint: "core_passwordInput_showPassword_a11y".localized(),
                     flipIcon: false)
        {
            isPasswordVisible.toggle()
        }
    }
}
#endif

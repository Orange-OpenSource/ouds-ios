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
import OUDSTokensComponent
import OUDSTokensSemantic
import SwiftUI

// MARK: - OUDS Text input

/// The ``OUDSTextInput`` is a user interface component that allows users to enter, edit, or select
/// single-line textual data. It's one of the most fundamental form elements used to capture user input such as names, emails, passwords, or search queries.
///
/// It provides a visual and interactive affordance for text entry while supporting labels, placeholders, icons, helper messages.
///
/// ## Layout
///
/// Text input is based on some configurable UI elements:
///
///  - **Label**
///  It is used to describe the purpose of the input.
///  In some UI contexts, especially when space is limited or when the input is part of a compact layout
///  (search bars, filters, inline forms), the label can be hidden.
///
///  However, hiding the label should only be done if:
/// - The purpose of the input remains clear thanks to a placeholder or contextual icon.
/// - The label is still accessible to screen readers (using aria-label, aria-labelledby, or
///   visually hidden text).
///
/// Hiding a label is a design choice that must balance visual simplicity and clarity of intent,
/// without compromising inclusiveness or form guidance.
///
/// - **placeholder**
///  If the text of the text input is empty a placeholder provides a hint or
///  guidance inside the field to suggest expected input. A prefix and sa uffix can be added to
///  give more context.
///
///  - **leading icon**
///  It helps indicate the purpose of the input (magnifying glass for search, envelope for email,
///  phone device for phone number). Only use a leading icon if it adds clear functional or contextual
///  value.
///
///  - **trailing action**
///  It is used to provide actions related to the field: clear input, toggle password visibility, open a
///  date picker, etc. Can also indicate status or feedback (error checkmark, loading spinner).
///
/// ## Outlined style
///
/// By **default**, the input is with a subtle background fill and un visible bottom border,
/// creating a softer and more contained look. Best suited for dense layouts or to enhance visibility.
///
/// When **outlined**, the text input is a minimalist design with a transparent background and a
/// visible stroke outlining the field. This style may be interesting for contexts other than form pages:
///      - When inputs need to feel lightweight and unobtrusive
///      - In a header (search field)
///      - In a selection/filtering feature in a product catalog
///
///  ```swift
///     // An outlined text input
///     OUDSInputText(label: "Label", text: $text, isOutlined: true)
/// ```
///
/// ### Rounded layout
///
/// Text input can have rounded layouts to be favored in more emotional, immersive contexts or those
/// tied to specific visual identities.
/// For standard or business-oriented journeys, keep the default corners.
/// This evolution addresses the need for flexibility in adapting the design to some brand contexts.
///
/// To activate the rounded button behavior, set to true the  `oudsRoundedTetxInput` environment variable
/// at the root level of the view hierarchy (i.e. can be applied on the `OUDSThemeableView`),
/// to be sure all buttons in the application are rounded.
///
/// ```swift
///     // Add themeable view to your app root view to use the OrangeTheme
///     OUDSThemeableView(theme: OrangeTheme()) {
///         YourRootView() // With some views with TextInput
///     }
///     .environment(\.oudsRoundedTextInput, true)
/// ```
///
/// ## Status
///
/// Five status are proposed for all layouts:
///
/// - **default (by default)**: Default neutral appearance, whether empty or filled. It allows users
///    to click, focus, and type freely without restrictions.
///
/// - **error** The `error` status indicates that the user input does not meet validation rules or
///    expected formatting. It provides immediate visual feedback, typically through a red border,
///    error icon, and a clear, accessible error message positioned below the input.
///
/// - **loading** The `loading` state indicates that the system is processing or retrieving data
///    related to the text entered. A progress indicator appears to inform the user that an action
///    is in progress.
///
/// - **readOnly** The`readOnly`, lets the text visible but not editable
///
///  - **disbaled** In `disabled` status, the field is non-interactive and grayed out to indicate
///     it cannot be changed.
///     **Remark** the SwiftUI `View.disbaled()` is ignored.
///
/// ## Helpers
///
/// - **Helper Text** A supporting text conveys additional information about the input field,
/// such as how it will be used. It should ideally only take up a single line, though may wrap
/// to multiple lines if required, and be either persistently visible or visible only on focus.
///
/// - **Helper Link** If the helper text is not sufficient, it's possible to offer the user
/// an additional help link (the link can be external or open a modal).
///
/// ## Accessibility considerations
///
/// ## Code samples
///
/// ```swift
///     // The text to display and edit
///     @State var text: String = ""
///
///     // Empty text and no placeholder
///     OUDSInputText(label: "Label", text: $text)
///
///     // Empty text with placeholder
///     OUDSInputText(label: "Label", text: $text, placeholder: .init(text: "Placeholder", suffix "€"))
///
///     // Add a leading icon for more context
///     OUDSInputText(label: "Label", text: $text, placeholder: .init(text: "Placeholder"), leadingIcon: Image("ic_heart"))
///
///     // Add a trailing button for additional acction
///     let trailingAction = OUDSTextInput.TrailingAction(icon: Image("ic_cross"), accessibilityLabel: "Delete") { text = "" }
///     OUDSInputText(label: "Label", text: $text, trailingAction: trailingAction)
///
///    // With helper text
///    OUDSInputText(label: "Label", text: $text, placeholder: .init(text: "Placeholder"), helperText: "The helper text")
///
///    // With helper link
///    @Environment(\.openURL) private var openUrl
///
///    let helperLink = OUDSTextInput.HelperLinbk(text: "Helper Link") {
///        openUrl.callAsFunction(url)
///    }
///
///    OUDSInputText(label: "Label", text: $text, placeholder: .init(text: "Placeholder"), helperLink: helperLink)
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com)
///
/// - Version: 1.1.0 (Figma component design version)
/// - Since: 0.18.0
public struct OUDSTextInput: View {

    // MARK: - Properties

    @Environment(\.theme) private var theme

    let label: String
    let text: Binding<String>
    let placeholder: Self.Placeholder?
    let leadingIcon: Image?
    let trailingAction: TrailingAction?
    let helperText: String?
    let helperLink: Helperlink?
    let status: Self.Status
    let isOutlined: Bool

    /// Used to describe the trailing action
    public struct TrailingAction {
        let icon: Image
        let accessibilityLabel: String
        let action: () -> Void

        /// Create a trailing action.
        ///  - Paramters:
        ///   - icon: The icon set in the `OUDSButton`
        ///   - accessibilityLabel: A string that describes the purpose of the button's `action`
        ///   - action: The action to perform when the user triggers the button
        public init(icon: Image, accessibilityLabel: String, action: @escaping () -> Void) {
            self.icon = icon
            self.accessibilityLabel = accessibilityLabel
            self.action = action
        }
    }

    /// Used to describe the trailing action
    public struct Placeholder {
        public let text: String
        public let suffix: String?
        public let prefix: String?

        /// Create a placeholder with text and additional (optional) prefix and suffix.
        ///
        ///  - Paramters:
        ///   - text: The placeholder text
        ///   - prefix: Optional prefix
        ///   - suffix: Optional suffix
        public init(text: String, prefix: String? = nil, suffix: String? = nil) {
            self.text = text
            self.prefix = prefix
            self.suffix = suffix
        }
    }

    /// The prefered style of the Text input
    public enum Style {
        /// An input with a subtle background fill and a visible bottom border,
        /// creating a softer and more contained look. Best suited for dense layouts or to enhance visibility.
        case `default`
        /// A minimalist input with a transparent background and a visible stroke outlining
        /// the field.
        case alternative
    }

    /// Define all available status.
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

        ///  In `disabled` status, the field is non-interactive and grayed out to indicate it cannot be changed.
        ///  **Remark** the SwiftUI `View.disbaled()` is ignored.
        case disabled
    }

    /// Used to describe the helper link above the helper text.
    public struct Helperlink {
        let text: String
        let action: () -> Void

        /// Create a helper link with text and associated action.
        ///
        ///  - Paramters:
        ///   - text: The helper text (could be the url
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
    ///    - label: The label displayed above the text input. It describe the purpose of the input
    ///    - text: The text to display and edit
    ///    - placeholder: The text displayed when the text input is empty
    ///    - leadingIcon: An optional leading icon to provide more context (magnifying glass for search,
    ///      envelope for email, etc.)
    ///    - trailingAction: An optional trailing action related to the field: (clear input,
    ///      toggle password visibility, etc.)
    ///    - helperText: An optional helper text displayed below the text input. It conveys additional
    ///      information about the input field, such as how it will be used.
    ///    - helperlink: An optional helper link displayed below or in place of the helper text.
    ///    - isOutlined: Controls the style of the text input. When `true`, it displays a minimalist
    ///      text input with a transparent background and a visible stroke outlining the field.
    ///    - status: The cuurent status of the text input
    public init(label: String,
                text: Binding<String>,
                placeholder: Placeholder? = nil,
                leadingIcon: Image? = nil,
                trailingAction: Self.TrailingAction? = nil,
                helperText: String? = nil,
                helperLink: Self.Helperlink? = nil,
                isOutlined: Bool = false,
                status: Self.Status = .default) {
        self.label = label
        self.text = text
        self.helperText = helperText
        self.placeholder = placeholder
        self.leadingIcon = leadingIcon
        self.trailingAction = trailingAction
        self.helperLink = helperLink
        self.status = status
        self.isOutlined = isOutlined
    }

    // MARK: Body

    public var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedNone) {
            TextInputContainer(label: label,
                               text: text,
                               placeholder: placeholder,
                               leadingIcon: leadingIcon,
                               trailingAction: trailingAction,
                               status: status,
                               isOutlined: isOutlined)

            if let helperText, !helperText.isEmpty {
                HelperTextContainer(helperText: helperText, status: status)
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
}

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

/// The ``OUDSTextInput`` proposes layout to
/// A Text Input is a user interface component that allows users to enter, edit, or select
/// ???? single-line ??? textual data. It's one of the most fundamental form elements used to capture user input such as names, emails, passwords, or search queries.
///
/// It provides a visual and interactive affordance for text entry while supporting labels, placeholders, icons, helper messages, and validation feedback.
///
/// ## Accessibility considerations
///
/// ## Code samples
///
/// ```swift
/// ```
///
/// ## Rounded layout
///
/// TextInput can have rounded layouts to be favored in more emotional, immersive contexts or those tied to specific visual identities.
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
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com)
///
/// - Version: 1.1.0 (Figma component design version)
/// - Since: 0.18.0
public struct OUDSTextInput: View {

    // MARK: - Properties

    @Environment(\.theme) private var theme

    let layout: Self.Layout
    let label: String
    let text: Binding<String>
    let helperText: String?
    let placeholder: Self.Placeholder?
    let leadingIcon: Image?
    let trailingAction: TrailingAction?
    let status: Self.Status
    let style: Style

    /// The prefered layout to displkay label or placeholder in input area
    public enum Layout {
        /// Used to display the label into the input area
        case label

        /// Used to display the placeholder into the input area
        case placeholder
    }

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
        let text: String
        let suffix: String?
        let prefix: String?

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

        /// The`readOnly`, letd the text visible but not editable
        case readOnly

        ///  In `disabled` status, the field is non-interactive and grayed out to indicate it cannot be changed.
        ///  **Remark** the SwiftUI `View.disbaled` is ignored.
        case disbaled
    }

    // MARK: - Initializers

    /// Creates a text input.
    ///
    /// **The design system does not allow to have both an error situation and a disabled state for the component.**
    ///
    /// - Parameters:
    ///    - layout: The desired layout
    ///    - label: The label of the text input
    ///    - text: The text to display and edit
    ///    - placeholder: An optional placeholder
    ///    - leadingIcon: An optional leading icon to provide more context
    ///    - trailingAction: An optional trailing action
    ///    - helperText: Additional helper text below the input text
    ///    - status: The current status
    ///    - style: The style of the text input
    public init(layout: Self.Layout = .label,
                label: String,
                text: Binding<String>,
                placeholder: Placeholder? = nil,
                leadingIcon: Image? = nil,
                trailingAction: TrailingAction? = nil,
                helperText: String? = nil,
                style: Style = .default,
                status: Self.Status = .default) {
        self.layout = layout
        self.label = label
        self.text = text
        self.helperText = helperText
        self.placeholder = placeholder
        self.leadingIcon = leadingIcon
        self.trailingAction = trailingAction
        self.status = status
        self.style = style
    }

    // MARK: Body

    public var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedNone) {
            TextInputContainer(layout: layout,
                               label: label,
                               text: text,
                               placeholder: placeholder,
                               leadingIcon: leadingIcon,
                               trailingAction: trailingAction,
                               status: status,
                               style: style)

            if let helperText {
                HelperTextContainer(helperText: helperText, status: status)
            }
        }
    }
}

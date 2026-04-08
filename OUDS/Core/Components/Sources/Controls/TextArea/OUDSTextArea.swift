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

/// Text area is a UI element that allows to type, edit, or select longer blocks of textual data, such as comments, messages or descriptions;
/// by expanding vertically and offering more space to input text.
/// It provides a visual and interactive affordance for multiline text entry while supporting labels, placeholders, descriptions, and validation feedback.
///
/// ## Layout
///
/// Text area is based on several configurable UI elements:
///
/// - **label**: It is used to describe the purpose of the text area.
/// In some UI contexts, especially when space is limited or when the text area is part of a compact layout, the label can be hidden.
/// However, hiding the label should only be done if the purpose remains clear thanks to a placeholder or contextual icon
/// and if the label is still accessible to screen readers.
/// Hiding a label is a design choice that must balance visual simplicity and clarity of intent, without compromising inclusiveness or form guidance.
///
/// - **placeholder**: If the text of the text area is empty a placeholder provides a hint or guidance inside the field to suggest expected input.
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
/// an error icon, and a clear, accessible error message positioned below the text area. The error message replaces the helper text.
///
/// - **loading**: The `loading` state indicates that the system is processing or retrieving data
/// related to the text entered. A progress indicator appears to inform the user that an action is in progress.
/// The field remains editable while loading.
///
/// - **readOnly**: The `readOnly` status lets the text visible but not editable.
///
/// - **disabled**: In `disabled` status, the field is non-interactive and grayed out to indicate it cannot be changed.
/// Note the SwiftUI `View.disabled()` is ignored.
///
/// ## Helpers
///
/// - **Helper text (plain)**: A supporting text conveys additional information about the text area,
/// such as how it will be used. It should ideally only take up a single line, though may wrap
/// to multiple lines if required, and be either persistently visible or visible only on focus.
///
/// - **Helper text (characters max count)**: Uses an internal message displaying the count of remaining characters depending to the given value.
///
/// - **Helper link**: If the helper text is not sufficient, it's possible to offer the user
/// an additional help link (the link can be external or open a modal).
///
/// ## Accessibility considerations
///
/// By default no haptics are done by the component.
/// However you should think about cases where you will have to make the devices vibrate.
/// You can refer to the [Human Interface Guidelines of Apple](https://developer.apple.com/design/human-interface-guidelines/playing-haptics).
///
/// ## Mandatory field indication
///
/// If all fields are mandatory (several fields present): display the message "All fields are mandatory" at the top of your formular.
/// Do not use an asterisk at the end of each field label, nor the word "mandatory."
///
/// If not all fields are mandatory (several fields present): display the message "All fields marked with an \* are mandatory" at the top of your formular.
/// Use an asterisk (\*) at the end of each mandatory field label, and ensures this is well vocalized.
///
/// UI rendering of the asterisk must be done with *bold font weight* and *negative content color* (red on light backgrounds).
///
/// Use the mention "(optional)" at the end of each optional field label. Note that this rule is not systematic, it remains an option, to be used if needed.
///
/// If there is only one field in the formular, or if the mandatory nature is obvious,
/// no mention is necessary since the fields are essential to the formular's functionality.
///
/// ## Code samples
///
/// ```swift
///     // The text to display and edit
///     @State var text: String = ""
///
///     // Empty text and no placeholder
///     OUDSTextArea(label: "Comments", text: $text)
///
///     // Empty text with placeholder
///     OUDSTextArea(label: "Comments", text: $text, placeholder: "Describe your issue in detail")
///
///     // With a plain helper text
///     OUDSTextArea(label: "Comments",
///                  text: $text,
///                  placeholder: "Describe your issue in detail",
///                  helperText: .plain("Maximum 500 characters."))
///
///     // With a maximum character count — the component shows "X characters remaining" (bold)
///     // and switches to an error style when exceeded.
///     OUDSTextArea(label: "Comments",
///                  text: $text,
///                  helperText: .charactersMaxCount(500))
///
///     // With helper link
///     @Environment(\.openURL) private var openUrl
///
///     let helperLink = OUDSTextArea.Helperlink(text: "Helper Link") {
///        openUrl.callAsFunction(url)
///     }
///
///     OUDSTextArea(label: "Comments", text: $text, placeholder: "Placeholder", helperLink: helperLink)
///
///     // With error status
///     OUDSTextArea(label: "Comments", text: $text, status: .error(message: "This field can't be empty."))
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-text-area)
///
/// - Version: 1.1.0 (Figma component design version)
/// - Since: 1.4.0
@available(iOS 15, macOS 13, visionOS 1, *)
public struct OUDSTextArea: View {

    // MARK: - Constants

    /// Minimum number of visible text lines before the text area starts to grow.
    public static let minLines = 3
    /// Maximum number of visible text lines; beyond this the content becomes scrollable.
    public static let maxLines = 10

    // MARK: - Properties

    let label: String
    let text: Binding<String>
    let placeholder: String?
    let helperText: HelperText?
    let helperLink: Helperlink?
    let status: Self.Status
    let constrainedMaxWidth: Bool

    @Environment(\.theme) private var theme

    // MARK: - Status

    /// Define all available status for the text area
    /// - Since: 1.4.0
    @frozen public enum Status: Equatable {
        /// The `enabled` status (default)
        case enabled

        /// The `error` status indicates that the user input does not meet validation rules or expected formatting.
        /// It provides immediate visual feedback, typically through a red border, an error icon, and a clear,
        /// accessible error `message` positioned below the text area.
        case error(message: String)

        /// The `loading` state indicates that the system is processing or retrieving data related to the
        /// text entered. A progress indicator appears to inform the user that an action is in progress.
        /// The field remains editable while loading.
        case loading

        /// The `readOnly` status lets the text visible but not editable
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

    // MARK: - Helper text

    /// Describes the content of the helper text displayed below the text area.
    ///
    /// Use `.plain(_:)` for arbitrary helper text, or `.charactersMaxCount(_:)` to let the
    /// component manage a character-count display automatically.
    /// Pass the **maximum allowed length** — the component computes how many characters remain
    /// and displays them in **bold**. When the user exceeds the limit the component switches
    /// to an error-style sentence showing how many characters are over the limit.
    ///
    /// ```swift
    ///     // Plain helper text
    ///     OUDSTextArea(label: "Bio", text: $text, helperText: .plain("Maximum 500 characters."))
    ///
    ///     // Character limit: component shows "X characters remaining" (bold count),
    ///     // and switches to "You have X characters too many." when exceeded.
    ///     OUDSTextArea(label: "Bio", text: $text, helperText: .charactersMaxCount(500))
    /// ```
    ///
    /// - Since: 1.4.0
    @frozen public enum HelperText {
        /// A plain helper string defined by the caller.
        case plain(String)

        /// The **maximum number of characters** allowed in the text area.
        /// The component automatically computes and displays the number of characters remaining
        /// (rendered **bold**) and switches to an error-style sentence if the limit is exceeded.
        case charactersMaxCount(Int)

        /// A plain string representation suitable for VoiceOver, without any rich-text formatting.
        /// For `.charactersMaxCount` the remaining count must be supplied externally because the
        /// enum has no access to the current text binding.
        func accessibilityDescription(remainingCount: Int) -> String {
            switch self {
            case let .plain(string):
                string
            case .charactersMaxCount:
                String(format: "core_textArea_charactersRemaining".localized(), remainingCount)
            }
        }
    }

    // MARK: - Helper link

    /// Used to describe the helper link below the text area.
    /// - Since: 1.4.0
    public struct Helperlink {
        let text: String
        let action: () -> Void

        /// Creates a helper link with text and associated action.
        ///
        /// - Parameters:
        ///   - text: The helper text (could be the URL)
        ///   - action: The action when clicked
        public init(text: String, action: @escaping () -> Void) {
            if text.isEmpty {
                OL.warning("The helper link text for the OUDSTextArea is empty, avoid using it in that case.")
            }
            self.text = text
            self.action = action
        }
    }

    // MARK: - Initializers

    /// Creates a text area.
    ///
    /// - Parameters:
    ///    - label: The label displayed above the text area. It describes the purpose of the input
    ///    - text: The text to display and edit
    ///    - placeholder: The text displayed when the text area is empty, by default is *nil*
    ///    - helperText: An optional helper text displayed below the text area. Use `.plain(_:)` for
    ///      arbitrary copy or `.charactersMaxCount(_:)` to show a bold character count. By default
    ///      is *nil*. Ignored when `status` is `.error`.
    ///    - helperLink: An optional helper link displayed below the helper text, by default is *nil*
    ///    - constrainedMaxWidth: When `true`, the width is constrained to a maximum value defined by the design system.
    ///      When `false`, no specific width constraint is applied, allowing the component to size itself or follow external
    ///      modifier. Defaults to `false`.
    ///    - status: The current status of the text area, by default to set *enabled*
    public init(label: String,
                text: Binding<String>,
                placeholder: String? = nil,
                helperText: Self.HelperText? = nil,
                helperLink: Self.Helperlink? = nil,
                constrainedMaxWidth: Bool = false,
                status: Self.Status = .enabled)
    {
        self.label = label
        self.text = text
        self.placeholder = placeholder
        self.helperText = helperText
        self.helperLink = helperLink
        self.status = status
        self.constrainedMaxWidth = constrainedMaxWidth
    }

    // swiftlint:disable function_default_parameter_at_end
    /// Creates a text area with a localized label, looking up the key in the given bundle.
    ///
    /// ```swift
    ///     OUDSTextArea(LocalizedStringKey("comments_label"), bundle: Bundle.module, text: $text)
    /// ```
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - text: The text to display and edit
    ///    - placeholder: The text displayed when the text area is empty, by default is *nil*
    ///    - helperText: An optional helper text, by default is *nil*
    ///    - helperLink: An optional helper link, by default is *nil*
    ///    - constrainedMaxWidth: When `true`, the width is constrained, defaults to `false`
    ///    - status: The current status of the text area, default set to *enabled*
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                text: Binding<String>,
                placeholder: String? = nil,
                helperText: Self.HelperText? = nil,
                helperLink: Self.Helperlink? = nil,
                constrainedMaxWidth: Bool = false,
                status: Self.Status = .enabled)
    {
        self.init(label: key.resolved(tableName: tableName, bundle: bundle),
                  text: text,
                  placeholder: placeholder,
                  helperText: helperText,
                  helperLink: helperLink,
                  constrainedMaxWidth: constrainedMaxWidth,
                  status: status)
    }

    // swiftlint:enable function_default_parameter_at_end

    // MARK: - Over-limit helpers

    /// `true` when `helperText` is `.charactersMaxCount` and the current text exceeds the limit.
    private var isOverLimit: Bool {
        guard case let .charactersMaxCount(limit) = helperText else { return false }
        return text.wrappedValue.count > limit
    }

    /// The number of characters beyond the limit, or 0 when within bounds.
    private var excessCount: Int {
        guard case let .charactersMaxCount(limit) = helperText else { return 0 }
        return max(0, text.wrappedValue.count - limit)
    }

    /// How many characters the user can still type before hitting the limit.
    /// Returns 0 when at or beyond the limit.
    private var remainingCount: Int {
        guard case let .charactersMaxCount(maxLength) = helperText else { return 0 }
        return max(0, maxLength - text.wrappedValue.count)
    }

    // MARK: Body

    public var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {
            VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {
                TextAreaContainer(label: label,
                                  text: text,
                                  placeholder: placeholder,
                                  isOverLimit: isOverLimit,
                                  excessCount: excessCount,
                                  status: status,
                                  accessibilityHint: helperText?.accessibilityDescription(remainingCount: remainingCount))

                TextAreaHelperTextContainer(helperText: helperText,
                                            status: status,
                                            isOverLimit: isOverLimit,
                                            excessCount: excessCount,
                                            remainingCount: remainingCount)
                    .accessibilityHidden(true)
            }
            .accessibilityElement(children: .contain)

            if let helperLink, !helperLink.text.isEmpty {
                OUDSLink(text: helperLink.text, size: .small, action: helperLink.action)
                    .padding(.horizontal, theme.textInput.spacePaddingInlineDefault)
            }
        }
        .frame(minWidth: theme.textInput.sizeMinWidth,
               maxWidth: constrainedMaxWidth ? theme.textArea.sizeMaxWidth : .infinity,
               minHeight: theme.textArea.sizeMinHeightInput,
               alignment: .leading)
    }
}
#endif

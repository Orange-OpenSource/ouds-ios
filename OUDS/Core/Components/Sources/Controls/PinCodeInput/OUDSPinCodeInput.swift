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
import SwiftUI

// MARK: - OUDS PIN Code Input

/// PIN code input is a UI element that allows to capture short, fixed-length numeric codes, typically for authentication or confirmation purposes,
/// such as a four, six or eight-digit personal identification number (PIN).
/// PIN code input is presented as a series of individual input fields or boxes, each representing a single digit, to enhance readability and encourage accurate input,
/// while supporting smooth keyboard navigation and secured input masking if needed.
///
/// ## Layouts
///
/// The component can be rendered as two different layouts:
/// - *outlined* layout: A minimalist input with a transparent background and a visible stroke outlining the field.
/// This style may be interesting for contexts other than form pages, e.g. when inputs need to feel lightweight and unobtrusive,
/// in a header (search field), or in a selection/filtering feature in a product catalog
/// - *not outlined* (default): An input with a subtle background fill and visible bottom border, creating a softer and more contained look.
/// Best suited for dense layouts or to enhance visibility.
///
/// The component provides 3 layouts for the input: 4 boxes, 6 boxes or 8 boxes.
///
/// A helper text can be used to support text to convey additional information about the input field, such as how it will be used.
/// It should ideally only take up a single line, though may wrap to multiple lines if required, and be either persistently visible or visible only on focus.
///
/// ## Error status
///
/// The Error status indicates that the user input does not meet validation rules or expected formatting.
/// It provides immediate visual feedback, typically through a red border, error icon, and a clear, accessible error message positioned below the input (mandatory).
/// This state helps users quickly identify and correct mistakes by explaining what went wrong and, when possible, how to fix it.
/// The input remains editable, encouraging users to revise their input without starting over.
/// The error state must be triggered by an explicit validation (submission, API response), and not in real time with each keystroke.
/// This can occur either because the entered code does not match the expected code, because the user entered an expired or already used code,
/// or finally if the maximum number of attempts has been exceeded.
///
/// ## Specific design guidelines
///
/// In the context of a PIN code input, in addition to the input's "Error" UI rendering, it is essential to also include an "Alert" component
/// (also in its "Error" status) in the interface.
///
/// ## Particular cases
///
/// The ``OUDSPinCodeInput`` component supports autofill feature of values like OTP code.
/// For example if the user receives a message with inside a code the system can extract, the keyboard can suggest to the user to fill it.
/// If the digits fits the component, it will be filled.
/// If the digits are longer, they will be truncated.
/// If the digits are shorter, they will be filled, letting other fields empty.
///
/// The copy/paste feature is also available and has the same behavior.
///
/// ## Technical considerations
///
/// For some cases, on phones screens or with 8 boxes in iPhone, you may need to use a `ScrollView` to embed the component and let user move it.
/// ```swift
/// ScrollView(.horizontal) {
///     OUDSPinCodeInput($value,
///                      length: .eight,
///                      helperText: "Enter your secret code sent to your phone")
/// }
/// ```
///
/// **Note also the exposed *value* `Binding` will be updated when all digits are written.**
///
/// ## Accessibility considerations
///
/// The content of the fields is vocalized by Voice Over; the placeholders (defined in ``OUDSPinCodeInput/obfuscationCharacter`` and ``OUDSPinCodeInput/placeholderCharacter``)
/// are not vocalized to let users know what they wrote.
///
/// The component gets only numeric values, not letters or symbols, only numbers.
///
/// Depending on the component configuration, autofocus can still be used when the component appears, and focus is moved to the next field as digits are entered.
/// For example if Voice Over is enavled, the autoficus is disabled.
///
/// The component and its digit fields are vocalized with internal wording.
///
/// When using the error status, provide a clear, concise error message explaining what went wrong and, when possible, how to fix it
/// (for example: *“The code you entered is invalid. Try again.”*).
///
/// Use helper text to communicate additional guidance (for example: *“Check the 6‑digit code sent by SMS”*), and keep this text short so it remains easy to vocalize
/// and understand.
///
/// ## Code samples
///
/// ```swift
///     // The value with the code
///     @State private var pinCode: String = ""
///
///     // By default, the PIN code input displays only 6 boxes
///     OUDSPinCodeInput($pinCode)
///
///     // It can have also up 4 or 8 boxes, with an helper text
///     OUDSPinCodeInput($pinCode, length: .eight, helperText: "Enter your 8 secret digits")
///
///     // The component can be used in error contexts
///     OUDSPinCodeInput($pinCode, length: .six, status: .error(message: "The OTP code you entered is not correct"))
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-pin-code-input)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A PIN code input component in light and dark modes with Orange theme](component_pinCodeInput_Orange)
///
/// ### Orange Compact
///
/// ![A PIN code input  component in light and dark modes with Orange Compact theme](component_pinCodeInput_OrangeCompact)
///
/// ### Sosh
///
/// ![A PIN code input  component in light and dark modes with Sosh theme](component_pinCodeInput_Sosh)
///
/// ### Wireframe
///
/// ![A PIN code input component in light and dark modes with Wireframe theme](component_pinCodeInput_Wireframe)
///
/// - Version: 1.2.0 (Figma component design version)
/// - Since: 1.4.0
@available(iOS 15, visionOS 1, *)
public struct OUDSPinCodeInput: View {

    // MARK: - Constants

    /// The symbol used to hide a written digit.
    public static let obfuscationCharacter = "●"

    /// The symbol used as a placeholder for a digit not yet filled.
    public static let placeholderCharacter = "-"

    // MARK: - Properties

    @Binding private var value: String
    private let length: Length
    private let helperText: String?
    private let isOutlined: Bool
    private let status: Self.Status
    private let autofocus: Bool

    @Environment(\.theme) private var theme

    // MARK: - Length

    /// The type of layout to apply to the *pin code input* to define the size of the input
    /// - Since: 1.4.0
    @frozen public enum Length: Int {
        /// Four symbols required
        case four = 4
        /// Six symbols required
        case six = 6
        /// Eight symbols required
        case eight = 8
    }

    // MARK: - Status

    /// Define all available status for the PIN code input
    /// - Since: 1.4.0
    @frozen public enum Status: Equatable {
        /// The `enabled` status (default)
        case enabled

        /// The `error` status indicates that the user input does not meet validation rules or expected formatting.
        /// It provides a clear accessible error `message` positioned below the input.
        /// This message must not be empty.
        case error(message: String)
    }

    // MARK: - Initializers

    /// Defines a PIN code imput component with several boxes to fill the code
    ///
    /// ```swift
    ///     OUDSPinCodeInput($pinCode)
    /// ```
    ///
    /// - Parameters:
    ///   - value: A *binding* exposing the value written by the user when the last symbol has been put
    ///   - length: The number of required symbols for the input, default set to *six*
    ///   - helperText: A text to display below the PIN code input container, default set to *nil*
    ///   - isOutlined: If *true*, draw a thing stroke around the input, otherwise use a background to fill instead, default set to *false*
    ///   - status: Default set to *.enabled*, defines if there is an error context or not
    ///   - autofocus: If *true*, automatically focuses the first available field on appear, default set to *false*
    public init(_ value: Binding<String>,
                length: OUDSPinCodeInput.Length = .six,
                helperText: String? = nil,
                isOutlined: Bool = false,
                status: Self.Status = .enabled,
                autofocus: Bool = false)
    {
        _value = value
        self.length = length
        self.helperText = helperText
        self.isOutlined = isOutlined
        self.status = status
        self.autofocus = autofocus
    }

    // swiftlint:disable function_default_parameter_at_end
    /// Defines a PIN code imput component with several boxes to fill the code
    ///
    /// ```swift
    ///     OUDSPinCodeInput($pinCode, helperText: LocalizedStringKey("pin_helper"), bundle: Bundle.module)
    /// ```
    ///
    /// - Parameters:
    ///   - value: A *binding* exposing the value written by the user when the last symbol has been put
    ///   - length: The number of required symbols for the input, default set to *six*
    ///   - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///   - tableName: The name of the `.strings` file, or `nil` for the default
    ///   - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///   - isOutlined: If *true*, draw a thing stroke around the input, otherwise use a background to fill instead, default set to *false*
    ///   - status: Default set to *.enabled*, defines if there is an error context or not
    ///   - autofocus: If *true*, automatically focuses the first available field on appear, default set to *false*
    public init(_ value: Binding<String>,
                length: OUDSPinCodeInput.Length = .six,
                helperText key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                isOutlined: Bool = false,
                status: Self.Status = .enabled,
                autofocus: Bool = false)
    {
        _value = value
        self.length = length
        helperText = key.resolved(tableName: tableName, bundle: bundle)
        self.isOutlined = isOutlined
        self.status = status
        self.autofocus = autofocus
    }

    // swiftlint:enable function_default_parameter_at_end

    // MARK: Body

    public var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {
            VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {
                PinCodeInputContainer(_value, length: length, isError: status != .enabled, isOutlined: isOutlined, autofocus: autofocus)

                PinCodeHelperErrorTextContainer(helperText: helperText, status: status)
            }
        }
        .frame(minHeight: theme.textInput.sizeMinHeight,
               alignment: .leading)
    }
}
#endif

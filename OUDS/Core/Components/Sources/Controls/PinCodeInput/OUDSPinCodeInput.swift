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

#if !os(watchOS) && !os(macOS)
import SwiftUI

// MARK: - OUDS PIN Code Input

/// PIN code input is a UI element that allows to capture short, fixed-length numeric codes, typically for authentication or confirmation purposes,
/// such as a four, six or height-digit personal identification number (PIN).
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
/// An helper text can be used to support text to convey additional information about the input field, such as how it will be used.
/// It should ideally only take up a single line, though may wrap to multiple lines if required, and be either persistently visible or visible only on focus.
///
/// ## Error status
///
/// The Error status indicates that the user input does not meet validation rules or expected formatting.
/// It provides immediate visual feedback, typically through a red border, error icon, and a clear, accessible error message positioned below the input (mandatory.
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
/// TODO: #998 - Add section
///
/// ## Accessibility considerations
///
/// TODO: #998 - Add section
///
/// ## Code samples
///
/// TODO: #998 - Add section
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
@available(iOS 15, visionOS 1, tvOS 16, *)
public struct OUDSPinCodeInput: View {

    // MARK: - Properties

    @Binding private var value: String
    private let length: Length
    private let helperText: String?
    private let isOutlined: Bool
    private let status: Self.Status

    @Environment(\.theme) private var theme

    // TODO: #998 - Manage status like read only, loading, etc

    // MARK: - Length

    /// The type of layout to apply to the *pin code input* to define the size of the input
    /// - Since: 1.4.0
    public enum Length: Int {
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
    public enum Status: Equatable {
        /// The `enabled` status (default)
        case enabled

        /// The `error` status indicates that the user input does not meet validation rules or expected formatting.
        /// It provides a clear accessible error `message` positioned below the input.
        case error(message: String)
    }

    // MARK: - Initializers

    /// Defines a PIN code imput component with several boxes to fill the code
    ///
    /// - Parameters:
    ///   - length: The number of required symbols for the input, default set to *six*
    ///   - value: A *binding* exposing the value written by the user when the last symbol has been put
    ///   - helperText: A text to display below the PIN code input container, default set to *nil*
    ///   - isOutlined: If *true*, draw a thing stroke around the input, otherwise use a background to fill instead, default set to *false*
    public init(_ value: Binding<String>,
                length: OUDSPinCodeInput.Length = .six,
                helperText: String? = nil,
                isOutlined: Bool = false,
                status: Self.Status = .enabled)
    {
        _value = value
        self.length = length
        self.helperText = helperText
        self.isOutlined = isOutlined
        self.status = status
    }

    // MARK: Body

    public var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {
            VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {
                PinCodeInputContainer(_value, length: length, isError: status != .enabled, isOutlined: isOutlined)

                PinCodeHelperErrorTextContainer(helperText: helperText, status: status)
            }
        }
        .frame(minHeight: theme.textInput.sizeMinHeight,
               alignment: .leading)
    }
}
#endif

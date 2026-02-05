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

/// Password input is a UI element that allows to securely and confidentially capture a user’s password.
/// As it is based on the `OUDSTextInput`,  it offers same layout and the same elements of configuration.
///
/// ## Layout
///
/// Passwords input is based on several configurable UI elements:
///
/// - **label**: It is used to describe the purpose of the input.
///
/// - **placeholder**:  A prefix is not common and is discouraged in a Password Input component. In very specific cases, it can provide
/// context or format requirements (e.g., “DEV-” for test accounts, "admin-" as a pattern to define an admin password)
///
/// - **lock icon**: it helps to reinforce the security context.
///
/// - **Helper text**:  A supporting text conveys additional information about the password field.
///
/// ## Outlined style
///
/// By **default**, the input is with a subtle background fill and invisible bottom border, creating a softer and more contained look.
///
///  ```swift
///     // An outlined text input
///     OUDSPassword(label: "Your password", password: $password, isOutlined: true)
/// ```
///
/// ### Rounded layout
///
/// As the` OUDSTextInput`, rounded corners can be enabled or disabled using the `hasRoundedTextInputs` values of the `Tuning` object
/// in your theme configuration.
///
/// ## Status
///
/// As `OUDSPasswordInput` is based on the` OUDSTextInput`, all the status are the same and have the same behavior available here `OUDSTextInput.Status`
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
///     // The password to display and edit
///     @State var password: String = ""
///
///     // A basic password input with label
///     OUDSPasswordInput(label: "Password", password: $password)
///
///     // Add a leading icon and helper text to more context
///     OUDSPasswordInput(label: "Password", password: $password, lockIcon: true, helperText: "Your password must be between 8 and 20 characters long.")
///
///     // Password with prefix
///     OUDSPasswordInput(label: "Password", password: $password, prefix: "CORP-")
///
///     // Make password visible
///     OUDSPasswordInput(label: "Password", password: $password, isHiddenPassword: .constant(false))
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-password-input)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A text input component in light and dark modes with Orange theme](component_passwordInput_Orange)
///
/// ### Orange Business Tools
///
/// ![A text input component in light and dark modes with Orange Business Tools theme](component_passwordInput_OrangeBusinessTools)
///
/// ### Sosh
///
/// ![A text input component in light and dark modes with Sosh theme](component_passwordInput_Sosh)
///
/// ### Wireframe
///
/// ![A text input component in light and dark modes with Wireframe theme](component_passwordInput_Wireframe)
///
/// - Version: 1.2.0 (Figma component design version)
/// - Since: 1.2.0
@available(iOS 15, macOS 13, visionOS 1, *)
public struct OUDSPasswordInput: View {

    // MARK: - Properties

    let label: String
    let password: Binding<String>
    let placeholder: String?
    let prefix: String?
    let lockIcon: Bool
    let helperText: String?
    let status: OUDSTextInput.Status
    let isOutlined: Bool
    let constrainedMaxWidth: Bool

    @Binding private var isHiddenPassword: Bool

    @Environment(\.theme) private var theme

    // MARK: - Initializers

    /// Creates a text input.
    ///
    /// - Parameters:
    ///    - label: The label displayed above the password input.
    ///    - password: The pasword to display and edit.
    ///    - isHiddenPassword: Flag to hide or show the password, By default set to `true`. Be carefull it is recommanded
    ///    to hide password by default and let user to display it with the button.
    ///    - placeholder: The text displayed when the password input is empty, by default is *nil*
    ///    - prefix: Text placed before the user's input. A prefix is not common and is discouraged in a
    ///    Password Input component. In very specific cases, it can provide context or format requirements
    ///    (e.g., “DEV-” for test accounts, "admin-" as a pattern to define an admin password)
    ///    -  lockIcon: When `true`, a lock icon is displayed at the start of the password input to visually reinforce
    ///    the security context. Defaults to `false`.
    ///    - helperText: An optional helper text displayed below the password input. It conveys additional, by default is *nil*
    ///      information about the input field, such as how it will be used., by default is *nil*. If `status` is set to `OUDSTextInput.Status.Error`, this `helperText` is ignored.
    ///    - isOutlined: Controls the style of the pasword input. When `true`, it displays a minimalist
    ///      password input with a transparent background and a visible stroke outlining the field, by default is *false*
    ///    - constrainedMaxWidth: When `true`, the width is constrained to a maximum value defined by the design system.
    ///      When `false`, no specific width constraint is applied, allowing the component to size itself or follow external
    ///      modifier. Defaults to `false`.
    ///    - status: The current status of the password input base on ` OUDSTextInput.Status `, by default to set *enabled*
    public init(label: String,
                password: Binding<String>,
                isHiddenPassword: Binding<Bool> = .constant(true),
                placeholder: String? = nil,
                prefix: String? = nil,
                lockIcon: Bool = false,
                helperText: String? = nil,
                isOutlined: Bool = false,
                constrainedMaxWidth: Bool = false,
                status: OUDSTextInput.Status = .enabled)
    {
        self.label = label
        self.password = password
        self.helperText = helperText
        self.placeholder = placeholder
        self.prefix = prefix
        self.lockIcon = lockIcon
        self.status = status
        _isHiddenPassword = isHiddenPassword
        self.isOutlined = isOutlined
        self.constrainedMaxWidth = constrainedMaxWidth
    }

    // MARK: Body

    public var body: some View {
        OUDSTextInput(label: label,
                      text: password,
                      placeholder: placeholder,
                      prefix: prefix,
                      leadingIcon: leadingIcon,
                      trailingAction: trailingAction,
                      helperText: helperText,
                      isOutlined: isOutlined,
                      constrainedMaxWidth: constrainedMaxWidth,
                      status: status)
            .environment(\.textInputAsSecureField, isHiddenPassword)
    }

    private var leadingIcon: Image? {
        // TODO: Doit on ajouter un acessibility label ?
        lockIcon ? Image(decorative: "ic_communication_security_and_safety_lock", bundle: theme.resourcesBundle) : nil
    }

    private var trailingAction: OUDSTextInput.TrailingAction {
        let iconName = isHiddenPassword ? "ic_communication_accessibility_vision" : "ic_functional_settings_and_tools_hide"
        let actionHint = isHiddenPassword ? "core_passwordInput_showPassword_a11y" : "core_passwordInput_hidePassword_a11y"

        return .init(icon: Image(decorative: iconName, bundle: theme.resourcesBundle),
                     actionHint: actionHint.localized(),
                     flipIcon: false)
        {
            isHiddenPassword.toggle()
        }
    }
}
#endif

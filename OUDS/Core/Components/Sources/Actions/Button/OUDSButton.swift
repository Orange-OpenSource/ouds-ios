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
import SwiftUI

// MARK: - OUDSThemesContract Button

/// The ``OUDSButton`` proposes layout with text only, icon only or text with icon.
///
/// ## Appearances
///
/// Five appearances are proposed for all layouts:
///
/// - **default (by default)**: Default buttons are used for actions which are not mandatory or essential for the user.
///
/// - **strong**: Should be singular and prominent, limited to one per view.
/// It should be reserved for the most critical action, such as "Next," "Save," "Submit," etc. It is a "call for action".
///
/// - **brand**: A brand primary color alternative to the *strong* button.
/// To be used sparingly for high-value specific actions or to visually anchor a brand moment. Do not use it as the default primary button in your interfaces.
/// A button with `OUDSButton.Appearance.Brand` appearance is not allowed as a direct or indirect child of an `OUDSColoredSurface`.
///
/// - **minimal**: Minimal buttons are commonly used for actions that are considered less crucial. They can be used independently or together with a strong button.
///
/// - **negative**: Negative buttons should be used sparingly to warn of a destructive action,
/// for example, delete or remove, typically resulting in the opening of a confirmation dialog.
/// A button with `OUDSButton.Appearance.Negative` appearance is not allowed as a direct or indirect child of an `OUDSColoredSurface`.
///
/// ## Code samples
///
/// ```swift
///     // Icon only with default appearance
///     OUDSButton(icon: Image("ic_heart"), appearance: .default) { /* the action to process */ }
///     // Or simpler
///     OUDSButton(icon: Image("ic_heart")) { /* the action to process */ }
///
///     // Text only with negative appearance
///     OUDSButton(text: "Delete", appearance: .negative,  style: .default) { /* the action to process */ }
///     // Or simpler
///     OUDSButton(text: "Delete", appearance: .negative) { /* the action to process */ }
///
///     // A loading button
///     OUDSButton(text: "Delete", style: .loading) { /* the action to process */ }
///
///     // Text and icon with strong appearance
///     OUDSButton(icon: Image("ic_heart"), text: "Validate", appearance: .strong) { /* the action to process */ }
/// ```
///
/// ## Styles
///
/// Two style are available:
///
/// - **default (by default)**: used in the normal usage of button. The aspect of the button changes for  states *disabled*, *pressed*, *hovered* or normal (i.e. *enabled*)
/// - **loading**: used after button was clicked and probably data are requested before navigate to a next screen or get updated data.
///
/// ## Rounded layout
///
/// Buttons can have rounded layouts to be favored in more emotional, immersive contexts or those tied to specific visual identities.
/// For standard or business-oriented journeys, keep the default corners.
/// This evolution addresses the need for flexibility in adapting the design to some brand contexts.
///
/// To activate the rounded button behavior, set to true the `hasRoundedButtons` values of the `Tuning` object
/// in your theme configuration (if the theme exposes this property at init).
/// Some themes do not have this flexibility like `SoshTheme` and `WireframeTheme`.
///
/// ## Colored surface
///
/// If button is placed on colored surface using `OUDSColoredSurface`, the default colors (content, background and border) are automatically adjusted to switch to monochrome mode.
///
/// **Remark: Today it is not allowed to place a Negative nor a Brand button on a colored surface.**
///
/// ## Specific behavior
///
/// For accessibility reasons, if the system settings for reducing motion is enabled, the loading indicator does not move.
/// For ecodesign reasons, if the device is in low power mode, the loading indicator does not move.
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/48a788-button)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A button component in light and dark mode with Orange theme](component_button_Orange)
///
/// ### Orange Business Tools
///
/// ![A button component in light and dark mode with Orange Business Tools theme](component_button_OrangeBusinessTools)
///
/// ### Sosh
///
/// ![A button component in light and dark mode with Sosh theme](component_button_Sosh)
///
/// ### Wireframe
///
/// ![A button component in light and dark mode with Wireframe theme](component_button_Wireframe)
///
/// - Version: 3.2.0 (Figma component design version)
/// - Since: 0.10.0
@available(iOS 15, macOS 15, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSButton: View {

    // MARK: Stored Properties

    private let type: `Type`
    private let appearance: Appearance
    private let style: Style
    private let action: () -> Void

    @State private var isHover: Bool
    @Environment(\.oudsOnColoredSurface) private var onColoredSurface

    private enum `Type` {
        case text(String)
        case icon(Image, String)
        case textAndIcon(text: String, icon: Image)
    }

    /// Represents the appearance of an OUDSThemesContract button, i.e. a kind of type
    public enum Appearance {
        /// Default button is used for action
        case `default`
        /// Strong button on the page should be singular and prominent
        case strong
        /// A brand primary color alternative to the Strong button.
        case brand
        /// Minimal button for actions that are considered less crucial
        case minimal
        /// Negative button used for destructive action
        case negative
    }

    /// Defines the style of the button, e.g. loading or not
    public enum Style {
        /// The default style, the button could be in prossed, hover, disabled or enabled internal state
        case `default`

        /// The loading style means a loading action is in progress, sometimes just after user tapped on button
        case loading
    }

    // MARK: Initializers

    /// Creates a button with text and icon.
    ///
    /// - Parameters:
    ///    - icon: An image which shoud contains an icon
    ///    - text: The text to display in the button
    ///    - appearance: The button appearance, default set to `.default`
    ///    - style: The button style, default set to `.default`
    ///    - action: The action to perform when the user triggers the button
    public init(icon: Image, text: String, appearance: Appearance = .default, style: Style = .default, action: @escaping () -> Void) {
        type = .textAndIcon(text: text, icon: icon)
        self.appearance = appearance
        self.style = style
        self.action = action

        isHover = false
    }

    /// Creates a button with an icon only.
    ///
    /// - Parameters:
    ///    - icon: An image which shoud contains an icon
    ///    - accessibilityLabel: The text to vocalize with *Voice Over* describing the button action
    ///    - appearance: The button appearance, default set to `.default`
    ///    - style: The button style, default set to `.default`
    ///    - action: The action to perform when the user triggers the button
    public init(icon: Image, accessibilityLabel: String, appearance: Appearance = .default, style: Style = .default, action: @escaping () -> Void) {
        type = .icon(icon, accessibilityLabel)
        self.appearance = appearance
        self.style = style
        self.action = action
        isHover = false
    }

    /// Create a button with a text only.
    ///
    /// - Parameters:
    ///    - text: The text of the button to display
    ///    - appearance: The button appearance, default set to `.default`
    ///    - style: The button style, default set to `.default`
    ///    - action: The action to perform when the user triggers the button
    public init(text: String, appearance: Appearance = .default, style: Style = .default, action: @escaping () -> Void) {
        type = .text(text)
        self.appearance = appearance
        self.style = style
        self.action = action
        isHover = false
    }

    // MARK: Body

    // swiftlint:disable line_length
    public var body: some View {
        // A button with negative or brand appearance is not allowed on a colored surface.
        // Test is done here because onColoredSurface is environment variable which is not accessible in init.
        if onColoredSurface, appearance == .negative || appearance == .brand {
            OL.fatal("An OUDSButton with OUDSButton.Appearance.{Negative | Brand} appearance has been detected as a direct or indirect child of an OUDSColoredSurface, which is not allowed.")
        }

        Button(action: action) {
            switch type {
            case let .icon(icon, _):
                ButtonIcon(icon: icon)
            case let .text(text):
                ButtonText(text: text)
            case let .textAndIcon(text, icon):
                ButtonTextAndIcon(text: text, icon: icon)
            }
        }
        .buttonStyle(OUDSButtonStyle(isHover: isHover, appearance: appearance, style: style))
        .disabled(style == .loading)
        .accessibilityLabel(accessibilityLabel)
        #if !os(watchOS) && !os(tvOS)
            .onHover { isHover in
                self.isHover = isHover
            }
        #endif
    }

    // swiftlint:enable line_length

    /// Forges a string to vocalize with *Voice Over* describing the button style `loading`
    /// or the text according to the button type. For iconOnly the `accessibilityLabel` is used,
    /// else the button text is used.
    private var accessibilityLabel: String {
        if style == .loading {
            "core_common_loading_a11y".localized()
        } else {
            switch type {
            case let .text(text), let .textAndIcon(text, _), let .icon(_, text):
                text
            }
        }
    }
}

// MARK: - Button Icon

private struct ButtonIcon: View {

    @Environment(\.theme) private var theme

    let icon: Image

    var body: some View {
        ScaledIcon(icon: icon.renderingMode(.template),
                   size: theme.button.sizeIconOnly)
            .padding(.all, theme.button.spaceInsetIconOnly)
            .frame(minWidth: theme.button.sizeMinWidth, minHeight: theme.button.sizeMinHeight)
    }
}

// MARK: - Button Text

private struct ButtonText: View {

    @Environment(\.theme) private var theme

    let text: String

    var body: some View {
        TextForButton(text: text)
            .padding(.vertical, theme.button.spacePaddingBlock)
            .padding(.horizontal, theme.button.spacePaddingInlineIconNone)
            .frame(minWidth: theme.button.sizeMinWidth, minHeight: theme.button.sizeMinHeight, alignment: .center)
    }
}

// MARK: - Button Text And Icon

private struct ButtonTextAndIcon: View {

    @Environment(\.theme) private var theme

    let text: String
    let icon: Image

    var body: some View {
        HStack(alignment: .center, spacing: theme.button.spaceColumnGapIcon) {
            FixedIcon(icon: icon.resizable().renderingMode(.template),
                      size: theme.button.sizeIcon)
            TextForButton(text: text)
        }
        .padding(.vertical, theme.button.spacePaddingBlock)
        .padding(.leading, theme.button.spacePaddingInlineIconStart)
        .padding(.trailing, theme.button.spacePaddingInlineEndIconStart)
        .frame(minWidth: theme.button.sizeMinWidth, minHeight: theme.button.sizeMinHeight, alignment: .center)
    }
}

// MARK: - Text For Button

private struct TextForButton: View {

    @Environment(\.theme) private var theme

    let text: String

    var body: some View {
        Text(LocalizedStringKey(text))
            .labelStrongLarge(theme)
            .multilineTextAlignment(.center)
    }
}

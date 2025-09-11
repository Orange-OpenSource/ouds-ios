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

// MARK: - OUDS Button

/// The ``OUDSButton`` proposes layout with text only, icon only or text with icon.
///
/// ## Hierarchies
///
/// Five hierarchies are proposed for all layouts:
///
/// - **default (by default)**: Default buttons are used for actions which are not mandatory or essential for the user.
///
/// - **strong**: Should be singular and prominent, limited to one per view.
/// It should be reserved for the most critical action, such as "Next," "Save," "Submit," etc. It is a "call for action".
///
/// - **brand**: A brand primary color alternative to the *strong* button.
/// To be used sparingly for high-value specific actions or to visually anchor a brand moment. Do not use it as the default primary button in your interfaces.
/// A button with `OUDSButton.Hierarchy.Brand` hierarchy is not allowed as a direct or indirect child of an `OUDSColoredSurface`.
///
/// - **minimal**: Minimal buttons are commonly used for actions that are considered less crucial. They can be used independently or together with a strong button.
///
/// - **negative**: Negative buttons should be used sparingly to warn of a destructive action,
/// for example, delete or remove, typically resulting in the opening of a confirmation dialog.
/// A button with `OUDSButton.Hierarchy.Negative` hierarchy is not allowed as a direct or indirect child of an `OUDSColoredSurface`.
///
/// ## Code samples
///
/// ```swift
///     // Icon only with default hierarchy
///     OUDSButton(icon: Image("ic_heart"), hierarchy: .default) { /* the action to process */ }
///     // Or simpler
///     OUDSButton(icon: Image("ic_heart")) { /* the action to process */ }
///
///     // Text only with negative hierarchy
///     OUDSButton(text: "Delete", hierarchy: .negative,  style: .default) { /* the action to process */ }
///     // Or simpler
///     OUDSButton(text: "Delete", hierarchy: .negative) { /* the action to process */ }
///
///     // A loading button
///     OUDSButton(text: "Delete", style: .loading) { /* the action to process */ }
///
///     // Text and icon with strong hierarchy
///     OUDSButton(icon: Image("ic_heart"), text: "Validate", hierarchy: .strong) { /* the action to process */ }
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
/// To activate the rounded button behavior, set to true the  `hasRoundedCorners` values of the `Tuning` object
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
/// ### Orange Inverse
///
/// ![A button component in light and dark mode with Orange Inverse theme](component_button_OrangeInverse)
///
/// ### Sosh
///
/// ![A button component in light and dark mode with Sosh theme](component_button_Sosh)
///
/// ### Wireframe
///
/// ![A button component in light and dark mode with Wireframe theme](component_button_Wireframe)
///
/// - Version: 3.0.0 (Figma component design version)
/// - Since: 0.10.0
public struct OUDSButton: View {

    // MARK: Stored Properties

    private let type: `Type`
    private let hierarchy: Hierarchy
    private let style: Style
    private let action: () -> Void

    @Environment(\.oudsOnColoredSurface) private var onColoredSurface

    private enum `Type` {
        case text(String)
        case icon(Image, String)
        case textAndIcon(text: String, icon: Image)
    }

    /// Represents the hierarchy of an OUDS button, i.e. a kind of type
    public enum Hierarchy {
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

    /// Create a button with text and icon.
    ///
    /// - Parameters:
    ///    - icon: An image which shoud contains an icon
    ///    - text: The text to display in the button
    ///    - hierarchy: The button hierarchy, default set to `.default`
    ///    - style: The button style, default set to `.default`
    ///    - action: The action to perform when the user triggers the button
    public init(icon: Image, text: String, hierarchy: Hierarchy = .default, style: Style = .default, action: @escaping () -> Void) {
        type = .textAndIcon(text: text, icon: icon)
        self.hierarchy = hierarchy
        self.style = style
        self.action = action
    }

    /// Create a button with an icon only.
    ///
    /// - Parameters:
    ///    - icon: An image which shoud contains an icon
    ///    - accessibilityLabel: The text to vocalize with *Voice Over* describing the button action
    ///    - hierarchy: The button hierarchy, default set to `.default`
    ///    - style: The button style, default set to `.default`
    ///    - action: The action to perform when the user triggers the button
    public init(icon: Image, accessibilityLabel: String, hierarchy: Hierarchy = .default, style: Style = .default, action: @escaping () -> Void) {
        type = .icon(icon, accessibilityLabel)
        self.hierarchy = hierarchy
        self.style = style
        self.action = action
    }

    /// Create a button with a text only.
    ///
    /// - Parameters:
    ///    - text: The text of the button to display
    ///    - hierarchy: The button hierarchy, default set to `.default`
    ///    - style: The button style, default set to `.default`
    ///    - action: The action to perform when the user triggers the button
    public init(text: String, hierarchy: Hierarchy = .default, style: Style = .default, action: @escaping () -> Void) {
        type = .text(text)
        self.hierarchy = hierarchy
        self.style = style
        self.action = action
    }

    // MARK: Body

    // swiftlint:disable line_length
    public var body: some View {
        // A button with negative or brand hierarchy is not allowed on a colored surface.
        // Test is done here because onColoredSurface is environment variable which is not accessible in init.
        if onColoredSurface, hierarchy == .negative || hierarchy == .brand {
            OL.fatal("An OUDSButton with OUDSButton.Hierarchy.{Negative | Brand} hierarchy has been detected as a direct or indirect child of an OUDSColoredSurface, which is not allowed.")
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
        .buttonStyle(OUDSButtonStyle(hierarchy: hierarchy, style: style))
        .accessibilityLabel(accessibilityLabel)
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
        ScaledIcon(icon: icon, size: theme.button.buttonSizeIconOnly)
            .padding(.all, theme.button.buttonSpaceInsetIconOnly)
            .frame(minWidth: theme.button.buttonSizeMinWidth, minHeight: theme.button.buttonSizeMinHeight)
    }
}

// MARK: - Button Text

private struct ButtonText: View {

    @Environment(\.theme) private var theme

    let text: String

    var body: some View {
        TextForButton(text: text)
            .padding(.vertical, theme.button.buttonSpacePaddingBlock)
            .padding(.horizontal, theme.button.buttonSpacePaddingInlineIconNone)
            .frame(minWidth: theme.button.buttonSizeMinWidth, minHeight: theme.button.buttonSizeMinHeight, alignment: .center)
    }
}

// MARK: - Button Text And Icon

private struct ButtonTextAndIcon: View {

    @Environment(\.theme) private var theme

    let text: String
    let icon: Image

    var body: some View {
        HStack(alignment: .center, spacing: theme.button.buttonSpaceColumnGapIcon) {
            FixedIcon(icon: icon, size: theme.button.buttonSizeIcon)
            TextForButton(text: text)
        }
        .padding(.vertical, theme.button.buttonSpacePaddingBlock)
        .padding(.leading, theme.button.buttonSpacePaddingInlineIconStart)
        .padding(.trailing, theme.button.buttonSpacePaddingInlineEndIconStart)
        .frame(minWidth: theme.button.buttonSizeMinWidth, minHeight: theme.button.buttonSizeMinHeight, alignment: .center)
    }
}

// MARK: - Scaled Icon

private struct ScaledIcon: View {

    let icon: Image
    @ScaledMetric var size: CGFloat

    var body: some View {
        IconForButton(icon: icon)
            .frame(width: size, height: size, alignment: .center)
    }
}

// MARK: - Fixed Icon

private struct FixedIcon: View {

    let icon: Image
    let size: CGFloat

    var body: some View {
        IconForButton(icon: icon)
            .frame(width: size, height: size, alignment: .center)
    }
}

// MARK: - Icon For Button

private struct IconForButton: View {

    let icon: Image

    var body: some View {
        icon
            .resizable()
            .renderingMode(.template)
    }
}

// MARK: - Text For Button

private struct TextForButton: View {

    @Environment(\.theme) private var theme

    let text: String

    var body: some View {
        Text(LocalizedStringKey(text))
            .typeLabelStrongLarge(theme)
            .multilineTextAlignment(.center)
    }
}

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
/// Four hierarchies are proposed for all layouts:
///
/// - **default**: Default buttons are used for actions which are not mandatory or essential for the user.
///
/// - **strong**: The Strong "call for action" on the page should be singular and prominent, limited to one per view.
/// It should be reserved for the most critical action, such as "Next," "Save," "Submit," etc.
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
///     OUDSButton(hierarchy: .default, icon: Image("ic_heart")) { /* the action to process */ }
///
///     // Text only with negative hierarchy
///     OUDSButton(hierarchy: .negative, text: "Delete") { /* the action to process */ }
///
///     // Text and icon with strong hierarchy
///     OUDSButton(hierarchy: .strong, icon: Image("ic_heart"), text: "Validate") { /* the action to process */ }
/// ```
///
/// ## Styles
///
/// Two style are available:
///
/// - **default**: used in the normal usage of button. The aspect of the button changes for following states disabled, pressed, hovered or normal (i.e. enabled)
/// - **loading**: used after button was clicked and probably data are requested before navigate to a next screen or get updated data.
///
/// ## Colored Surface
///
/// If button is placed on colored surface using `OUDSColoredSurface`, the default colors (content, background and border) are automatically adjusted to switch to monochrom.
///
/// **Remark: Today it is not allowed to place a Negative button on a colored surface.**
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/48a788-button)
///
/// - Since: 0.10.0
public struct OUDSButton: View {

    // MARK: Stored Properties

    @Environment(\.oudsOnColoredSurface) private var onColoredSurface

    private let type: `Type`
    private let hierarchy: Hierarchy
    private let style: Style
    private let action: () -> Void

    private enum `Type` {
        case text(String)
        case icon(Image)
        case textAndIcon(text: String, icon: Image)
    }

    /// Represents the hierarchy of an OUDS button, i.e. a kind of type
    public enum Hierarchy {
        /// Default button is used for action
        case `default`
        /// Strong button on the page should be singular and prominent
        case strong
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
    ///    - hierarchy: The button hierarchy
    ///    - style: The button style
    ///    - action: The action to perform when the user triggers the button
    public init(icon: Image, text: String, hierarchy: Hierarchy, style: Style, action: @escaping () -> Void) {
        self.type = .textAndIcon(text: text, icon: icon)
        self.hierarchy = hierarchy
        self.style = style
        self.action = action
    }

    /// Create a button with an icon only.
    ///
    /// - Parameters:
    ///    - icon: An image which shoud contains an icon
    ///    - hierarchy: The button hierarchy
    ///    - style: The button style
    ///    - action: The action to perform when the user triggers the button
    public init(icon: Image, hierarchy: Hierarchy, style: Style, action: @escaping () -> Void) {
        self.type = .icon(icon)
        self.hierarchy = hierarchy
        self.style = style
        self.action = action
    }

    /// Create a button with a text only.
    ///
    /// - Parameters:
    ///    - text: The text of the button to display
    ///    - hierarchy: The button hierarchy
    ///    - style: The button style
    ///    - action: The action to perform when the user triggers the button
    public init(text: String, hierarchy: Hierarchy, style: Style, action: @escaping () -> Void) {
        self.type = .text(text)
        self.hierarchy = hierarchy
        self.style = style
        self.action = action
    }

    // MARK: Body

    public var body: some View {
        // A button with negative hierarchy is not allowed on a colored surface
        // Test is done here because onColoredSurface is environment variable which is not accessible in init.
        if onColoredSurface, hierarchy == .negative {
            OL.fatal("An OUDSButton with OUDSButton.Hierarchy.Negative hierarchy has been detected as a direct or indirect child of an OUDSColoredSurface, which is not allowed.")
        }

        Button(action: action) {
            switch type {
            case let .icon(icon):
                ButtonIcon(icon: icon)
            case let .text(text):
                ButtonText(text: text)
            case let .textAndIcon(text, icon):
                ButtonTextAndIcon(text: text, icon: icon)
            }
        }
        .buttonStyle(OUDSButtonStyle(hierarchy: hierarchy, style: style))
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

    @Environment(\.theme) private var theme

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

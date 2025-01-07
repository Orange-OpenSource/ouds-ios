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

import SwiftUI

/// The `OUDSButton` propose layout with text only, icon only or text and icon.
///
/// ## Hierarchies
///
/// Four hieraries are proposed for all layouts:
///
/// - **default**: Default buttons are used for actions which are not mandatory or essential for the user.
///
/// - **strong**: The Strong "call for action" on the page should be singular and prominent, limited to one per view.
/// It should be reserved for the most critical action, such as "Next," "Save," "Submit," etc.
///
/// - **minimal**: Minimal buttons are commonly used for actions that are considered less crucial. They can be used independently or together with a strong button.
///
/// - **negative**: Negative buttons should be used sparingly to warn of a destructive action, for example, delete or remove, typically
/// resulting in the opening of a confirmation dialog.
///
/// ```
///     // Icon only with default hierarchy
///     OUDSButton(hierarchy: .default, icon: Image("ic_heart")) {}
///
///     // Text only with negative hierarchy
///     OUDSButton(hierarchy: .negative, text: "Delete") {}
///
///     // Text and icon with strong hierarchy
///     OUDSButton(hierarchy: .strong, icon: Image("ic_heart"), text: "Validate") {}
///
/// ```
///
/// ## States
///
/// Three states are available:
///
/// - **normal**: used in the normal usage of button. The style of the button change for folowing states disabled, pressed, hovered or normal (i.e. enabled)
/// - **skeleton**: used when screen if presenting and probably loading data for the first time.
/// - **loading**: used after button was clicked and probably data are requested before navigate to a next screen or get updated data.
///
/// ## Colored Surface
///
/// If button is placed on colored surface, the default colors (content, background and border) must be adapted.
/// **Remark: Today it is not allowed to placed a Negative button on a coloed surface.
///
public struct OUDSButton: View {

    // MARK: Stored Properties

    private let type: `Type`
    private let hierarchy: Hierarchy
    private let state: ButtonState
    private let action: () -> Void

    private enum `Type`{
        case text(String)
        case icon(Image)
        case textAndIcon(text: String, icon: Image)
    }

    /// Represents the hierarchy of an OUDS button
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

    /// Defines the state of the button
    public enum ButtonState {
        /// The normal state, the button coumd be in prossed, hover, disabled or enabled internal state
        case normal

        /// The loading state means a loading action is in progress, sometimes just after user tapped on button
        case loading

        /// The skeleton state can be apply on the button when the screen is loadind data for the first time
        case skeleton
    }

    // MARK: Initializers

    /// Create a button with text and icon.
    /// - Parameters:
    ///    - icon: An image shoud contains an icon
    ///    - text: The text
    ///    - hierarchy: The hierarchy of the button
    ///    - state: The current state of the button (normal or loading/skeleton
    ///    - action: The action to perform when the user triggers the button
    public init(icon: Image, text: String, hierarchy: Hierarchy, state: ButtonState, action: @escaping () -> Void) {
        self.type = .textAndIcon(text: text, icon: icon)
        self.hierarchy = hierarchy
        self.state = state
        self.action = action
    }

    /// Create a button with an icon.
    ///
    /// - Parameters:
    ///    - icon: An image shoud contains an icon
    ///    - hierarchy: The hierarchy of the button
    ///    - state: The current state of the button (normal or loading/skeleton)
    ///    - action: The action to perform when the user triggers the button
    public init(icon: Image, hierarchy: Hierarchy, state: ButtonState, action: @escaping () -> Void) {
        self.type = .icon(icon)
        self.hierarchy = hierarchy
        self.state = state
        self.action = action
    }

    /// Create a button with a text
    /// - Parameters:
    ///    - text: The text of the button
    ///    - hierarchy: The hierarchy of the button
    ///    - state: The current state of the button (normal or loading/skeleton)
    ///    - action: The action to perform when the user triggers the button
    public init(text: String, hierarchy: Hierarchy, state: ButtonState, action: @escaping () -> Void) {
        self.type = .text(text)
        self.hierarchy = hierarchy
        self.state = state
        self.action = action
    }

    // MARK: Body

    public var body: some View {
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
        .buttonStyle(OUDSButtonStyle(hierarchy: hierarchy, state: state))
    }
}

private struct ButtonIcon: View {

    @Environment(\.theme) private var theme

    // MARK: Stored Properties

    let icon: Image

    // MARK: Body

    var body: some View {
        IconForButton(icon: icon)
            .padding(.all, theme.buttonSpaceInsetIconOnly)
            .frame(minWidth: theme.buttonSizeMinWidth, minHeight: theme.buttonSizeMinHeight, maxHeight: theme.buttonSizeMaxHeight, alignment: .center)
    }
}

private struct ButtonText: View {

    @Environment(\.theme) private var theme

    // MARK: Stored Properties

    let text: String

    // MARK: Body

    var body: some View {
        TextForButton(text: text)
            .padding(.vertical, theme.buttonSpacePaddingBlock)
            .padding(.horizontal, theme.buttonSpacePaddingInlineIconNone)
    }
}

private struct ButtonTextAndIcon: View {

    @Environment(\.theme) private var theme

    // MARK: Stored Properties

    let text: String
    let icon: Image

    // MARK: Body

    var body: some View {
        HStack(alignment: .center, spacing: theme.buttonSpaceColumnGapIcon) {
            IconForButton(icon: icon)
            TextForButton(text: text)
        }
        .padding(.vertical, theme.buttonSpacePaddingBlock)
        .padding(.leading, theme.buttonSpacePaddingInlineIconStart)
        .padding(.trailing, theme.buttonSpacePaddingInlineEndIconStart)
    }
}

private struct IconForButton: View {

    @Environment(\.theme) private var theme

    // MARK: Stored Properties

    let icon: Image

    // MARK: Body

    var body: some View {
        icon
            .resizable()
            .renderingMode(.template)
            .frame(width: theme.buttonSizeIcon, height: theme.buttonSizeIcon, alignment: .center)
    }
}

private struct TextForButton: View {

    @Environment(\.theme) private var theme

    // MARK: Stored Properties

    let text: String

    // MARK: Body

    var body: some View {
        Text(LocalizedStringKey(text)).typeLabelStrongLarge(theme)
    }
}

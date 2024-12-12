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
import OUDSTokensSemantic
import SwiftUI

/// Used to apply the right style on a `OUDSButton` according to the `hierarchy`
/// and the `style`.
///
/// Four hierarchies are proposed:
/// - default: Default buttons are used for actions which are not mandatory or essential for the user.
///
/// - strong: The Strong "call for action" on the page should be singular and prominent, limited to one per view.
/// It should be reserved for the most critical action, such as "Next," "Save," "Submit," etc.
///
/// - minimal: Minimal buttons are commonly used for actions that are considered less crucial. They can be used independently or together with a strong button.
///
/// - negative: Negative buttons should be used sparingly to warn of a destructive action, for example, delete or remove, typically
/// resulting in the opening of a confirmation dialog.
///
/// Three styles are available:
/// - normal: is the normal state of a button which can be disabled, pressed, hovered or normal (i.e. enabled)
/// - skeleton: the style used when screen if presenting and probably loading data for the first time.
/// - loading: the style used after button was clicked and probably data are requested before navigate to a next screen or get updated data.
///
public struct OUDSButtonStyle: ButtonStyle {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.isEnabled) private var isEnable
    @Environment(\.buttonOnColoredSurface) private var buttonOnColoredSurface

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

    /// Defines the style of the button
    public enum Style {
        /// The normal style, the button coumd be in prossed, hover, disabled or enabled state
        case normal

        /// The loading style means a loading action is in progress, sometimes just after user tapped on button
        case loading

        /// The skeleton style can be apply on the button when the screen is loadind data for the first time
        case skeleton
    }

    // MARK: Stored Properties

    private let style: Style
    private let hierarchy: Hierarchy
    @State private var isHover: Bool

    // MARK: Initializer

    /// Initialize the Button style for the `hierarchy`
    /// of `OUDSButton` and the `style` to apply.
    ///  - Parameters:
    ///     - hierarchy: The button hierarchy
    ///     - style: The design style
    public init(hierarchy: Hierarchy, style: Style) {
        self.hierarchy = hierarchy
        self.style = style
        self.isHover = false
    }

    // MARK: Body

    public func makeBody(configuration: Configuration) -> some View {
        switch style {
        case .normal:
            configuration.label
                .onHover { isHover in
                    self.isHover = isHover
                }
                .modifier(GeneralViewModifier(hierarchy: hierarchy, isEnabled: isEnable, isHover: isHover, isPressed: configuration.isPressed))
        case .loading:
            configuration.label
                .modifier(ButtonLoadingModifier(hierarchy: hierarchy))
                .modifier(GeneralViewModifier(hierarchy: hierarchy, isEnabled: true, isHover: false, isPressed: false))
        case .skeleton:
            configuration.label.modifier(ButtonSkeletonModifier())
        }
    }
}

enum ButtonState {
    case enabled, hover, pressed, disabled, loading
}

// MARK: - General modifier

///  This modifier has in charge to apply foreground, background colors
/// and add a border (width, radius and color) associated to the hierarchy
/// and according to the state (computed with `isEnabled`, `isPreessed` and `isHover` flags)
private struct GeneralViewModifier: ViewModifier {

    let hierarchy: OUDSButtonStyle.Hierarchy
    let isEnabled: Bool
    let isHover: Bool
    let isPressed: Bool

    func body(content: Content) -> some View {
        content
            .modifier(ButtonBorderModifier(hierarchy: hierarchy, state: state))
            .modifier(ButtonForegroundModifier(hierarchy: hierarchy, state: state))
            .modifier(ButtonBackgroundModifier(hierarchy: hierarchy, state: state))
    }

    private var state: ButtonState {
        if !isEnabled {
            return .disabled
        }

        if isPressed {
            return .pressed
        }

        if isHover {
            return .hover
        }

        return .enabled
    }
}

// MARK: - Skeleton Modifier

/// Only used to apply the skeleton styl (grey rectangle over all)
private struct ButtonSkeletonModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    func body(content: Content) -> some View {
        content.overlay(theme.colorContentDefault.color(for: colorScheme)) // TODO: 💠_indicator/skeleton/color/bg
    }
}

// MARK: - Loading modifiers

private struct LoagingIndicator: View {

    @State private var isAnimating = false
    let color: Color

    var body: some View {
        Circle()
            .trim(from: 0, to: 0.7)
            .stroke(color, lineWidth: 3)
            .rotationEffect(.degrees(isAnimating ? 360 : 0))
            .onAppear {
                withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false)) {
                    self.isAnimating.toggle()
                }
            }
    }
}

/// Used to add a Progress indicator instead of conent (Text, Icon)
/// As the button must keepp the size of the content, the indicator is
/// added as overlay on top, and the content is hidden applying an opacity.
private struct ButtonLoadingModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored Properties

    let hierarchy: OUDSButtonStyle.Hierarchy

    // MARK: Body

    func body(content: Content) -> some View {
        content
            .opacity(0)
            .overlay {
                LoagingIndicator(color: color)
                    .padding(.vertical, theme.buttonSpacePaddingBlock)
            }
    }

    // MARK: Private helper

    private var color: Color {
        switch hierarchy {
        case .default:
            theme.buttonColorContentDefaultLoading.color(for: colorScheme)
        case .strong:
            theme.colorContentOnActionLoading.color(for: colorScheme)
        case .minimal:
            theme.buttonColorContentMinimalLoading.color(for: colorScheme)
        case .negative:
            theme.colorContentOnActionNegative.color(for: colorScheme)
        }
    }
}

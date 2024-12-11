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
/// - default:
/// - strong:
/// - minimal:
/// - negative:
///
/// Three styles are proposed:
/// - normal: is the normal state of a button which can be disabled, focused, hovered or normal enabled
/// - skeleton: the style used when screen if presenting and probably loading data.
/// - loading: the style used after button was clicked and probably data are requested before navigate to a next screen or get updated data.
///
public struct OUDSButtonStyle: ButtonStyle {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.isEnabled) private var isEnable

    // MARK: Stored Properties

    /// Represents the hierarchy of an OUDS button.
    public enum Hierarchy {
        case `default`, strong, minimal, negative
    }
    public enum Style {
        case normal, loading, skeleton
    }

    let style: Style
    let hierarchy: Hierarchy

    @State var isHover: Bool

    // MARK: Initializer

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
        content.overlay(theme.colorGradientSkeletonMiddle.color(for: colorScheme)) // TODO: 💠_indicator/skeleton/color/bg
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
            theme.colorActionPrimaryLoading.color(for: colorScheme) // TODO: colorActionLoading
        case .minimal:
            theme.buttonColorContentMinimalLoading.color(for: colorScheme)
        case .negative:
            theme.colorActionNegativeLoading.color(for: colorScheme)
        }
    }
}

// MARK: - Modifiers used by General Modifier

// MARK: Foreground modifier

/// Used to apply the right forgeround color associated to the hierarchy
private struct ButtonForegroundModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored Properties

    let hierarchy: OUDSButtonStyle.Hierarchy
    let state: ButtonState

    // MARK: Body

    func body(content: Content) -> some View {
        content.foregroundStyle(colorToken.color(for: colorScheme))
    }

    // MARK: Private helpers

    private var colorToken: MultipleColorSemanticTokens {
        switch state {
        case .enabled, .loading:
            return token
        case .hover:
            return hoverToken
        case .pressed:
            return pressedToken
        case .disabled:
            return disabledToken
        }
    }

    private var hoverToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            theme.buttonColorContentDefaultHover
        case .strong:
            theme.colorActionPrimaryHover // colorActionHover
        case .minimal:
            theme.buttonColorContentMinimalHover
        case .negative:
            theme.colorActionNegativeHover
        }
    }

    private var pressedToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            theme.buttonColorContentDefaultEnabled
        case .strong:
            theme.buttonColorBgDefaultEnabled
        case .minimal:
            theme.buttonColorContentMinimalEnabled
        case .negative:
            theme.colorContentOnActionNegative
        }
    }

    private var token: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            theme.buttonColorContentDefaultEnabled
        case .strong:
            theme.buttonColorBgDefaultEnabled // colorContentOnActionEnabled
        case .minimal:
            theme.buttonColorContentMinimalEnabled
        case .negative:
            theme.colorContentOnActionDisabled // colorContentOnActionNegative
        }
    }
    private var disabledToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            theme.buttonColorContentDefaultDisabled
        case .strong:
            theme.colorContentOnActionDisabled
        case .minimal:
            theme.buttonColorContentMinimalDisabled
        case .negative:
            theme.colorContentOnActionDisabled
        }
    }
}

// MARK: Border Modifier

/// Used to apply the right background color associated to the hierarchy
private struct ButtonBackgroundModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored Properties

    let hierarchy: OUDSButtonStyle.Hierarchy
    let state: ButtonState

    // MARK: Body

    func body(content: Content) -> some View {
        content.background(colorToken.color(for: colorScheme))
    }

    // MARK: Private helpers

    private var colorToken: MultipleColorSemanticTokens {
        switch state {
        case .enabled, .loading:
            return token
        case .hover:
            return hoverToken
        case .pressed:
            return pressedToken
        case .disabled:
            return disbledToken
        }
    }

    private var pressedToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            theme.buttonColorBgDefaultPressed
        case .strong:
            theme.colorActionPressed
        case .minimal:
            theme.buttonColorBgMinimalPressed
        case .negative:
            theme.colorActionNegativePressed
        }
    }

    private var token: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            theme.buttonColorBgDefaultEnabled
        case .strong:
            theme.colorActionDisabled // TODO colorActionEnabled
        case .minimal:
            theme.buttonColorBgMinimalEnabled
        case .negative:
            theme.colorActionNegativeEnabled
        }
    }

    private var disbledToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            theme.buttonColorBgDefaultDisabled
        case .strong:
            theme.colorActionDisabled
        case .minimal:
            theme.buttonColorBgMinimalDisabled
        case .negative:
            theme.colorActionDisabled
        }
    }

    private var hoverToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            theme.buttonColorBgDefaultHover
        case .strong:
            theme.colorContentOnActionPrimaryHover // theme.colorContentOnActionHover
        case .minimal:
            theme.buttonColorBgMinimalHover
        case .negative:
            theme.colorContentOnActionNegative
        }
    }
}

// MARK: Border modifier

/// Used to apply a border with color, width and radius associated to the hierarchy
private struct ButtonBorderModifier: ViewModifier {

    @Environment(\.theme) private var theme

    // MARK: Stored Properties

    let hierarchy: OUDSButtonStyle.Hierarchy
    let state: ButtonState

    // MARK: Body

    func body(content: Content) -> some View {
        switch hierarchy {
        case .default:
            content
                .oudsBorder(
                    style: theme.borderStyleDefault,
                    width: theme.borderWidthDefault,
                    radius: theme.buttonBorderRadius,
                    color: defaultColor)
        case .strong:
            content
        case .minimal:
            content
                .oudsBorder(
                    style: theme.borderStyleDefault,
                    width: minimalWidth,
                    radius: theme.buttonBorderRadius,
                    color: minimalColor)
        case .negative:
            content
        }
    }

    // MARK: Private helpers

    // MARK: Default hierarchy
    private var defaultWidth: BorderWidthSemanticToken {
        switch state {
        case .enabled:
            return theme.buttonBorderWidthDefault
        case .hover:
            return theme.buttonBorderWidthDefaultInteraction
        case .pressed:
            return theme.buttonBorderWidthDefaultInteraction
        case .disabled:
            return theme.buttonBorderWidthDefault
        case .loading:
            return theme.buttonBorderWidthDefaultInteraction
        }
    }

    private var defaultColor: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            return theme.buttonColorBorderDefaultEnabled
        case .hover:
            return theme.buttonColorBorderDefaultHover
        case .pressed:
            return theme.buttonColorBorderDefaultPressed
        case .disabled:
            return theme.buttonColorBorderDefaultDisabled
        case .loading:
            return theme.buttonColorBorderDefaultLoading
        }
    }

    // MARK: Minimal hierarchy
    private var minimalWidth: BorderWidthSemanticToken {
        switch state {
        case .enabled:
            return theme.buttonBorderWidthMinimal
        case .hover:
            return theme.buttonBorderWidthMinimalInteraction
        case .pressed:
            return theme.buttonBorderWidthMinimalInteraction
        case .disabled:
            return theme.buttonBorderWidthMinimalInteraction
        case .loading:
            return theme.buttonBorderWidthMinimalInteraction
        }
    }

    private var minimalColor: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            return theme.buttonColorBorderMinimalEnabled
        case .hover:
            return theme.buttonColorBorderMinimalHover
        case .pressed:
            return theme.buttonColorBorderMinimalPressed
        case .disabled:
            return theme.buttonColorBorderMinimalDisabled
        case .loading:
            return theme.buttonColorBorderMinimalLoading
        }
    }
}

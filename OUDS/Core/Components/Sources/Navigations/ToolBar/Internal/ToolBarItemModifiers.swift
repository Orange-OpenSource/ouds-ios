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
import OUDSTokensSemantic
import SwiftUI

// MARK: - ToolBar Item Action Style Modifier (Top/Bottom)

/// Applies styling to toolbar (top/bottom) action items depending depending to OS versions:
/// - For iOS 26+ / Liquid Glass, action button in toolbar top have colored background
/// - For iOS lower than 26 / not Liquid Glass, action button in toolbar top do not have colored background but foreground color instead
///
/// The tokens of colors are applied as best as the API allows; some button styles are also applied to force the rendering.
/// However things cannot be customized that much for Liquid Glass.
struct ToolBarActionItemModifier: ViewModifier {

    // MARK: Properties

    let style: OUDSToolBarItem.ActionStyle

    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        if style == .prominent {
            content
                .tint(theme.colors.actionSelected)
                .buttonStyle(.borderedProminent)
                .buttonStyle(ToolBarActionItemStyle(style: style))
        } else {
            content
                .tint(theme.colors.actionSelected)
                .buttonStyle(ToolBarActionItemStyle(style: style))
        }
    }
}

// MARK: - ToolBar Action Item Style

/// Used to apply color for the pressed and disabled states
struct ToolBarActionItemStyle: ButtonStyle {

    // MARK: Properties

    let style: OUDSToolBarItem.ActionStyle

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.isLiquidGlassDisabled) private var isLiquidGlassDisabled

    // MARK: Body

    func makeBody(configuration: Configuration) -> some View {
        if !isEnabled {
            configuration.label.foregroundColor(theme.button.colorContentMinimalDisabled)
        } else {
            if isLiquidGlassDisabled {
                if configuration.isPressed {
                    configuration.label.foregroundColor(theme.button.colorContentMinimalPressed)
                } else {
                    configuration.label.foregroundColor(theme.button.colorContentMinimalEnabled)
                }
            } else {
                switch style {
                case .default:
                    configuration.label.foregroundColor(theme.button.colorContentMinimalEnabled)
                case .prominent:
                    configuration.label
                        .foregroundColor(theme.colors.contentOnActionSelected)
                case .tinted:
                    configuration.label.foregroundColor(theme.colors.actionSelected)
                }
            }
        }
    }
}

// MARK: - ToolBar Item Navigation Style Modifier (Top)

/// Applies styling to toolbar top items depending depending to OS version.
/// The tokens of colors are applied as best as the API allows; some button styles are also applied to force the rendering.
/// However things cannot be customized that much for Liquid Glass.
struct ToolBarTopItemNavigationStyle: ButtonStyle {

    // MARK: Properties

    let type: OUDSToolBarItem.NavigationType

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.isLiquidGlassDisabled) private var isLiquidGlassDisabled

    // MARK: Body

    func makeBody(configuration: Configuration) -> some View {
        if isLiquidGlassDisabled {
            configuration.label
                .foregroundColor(foregroundColor)
        } else {
            configuration.label
                .foregroundColor(foregroundColor)
                .buttonStyle(.plain)
        }
    }

    // MARK: Helper

    private var foregroundColor: MultipleColorSemanticToken {
        switch type {
        case .back:
            isEnabled ? theme.button.colorContentMinimalEnabled : theme.button.colorContentMinimalDisabled
        case .close:
            MultipleColorSemanticToken("#999999")
        }
    }
}
#endif

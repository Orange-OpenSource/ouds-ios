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

#if !os(watchOS)
import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

// MARK: - ToolBar Item Action Style Modifier (Bottom)

/// Applies styling to toolBar bottom items.
/// Only the foreground color of the items changesd depending to the OS version.
struct ToolBarBottomItemActionStyleModifier: ViewModifier {

    @Environment(\.theme) private var theme

    // TODO: #1174 - For iOS 18 and lower, apply the blur effects etc
    func body(content: Content) -> some View {
        content.oudsForegroundColor(theme.colors.contentDefault)
    }
}

// MARK: - ToolBar Item Action Style Modifier (Top)

// Applies styling to toolBar top items depending depending to OS versions:
// - For iOS 26+ / Liquid Glass, action button in toolBar top have colored background
// - For iOS lower than 26 / not Liquid Glass, action button in toolBar top do not have colored background but foreground color instead
// The tokens of colors are applied as best as the API allow; some button styles are alsso applied to force the rendering.
// However things cannot be customized that much for Liquid Glass.

struct ToolBarTopItemActionModifier: ViewModifier {
    let style: OUDSToolBarItem.ActionStyle

    func body(content: Content) -> some View {
        if style == .proiminent {
            content
                .buttonStyle(.borderedProminent)
        } else {
            content
                .buttonStyle(ToolBarTopItemActionStyle(style: style))
        }
    }
}

struct ToolBarTopItemActionStyle: ButtonStyle {

    let style: OUDSToolBarItem.ActionStyle

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled

    func makeBody(configuration: Configuration) -> some View {
        if !isEnabled {
            configuration.label.oudsForegroundColor(theme.button.colorContentMinimalDisabled)
        } else {
            if #available(iOS 26, *) {
                switch style {
                case .default:
                    configuration.label.oudsForegroundColor(theme.button.colorContentMinimalEnabled)
                case .proiminent:
                    configuration.label
                        .oudsTintColor(theme.colors.actionSelected)
                        .oudsForegroundColor(theme.colors.contentOnActionSelected)
                case .tinted:
                    configuration.label.oudsForegroundColor(theme.colors.actionSelected)
                }
            } else {
                if configuration.isPressed {
                    configuration.label.oudsForegroundColor(theme.button.colorContentMinimalPressed)
                } else {
                    configuration.label.oudsForegroundColor(theme.button.colorContentMinimalEnabled)
                }
            }
        }
    }
}

// MARK: - ToolBar Item Navigation Style Modifier (Top)

/// Applies styling to toolBar top items depending depending to OS version.
/// The tokens of colors are applied as best as the API allow; some button styles are alsso applied to force the rendering.
/// However things cannot be customized that much for Liquid Glass.
struct ToolBarTopItemNavigationStyle: ButtonStyle {

    let type: OUDSToolBarItem.NavigationType

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled

    func makeBody(configuration: Configuration) -> some View {
        if #available(iOS 26, *) {
            configuration.label
                .oudsForegroundColor(foregroundColor)
                .buttonStyle(.plain)
        } else {
            configuration.label
                .oudsForegroundColor(foregroundColor)
        }
    }

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

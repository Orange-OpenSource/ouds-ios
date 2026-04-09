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

// Applies styling to tool bar (top/bottom) action items depending depending to OS versions:
// - For iOS 26+ / Liquid Glass, action button in toolBar top have colored background
// - For iOS lower than 26 / not Liquid Glass, action button in toolBar top do not have colored background but foreground color instead
// The tokens of colors are applied as best as the API allow; some button styles are alsso applied to force the rendering.
// However things cannot be customized that much for Liquid Glass.

struct ToolBarActionItemModifier: ViewModifier {

    // MARK: - Properties

    let style: OUDSToolBarItem.ActionStyle
    @Environment(\.theme) private var theme

    // MARK: - Body

    func body(content: Content) -> some View {
        if style == .proiminent {
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

/// Used to apply color for the pressed and disabled states
struct ToolBarActionItemStyle: ButtonStyle {

    // MARK: - Properties

    let style: OUDSToolBarItem.ActionStyle

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Body

    func makeBody(configuration: Configuration) -> some View {
        if !isEnabled {
            configuration.label.foregroundColor(theme.button.colorContentMinimalDisabled)
        } else {
            if #available(iOS 26, *) {
                switch style {
                case .default:
                    configuration.label.foregroundColor(theme.button.colorContentMinimalEnabled)
                case .proiminent:
                    configuration.label
                        .foregroundColor(theme.colors.contentOnActionSelected)
                case .tinted:
                    configuration.label.foregroundColor(theme.colors.actionSelected)
                }
            } else {
                if configuration.isPressed {
                    configuration.label.foregroundColor(theme.button.colorContentMinimalPressed)
                } else {
                    configuration.label.foregroundColor(theme.button.colorContentMinimalEnabled)
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

    // MARK: - Properties

    let type: OUDSToolBarItem.NavigationType

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Body

    func makeBody(configuration: Configuration) -> some View {
        if #available(iOS 26, *) {
            configuration.label
                .foregroundColor(foregroundColor)
                .buttonStyle(.plain)
        } else {
            configuration.label
                .foregroundColor(foregroundColor)
        }
    }

    // MARK: - Private helper

    private var foregroundColor: MultipleColorSemanticToken {
        switch type {
        case .back:
            isEnabled ? theme.button.colorContentMinimalEnabled : theme.button.colorContentMinimalDisabled
        case .close:
            MultipleColorSemanticToken("#999999")
        }
    }
}

#if os(macOS)
private typealias NativeFont = NSFont
#else
private typealias NativeFont = UIFont
#endif

struct FontLabelModifier: ViewModifier {

    // MARK: - Properties

    enum Style {
        case medium
        case regular
    }

    let style: Style
    @Environment(\.theme) private var theme

    // MARK: - Body

    func body(content: Content) -> some View {
        content.font(font)
    }

    private var font: Font? {
        guard let fontFamily = theme.fontFamily else {
            return nil
        }

        let fontWeight: Font.Weight = switch style {
        case .medium:
            .medium
        case .regular:
            .regular
        }

        let titleFontName = kApplePostScriptFontNames[orKey: PSFNMK(fontFamily, fontWeight)]
        guard let uiFont = NativeFont(name: titleFontName, size: 17) else {
            return nil
        }

        return Font(uiFont)
    }
}
#endif

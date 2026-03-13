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
import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

// MARK: - Toolbar Item Style

/// Defines the styling configuration for toolbar items.
enum ToolbarItemStyle {
    case topLeading
    case topTrailing
    case bottom
}

// MARK: - Toolbar Item Action Style Modifier (Bottom)

/// Applies styling to toolbar bottom items.
/// Only the foreground color of the items changesd depending to the OS version.
struct ToolbarBottomItemActionStyleModifier: ViewModifier {

    @Environment(\.theme) private var theme

    // TODO: #1174 - For iOS 18 and lower, apply the blur effects etc
    func body(content: Content) -> some View {
        if #available(iOS 26, *) {
            content
                .oudsForegroundColor(theme.colors.contentDefault)
        } else {
            content
                .oudsForegroundColor(theme.colors.actionAccent)
        }
    }
}

// MARK: - Toolbar Item Action Style Modifier (Top)

/// Applies styling to toolbar top items depending depending to OS versions:
/// - For iOS 26+ / Liquid Glass, action button in toolbar top have colored background
/// - For iOS lower than 26 / not Liquid Glass, action button in toolbar top do not have colored background but foreground color instead
/// The tokens of colors are applied as best as the API allow; some button styles are alsso applied to force the rendering.
/// However things cannot be customized that much for Liquid Glass.
struct ToolbarTopItemActionStyleModifier: ViewModifier {

    let type: OUDSToolbarItem.ActionType
    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled

    func body(content: Content) -> some View {
        if #available(iOS 26, *) {
            switch type {
            case let .label(_, action):
                content
                    .oudsForegroundColor(theme.colors.contentDefault)
                    //                    .buttonStyle(.bordered)
                    .disabled(action == nil)
            case let .icon(_, _, action):
                content
                    .oudsForegroundColor(theme.bar.colorContentOnAccent)
                    .oudsTintColor(isEnabled ? theme.colors.actionAccent : theme.colors.contentDisabled)
                    .buttonStyle(.borderedProminent)
                    .disabled(action == nil)
            }
        } else {
            content
                .oudsForegroundColor(isEnabled ? theme.colors.actionAccent : theme.colors.contentDisabled)
        }
    }
}

// MARK: - Toolbar Item Navigation Style Modifier (Top)

/// Applies styling to toolbar top items depending depending to OS version.
/// The tokens of colors are applied as best as the API allow; some button styles are alsso applied to force the rendering.
/// However things cannot be customized that much for Liquid Glass.
struct ToolbarTopItemNavigationStyleModifier: ViewModifier {

    let type: OUDSToolbarItem.NavigationType

    @Environment(\.theme) private var theme

    func body(content: Content) -> some View {
        if #available(iOS 26, *) {
            content
                .oudsForegroundColor(foregroundColor)
                .oudsTintColor(tintColor)
                .buttonStyle(.plain)
        } else {
            content
                .oudsForegroundColor(foregroundColor)
        }
    }

    private var foregroundColor: MultipleColorSemanticToken {
        if #available(iOS 26, *) {
            switch type {
            case .back:
                theme.colors.contentDefault
            case .close:
                // Color applied only with plain button style
                // Color never applied with borderedProminent button style
                MultipleColorSemanticToken("#999999") // TODO: #1174 - Not a token? Hard-coded value?
            }
        } else {
            switch type {
            case .back:
                theme.colors.actionAccent
            case .close:
                MultipleColorSemanticToken("#999999") // TODO: #1174 - Not a token? Hard-coded value?
            }
        }
    }

    private var tintColor: MultipleColorSemanticToken {
        switch type {
        case .back:
            theme.colors.actionAccent
        case .close:
            // Color never applied with plain buttons tyle
            // Color applied only with borderedProminent button style
            MultipleColorSemanticToken("#78788029") // TODO: #1174 - Not a token? Hard-coded value?
        }
    }
}
#endif

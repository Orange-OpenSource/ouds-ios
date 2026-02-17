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

// MARK: - Tool Bar Item Style

/// Defines the styling configuration for toolbar items.
enum ToolBarItemStyle {
    case topLeading
    case topTrailing
    case bottom
}

// MARK: - Tool Bar Item Action Style Modifier

/// Applies styling to toolbar items depending, for action buttons, depending to OS versions:
/// - For iOS 26 / Liquid Glass, action button in toolbar top have colored background
/// - For iOS lower than 26 / not Liquid Glass, action button in toolbar top do not have colored background but foreground color instead
struct ToolBarItemActionStyleModifier: ViewModifier {

    let style: ToolBarItemStyle

    @Environment(\.theme) private var theme

    func body(content: Content) -> some View {
        if #available(iOS 26, *) {
            content
                .oudsForegroundColor(theme.bar.colorContentOnAccent)
                .oudsTintColor(theme.colors.actionAccent)
                .buttonStyle(.borderedProminent)
        } else {
            content
                .oudsForegroundColor(theme.colors.actionAccent)
        }
    }
}

// MARK: - Tool Bar Item Navigation Style Modifier

/// Applies styling to toolbar items depending depending to OS versions and icons types.
/// The tokens of colors are applied as best as the API allow; some button styles are alsso appleid for force the rendering.
/// However things cannot be customized that much for Liquid Glass.
struct ToolBarItemNavigationStyleModifier: ViewModifier {

    let icon: OUDSToolBarNavigationItem
    let style: ToolBarItemStyle

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
            switch icon {
            case .back:
                theme.colors.contentDefault
            case .close:
                // Color applied only with plain button style
                // Color never applied with borderedProminent button style
                MultipleColorSemanticToken("#999999") // TODO: #1174 - Not a token? Hard-coded value?
            }
        } else {
            switch icon {
            case .back:
                theme.colors.actionAccent
            case .close:
                MultipleColorSemanticToken("#999999") // TODO: #1174 - Not a token? Hard-coded value?
            }
        }
    }

    private var tintColor: MultipleColorSemanticToken {
        switch icon {
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

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

/// Applies OUDS styling to toolbar items depending on the platform and item placement, for action buttons.
struct ToolBarItemActionStyleModifier: ViewModifier {

    let style: ToolBarItemStyle

    @Environment(\.theme) private var theme

    func body(content: Content) -> some View {
        let baseContent = content
            .oudsForegroundColor(theme.bar.colorContentOnAccent)
            .oudsTintColor(theme.colors.actionAccent)
            .buttonStyle(.borderedProminent)

        baseContent
//        if shouldApplyBackground {
//            baseContent
//                .oudsBackground(theme.colors.actionAccent)
//                .clipShape(RoundedRectangle(cornerRadius: theme.borders.radiusMedium, style: .continuous))
//        } else {
//            baseContent
//        }
    }

    private var shouldApplyBackground: Bool {
        #if os(iOS)
        if #available(iOS 26.0, *) {
            switch style {
            case .topTrailing, .bottom:
                return true
            case .topLeading:
                return false
            }
        }
        return false
        #else
        return false
        #endif
    }
}

// MARK: - Tool Bar Item Navigation Style Modifier

/// Applies OUDS styling to toolbar items depending on the platform and item placement, for navigation buttons.
struct ToolBarItemNavigationStyleModifier: ViewModifier {

    let icon: OUDSToolBarNavigationItem
    let style: ToolBarItemStyle

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    func body(content: Content) -> some View {
        if icon == .back {
            content
                .oudsForegroundColor(theme.colors.contentDefault)
        } else {
            content
                // .oudsTintColor(MultipleColorSemanticToken(light: "#78788029", dark: "#78788052"))
                .buttonStyle(.plain)
            // NOTE: It seems we cannot change the colors with iOS 26 / Liquid Glass, so plain style is more readable...
        }

//        if shouldApplyBackground {
//            baseContent
//                .oudsBackground(theme.colors.actionAccent)
//                .clipShape(RoundedRectangle(cornerRadius: theme.borders.radiusMedium, style: .continuous))
//        } else {
//            baseContent
//        }
    }

    private var shouldApplyBackground: Bool {
        #if os(iOS)
        if #available(iOS 26.0, *) {
            switch style {
            case .topTrailing, .bottom:
                return true
            case .topLeading:
                return false
            }
        }
        return false
        #else
        return false
        #endif
    }
}
#endif

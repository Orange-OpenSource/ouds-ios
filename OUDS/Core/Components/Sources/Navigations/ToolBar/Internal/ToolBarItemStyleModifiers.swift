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

/// Applies styling to toolbar items depending, for navigation buttons, depending to OS versions:
/// - For iOS 26 / Liquid Glass, navigation button in toolbar top do not have labels
/// - For iOS lower than 26 / not Liquid Glass, navigation button in toolbar top can have labels or not
struct ToolBarItemNavigationStyleModifier: ViewModifier {

    let icon: OUDSToolBarNavigationItem
    let style: ToolBarItemStyle

    @Environment(\.theme) private var theme

    func body(content: Content) -> some View {
        if #available(iOS 26, *) {
            content
                .oudsForegroundColor(theme.colors.contentDefault)
                .oudsTintColor(theme.colors.actionAccent)
                .buttonStyle(.plain)
        } else {
            content
                .oudsForegroundColor(theme.colors.actionAccent)
        }
    }
}
#endif

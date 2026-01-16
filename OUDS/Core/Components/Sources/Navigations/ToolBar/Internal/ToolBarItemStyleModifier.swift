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

/// Defines the styling configuration for toolbar items.
@available(iOS 16, macOS 15, visionOS 1, *)
enum ToolBarItemStyle {
    case topLeading
    case topTrailing
    case bottom
}

/// Applies OUDS styling to toolbar items depending on the platform and item placement.
@available(iOS 16, macOS 15, visionOS 1, *)
struct ToolBarItemStyleModifier: ViewModifier {

    let style: ToolBarItemStyle

    @Environment(\.theme) private var theme

    func body(content: Content) -> some View {
        let baseContent = content
            .oudsForegroundColor(theme.colors.contentDefault)
            .frame(minWidth: theme.sizes.minInteractiveArea,
                   minHeight: theme.sizes.minInteractiveArea)
            .padding(theme.spaces.fixedXsmall)

        if shouldApplyBackground {
            baseContent
                .oudsBackground(theme.colors.actionAccent)
                .clipShape(RoundedRectangle(cornerRadius: theme.borders.radiusMedium, style: .continuous))
        } else {
            baseContent
        }
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

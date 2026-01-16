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

import OUDSThemesContract
import SwiftUI

@available(iOS 15, macOS 15, visionOS 1, *)
struct ToolBarItemStyleModifier: ViewModifier {

    let placement: OUDSToolBarItemPlacement

    @Environment(\.theme) private var theme

    @ViewBuilder
    func body(content: Content) -> some View {
        switch placement {
        case .leading:
            content
                .oudsForegroundColor(theme.colors.contentDefault)
        case .trailing:
            trailingItem(content: content)
        }
    }

    @ViewBuilder
    private func trailingItem(content: Content) -> some View {
        #if os(iOS)
        if #available(iOS 26.0, *) {
            content
                .oudsForegroundColor(theme.colors.contentDefault)
                .oudsBackground(theme.colors.actionAccent)
        } else {
            content
                .oudsForegroundColor(theme.colors.contentDefault)
        }
        #else
        content
            .oudsForegroundColor(theme.colors.contentDefault)
        #endif
    }
}

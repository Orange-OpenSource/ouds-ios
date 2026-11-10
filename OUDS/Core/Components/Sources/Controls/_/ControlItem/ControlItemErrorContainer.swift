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

// MARK: - Control Item Error Container

struct ControlItemErrorContainer: View {

    let layoutData: ControlItemLabel.LayoutData

    @Environment(\.theme) private var theme

    var body: some View {
        if layoutData.isError, let errorText = layoutData.errorText, !errorText.isEmpty {
            textView(for: errorText)
                .labelDefaultMedium(theme)
                .foregroundColor(theme.colors.contentStatusNegative)
                .padding(.top, theme.listItem.spacePaddingBlockTopHelperText)
                .modifier(ControlItemErrorMarginModifier())
        }
    }
}

// MARK: - Control Item Error Margin Modifier

private struct ControlItemErrorMarginModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.isEdgeToEdge) private var edgeToEdge

    func body(content: Content) -> some View {
        if edgeToEdge {
            content.gridMargin(.horizontal)
        } else {
            content.padding(.horizontal, theme.listItem.spacePaddingInline)
        }
    }
}

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

private struct ControlItemErrorMarginModifier: ViewModifier {

    @Environment(\.oudsEdgeToEdge) private var edgeToEdge
    @Environment(\.theme) private var theme

    func body(content: Content) -> some View {
        if edgeToEdge {
            content.gridMargin(.horizontal)
        } else {
            content.padding(.horizontal, theme.listItem.spacePaddingInline)
        }
    }
}

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

import OUDS
import OUDSTokensSemantic
import SwiftUI

struct DesignToolboxChoicePicker<Content, Selection>: View where Content: View, Selection: Hashable {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    let title: String
    let selection: Binding<Selection>
    let content: () -> Content

    var body: some View {
        VStack(alignment: .leading) {
            Text(LocalizedStringKey(title))
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
                .accessibilityHidden(true)

            Picker(LocalizedStringKey(title), selection: selection) {
                content()
            }
            .pickerStyle(.segmented)
            .accessibilityElement(children: .contain)
            .accessibilityLabel(LocalizedStringKey(title))
        }
    }
}

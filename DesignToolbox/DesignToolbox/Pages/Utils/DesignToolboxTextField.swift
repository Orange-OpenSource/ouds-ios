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

struct DesignToolboxTextField: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    let text: Binding<String>
    let prompt: String
    let title: String

    init(text: Binding<String>, prompt: String, title: String = "app_component_common_userText_label") {
        self.title = title
        self.text = text
        self.prompt = prompt
    }

    var body: some View {
        VStack(alignment: .leading) {
            Text(LocalizedStringKey(title))
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))

            TextField(text: text) {
                Text(LocalizedStringKey(prompt))
            }
        }
        .accessibilityElement(children: .combine)
        .accessibilityLabel(LocalizedStringKey(prompt))
        .accessibilityValue(text.wrappedValue)
    }
}

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

    let text: Binding<String>
    let prompt: String
    let title: String?

    init(text: Binding<String>, prompt: String = "app_components_common_enterText_prompt", title: String? = nil) {
        self.title = title
        self.text = text
        self.prompt = prompt
    }

    var body: some View {
        VStack(alignment: .leading) {
            if let title {
                Text(LocalizedStringKey(title))
                    .typeHeadingMedium(theme)
                    .oudsForegroundStyle(theme.colors.colorContentDefault)
            }

            TextField(text: text, prompt: Text(prompt)) {
                Text(LocalizedStringKey(text.wrappedValue))
            }
            .oudsForegroundStyle(theme.colors.colorContentDefault)
        }
        .accessibilityElement(children: .combine)
        .accessibilityLabel(LocalizedStringKey(prompt))
        .accessibilityValue(text.wrappedValue)
    }
}

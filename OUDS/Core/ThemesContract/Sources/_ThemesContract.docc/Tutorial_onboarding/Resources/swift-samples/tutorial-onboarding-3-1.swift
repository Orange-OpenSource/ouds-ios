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

import OUDSSwiftUI
import SwiftUI

struct Control: View {

    @State private var text: String = ""
    @State private var isOn: Bool = true
    @Environment(\.theme) private var theme

    var body: some View {
        VStack(spacing: theme.spaces.fixedNone) {
            OUDSCheckboxItem("Checkbox item", isOn: $isOn)
            OUDSRadioItem("Radio button item", isOn: $isOn)
            OUDSSwitchItem("Switch item", isOn: $isOn)
            OUDSTextInput(label: "Text input", text: $text)
            OUDSPasswordInput(label: "Password input", password: $text)
        }
    }
}

#Preview {
    Control().orangePreview()
}

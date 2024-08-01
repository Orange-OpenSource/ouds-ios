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

import Foundation
import SwiftUI
import OUDSFoundations
import OUDSThemesShared

/// An OUDS component for text input in formulars.
public struct OUDSFormsTextInput: View{

    var placeholder: String
    @Binding var value: String
    var isEnabled: Bool
    @Environment(\.colorScheme) var colorScheme

    /// Current OUDS theme to load styles
    @Environment(\.theme) var theme

    public init(placeholder: String, value: Binding<String>, isEnabled: Bool = true) {
        self.placeholder = placeholder
        self._value = value
        self.isEnabled = isEnabled
    }

    public var body: some View {
        VStack {
            Text("This is a simple TextField from OUDS")
            TextField(placeholder, text: $value)
        }
        .background(isEnabled ? theme.formsTextInputColorBackgroundEnabled.color : theme.formsTextInputColorBackgroundDisabled.color)
        .border(theme.colorBorderDefaultDark?.color ?? oudsDefaultColor, width: isEnabled ? theme.formsTextInputBorderWidthEnabled : theme.formsTextInputBorderWidthDisabled)
    }
}

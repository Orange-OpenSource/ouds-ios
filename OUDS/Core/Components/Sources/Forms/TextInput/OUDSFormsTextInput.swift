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
/// **Warning: This is a draft component **
public struct OUDSFormsTextInput: View {

    var placeholder: String
    @Binding var value: String
    var isEnabled: Bool

    @Environment(\.theme) var theme

    public init(placeholder: String, value: Binding<String>, isEnabled: Bool = true) {
        self.placeholder = placeholder
        self._value = value
        self.isEnabled = isEnabled
    }

    public var body: some View {
        VStack(spacing: theme.spacePaddingBlockComponentTall) {

            Label(
                title: {
                    Text("Example of OUDSFormsTextInput")
                        .fontWeight(theme.titleFontWeight.fontWeight)
                        .font(.system(size: theme.titleFontSize))
                        .foregroundColor(theme.titleColor.color)
                },
                icon: { /*@START_MENU_TOKEN@*/Image(systemName: "42.circle")/*@END_MENU_TOKEN@*/ }
            )

            Text("Write bellow some awesome text!")
                .fontWeight(theme.subtitleFontWeight.fontWeight)
                .font(.system(size: theme.subtitleFontSize))
                .foregroundColor(theme.subtitleColor.color)
            
            TextField(placeholder, text: $value)
        }
        .padding(theme.spacePaddingBlockComponentTall)
        .background(theme.backgroundColor.color)
        .border(theme.borderColor.color, width: theme.borderWidth)
    }
}


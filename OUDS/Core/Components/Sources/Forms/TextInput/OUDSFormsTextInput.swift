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
import OUDS // To get @Environment(\.theme) var theme

/// An OUDS component for text input in formulars.
/// __Warning: This is a draft component__.
///
/// This commponent is created to illustrate the mecanism of theme and tokens.
public struct OUDSFormsTextInput: View {

    var placeholder: String
    @Binding var value: String
    var isEnabled: Bool

    @Environment(\.colorScheme) var colorScheme
    @Environment(\.theme) var theme

    /// Use this initializer to create a text field that binds to a bound optional
    /// value and propose a placeholder.
    ///
    /// - Parameters:
    ///     - placeholder: Text in placeholder
    ///     - value: Binding of the value
    ///     - isEnabled: Flag to indicate if input is enabled.
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
                        .fontWeight(theme.ftiTitleFontWeight.fontWeight)
                        .font(.system(size: theme.ftiTitleFontSize))
                        .foregroundColor(theme.ftiTitleColor.color)
                },
                icon: { /*@START_MENU_TOKEN@*/Image(systemName: "42.circle")/*@END_MENU_TOKEN@*/ }
            )

            Text("Write bellow some awesome text!")
                .fontWeight(theme.ftiSubtitleFontWeight.fontWeight)
                .font(.system(size: theme.ftiSubtitleFontSize))
                .foregroundColor(theme.ftiSubtitleColor.color)

            TextField(placeholder, text: $value)
        }
        .padding(theme.spacePaddingBlockComponentTall)
        .background(colorScheme == .light ? theme.ftiBackgroundColorLight.color : theme.ftiBackgroundColorDark.color)
        .border(theme.ftiBorderColor.color, width: theme.ftiBorderWidth)
    }
}

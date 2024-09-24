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
import SwiftUI

/// An OUDS component for text input in formulars.
/// __Warning: This is a draft component__.
///
/// This component is created to illustrate the mecanism of theme and tokens.
public struct OUDSFormsTextInput: View {

    // MARK: - Properties

    private let label: String
    private let hint: String
    private let placeholder: String
    private let isEnabled: Bool

    @Binding var value: String

    @Environment(\.colorScheme) var colorScheme
    @Environment(\.theme) var theme

    // MARK: - Initializer

    /// Use this initializer to create a text field that binds to a bound optional
    /// value and propose a placeholder.
    ///
    /// - Parameters:
    ///    - label: The text to display in the top of the component
    ///    - hint: The text to display in above the input field
    ///    - placeholder: Text in placeholder
    ///    - value: Binding of the value
    ///    - isEnabled: Flag to indicate if input is enabled (_true_ by default)
    public init(label: String, hint: String, placeholder: String, value: Binding<String>, isEnabled: Bool = true) {
        self.label = label
        self.hint = hint
        self.placeholder = placeholder
        self._value = value
        self.isEnabled = isEnabled
    }

    // MARK: - Body

    public var body: some View {
        VStack(spacing: theme.spacePaddingBlockTall) {

            Label(
                title: {
                    Text(label)
                        .fontWeight(theme.ftiTitleFontWeight.fontWeight)
                        .font(.system(size: theme.ftiTitleFontSize))
                        .foregroundColor(theme.ftiTitleColor.color)
                },
                icon: { /*@START_MENU_TOKEN@*/Image(systemName: "42.circle")/*@END_MENU_TOKEN@*/ }
            )

            Text(hint)
                .fontWeight(theme.ftiSubtitleFontWeight.fontWeight)
                .font(.system(size: theme.ftiSubtitleFontSize))
                .foregroundColor(theme.ftiSubtitleColor.color)

            TextField(placeholder, text: $value)
        }
        .padding(theme.spacePaddingBlockTall)
        .background(colorScheme == .light ? theme.ftiBackgroundColorLight.color : theme.ftiBackgroundColorDark.color)
        .border(theme.ftiBorderColor.color, width: theme.ftiBorderWidth)
    }
}

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

// MARK: - Choice Picker Style

enum DesignToolboxChoicePickerStyle {
    case segmented
    case menu
}

// MARK: - Choice Picker

struct DesignToolboxChoicePicker<Content, Selection>: View where Content: View, Selection: Hashable {

    let title: String
    let selection: Binding<Selection>
    let style: DesignToolboxChoicePickerStyle
    let content: () -> Content

    @Environment(\.theme) private var theme

    var body: some View {
        VStack(alignment: .leading) {
            Text(LocalizedStringKey(title))
                .typeHeadingSmall(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)
                .accessibilityHidden(true)

            Picker(LocalizedStringKey(title), selection: selection) {
                content()
            }
            .modifier(ChoicePickerStyleModifier(style: style))
            .accessibilityElement(children: .contain)
            .accessibilityLabel(LocalizedStringKey(title))
        }
        .padding(.horizontal, theme.spaces.spaceInsetMedium)
    }
}

// MARK: - Choice Picker Style Modifier

private struct ChoicePickerStyleModifier: ViewModifier {

    let style: DesignToolboxChoicePickerStyle

    func body(content: Content) -> some View {
        switch style {
        case .menu:
            content.pickerStyle(.menu)
        default: // case .segmented
            content.pickerStyle(.segmented)
        }
    }
}

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

struct DesignToolboxColorPicker<Content, SelectedColor>: View where Content: View, SelectedColor: View {

    let content: () -> Content
    let selectedColor: () -> SelectedColor
    @State private var isExpanded: Bool = false
    @Environment(\.theme) private var theme

    var body: some View {
        DesignToolboxDisclosureGroup(isExpanded: $isExpanded, accessibilityLabel: "app_components_coloredSurface_color_label_a11y") {
            VStack(alignment: .leading) {
                content()
            }
        } label: {
            VStack(alignment: .leading) {
                Text("app_components_coloredSurface_color_label")
                    .typeHeadingMedium(theme)
                    .oudsForegroundColor(theme.colors.colorContentDefault)

                selectedColor()

                if isExpanded {
                    Divider()
                }
            }
        }
    }
}

struct DesignToolboxColorEntry<ColorIcon>: View where ColorIcon: View {

    let colorName: String
    let colorIcon: () -> ColorIcon
    @Environment(\.theme) private var theme

    var body: some View {
        Label {
            Text(colorName)
                .oudsForegroundColor(theme.colors.colorContentDefault)
        } icon: {
            colorIcon()
                .frame(width: 30, height: 30, alignment: .leading)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

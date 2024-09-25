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

import SwiftUI
import OUDS
import OUDSThemesOrange
import OUDSComponents

// MARK: - View for display

struct ComponentsPage: View {

    @State private var writtenText: String = ""
    @State private var selectedTheme: OUDSTheme

    init() {
        writtenText = ""
        selectedTheme = OrangeTheme()
    }

    var body: some View {
        OUDSThemeableView(theme: selectedTheme) {
            NavigationView {
                VStack(spacing: 30) {
                    OUDSFormsTextInput(label: "Awesome form",
                                       hint: "Type something",
                                       placeholder: "Display large",
                                       value: $writtenText)

                    OUDSButton(text: "Some button") {}

                    Button("Try OUDS Orange Theme") {
                        selectedTheme = OrangeTheme()
                        print("Showcase app - Selected OUDS Orange theme")
                    }

                    Button("Try custom \"local\" theme") {
                        selectedTheme = OrangeCustomTheme()
                        print("Showcase app - Selected app custom theme")
                    }
                }
                .padding(.horizontal, 20)
                .navigationTitle("app_bottomBar_components")
            }
        }
    }
}


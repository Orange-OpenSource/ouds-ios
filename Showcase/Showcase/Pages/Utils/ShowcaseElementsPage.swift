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
import OUDSComponents

struct ShowcaseElementsPage: View {

    @AccessibilityFocusState private var requestFocus: AccessibilityFocusable?

    // =======================
    // MARK: Stored properties
    // =======================

    private let elements: [ShowcaseElement]
    private let columns = [GridItem(.flexible(), alignment: .topLeading)]

    init(elements: [ShowcaseElement]) {
        self.elements = elements
    }

    var spacingM: Double = 16 // Todo add tokens

    // ==========
    // MARK: Body
    // ==========

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 4) {
                    ForEach(elements, id: \.id) { element in
                        NavigationLink {
                            ShacaseElementPage(element: element)
                        } label: {
                            Card(
                                title: Text(LocalizedStringKey(element.name)),
                                image: Image(element.imageName))
                            .accessibilityFocused($requestFocus, equals: .some(id: element.id))
                            .oudsRequestAccessibleFocus(_requestFocus, for: .some(id: elements[0].id))

                        }
                    }
                }
                .padding(.all, spacingM)
//                .navigationbarMenuForThemeSelection()
                .oudsNavigationTitle("app_bottomBar_tokens")
            }
        }
        .navigationViewStyle(.stack)
    }
}


/*
struct TokensPage: View {

    @State private var writtenText: String = ""
    @State private var selectedTheme: OUDSTheme

    init() {
        writtenText = ""
        selectedTheme = OrangeTheme()
    }

    var body: some View {
        OUDSThemeableView(theme: selectedTheme) {
            NavigationView {
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 30) {

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
                .navigationTitle("app_bottomBar_tokens")
            }
        }
    }
}

*/

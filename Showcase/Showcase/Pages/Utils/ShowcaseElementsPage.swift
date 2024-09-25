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

    // MARK: Stored properties

    private let elements: [ShowcaseElement]
    private let columns = [GridItem(.flexible(), alignment: .topLeading)]
    private let spacingM: Double = 16 // Todo add tokens

    init(elements: [ShowcaseElement]) {
        self.elements = elements
    }

    // MARK: Body

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
                                icon: Image(element.imageName))
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

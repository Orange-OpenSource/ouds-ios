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
import OUDSComponents
import SwiftUI

struct ComponentsPage: View {

    @AccessibilityFocusState private var requestFocus: AccessibilityFocusable?
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored properties

    let components: [ComponentEntity]

    // MARK: Initializer

    init() {
        components = [kButtonEntry]
    }

    // MARK: Body

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible(), alignment: .topLeading)], spacing: theme.spaceFixedShortest) {
                    ForEach(components, id: \.name) { component in
                        NavigationLink {
                            ComponentPage(entry: component)
                        } label: {
                            Card(
                                title: Text(LocalizedStringKey(component.name)),
                                icon: Image(decorative: component.imageName))
                            .accessibilityFocused($requestFocus, equals: .some(id: component.id))
                            .oudsRequestAccessibleFocus(_requestFocus, for: .some(id: components[0].id))
                        }
                    }
                }
                .padding(.all, theme.spaceFixedMedium)
                .navigationbarMenuForThemeSelection()
            }
            .background(theme.colorBgPrimary.color(for: colorScheme))
        }
        .navigationViewStyle(.stack)
    }
}

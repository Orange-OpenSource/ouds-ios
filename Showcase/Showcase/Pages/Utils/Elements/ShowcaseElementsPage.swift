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

/// Used to list all elements in the main screen of the application
/// (enumerate tokens and components)
struct ShowcaseElementsPage: View {

    @AccessibilityFocusState private var requestFocus: AccessibilityFocusable?
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored properties

    let elements: [ShowcaseElement]

    // MARK: Body

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible(), alignment: .topLeading)], spacing: theme.spaceFixedShortest) {
                    ForEach(elements, id: \.id) { element in
                        NavigationLink {
                            element.pageDescription
                        } label: {
                            Card(
                                title: Text(LocalizedStringKey(element.name)),
                                icon: Image(decorative: element.imageName))
                            .accessibilityFocused($requestFocus, equals: .some(id: element.id))
                            .oudsRequestAccessibleFocus(_requestFocus, for: .some(id: elements[0].id))
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

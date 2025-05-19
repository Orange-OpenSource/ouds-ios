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
struct DesignToolboxElementsPage: View {

    @AccessibilityFocusState private var requestFocus: AccessibilityFocusable?
    @Environment(\.theme) private var theme

    // MARK: Stored properties

    let title: String
    let elements: [DesignToolboxElement]

    // MARK: Body

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible(), alignment: .topLeading)], spacing: theme.spaces.spaceFixedShortest) {
                    ForEach(elements, id: \.id) { element in
                        NavigationLink {
                            element.pageDescription
                        } label: {
                            Card(
                                title: Text(LocalizedStringKey(element.name)),
                                icon: element.image)
                            .accessibilityFocused($requestFocus, equals: .some(id: element.id))
                            .oudsRequestAccessibleFocus(_requestFocus, for: .some(id: elements[0].id))
                        }
                    }
                }
                .padding(.all, theme.spaces.spaceFixedMedium)
                .navigationbarMenuForThemeSelection()
            }
            .oudsBackground(theme.colors.colorBgPrimary)
            .oudsNavigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

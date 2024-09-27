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
import OUDSTokensSemantic

struct ShacaseElementPage: View {

    @AccessibilityFocusState private var requestFocus: Bool
    @Environment(\.theme) private var theme

    // MARK: Stored Properties

    let element: ShowcaseElement

    // MARK: Body

    var body: some View {
        List {
            VStack(alignment: .leading, spacing: theme.spaceFixedMedium) {
                CardIllustration(icon: Image(element.imageName))
                    .accessibilityHidden(true)

                Text(LocalizedStringKey(element.description))
                    .accessibilityFocused($requestFocus)
                    .padding(.horizontal, theme.spaceFixedMedium)
            }
            .listRowInsets(EdgeInsets())
            .listRowSeparator(Visibility.hidden)
            .padding(.horizontal, theme.spaceFixedNone)
            .padding(.bottom, theme.spaceFixedMedium)

            element.pageDescription
                .listRowInsets(EdgeInsets())
                .listRowSeparator(Visibility.hidden)
                .padding(.bottom, theme.spaceFixedMedium)
        }
        .listStyle(.plain)
        .padding(.top, theme.spaceFixedNone)
        .padding(.horizontal, theme.spaceFixedNone)
        .navigationTitle(LocalizedStringKey(element.name))
        .navigationbarMenuForThemeSelection()
        .oudsRequestAccessibleFocus(_requestFocus)
    }
}

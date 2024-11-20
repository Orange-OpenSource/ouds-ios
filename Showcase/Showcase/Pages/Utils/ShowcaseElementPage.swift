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

struct ShowcaseElementPage: View {

    @AccessibilityFocusState private var requestFocus: Bool
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored Properties

    let element: ShowcaseElement

    // MARK: Body

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: theme.spaceFixedMedium) {
                CardIllustration(icon: Image(element.imageName))
                    .accessibilityHidden(true)

                Text(LocalizedStringKey(element.description))
                    .typeBodyDefaultLarge(theme)
                    .accessibilityFocused($requestFocus)
                    .padding(.horizontal, theme.spaceFixedMedium)
            }
            .listRowInsets(EdgeInsets())
            .listRowSeparator(Visibility.hidden)
            .padding(.horizontal, theme.spaceFixedNone)
            .padding(.bottom, theme.spaceFixedMedium)
            .background(theme.colorBgPrimary.color(for: colorScheme))

            element.pageDescription
                .listRowInsets(EdgeInsets())
                .listRowSeparator(Visibility.hidden)
                .padding(.bottom, theme.spaceFixedMedium)
                .background(theme.colorBgPrimary.color(for: colorScheme))
        }
        .listStyle(.plain)
        .padding(.top, theme.spaceFixedNone)
        .padding(.horizontal, theme.spaceFixedNone)
        .background(theme.colorBgPrimary.color(for: colorScheme))
        .navigationTitle(LocalizedStringKey(element.name))
        .navigationbarMenuForThemeSelection()
        .oudsRequestAccessibleFocus(_requestFocus)
    }
}

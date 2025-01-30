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

/// Used to present the element in same layout with:
/// - a text for the description
/// - an optional image to illustrate the element
/// - a name as title of the page
/// - illustration to present all aspects of the element
struct DesignToolboxElementPage: View {

    @AccessibilityFocusState private var requestFocus: Bool
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored Properties

    let name: String
    let image: Image?
    let description: String
    let illustration: AnyView

    // MARK: Body

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
                if let image {
                    CardIllustration(icon: image)
                        .accessibilityHidden(true)
                }

                Text(LocalizedStringKey(description))
                    .typeBodyDefaultLarge(theme)
                    .accessibilityFocused($requestFocus)
                    .padding(.horizontal, theme.spaces.spaceFixedMedium)
            }
            .listRowInsets(EdgeInsets())
            .listRowSeparator(Visibility.hidden)
            .padding(.horizontal, theme.spaces.spaceFixedNone)
            .padding(.bottom, theme.spaces.spaceFixedMedium)
            .background(theme.colors.colorBgPrimary.color(for: colorScheme))

            illustration
                .listRowInsets(EdgeInsets())
                .listRowSeparator(Visibility.hidden)
                .padding(.bottom, theme.spaces.spaceFixedMedium)
                .background(theme.colors.colorBgPrimary.color(for: colorScheme))
        }
        .listStyle(.plain)
        .padding(.top, theme.spaces.spaceFixedNone)
        .padding(.horizontal, theme.spaces.spaceFixedNone)
        .background(theme.colors.colorBgPrimary.color(for: colorScheme))
        .navigationTitle(LocalizedStringKey(name))
        .navigationbarMenuForThemeSelection()
        .oudsRequestAccessibleFocus(_requestFocus)
    }
}

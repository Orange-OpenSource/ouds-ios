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

    // =======================
    // MARK: Stored Properties
    // =======================

    let element: ShowcaseElement
    private let spacingM: Double = 16 //  TODO use sementic tokenb
    private let spacingNone: Double = 0 //  TODO use sementic tokenb

    // ==========
    // MARK: Body
    // ==========

    var body: some View {
        List {
            VStack(alignment: .leading, spacing: spacingNone) {
                CardIllustration(icon: Image(element.imageName))
                    .padding(.bottom, spacingM)
                    .accessibilityHidden(true)

                Text(LocalizedStringKey(element.description))
                    .accessibilityFocused($requestFocus)
                    .padding(.horizontal, spacingM)
                    .padding(.bottom, spacingM)
            }
            .listRowInsets(EdgeInsets())
            .listRowSeparator(Visibility.hidden)
            .padding(.horizontal, spacingNone)

            element.pageDescription
                .listRowInsets(EdgeInsets())
                .listRowSeparator(Visibility.hidden)
        }
        .listStyle(.plain)
        .padding(.top, spacingNone)
        .padding(.horizontal, spacingNone)
        .navigationTitle(LocalizedStringKey(element.name))
//        .navigationbarMenuForThemeSelection()
        .background("#272727".color)
        .oudsRequestAccessibleFocus(_requestFocus)
    }
}

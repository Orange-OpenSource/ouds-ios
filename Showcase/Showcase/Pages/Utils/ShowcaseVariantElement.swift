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

struct ShowcaseVariantElement: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored properties

    let elements: [ShowcaseElement]

    // MARK: Body

    var body: some View {
        ForEach(elements, id: \.id) { element in
            NavigationLink {
                ShowcaseElementPage(element: element)
            } label: {
                Text(LocalizedStringKey(element.name))
                    .typeHeadingMedium(theme)
                    .padding(.vertical, theme.spaceFixedShorter)
            }
        }
        .padding(.horizontal, theme.spaceFixedMedium)
    }
}

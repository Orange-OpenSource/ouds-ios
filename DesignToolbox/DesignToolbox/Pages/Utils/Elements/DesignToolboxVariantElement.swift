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

struct DesignToolboxVariantElement: View {

    @Environment(\.theme) private var theme
    @Environment(\.layoutDirection) private var layoutDirection

    // MARK: Stored properties

    let elements: [DesignToolboxElement]

    // MARK: Body

    var body: some View {
        ForEach(elements, id: \.id) { element in
            NavigationLink {
                element.pageDescription
            } label: {
                HStack {
                    Text(LocalizedStringKey(element.name))
                        .typeHeadingMedium(theme)
                        .multilineTextAlignment(.leading)
                        .oudsForegroundStyle(theme.colors.colorContentDefault)
                        .padding(.vertical, theme.spaces.spaceFixedShorter)
                        .padding(.leading, theme.spaces.spaceFixedMedium)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .oudsForegroundColor(theme.colors.colorContentDefault)
                        .padding(layoutDirection == .rightToLeft ? .leading : .trailing, theme.spaces.spaceFixedMedium)
                        .accessibilityHidden(true)
                        .scaleEffect(layoutDirection == .rightToLeft ? -1 : 1, anchor: .center)
                }
            }
        }
    }
}

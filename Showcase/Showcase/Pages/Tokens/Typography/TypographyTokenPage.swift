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

struct TypographyTokenPage: View {

    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        VStack(alignment: .center, spacing: theme.spaceFixedShort) {
            Text("Display Large").typeDisplayLarge(theme)
            Text("Display Medium").typeDisplayMedium(theme)
            Text("Display Small").typeDisplaySmall(theme)
            Text("Heading X Large").typeHeadingXLarge(theme)
            Text("Heading Large").typeHeadingLarge(theme)
            Text("Heading Medium").typeHeadingMedium(theme)
            Text("Heading Small").typeHeadingSmall(theme)
            Text("Body Default Large").typeBodyDefaultLarge(theme)
            Text("Body Default Medium").typeBodyDefaultMedium(theme)
            Text("Body Default Small").typeBodyDefaultSmall(theme)
            Text("Body Strong Large").typeBodyStrongLarge(theme)
            Text("Body Strong Medium").typeBodyStrongMedium(theme)
            Text("Body Strong Small").typeBodyStrongSmall(theme)
            Text("Label Default X Large").typeLabelDefaultXLarge(theme)
            Text("Label Default Large").typeLabelDefaultLarge(theme)
            Text("Label Default Medium").typeLabelDefaultMedium(theme)
            Text("Label Default Small").typeLabelDefaultSmall(theme)
            Text("Label Strong X Large").typeLabelStrongXLarge(theme)
            Text("Label Strong Large").typeLabelStrongLarge(theme)
            Text("Label Strong Medium").typeLabelStrongMedium(theme)
            Text("Label Strong Small").typeLabelStrongSmall(theme)
            Text("Code Medium").typeLabelCodeMedium(theme)
            Text("Code Small").typeLabelCodeSmall(theme)
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .padding(.horizontal, theme.spaceFixedShort)
        .navigationTitle(LocalizedStringKey("app_tokens_typography_label"))
    }
}

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

import OUDSSwiftUI
import SwiftUI

struct InfoCard: View {

    let assetName: String
    let title: String
    let subtitle: String
    let description: String
    let buttonLabel: String

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    @Environment(\.oudsHorizontalSizeClass) private var oudsHorizontalSizeClass

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {
            Image(assetName, bundle: .main)
                .resizable()
                .aspectRatio(contentMode: .fit)

            Text(title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .headingMedium(theme)
                .foregroundColor(theme.colors.contentBrandPrimary)
                .padding(.top, theme.gridMargin(for: oudsHorizontalSizeClass))

            Text(subtitle)
                .headingXLarge(theme)
                .foregroundColor(theme.colors.contentDefault)
                .padding(.vertical, theme.spaces.scaled2xsmall.dimension(for: horizontalSizeClass ?? .regular))

            Text(description)
                .bodyDefaultLarge(theme)
                .foregroundColor(theme.colors.contentDefault)

            Spacer(minLength: theme.spaces.scaledLarge.dimension(for: verticalSizeClass ?? .regular))

            OUDSButton(text: buttonLabel, appearance: .strong) {}

            Spacer(minLength: theme.spaces.fixedMedium)
        }
        .gridMargin(.horizontal)
    }
}

#Preview {
    InfoCard(
        assetName: "Picture2",
        title: "Orange for the sector",
        subtitle: "A complete offer for Institutions",
        description: "Our experience as a partner in the digital transformation of companies and institutions guarantees the high efficiency of the services provided.",
        buttonLabel: "Transmission")
        .orangePreview()
}

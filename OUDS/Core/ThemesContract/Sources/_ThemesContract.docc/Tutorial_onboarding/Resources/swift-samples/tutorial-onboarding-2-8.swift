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

struct HomeScreen: View {

    @Environment(\.colorScheme) private var colorScheme: ColorScheme
    @Environment(\.theme) private var theme

    var body: some View {
        ScrollView {
            VStack {
                InfoCard(
                    assetName: "Picture2",
                    title: "Orange for the sector",
                    subtitle: "A complete offer for Institutions",
                    description: "Our experience as a partner in the digital transformation of companies and institutions guarantees the high efficiency of the services provided.",
                    buttonLabel: "Transmission")

                InfoCard(
                    assetName: "Picture1",
                    title: "Large Public Institutions",
                    subtitle: "Grow your company with",
                    description: "The Orange Polska Group is in the TOP 3 of ICT service leaders in Poland according to the 2000 Computerworld report. See how we can .- -Work together.",
                    buttonLabel: "Contact us")
                    .environment(\.colorScheme, .dark)
                    .oudsBackground(theme.colors.bgInverseLow)
            }
        }
    }
}

#Preview {
    HomeScreen().orangePreview()
}

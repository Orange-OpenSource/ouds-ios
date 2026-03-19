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

struct InfoCard: View {

    let assetName: String
    let title: String
    let subtitle: String
    let description: String
    let buttonLabel: String

    var body: some View {
        EmptyView()
    }
}

#Preview {
    InfoCard(
        assetName: "Picture2",
        title: "Orange for the sector",
        subtitle: "A complete offer for Institutions",
        description: "Our experience as a partner in the digital transformation of companies and institutions guarantees the high efficiency of the services provided.",
        buttonLabel: "Transmission")
}

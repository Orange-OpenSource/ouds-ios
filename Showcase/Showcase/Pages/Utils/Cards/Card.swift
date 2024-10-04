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

// MARK: - Card

struct Card: View {

    let title: Text
    let icon: Image

    @Environment(\.theme) private var theme

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            CardIllustration(icon: icon)
            title
                .typeBodyDefaultMedium(theme)
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 16)
                .padding(.vertical, 16)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .foregroundColor(.primary)
        .background(Color.cardBackground)
        .cornerRadius(10)
        .shadow(radius: 4)
        .padding(.all, 4)
    }
}

// MARK: - Previews

#Preview {
    ScrollView {
        VStack {
            Card(title: Text("Border"), icon: Image("ic_border", bundle: .main))
            Card(title: Text("Typography"), icon: Image("ic_typography", bundle: .main))
        }
        .padding(.horizontal, 16)
    }
}

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

public struct CardIllustration: View {

    private let icon: Image

    // =================
    // MARK: Initializer
    // =================
    
    /// Initialization of the illustration for card from a icon.
    ///
    /// - Parameters:
    ///  - icon: Icon displayed into the card.
    public init(icon: Image) {
        self.icon = icon
    }

    // ==========
    // MARK: Body
    // ==========

    public var body: some View {
        HStack {
            Spacer()
            icon
                .resizable()
                .renderingMode(.template)
                .foregroundColor(.white)
                .aspectRatio(contentMode: .fit)
                .frame(width: 88, height: 88, alignment: .center)
                .clipped()
            Spacer()
        }
        .padding(.vertical, 53)
        .background(.black)
        .accessibilityElement(children: .combine)
        .accessibilityRemoveTraits(.isImage)
        .accessibilityHidden(true)
    }
}

#Preview {
    CardIllustration(icon:  Image("ic_border", bundle: .main))
}

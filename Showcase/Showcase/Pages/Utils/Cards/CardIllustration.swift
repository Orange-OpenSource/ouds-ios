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

    private let image: Image

    /// Initialization the illustration for card.
    ///
    /// - Parameters:
    ///  - image: Image displayed into the card.
    public init(image: Image) {
        self.image = image
    }

    // ==========
    // MARK: Body
    // ==========

    public var body: some View {
        ZStack {
            Rectangle().fill("#1C1C1A".color)
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: 42, alignment: .center)
                .clipped()
        }
        .frame(minHeight: 160, alignment: .center)
        .frame(maxHeight: 192, alignment: .center)
        .accessibilityElement(children: .combine)
        .accessibilityRemoveTraits(.isImage)
        .accessibilityHidden(true)
    }
}

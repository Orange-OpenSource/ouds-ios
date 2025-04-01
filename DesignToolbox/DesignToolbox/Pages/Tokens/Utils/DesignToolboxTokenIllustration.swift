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

struct DesignToolboxTokenIllustration<TokenIllustration>: View where TokenIllustration: View {

    @Environment(\.theme) private var theme

    // MARK: Stored properties

    let tokenName: String
    let tokenValue: String?
    @ViewBuilder let tokenIllustration: () -> TokenIllustration

    // MARK: Initializer

    init(tokenName: String,
         tokenValue: String? = nil,
         tokenIllustration: @escaping () -> TokenIllustration) {
        self.tokenIllustration = tokenIllustration
        self.tokenName = tokenName
        self.tokenValue = tokenValue
    }

    // MARK: Body

    var body: some View {

        HStack(alignment: .top, spacing: theme.spaces.spaceFixedMedium) {

            tokenIllustration()

            VStack(alignment: .leading) {
                Text(tokenName)
                    .typeBodyStrongLarge(theme)
                    .oudsForegroundStyle(theme.colors.colorContentDefault)
                if let tokenValue {
                    Text(tokenValue)
                        .typeBodyDefaultMedium(theme)
                        .oudsForegroundStyle(theme.colors.colorContentMuted)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .accessibilityElement(children: .combine)
        }
        .padding(.vertical, theme.spaces.spaceFixedShorter)
    }
}

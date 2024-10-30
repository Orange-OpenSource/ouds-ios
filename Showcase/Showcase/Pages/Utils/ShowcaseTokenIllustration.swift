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

struct ShowcaseTokenIllustration<TokenIllustration>: View where TokenIllustration: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored properties

    let tokenName: String
    let tokenValue: String?
    @ViewBuilder let tokenIllustration: () -> TokenIllustration

    /// A theme to force  for this 'View' whatever the environnement theme,  including the color scheme is (for UI tests purposes)
    private let forcedTheme: OUDSTheme?
    private let forcedColorScheme: ColorScheme?

    // MARK: Initializer

    init(tokenName: String, tokenValue: String? = nil, forceTo theme: OUDSTheme? = nil, colorScheme: ColorScheme? = nil, tokenIllustration: @escaping () -> TokenIllustration) {
        self.tokenIllustration = tokenIllustration
        self.forcedTheme = theme
        self.forcedColorScheme = colorScheme
        self.tokenName = tokenName
        self.tokenValue = tokenValue
    }

    // MARK: Body

    var body: some View {
        /// Move activeColorScheme here to ensure colorScheme is accessible (for UI tests purposes)
        let activeColorScheme = forcedColorScheme ?? colorScheme
        /// Move activeTheme here to ensure theme is accessible (for UI tests purposes)
        let activeTheme = forcedTheme ?? theme

        HStack(alignment: .top, spacing: theme.spaceFixedMedium) {

            tokenIllustration()

            VStack(alignment: .leading) {
                Text(tokenName)
                    .typeBodyStrongLarge(activeTheme)
                    .foregroundStyle(activeTheme.colorContentDefault.color(for: activeColorScheme))
                if let tokenValue {
                    Text(tokenValue)
                        .typeBodyDefaultMedium(activeTheme)
                        .foregroundStyle(activeTheme.colorContentMuted.color(for: activeColorScheme))
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .accessibilityElement(children: .combine)
        }
        .padding(.vertical, activeTheme.spaceFixedShorter)
    }
}

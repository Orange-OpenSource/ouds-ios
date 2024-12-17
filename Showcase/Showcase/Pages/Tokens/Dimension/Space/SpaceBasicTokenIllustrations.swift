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

// MARK: - Fixed property of space token category

struct FixedSpaceProperty: View {

    let namedTokens: [NamedSpaceToken] = NamedSpace.Fixed.allCases

    var body: some View {
        SpaceTokenProperty(namedTokens: namedTokens) {
            SpaceHeaderDescription(text: "app_tokens_dimension_space_header_text", paddings: EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
        } illustration: { token in
            Illustration(token: token)
        }
    }

    struct Illustration: View {
        let token: SpaceSemanticToken
        var body: some View {
            SpaceCommonIllustration(dimension: token, padding: .centerHorizontaly)
        }
    }
}

// MARK: - Scaled property of space token category

struct ScaledSpaceProperty: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedNone) {
            SpaceHeaderDescription(text: "app_tokens_dimension_space_header_text", paddings: EdgeInsets(top: 4, leading: 8, bottom: 0, trailing: 0))
                .padding(.bottom, theme.spaces.spaceFixedMedium)

            ForEach(NamedSpace.Scaled.allCases, id: \.rawValue) { namedSpaceToken in
                Illustration(for: namedSpaceToken)
            }
        }
    }

    struct Illustration: View {

        @Environment(\.theme) private var theme
        @Environment(\.colorScheme) private var colorScheme
        @Environment(\.horizontalSizeClass) private var horizontalSizeClass
        @Environment(\.verticalSizeClass) private var verticalSizeClass

        let namedSpaceToken: NamedSpace.Scaled

        init(for namedSpaceToken: NamedSpace.Scaled) {
            self.namedSpaceToken = namedSpaceToken
        }

        var body: some View {
            let token = namedSpaceToken.token(from: theme)
            let name = namedSpaceToken.rawValue
            let horizontalDimensionRawToken = token.dimension(for: horizontalSizeClass ?? .regular)
            let verticalDimensionRawToken = token.dimension(for: verticalSizeClass ?? .regular)
            let value = String(format: "horizontal %@ (%.0f pt)\nvertical %@ (%.0f pt)",
                               horizontalSizeClass == .regular ? "regular" : "compact",
                               horizontalDimensionRawToken,
                               verticalSizeClass == .regular ? "regular" : "compact",
                               verticalDimensionRawToken)

            return ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                SpaceScaledIllustration(horizontalDimension: horizontalDimensionRawToken, verticalDimension: verticalDimensionRawToken)
            }
        }
    }
}

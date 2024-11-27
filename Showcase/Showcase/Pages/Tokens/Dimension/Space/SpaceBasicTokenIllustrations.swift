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

// MARK: Fixed Spaces
// swiftlint:disable multiline_arguments
struct FixedSapcesCategory: View {

    // MARK: Body

    var body: some View {
        SpaceTokenCategory(namedTokens: NamedSpace.Fixed.allCases) {
            SpaceHeaderDescription(text: "app_tokens_dimension_space_header_text", paddings: EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
        } illustration: { token in
            Illustration(token: token)
        }
    }

    // MARK: Internal for UI testing

    struct Illustration: View {
        let token: SpaceSemanticToken
        var body: some View {
            SpaceCommonIllustration(dimension: token, padding: .centerHorizontaly)
        }
    }
}

// MARK: Scaled Spaces

struct ScaledSpacesCategory: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            SpaceHeaderDescription(text: "app_tokens_dimension_space_header_text", paddings: EdgeInsets(top: 4, leading: 8, bottom: 0, trailing: 0))
                .padding(.bottom, theme.spaceFixedMedium)

            ForEach(NamedSpace.Scaled.allCases, id: \.rawValue) { namedSpaceToken in
                Illustration(for: namedSpaceToken)
            }
        }
    }

    struct Illustration: View {

        // MARK: Environment properties

        @Environment(\.theme) private var theme
        @Environment(\.colorScheme) private var colorScheme
        @Environment(\.horizontalSizeClass) private var horizontalSizeClass
        @Environment(\.verticalSizeClass) private var verticalSizeClass

        // MARK: Stored property

        let namedSpaceToken: NamedSpace.Scaled

        // MARK: Initializer

        init(for namedSpaceToken: NamedSpace.Scaled) {
            self.namedSpaceToken = namedSpaceToken
        }

        // MARK: Body

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
// swiftlint:enable multiline_arguments

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
import SwiftUI

struct GapInlineIllustration: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {

        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {

            SpaceHeaderDescription(
                firstText: "app_tokens_dimension_space_header_text",
                secondText: "app_tokens_dimension_space_header_text",
                orientation: .horizontal)
            .padding(.bottom, theme.spaceFixedMedium)

            ForEach(NamedSpace.GapInline.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: theme)
                let name = namedSpaceToken.rawValue
                let value = String(format: "%.2f (pt)", token)

                ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                    SpaceIllustration(dimension: token, orientation: .vertical(position: .center))
                }
            }
        }
    }
}

struct GapInlineWithIconIllustration: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {

        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            SpaceHeaderDescription(
                text: "app_tokens_dimension_space_header_text",
                iconAsset: .icon,
                orientation: .horizontal)
            .padding(.bottom, theme.spaceFixedMedium)

            ForEach(NamedSpace.GapInlineWithIcon.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: theme)
                let name = namedSpaceToken.rawValue
                let value = String(format: "%.2f (pt)", token)

                ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                    SpaceIllustration(dimension: token, orientation: .horizontal(position: .leading), iconAsset: .icon)
                }
            }
        }
    }
}

struct GapInlineWithArrowIllustration: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {

        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            SpaceHeaderDescription(
                text: "app_tokens_dimension_space_header_text",
                iconAsset: .arrow,
                orientation: .horizontal)
            .padding(.bottom, theme.spaceFixedMedium)

            ForEach(NamedSpace.GapInlineWithArrow.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: theme)
                let name = namedSpaceToken.rawValue
                let value = String(format: "%.2f (pt)", token)

                ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                    SpaceIllustration(dimension: token, orientation: .horizontal(position: .leading), iconAsset: .arrow)
                }
            }
        }
    }
}

struct GapStackIllustration: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {

        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {

            SpaceHeaderDescription(
                firstText: "app_tokens_dimension_space_header_text",
                secondText: "app_tokens_dimension_space_header_text",
                orientation: .verical)
            .padding(.bottom, theme.spaceFixedMedium)

            ForEach(NamedSpace.GapStack.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: theme)
                let name = namedSpaceToken.rawValue
                let value = String(format: "%.2f (pt)", token)

                ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                    SpaceIllustration(dimension: token, orientation: .vertical(position: .center))
                }
            }
        }
    }
}

struct GapStackWithIconIllustration: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {

        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            SpaceHeaderDescription(
                text: "app_tokens_dimension_space_header_text",
                iconAsset: .icon,
                orientation: .verical)
            .padding(.bottom, theme.spaceFixedMedium)

            ForEach(NamedSpace.GapStackWithIcon.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: theme)
                let name = namedSpaceToken.rawValue
                let value = String(format: "%.2f (pt)", token)

                ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                    SpaceIllustration(dimension: token, orientation: .vertical(position: .bottom), iconAsset: .icon)
                }
            }
        }
    }
}

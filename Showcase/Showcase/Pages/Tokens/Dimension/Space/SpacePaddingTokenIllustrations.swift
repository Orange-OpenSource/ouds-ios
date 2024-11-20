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

// MARK: Padding illustrations

struct PaddingInlineIllustration: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            SpaceHeaderDescription(text: "app_tokens_dimension_space_header_text", paddings: EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                .padding(.bottom, theme.spaceFixedMedium)

            ForEach(NamedSpace.PaddingInline.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: theme)
                let name = namedSpaceToken.rawValue
                let value = String(format: "%.2f (pt)", token)

                ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                    SpaceIllustration(dimension: token, orientation: .horizontal(position: .leading))
                }
            }
        }
    }
}

struct PaddingInlineWithIconIllustration: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            SpaceHeaderDescription(text: "app_tokens_dimension_space_header_text", paddings: EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0), iconAsset: .icon)
                .padding(.bottom, theme.spaceFixedMedium)

            ForEach(NamedSpace.PaddingInlineWithIcon.allCases, id: \.rawValue) { namedSpaceToken in
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

struct PaddingInlineWithArrowIllustration: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            SpaceHeaderDescription(text: "app_tokens_dimension_space_header_text", paddings: EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0), iconAsset: .arrow)
                .padding(.bottom, theme.spaceFixedMedium)

            ForEach(NamedSpace.PaddingInlineWithArrow.allCases, id: \.rawValue) { namedSpaceToken in
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

struct PaddingInsetIllustration: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            SpaceHeaderDescription(text: "app_tokens_dimension_space_header_text", paddings: EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                .padding(.bottom, theme.spaceFixedMedium)

            ForEach(NamedSpace.PaddingInset.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: theme)
                let name = namedSpaceToken.rawValue
                let value = String(format: "%.2f (pt)", token)

                ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                    SpacePaddingInsetIllustration(dimension: token)
                }
            }
        }
    }
}

// MARK: Padding stack

struct PaddingStackIllustration: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            SpaceHeaderDescription(text: "app_tokens_dimension_space_header_text", paddings: EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
                .padding(.bottom, theme.spaceFixedMedium)

            ForEach(NamedSpace.PaddingStack.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: theme)
                let name = namedSpaceToken.rawValue
                let value = String(format: "%.2f (pt)", token)

                ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                    SpaceIllustration(dimension: token, orientation: .horizontal(position: .center))
                }
            }
        }
    }
}

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

struct GapInlineCategory: View {

    // MARK: Body

    var body: some View {
        SpaceTokenCategory(namedTokens: NamedSpace.GapInline.allCases) {
            SpaceHeaderDescription(
                firstText: "app_tokens_dimension_space_header_text",
                secondText: "app_tokens_dimension_space_header_text",
                orientation: .horizontal)
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

struct GapInlineWithIconCategory: View {

    // MARK: Body

    var body: some View {
        SpaceTokenCategory(namedTokens: NamedSpace.GapInlineWithIcon.allCases) {
            SpaceHeaderDescription(
                text: "app_tokens_dimension_space_header_text",
                iconAsset: .icon,
                paddings: .trailing)
        } illustration: { token in
            Illustration(token: token)
        }
    }

    // MARK: Internal for UI testing

    struct Illustration: View {
        let token: SpaceSemanticToken
        var body: some View {
            SpaceCommonIllustration(dimension: token, padding: .leading( .icon))
        }
    }
}

struct GapInlineWithArrowCategory: View {

    // MARK: Body

    var body: some View {
        SpaceTokenCategory(namedTokens: NamedSpace.GapInlineWithArrow.allCases) {
            SpaceHeaderDescription(
                text: "app_tokens_dimension_space_header_text",
                iconAsset: .arrow,
                paddings: .trailing)
        } illustration: { token in
            Illustration(token: token)
        }
    }

    // MARK: Internal for UI testing

    struct Illustration: View {
        let token: SpaceSemanticToken
        var body: some View {
            SpaceCommonIllustration(dimension: token, padding: .leading( .arrow))
        }
    }
}

struct GapStackCategory: View {

    // MARK: Body

    var body: some View {
        SpaceTokenCategory(namedTokens: NamedSpace.GapStack.allCases) {
            SpaceHeaderDescription(
                firstText: "app_tokens_dimension_space_header_text",
                secondText: "app_tokens_dimension_space_header_text",
                orientation: .verical)
        } illustration: { token in
            Illustration(token: token)
        }
    }

    // MARK: Internal for UI testing

    struct Illustration: View {
        let token: SpaceSemanticToken
        var body: some View {
            SpaceCommonIllustration(dimension: token, padding: .centerVerticaly)
        }
    }
}

struct GapStackWithIconCategory: View {

    // MARK: Body

    var body: some View {
        SpaceTokenCategory(namedTokens: NamedSpace.GapStackWithIcon.allCases) {
            SpaceHeaderDescription(
                text: "app_tokens_dimension_space_header_text",
                iconAsset: .icon,
                paddings: .bottom)
        } illustration: { token in
            Illustration(token: token)
        }
    }

    // MARK: Internal for UI testing

    struct Illustration: View {
        let token: SpaceSemanticToken
        var body: some View {
            SpaceCommonIllustration(dimension: token, padding: .bottom(.icon))
        }
    }
}

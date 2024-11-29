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

// MARK: - Gap Inline Category

struct GapInlineCategory: View {

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

    struct Illustration: View {
        let token: SpaceSemanticToken
        var body: some View {
            SpaceCommonIllustration(dimension: token, padding: .centerHorizontaly)
        }
    }
}

// MARK: - Gap Inline With Icon Category

struct GapInlineWithIconCategory: View {

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

    struct Illustration: View {
        let token: SpaceSemanticToken
        var body: some View {
            SpaceCommonIllustration(dimension: token, padding: .leading( .icon))
        }
    }
}

// MARK: - Gap Inline With Arrow Category

struct GapInlineWithArrowCategory: View {

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

    struct Illustration: View {
        let token: SpaceSemanticToken
        var body: some View {
            SpaceCommonIllustration(dimension: token, padding: .leading( .arrow))
        }
    }
}

// MARK: - Gap Stack Category

struct GapStackCategory: View {

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

    struct Illustration: View {
        let token: SpaceSemanticToken
        var body: some View {
            SpaceCommonIllustration(dimension: token, padding: .centerVerticaly)
        }
    }
}

// MARK: - Gap Stack With Icon Category

struct GapStackWithIconCategory: View {

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

    struct Illustration: View {
        let token: SpaceSemanticToken
        var body: some View {
            SpaceCommonIllustration(dimension: token, padding: .bottom(.icon))
        }
    }
}

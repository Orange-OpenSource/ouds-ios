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

// MARK: Padding illustrations

// swiftlint: disable multiline_arguments
struct PaddingInlineCategory: View {

    // MARK: Body

    var body: some View {
        SpaceTokenCategory(namedTokens: NamedSpace.PaddingInline.allCases) {
            SpaceHeaderDescription(text: "app_tokens_dimension_space_header_text", paddings: EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
        } illustration: { token in
            Illustration(token: token)
        }
    }

    // MARK: Internal for UI testing

    struct Illustration: View {
        let token: SpaceSemanticToken
        var body: some View {
            SpaceCommonIllustration(dimension: token, padding: .leading(nil))
        }
    }
}

struct PaddingInlineWithIconCategory: View {

    // MARK: Body

    var body: some View {
        SpaceTokenCategory(namedTokens: NamedSpace.PaddingInlineWithIcon.allCases) {
            SpaceHeaderDescription(text: "app_tokens_dimension_space_header_text", iconAsset: .icon, paddings: .leading)
        } illustration: { token in
            Illustration(token: token)
        }
    }

    // MARK: Internal for UI testing

    struct Illustration: View {
        let token: SpaceSemanticToken
        var body: some View {
            SpaceCommonIllustration(dimension: token, padding: .leading(.icon))
        }
    }
}

struct PaddingInlineWithArrowCategory: View {

    // MARK: Body

    var body: some View {
        SpaceTokenCategory(namedTokens: NamedSpace.PaddingInlineWithArrow.allCases) {
            SpaceHeaderDescription(text: "app_tokens_dimension_space_header_text", iconAsset: .arrow, paddings: .leading)
        } illustration: { token in
            Illustration(token: token)
        }
    }

    // MARK: Internal for UI testing

    struct Illustration: View {
        let token: SpaceSemanticToken
        var body: some View {
            SpaceCommonIllustration(dimension: token, padding: .leading(.arrow))
        }
    }
}

struct PaddingInsetCategory: View {

    // MARK: Body

    var body: some View {
        SpaceTokenCategory(namedTokens: NamedSpace.PaddingInset.allCases) {
            SpaceHeaderDescription(text: "app_tokens_dimension_space_header_text", paddings: EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
        } illustration: { token in
            Illustration(token: token)
        }
    }

    // MARK: Internal for UI testing

    struct Illustration: View {
        let token: SpaceSemanticToken
        var body: some View {
            SpaceCommonIllustration(dimension: token, padding: .topLeading)
        }
    }
}

// MARK: Padding stack

struct PaddingStackCategory: View {

    // MARK: Body

    var body: some View {
        SpaceTokenCategory(namedTokens: NamedSpace.PaddingStack.allCases) {
            SpaceHeaderDescription(text: "app_tokens_dimension_space_header_text", paddings: EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
        } illustration: { token in
            Illustration(token: token)
        }
    }

    // MARK: Internal for UI testing

    struct Illustration: View {
        let token: SpaceSemanticToken
        var body: some View {
            SpaceCommonIllustration(dimension: token, padding: .top(nil))
        }
    }
}

struct PaddingStackWithIconCategory: View {

    // MARK: Body

    var body: some View {
        SpaceTokenCategory(namedTokens: NamedSpace.PaddingStackWithIcon.allCases) {
            SpaceHeaderDescription(text: "app_tokens_dimension_space_header_text", iconAsset: .icon, paddings: .top)
         } illustration: { token in
            Illustration(token: token)
        }
    }

    // MARK: Internal for UI testing

    struct Illustration: View {
        let token: SpaceSemanticToken
        var body: some View {
            SpaceCommonIllustration(dimension: token, padding: .top(.icon))
        }
    }
}
// swiftlint: enable multiline_arguments

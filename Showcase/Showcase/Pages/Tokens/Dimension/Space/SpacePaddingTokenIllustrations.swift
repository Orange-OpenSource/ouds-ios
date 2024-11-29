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

// MARK: - Padding Inline Category

struct PaddingInlineCategory: View {

    var body: some View {
        SpaceTokenCategory(namedTokens: NamedSpace.PaddingInline.allCases) {
            SpaceHeaderDescription(text: "app_tokens_dimension_space_header_text", paddings: EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
        } illustration: { token in
            Illustration(token: token)
        }
    }

    struct Illustration: View {
        let token: SpaceSemanticToken
        var body: some View {
            SpaceCommonIllustration(dimension: token, padding: .leading(nil))
        }
    }
}

// MARK: - Padding Inline With Icon Category

struct PaddingInlineWithIconCategory: View {

    var body: some View {
        SpaceTokenCategory(namedTokens: NamedSpace.PaddingInlineWithIcon.allCases) {
            SpaceHeaderDescription(text: "app_tokens_dimension_space_header_text", iconAsset: .icon, paddings: .leading)
        } illustration: { token in
            Illustration(token: token)
        }
    }

    struct Illustration: View {
        let token: SpaceSemanticToken
        var body: some View {
            SpaceCommonIllustration(dimension: token, padding: .leading(.icon))
        }
    }
}

// MARK: - Padding Inline With Arrow Category

struct PaddingInlineWithArrowCategory: View {

    var body: some View {
        SpaceTokenCategory(namedTokens: NamedSpace.PaddingInlineWithArrow.allCases) {
            SpaceHeaderDescription(text: "app_tokens_dimension_space_header_text", iconAsset: .arrow, paddings: .leading)
        } illustration: { token in
            Illustration(token: token)
        }
    }

    struct Illustration: View {
        let token: SpaceSemanticToken
        var body: some View {
            SpaceCommonIllustration(dimension: token, padding: .leading(.arrow))
        }
    }
}

// MARK: - Padding Inset Category

struct PaddingInsetCategory: View {

    var body: some View {
        SpaceTokenCategory(namedTokens: NamedSpace.PaddingInset.allCases) {
            SpaceHeaderDescription(text: "app_tokens_dimension_space_header_text", paddings: EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
        } illustration: { token in
            Illustration(token: token)
        }
    }

    struct Illustration: View {
        let token: SpaceSemanticToken
        var body: some View {
            SpaceCommonIllustration(dimension: token, padding: .topLeading)
        }
    }
}

// MARK: - Padding Stack Category

struct PaddingStackCategory: View {

    var body: some View {
        SpaceTokenCategory(namedTokens: NamedSpace.PaddingStack.allCases) {
            SpaceHeaderDescription(text: "app_tokens_dimension_space_header_text", paddings: EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
        } illustration: { token in
            Illustration(token: token)
        }
    }

    struct Illustration: View {
        let token: SpaceSemanticToken
        var body: some View {
            SpaceCommonIllustration(dimension: token, padding: .top(nil))
        }
    }
}

// MARK: - Padding Stack With Icon Category

struct PaddingStackWithIconCategory: View {

    var body: some View {
        SpaceTokenCategory(namedTokens: NamedSpace.PaddingStackWithIcon.allCases) {
            SpaceHeaderDescription(text: "app_tokens_dimension_space_header_text", iconAsset: .icon, paddings: .top)
         } illustration: { token in
            Illustration(token: token)
        }
    }

    struct Illustration: View {
        let token: SpaceSemanticToken
        var body: some View {
            SpaceCommonIllustration(dimension: token, padding: .top(.icon))
        }
    }
}

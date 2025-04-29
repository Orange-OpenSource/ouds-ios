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

// MARK: - Column Gap Property

struct ColumnGapProperty: View {

    var body: some View {
        SpaceTokenProperty(namedTokens: NamedSpace.ColumnGap.allCases) {
            SpaceHeaderDescription(
                firstText: "app_tokens_dimension_space_columnGapHeader_text",
                secondText: "app_tokens_dimension_space_columnGapHeader_text",
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

// MARK: - Row Gap Property

struct RowGapProperty: View {

    var body: some View {
        SpaceTokenProperty(namedTokens: NamedSpace.RowGap.allCases) {
            SpaceHeaderDescription(
                firstText: "app_tokens_dimension_space_rowGapHeader_text",
                secondText: "app_tokens_dimension_space_rowGapHeader_text",
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

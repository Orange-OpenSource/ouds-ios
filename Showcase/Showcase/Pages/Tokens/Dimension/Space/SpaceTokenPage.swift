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
import OUDSTokensRaw
import OUDSTokensSemantic
import SwiftUI

// MARK: - Space Token Page

struct SpaceTokenPage: View {

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        Group {
            // Show token code
            Section { ShowcaseTokenCode(code: "colorBgStatusPositiveMutedOnBgEmphasized") }
            // Basic Space Tokens
            Section { ScaledSpacesCategory() } header: {
                header("app_tokens_dimension_space_scaled_label")
            }
            Section { FixedSpacesCategory() } header: {
                header("app_tokens_dimension_space_fixed_label")
            }
            // Padding Sapce Tokens
            Section { PaddingInlineCategory() } header: {
                header("app_tokens_dimension_space_paddingInline_label")
            }
            Section { PaddingInlineWithIconCategory() } header: {
                header("app_tokens_dimension_space_paddingInlineWithIcon_label")
            }
            Section { PaddingInlineWithArrowCategory() } header: {
                header("app_tokens_dimension_space_paddingInlineWithArrow_label")
            }
            Section { PaddingInsetCategory() } header: {
                header("app_tokens_dimension_space_paddingInset_label")
            }
            Section { PaddingStackCategory() } header: {
                header("app_tokens_dimension_space_paddingStack_label")
            }
            Section { PaddingStackWithIconCategory() } header: {
                header("app_tokens_dimension_space_paddingStackWithIcon_label")
            }
            // Gap Space Tokens
            Section { GapInlineCategory() } header: {
                header("app_tokens_dimension_space_gapInline_label")
            }
            Section { GapInlineWithIconCategory() } header: {
                header("app_tokens_dimension_space_gapInlineWithIcon_label")
            }
            Section { GapInlineWithArrowCategory() } header: {
                header("app_tokens_dimension_space_gapInlineWithArrow_label")
            }
            Section { GapStackCategory() } header: {
                header("app_tokens_dimension_space_gapStack_label")
            }
            Section { GapStackWithIconCategory() } header: {
                header("app_tokens_dimension_space_gapStackWithIcon_label")
            }
        }
        .padding(.horizontal, theme.spaceFixedMedium)
    }

    private func header(_ text: LocalizedStringKey) -> some View {
        Text(text).showcaseSectionHeaderStyle()
    }
}

// MARK: - Named Space

enum NamedSpace { }

/// Interface all `NamedSpace` tokens must implement  provide a displayable name and the sementic token
protocol NamedSpaceToken {
    var name: String { get }

    func token(from theme: OUDSTheme) -> SpaceSemanticToken
}

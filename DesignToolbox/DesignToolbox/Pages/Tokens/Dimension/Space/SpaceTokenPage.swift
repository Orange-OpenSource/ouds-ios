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

    var body: some View {
        Group {
            Section {
                DesignToolboxCode(code: "theme.spaceScaledMedium.dimension(for: horizontalSizeClass ?? .regular)", titleText: "app_tokens_common_viewCodeExample_label")
            }
            // Basic Space Tokens
            Section { ScaledSpaceProperty() } header: {
                header("app_tokens_dimension_space_scaled_label")
            }
            Section { FixedSpaceProperty() } header: {
                header("app_tokens_dimension_space_fixed_label")
            }
            // Padding Sapce Tokens
            Section { PaddingInlineProperty() } header: {
                header("app_tokens_dimension_space_paddingInline_label")
            }
            Section { PaddingInsetProperty() } header: {
                header("app_tokens_dimension_space_paddingInset_label")
            }
            Section { PaddingStackProperty() } header: {
                header("app_tokens_dimension_space_paddingStack_label")
            }
            // Gap Space Tokens
            Section { GapInlineProperty() } header: {
                header("app_tokens_dimension_space_gapInline_label")
            }
            Section { GapStackProperty() } header: {
                header("app_tokens_dimension_space_gapStack_label")
            }
        }
        .padding(.horizontal, theme.spaces.spaceFixedMedium)
    }

    // MARK: Common helpers

    private func header(_ text: LocalizedStringKey) -> some View {
        Text(text).designToolboxSectionHeaderStyle()
    }
}

// MARK: - Named Space

enum NamedSpace { }

/// Interface all `NamedSpace` tokens must implement  provide a displayable name and the sementic token
protocol NamedSpaceToken {
    var name: String { get }

    func token(from theme: OUDSTheme) -> SpaceSemanticToken
}

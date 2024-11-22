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

struct SpaceTokenPage: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        Group {
            // Basic Space Tokens
            Section { ScaledSpacesIllustrations() } header: {
                header("app_tokens_dimension_space_scaled_label")
            }
            Section { FixedSapcesIllustrations() } header: {
                header("app_tokens_dimension_space_fixed_label")
            }
            // Padding Sapce Tokens
            Section { PaddingInlineIllustration() } header: {
                header("app_tokens_dimension_space_paddingInline_label")
            }
            Section { PaddingInlineWithIconIllustration() } header: {
                header("app_tokens_dimension_space_paddingInlineWithIcon_label")
            }
            Section { PaddingInlineWithArrowIllustration() } header: {
                header("app_tokens_dimension_space_paddingInlineWithArrow_label")
            }
            Section { PaddingInsetIllustration() } header: {
                header("app_tokens_dimension_space_paddingInset_label")
            }
            Section { PaddingStackIllustration() } header: {
                header("app_tokens_dimension_space_paddingStack_label")
            }

            // Gap Space Tokens
            Section { GapInlineIllustration() } header: {
                header("app_tokens_dimension_space_gapInline_label")
            }
            Section { GapInlineWithIconIllustration() } header: {
                header("app_tokens_dimension_space_gapInlineWithIcon_label")
            }
            Section { GapInlineWithArrowIllustration() } header: {
                header("app_tokens_dimension_space_gapInlineWithArrow_label")
            }
            Section { GapStackIllustration() } header: {
                header("app_tokens_dimension_space_gapStack_label")
            }
            Section { GapStackWithIconIllustration() } header: {
                header("app_tokens_dimension_space_gapStackWithIcon_label")
            }
        }
        .padding(.horizontal, theme.spaceFixedMedium)
    }

    // MARK: Common helpers

    private func header(_ text: LocalizedStringKey) -> some View {
        Text(text).showcaseSectionHeaderStyle()
    }
}

// MARK: - Named Space

enum NamedSpace { }

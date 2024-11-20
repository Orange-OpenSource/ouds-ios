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

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    @Environment(\.colorScheme) private var colorScheme

    /// A theme to force for this `View` whatever the environnement `theme` is (for UI tests purposes)
    private let forcedTheme: OUDSTheme?
    /// A `ColorScheme` to force for this `View` whatever the environnement `colorScheme` is (for UI tests purposes)
    private let forcedColorScheme: ColorScheme?
    /// A `HorizontalSizeClass to force  for this `View` whatever the environnement `horizontalSizeClass` is (for UI tests purposes)
    private let forcedHorizontalSizeClass: UserInterfaceSizeClass?
    /// A `VerticalSizeClass` to force for this `View` whatever the environnement `verticalSizeClass` is (for UI tests purposes)
    private let forcedVerticalSizeClass: UserInterfaceSizeClass?

    init(forceTo theme: OUDSTheme? = nil,
         colorScheme: ColorScheme? = nil,
         horizontalSizeClass: UserInterfaceSizeClass? = nil,
         verticalSizeClass: UserInterfaceSizeClass? = nil) {
        forcedTheme = theme
        forcedColorScheme = colorScheme
        forcedHorizontalSizeClass = horizontalSizeClass
        forcedVerticalSizeClass = verticalSizeClass
    }

    /// Computed property for colorScheme
    /// Returns `forcedColorScheme` if available, otherwise falls back to the environment `colorScheme`
    /// If neither is available, the default system `colorScheme` will be applied.
    var activeColorScheme: ColorScheme {
        forcedColorScheme ?? colorScheme
    }

    /// Computed property for theme
    /// Returns `forcedTheme` if available, otherwise falls back to the environment `theme`
    /// If neither is available, the default `theme` will be applied.
    var activeTheme: OUDSTheme {
        forcedTheme ?? theme
    }

    /// Computed property for horizontalSizeClass
    /// Returns `forcedHorizontalSizeClass` if available, otherwise falls back to the environment `horizontalSizeClass`
    /// If neither is available, `.regular` is used as the default value.
    var activeHorizontalSizeClass: UserInterfaceSizeClass {
        forcedHorizontalSizeClass ?? horizontalSizeClass ?? .regular
    }

    /// Computed property for verticalSizeClass
    /// Returns `forcedVerticalSizeClass` if available, otherwise falls back to the environment `verticalSizeClass`
    /// If neither is available, `.compact` is used as the default value.
    var activeVerticalSizeClass: UserInterfaceSizeClass {
        forcedVerticalSizeClass ?? verticalSizeClass ?? .compact
    }

    // MARK: Body

    var body: some View {
        Group {
            // Basic Space Tokens
            Section { ScaledSpacesIllustration() } header: {
                header("app_tokens_dimension_space_scaled_label")
            }
            Section { FixedSapcesIllustration() } header: {
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
        .padding(.horizontal, activeTheme.spaceFixedMedium)
    }

    // MARK: Common helpers

    private func header(_ text: LocalizedStringKey) -> some View {
        Text(text).showcaseSectionHeaderStyle()
    }
}

// MARK: - Named Space

enum NamedSpace { }

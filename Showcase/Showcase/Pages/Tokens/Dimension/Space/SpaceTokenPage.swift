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
            Section { illustrationForScaledSpaces() } header: {
                header("app_tokens_dimension_space_scaled_label")
            }
            Section { illustrationForFixedSpacings() } header: { header("app_tokens_dimension_space_fixed_label")
            }
            // Padding Sapce Tokens
            Section { illustrationForPaddingInline() } header: {
                header("app_tokens_dimension_space_paddingInline_label")
            }
            Section { illustrationForPaddingInlineWithIcon() } header: {
                header("app_tokens_dimension_space_paddingInlineWithIcon_label")
            }
            Section { illustrationForPaddingInlineWithArrow() } header: {
                header("app_tokens_dimension_space_paddingInlineWithArrow_label")
            }
            Section { illustrationForPaddingInset() } header: {
                header("app_tokens_dimension_space_paddingInset_label")
            }
            Section { illustrationForPaddingStack() } header: {
                header("app_tokens_dimension_space_paddingStack_label")
            }

            // Gap Space Tokens
            Section { illustrationForGapInline() } header: {
                header("app_tokens_dimension_space_gapInline_label")
            }
            Section { illustrationForGapInlineWithIcon() } header: {
                header("app_tokens_dimension_space_gapInlineWithIcon_label")
            }
            Section { illustrationForGapInlineWithArrow() } header: {
                header("app_tokens_dimension_space_gapInlineWithArrow_label")
            }
            Section { illustrationForGapStack() } header: {
                header("app_tokens_dimension_space_gapStack_label")
            }
            Section { illustrationForGapStackWithIcon() } header: {
                header("app_tokens_dimension_space_gapStackWithIcon_label")
            }
        }
        .padding(.horizontal, activeTheme.spaceFixedMedium)
    }

    // MARK: Fixed Sapces

    private func illustrationForFixedSpacings() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedSpace.Fixed.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: activeTheme)
                let name = namedSpaceToken.rawValue
                let value = String(format: "%.2f (pt)", token)

                ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                    SpaceIllustration(dimension: token, orientation: .horizontal(position: .center))
                }
            }
        }
    }

    // MARK: Scaled Spaces

    private func illustrationForScaledSpaces() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedSpace.Scaled.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: activeTheme)
                let name = namedSpaceToken.rawValue
                let horizontalDimensionRawToken = token.dimension(for: horizontalSizeClass ?? .regular)
                let verticalDimensionRawToken = token.dimension(for: verticalSizeClass ?? .regular)

                let value = String(format: "horizontal %@ (%.0f pt)\nvertical %@ (%.0f pt)",
                                   activeHorizontalSizeClass == .regular ? "regular" : "compact",
                                   horizontalDimensionRawToken,
                                   activeVerticalSizeClass == .regular ? "regular" : "compact",
                                   verticalDimensionRawToken)

                return ShowcaseTokenIllustration(tokenName: name, tokenValue: value, forceTo: activeTheme, colorScheme: activeColorScheme) {
                    SpaceScaledIllustration(horizontalDimension: horizontalDimensionRawToken, verticalDimension: verticalDimensionRawToken)
                }
            }
        }
    }

    // MARK: Padding illustrations

    private func illustrationForPaddingInline() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedSpace.PaddingInline.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: activeTheme)
                let name = namedSpaceToken.rawValue
                let value = String(format: "%.2f (pt)", token)

                ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                    SpaceIllustration(dimension: token, orientation: .horizontal(position: .leading))
                }
            }
        }
    }

    private func illustrationForPaddingInlineWithIcon() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedSpace.PaddingInlineWithIcon.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: activeTheme)
                let name = namedSpaceToken.rawValue
                let value = String(format: "%.2f (pt)", token)

                ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                    SpaceIllustration(dimension: token, orientation: .horizontal(position: .leading), icon: Image(decorative: "ic_token"), iconExtraPadding: 1)
                }
            }
        }
    }
    private func illustrationForPaddingInlineWithArrow() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedSpace.PaddingInlineWithArrow.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: activeTheme)
                let name = namedSpaceToken.rawValue
                let value = String(format: "%.2f (pt)", token)

                ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                    SpaceIllustration(dimension: token, orientation: .horizontal(position: .leading), icon: Image(decorative: "ic_vector"), iconExtraPadding: 5)
                }
            }
        }
    }

    private func illustrationForPaddingInset() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedSpace.PaddingInset.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: activeTheme)
                let name = namedSpaceToken.rawValue
                let value = String(format: "%.2f (pt)", token)

                ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                    SpacePaddingInsetIllustration(dimension: token)
                }
            }
        }
    }

    private func illustrationForPaddingStack() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedSpace.PaddingStack.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: activeTheme)
                let name = namedSpaceToken.rawValue
                let value = String(format: "%.2f (pt)", token)

                ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                    SpaceIllustration(dimension: token, orientation: .horizontal(position: .center))
                }
            }
        }
    }

    // MARK: Gap illustrations

    private func illustrationForGapInline() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedSpace.GapInline.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: activeTheme)
                let name = namedSpaceToken.rawValue
                let value = String(format: "%.2f (pt)", token)

                ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                    SpaceIllustration(dimension: token, orientation: .vertical(position: .center))
                }
            }
        }
    }

    private func illustrationForGapInlineWithIcon() -> some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedSpace.GapInlineWithIcon.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: theme)
                let name = namedSpaceToken.rawValue
                let value = String(format: "%.2f (pt)", token)

                ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                    SpaceIllustration(dimension: token, orientation: .horizontal(position: .leading), icon: Image(decorative: "ic_token"), iconExtraPadding: 1)
                }
            }
        }
    }

    private func illustrationForGapInlineWithArrow() -> some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedSpace.GapInlineWithArrow.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: theme)
                let name = namedSpaceToken.rawValue
                let value = String(format: "%.2f (pt)", token)

                ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                    SpaceIllustration(dimension: token, orientation: .horizontal(position: .leading), icon: Image(decorative: "ic_vector"), iconExtraPadding: 5)
                }
            }
        }
    }

    private func illustrationForGapStack() -> some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
            ForEach(NamedSpace.GapStack.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: activeTheme)
                let name = namedSpaceToken.rawValue
                let value = String(format: "%.2f (pt)", token)

                ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                    SpaceIllustration(dimension: token, orientation: .vertical(position: .center))
                }
            }
        }
    }

    private func illustrationForGapStackWithIcon() -> some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedSpace.GapStackWithIcon.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: theme)
                let name = namedSpaceToken.rawValue
                let value = String(format: "%.2f (pt)", token)

                ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
                    SpaceIllustration(dimension: token, orientation: .vertical(position: .bottom), icon: Image(decorative: "ic_token"), iconExtraPadding: 1)
                }
            }
        }
    }

    // MARK: Common helpers

    private func header(_ text: LocalizedStringKey) -> some View {
        Text(text).showcaseSectionHeaderStyle()
    }
}

// MARK: - Named Space

enum NamedSpace { }

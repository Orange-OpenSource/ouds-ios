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

import OUDSTokensRaw
import OUDSTokensSemantic

// ଘ( ･ω･)_/ﾟ･:*:･｡☆
// [File to generate with the tokenator]

// swiftlint:disable line_length

/// Overrides some color tokens using values available in `OrangeBrandColorRawTokens`
extension OrangeTheme {

    // MARK: Semantic token - Colors - Background

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorBgTertiary: ColorSemanticToken { MultipleColorTokens(light: OrangeBrandColorRawTokens.colorWarmGray100, dark: OrangeBrandColorRawTokens.colorWarmGray900) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorBgBrandPrimary: ColorSemanticToken { MultipleColorTokens(light: OrangeBrandColorRawTokens.colorOrange550, dark: OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorBgStatusAccentMuted: ColorSemanticToken { MultipleColorTokens(light: OrangeBrandColorRawTokens.colorWarmGray100, dark: OrangeBrandColorRawTokens.colorWarmGray900) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorBgStatusAccentMutedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorWarmGray900) }

    // MARK: Semantic token - Colors - Content

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorContentBrandPrimary: ColorSemanticToken { MultipleColorTokens(light: OrangeBrandColorRawTokens.colorOrange550, dark: OrangeBrandColorRawTokens.colorOrange500) }

    // MARK: Semantic token - Colors - Border

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorBorderBrandPrimaryOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorBorderBrandPrimary: ColorSemanticToken { MultipleColorTokens(light: OrangeBrandColorRawTokens.colorOrange550, dark: OrangeBrandColorRawTokens.colorOrange500) }

    // MARK: Semantic token - Colors - Action

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorActionSelected: ColorSemanticToken { MultipleColorTokens(light: OrangeBrandColorRawTokens.colorOrange550, dark: OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorActionSelectedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorActionPrimaryPressed: ColorSemanticToken { MultipleColorTokens(light: OrangeBrandColorRawTokens.colorOrange550, dark: OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorActionPrimaryPressedOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorActionPrimaryLoading: ColorSemanticToken { MultipleColorTokens(light: OrangeBrandColorRawTokens.colorOrange550, dark: OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorActionPrimaryLoadingOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorActionPrimaryFocus: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray400, dark: ColorRawTokens.colorFunctionalLightGray400) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorActionPrimaryFocusOnBgEmphasized: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    // MARK: Semantic token - Colors - Elevation

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorDecorativePrimary: ColorSemanticToken { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    // MARK: Semantic token - Colors - Chart

    override open var colorChartCategoricalBrand: ColorSemanticToken { MultipleColorTokens(light: OrangeBrandColorRawTokens.colorOrange550, dark: OrangeBrandColorRawTokens.colorOrange500) }
}

// swiftlint:enable line_length

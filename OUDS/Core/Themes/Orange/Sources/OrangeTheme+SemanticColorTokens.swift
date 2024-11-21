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
// [File to generate by the tokenator]
// WARNING: Not synchronized anymore with the Figjam / Figma by developers team
// Create an issue for update https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=token_update.yml

// swiftlint:disable line_length

/// Overrides some color tokens using values available in ``OrangeBrandColorRawTokens``
extension OrangeTheme {

    // MARK: Semantic token - Colors - Background

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorBgTertiary: MultipleColorTokens { MultipleColorTokens(light: OrangeBrandColorRawTokens.colorWarmGray100, dark: OrangeBrandColorRawTokens.colorWarmGray900) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorBgBrandPrimary: MultipleColorTokens { MultipleColorTokens(light: OrangeBrandColorRawTokens.colorOrange550, dark: OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorBgStatusAccentMuted: MultipleColorTokens { MultipleColorTokens(light: OrangeBrandColorRawTokens.colorWarmGray100, dark: OrangeBrandColorRawTokens.colorWarmGray900) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorBgStatusAccentMutedOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(OrangeBrandColorRawTokens.colorWarmGray900) }

    // MARK: Semantic token - Colors - Content

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorContentBrandPrimary: MultipleColorTokens { MultipleColorTokens(light: OrangeBrandColorRawTokens.colorOrange550, dark: OrangeBrandColorRawTokens.colorOrange500) }

    // MARK: Semantic token - Colors - Border

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorBorderBrandPrimaryOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorBorderBrandPrimary: MultipleColorTokens { MultipleColorTokens(light: OrangeBrandColorRawTokens.colorOrange550, dark: OrangeBrandColorRawTokens.colorOrange500) }

    // MARK: Semantic token - Colors - Action

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorActionSelected: MultipleColorTokens { MultipleColorTokens(light: OrangeBrandColorRawTokens.colorOrange550, dark: OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorActionSelectedOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorActionPrimaryPressed: MultipleColorTokens { MultipleColorTokens(light: OrangeBrandColorRawTokens.colorOrange550, dark: OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorActionPrimaryPressedOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorActionPrimaryLoading: MultipleColorTokens { MultipleColorTokens(light: OrangeBrandColorRawTokens.colorOrange550, dark: OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorActionPrimaryLoadingOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorActionPrimaryFocus: MultipleColorTokens { MultipleColorTokens(light: ColorRawTokens.colorFunctionalDarkGray400, dark: ColorRawTokens.colorFunctionalLightGray400) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorActionPrimaryFocusOnBgEmphasized: MultipleColorTokens { MultipleColorTokens(ColorRawTokens.colorFunctionalLightGray400) }

    // MARK: Semantic token - Colors - Elevation

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorDecorativePrimary: MultipleColorTokens { MultipleColorTokens(OrangeBrandColorRawTokens.colorOrange500) }

    // MARK: Semantic token - Colors - Chart

    override open var colorChartCategoricalBrand: MultipleColorTokens { MultipleColorTokens(light: OrangeBrandColorRawTokens.colorOrange550, dark: OrangeBrandColorRawTokens.colorOrange500) }
}

// swiftlint:enable line_length

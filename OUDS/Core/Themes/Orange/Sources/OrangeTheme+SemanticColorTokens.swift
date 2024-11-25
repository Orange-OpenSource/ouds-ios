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
    override open var colorBgTertiary: MultipleColorSemanticTokens { MultipleColorSemanticTokens(light: OrangeBrandColorRawTokens.colorWarmGray100, dark: OrangeBrandColorRawTokens.colorWarmGray900) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorBgBrandPrimary: MultipleColorSemanticTokens { MultipleColorSemanticTokens(light: OrangeBrandColorRawTokens.colorOrange550, dark: OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorBgStatusAccentMuted: MultipleColorSemanticTokens { MultipleColorSemanticTokens(light: OrangeBrandColorRawTokens.colorWarmGray100, dark: OrangeBrandColorRawTokens.colorWarmGray900) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorBgStatusAccentMutedOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(OrangeBrandColorRawTokens.colorWarmGray900) }

    // MARK: Semantic token - Colors - Content

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorContentBrandPrimary: MultipleColorSemanticTokens { MultipleColorSemanticTokens(light: OrangeBrandColorRawTokens.colorOrange550, dark: OrangeBrandColorRawTokens.colorOrange500) }

    // MARK: Semantic token - Colors - Border

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorBorderBrandPrimaryOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorBorderBrandPrimary: MultipleColorSemanticTokens { MultipleColorSemanticTokens(light: OrangeBrandColorRawTokens.colorOrange550, dark: OrangeBrandColorRawTokens.colorOrange500) }

    // MARK: Semantic token - Colors - Action

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorActionSelected: MultipleColorSemanticTokens { MultipleColorSemanticTokens(light: OrangeBrandColorRawTokens.colorOrange550, dark: OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorActionSelectedOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorActionPrimaryPressed: MultipleColorSemanticTokens { MultipleColorSemanticTokens(light: OrangeBrandColorRawTokens.colorOrange550, dark: OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorActionPrimaryPressedOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorActionPrimaryLoading: MultipleColorSemanticTokens { MultipleColorSemanticTokens(light: OrangeBrandColorRawTokens.colorOrange550, dark: OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorActionPrimaryLoadingOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(OrangeBrandColorRawTokens.colorOrange500) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorActionPrimaryFocus: MultipleColorSemanticTokens { MultipleColorSemanticTokens(light: ColorRawTokens.colorFunctionalDarkGray400, dark: ColorRawTokens.colorFunctionalLightGray400) }

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorActionPrimaryFocusOnBgEmphasized: MultipleColorSemanticTokens { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalLightGray400) }

    // MARK: Semantic token - Colors - Elevation

    // NOTE: Defined here because use values available only in this Orange theme, open for InverseTheme overriding
    override open var colorDecorativePrimary: MultipleColorSemanticTokens { MultipleColorSemanticTokens(OrangeBrandColorRawTokens.colorOrange500) }

    // MARK: Semantic token - Colors - Chart

    override open var colorChartCategoricalBrand: MultipleColorSemanticTokens { MultipleColorSemanticTokens(light: OrangeBrandColorRawTokens.colorOrange550, dark: OrangeBrandColorRawTokens.colorOrange500) }
}

// swiftlint:enable line_length

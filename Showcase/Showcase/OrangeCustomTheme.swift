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

import Foundation
import SwiftUI
import OUDSTokensRaw
import OUDSTokensSemantic
import OUDSTokensComponent
import OUDSThemesOrange

// swiftlint:disable line_length

// Can be for example a country theme
class OrangeCustomTheme: OrangeTheme { }

/// Overrides for `FormsTextInputComponentTokens` the  configuration which for this theme.
/// **Warning: These are random and dumb values**
extension OrangeCustomTheme { // For FormsTextInputComponentTokens

    public override var ftiTitleFontWeight: TypographyFontWeightSemanticToken { fontWeightLabelStrong }
    public override var ftiTitleFontSize: TypographyFontSizeSemanticToken { fontSizeLabelXLarge }
    public override var ftiTitleColor: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalDodgerBlue500) }

    public override var ftiSubtitleFontWeight: TypographyFontWeightSemanticToken { fontWeightBodyDefault }
    public override var ftiSubtitleFontSize: TypographyFontSizeSemanticToken { fontSizeLabelMedium }
    public override var ftiSubtitleColor: ColorSemanticToken { MultipleColorTokens(ColorRawTokens.colorFunctionalMalachite500) }

    public override var ftiBackgroundColor: ColorSemanticToken { colorBackgroundDefaultPrimary }

    public override var ftiBorderColor: ColorSemanticToken { MultipleColorTokens(light: OrangeBrandColorRawTokens.colorDecorativeShockingPink800, dark: OrangeBrandColorRawTokens.colorDecorativeShockingPink200) }

    public override var ftiBorderStyle: BorderStyleSemanticToken { borderStyleDrag }

    public override var ftiBorderWidth: BorderWidthSemanticToken { borderWidthDefault }
}

extension OrangeCustomTheme { // For ColorSemanticTokens

    override var colorBackgroundDefaultPrimary: ColorSemanticToken! { MultipleColorTokens(light: ColorRawTokens.colorFunctionalSun500, dark: ColorRawTokens.colorFunctionalSun800) }
}

extension OrangeCustomTheme { // For ButtonsComponentTokens

    override var buttonInternalSpacing: SpacingPaddingInlineSemanticToken { spacePaddingInlineShorter }

    override var buttonBorderStyle: BorderStyleSemanticToken { borderStyleDrag }
    override var buttonBorderColor: ColorSemanticToken { colorBorderDefault! }
    override var buttonBorderWidth: BorderWidthSemanticToken { borderWidthDefault }
    override var buttonBorderRadius: BorderRadiusSemanticToken { borderRadiusShort }

    override var buttonForegroundColor: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandNeutralMutedLower!, dark: sysColorBrandNeutralMutedWhite!) }
    override var buttonBackgroundColor: ColorSemanticToken { MultipleColorTokens(light: sysColorBrandPositiveLowest!, dark: sysColorBrandPositiveHighest!) }

    override var buttonWidth: SizingSemanticToken { DimensionRawTokens.dimension2000 }
    override var buttonHeight: SizingSemanticToken { DimensionRawTokens.dimension800 }

    override var buttonTypography: TypographyCompositeSemanticToken { typeDisplaySmall }
}
// swiftlint:enable line_length

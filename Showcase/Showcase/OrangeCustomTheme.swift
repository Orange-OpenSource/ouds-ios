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

// Can be for example a country theme
class OrangeCustomTheme: OrangeTheme { }

/// Overrides for `FormsTextInputComponentTokens` the  configuration which for this theme.
/// **Warning: These are random and dumb values**
extension OrangeCustomTheme { // For FormsTextInputComponentTokens

    public override var ftiTitleFontWeight: TypographyFontWeightSemanticToken { fontWeightLabelStrong }
    public override var ftiTitleFontSize: TypographyFontSizeSemanticToken { fontSizeLabelXLarge }
    public override var ftiTitleColor: ColorSemanticToken { ColorRawTokens.colorFunctionalDodgerBlue500 }

    public override var ftiSubtitleFontWeight: TypographyFontWeightSemanticToken { fontWeightBodyDefault }
    public override var ftiSubtitleFontSize: TypographyFontSizeSemanticToken { fontSizeLabelMedium }
    public override var ftiSubtitleColor: ColorSemanticToken { ColorRawTokens.colorFunctionalMalachite500 }

    public override var ftiBackgroundColorLight: ColorSemanticToken { colorBackgroundDefaultPrimaryLight }
    public override var ftiBackgroundColorDark: ColorSemanticToken { colorBackgroundDefaultPrimaryDark }

    public override var ftiBorderColor: ColorSemanticToken { colorBorderEmphasizedDark ?? OrangeBrandColorRawTokens.colorDecorativeShockingPink500 }

    public override var ftiBorderStyle: BorderStyleSemanticToken { borderStyleDrag }

    public override var ftiBorderWidth: BorderWidthSemanticToken { borderWidthDefault }
}

extension OrangeCustomTheme { // For ColorSemanticTokens

    override var colorBackgroundDefaultPrimaryLight: ColorSemanticToken! { ColorRawTokens.colorFunctionalSun500 }
    override var colorBackgroundDefaultPrimaryDark: ColorSemanticToken! { ColorRawTokens.colorFunctionalSun800 }
}

extension OrangeCustomTheme { // For ButtonsComponentTokens

    override var buttonInternalSpacing: SpacingPaddingInlineSemanticToken { spacePaddingInlineComponentShorter }

    override var buttonBorderStyle: BorderStyleSemanticToken { borderStyleDrag }
    override var buttonBorderColorLight: ColorSemanticToken { colorBorderDefaultLight! }
    override var buttonBorderColorDark: ColorSemanticToken { colorBorderDefaultDark! }
    override var buttonBorderWidth: BorderWidthSemanticToken { borderWidthDefault }
    override var buttonBorderRadius: BorderRadiusSemanticToken { borderRadiusShort }

    override var buttonForegroundColorLight: ColorSemanticToken { sysColorBrandNeutralMutedLower! }
    override var buttonForegroundColorDark: ColorSemanticToken { sysColorBrandNeutralMutedWhite! }
    override var buttonBackgroundColorLight: ColorSemanticToken { sysColorBrandPositiveLowest! }
    override var buttonBackgroundColorDark: ColorSemanticToken { sysColorBrandPositiveHighest! }

    override var buttonWidth: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension2000 }
    override var buttonHeight: SizingWidthHeightSemanticToken { DimensionRawTokens.dimension800 }

    override var buttonTypography: TypographyCompositeSemanticToken { typeDisplaySmall }
}

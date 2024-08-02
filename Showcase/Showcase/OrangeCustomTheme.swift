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

/// Overrides for `FormsTextInputComponentToken` the  configuration which for this theme.
/// **Warning: These are random and dumb values**
extension OrangeCustomTheme { // For FormsTextInputComponentToken

    public override var ftiTitleFontWeight: TypographyFontWeightSemanticToken { fontWeightLabelStrong }
    public override var ftiTitleFontSize: TypographyFontSizeSemanticToken { fontSizeLabelXLarge }
    public override var ftiTitleColor: ColorSemanticToken { ColorRawTokens.colorFunctionalDodgerBlue500 }

    public override var ftiSubtitleFontWeight: TypographyFontWeightSemanticToken { fontWeightBodyDefault }
    public override var ftiSubtitleFontSize: TypographyFontSizeSemanticToken { fontSizeLabelMedium }
    public override var ftiSubtitleColor: ColorSemanticToken { ColorRawTokens.colorFunctionalMalachite500 }

    public override var ftiBackgroundColorLight: ColorSemanticToken { colorBackgroundDefaultPrimaryLight }
    public override var ftiBackgroundColorDark: ColorSemanticToken { colorBackgroundDefaultPrimaryDark }

    public override var ftiBorderColor: ColorSemanticToken { colorBorderEmphasisDark ?? ColorRawTokens.colorDecorativeShockingPink500 }

    public override var ftiBorderStyle: BorderStyleSemanticToken { borderStyleDrag }

    public override var ftiBorderWidth: BorderWidthSemanticToken { borderWidthThickest }
}

extension OrangeCustomTheme { // For ColorSemanticTokens

    override var colorBackgroundDefaultPrimaryLight: ColorSemanticToken! { ColorRawTokens.colorFunctionalSun500 }
    override var colorBackgroundDefaultPrimaryDark: ColorSemanticToken! { ColorRawTokens.colorFunctionalSun800 }
}

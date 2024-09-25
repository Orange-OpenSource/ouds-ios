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
import OUDSTokensRaw
import OUDSTokensSemantic
import OUDSTokensComponent

/// Defines for `FormsTextInputComponentTokens` the basic configuration which can be overriden in subthemes / subclasses of this theme.
/// **Warning: These are random and dumb values**
extension OUDSTheme: FormsTextInputComponentTokens {

    // NOTE: What should we done if missing value? E.g. missing color or alias with empty values in the end

    @objc open var ftiTitleFontWeight: TypographyFontWeightSemanticToken { fontWeightHeading }
    @objc open var ftiTitleFontSize: TypographyFontSizeSemanticToken { fontSizeLabelLarge }
<<<<<<< HEAD
    @objc open var ftiTitleColor: ColorSemanticToken { MultipleColorTokens(light: ColorRawTokens.colorFunctionalLightGray80, dark: ColorRawTokens.colorFunctionalDarkGray640) }
=======
    @objc open var ftiTitleColor: ColorSemanticToken { MultipleColorSemanticToken(light: ColorRawTokens.colorFunctionalLightGray80, dark: ColorRawTokens.colorFunctionalDarkGray640) }
>>>>>>> 3e552ea8 (refactor: use of composite colors for elevations)

    @objc open var ftiSubtitleFontWeight: TypographyFontWeightSemanticToken { fontWeightDisplay }
    @objc open var ftiSubtitleFontSize: TypographyFontSizeSemanticToken { fontSizeLabelMedium }
    @objc open var ftiSubtitleColor: ColorSemanticToken { colorContentDefault! }

    @objc open var ftiBackgroundColor: ColorSemanticToken { colorBackgroundDefaultPrimary! }

    @objc open var ftiBorderColor: ColorSemanticToken { colorBorderEmphasized! }

    @objc open var ftiBorderStyle: BorderStyleSemanticToken { borderStyleDefault }

    @objc open var ftiBorderWidth: BorderWidthSemanticToken { borderWidthThin }
}

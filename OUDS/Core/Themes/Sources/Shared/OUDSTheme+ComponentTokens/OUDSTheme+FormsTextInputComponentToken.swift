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

/// Defines for `FormsTextInputComponentToken` the basic configuration which can be overriden in subthemes / subclasses of this theme.
extension OUDSTheme: FormsTextInputComponentToken {

    // TODO: What should we do for unfound / undefined colors? This is a dumb random default value.
    private static let defaultColorSemanticToken = ColorRawTokens.colorFunctionalDarkGray160

    // MARK: Component token - Forms Text Input - Color - Background

    public var formsTextInputColorBackgroundEnabled: ColorSemanticToken { sysColorBrandAttractiveMedium ?? Self.defaultColorSemanticToken }
    public var formsTextInputColorBackgroundHover: ColorSemanticToken { sysColorBrandAttractiveHigher ?? Self.defaultColorSemanticToken }
    public var formsTextInputColorBackgroundActive: ColorSemanticToken { sysColorBrandAttractiveMedium ?? Self.defaultColorSemanticToken }
    public var formsTextInputColorBackgroundSelected: ColorSemanticToken { colorContentMutedLight ?? Self.defaultColorSemanticToken }
    public var formsTextInputColorBackgroundDisabled: ColorSemanticToken { colorOnBackgroundStatusPositiveEmphasisLight ?? Self.defaultColorSemanticToken }
    public var formsTextInputColorBackgroundFocused: ColorSemanticToken { sysColorBrandAttractiveHigher ?? Self.defaultColorSemanticToken }

    // MARK: Component token - Forms Text Input - Border - Width

    public var formsTextInputBorderWidthEnabled: BorderWidthSemanticToken { borderWidthThick }
    public var formsTextInputBorderWidthHover: BorderWidthSemanticToken { borderWidthThickest }
    public var formsTextInputBorderWidthActive: BorderWidthSemanticToken { borderWidthThickest }
    public var formsTextInputBorderWidthSelected: BorderWidthSemanticToken { borderWidthThickest }
    public var formsTextInputBorderWidthDisabled: BorderWidthSemanticToken { borderWidthNone }
    public var formsTextInputBorderWidthFocused: BorderWidthSemanticToken { borderWidthInterfactivePrimaryFocus }

}

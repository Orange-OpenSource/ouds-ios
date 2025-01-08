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

import OUDSTokensComponent
import OUDSTokensRaw
import OUDSTokensSemantic

// [File to generate and upload with the tokenator]

extension OrangeThemeButtonComponentTokensProvider: ButtonsComponentTokens {

    public var buttonSizeMaxHeight: SizeSemanticToken { DimensionRawTokens.dimension600 }
    public var buttonBorderRadius: BorderRadiusSemanticToken { borders.borderRadiusNone }
    public var buttonColorBgDefaultFocusMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackHigher }
    
    // ...
}

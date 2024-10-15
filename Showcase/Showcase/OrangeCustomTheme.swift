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

import OUDSThemesOrange
import OUDSTokensComponent
import OUDSTokensRaw
import OUDSTokensSemantic
import SwiftUI

// swiftlint:disable required_deinit
// swiftlint:disable no_grouping_extension
// swiftlint:disable force_unwrapping
// swiftlint:disable implicitly_unwrapped_optional

// Can be for example a country theme
class OrangeCustomTheme: OrangeTheme { }

extension OrangeCustomTheme { // For ColorSemanticTokens

    override var colorBackgroundPrimary: ColorSemanticToken! { MultipleColorTokens(light: ColorRawTokens.colorFunctionalSun500, dark: ColorRawTokens.colorFunctionalSun800) }
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

    override var buttonTypography: MultipleTypographyTokens { typeDisplaySmall }
}

// swiftlint:enable required_deinit
// swiftlint:enable no_grouping_extension
// swiftlint:enable force_unwrapping
// swiftlint:enable implicitly_unwrapped_optional

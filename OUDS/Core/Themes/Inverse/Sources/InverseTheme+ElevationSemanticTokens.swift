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

// ଘ( ･ω･)_/ﾟ･:*:･｡☆
// [File to generate with the tokenator]

extension InverseTheme {

    // MARK: Semantic token - Elevation - Color - Focus

    public override var elevationColorFocus: ElevationColorSemanticToken { MultipleColorTokens( ColorRawTokens.colorFunctionalLightGray160) }

    // MARK: Semantic token - Elevation - Box shadow

    public override var elevationFocus: ElevationCompositeSemanticToken { ElevationCompositeSemanticToken(light: ElevationCompositeRawToken(x: 0, y: 0, blur: 0, color: ColorRawTokens.colorFunctionalLightGray160), dark: ElevationCompositeRawToken(x: 0, y: 0, blur: 0, color: ColorRawTokens.colorFunctionalLightGray160)) }
}

// swiftlint:enable line_length

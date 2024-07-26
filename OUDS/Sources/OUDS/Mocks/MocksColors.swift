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

struct Mocks {

    // TODO: Chargement via le thème
    var mockColors = [ColorSemanticToken]()
    var mockBorders = [BorderSemanticToken]()

    init() {
        mockColors.append(ColorSemanticToken(property: .background, variant: .default, subvariant: .default, state: .enabled,
                                             rawValue: ColorPrimitiveToken(concept: .semantic, variant: .orange, mode: .value(mode: 500), rawValue: "FF7900")))
        mockColors.append(ColorSemanticToken(property: .background, variant: .default, subvariant: .default, state: .focus,
                                             rawValue: ColorPrimitiveToken(concept: .semantic, variant: .sun, mode: .value(mode: 100), rawValue: "FFF7D6")))
        mockColors.append(ColorSemanticToken(property: .background, variant: .default, subvariant: .default, state: .disabled,
                                             rawValue: ColorPrimitiveToken(concept: .semantic, variant: .orange, mode: .value(mode: 900), rawValue: "6B3300")))
        mockColors.append(ColorSemanticToken(property: .background, variant: .default, subvariant: .default, state: .disabled,
                                             rawValue: ColorPrimitiveToken(concept: .semantic, variant: .lightGray, mode: .value(mode: 80), rawValue: "F4F4F4")))

        mockBorders.append(BorderSemanticToken(property: .width, variant: .default, state: .enabled, rawValue: BorderPrimitiveToken(property: .width, scale: .default, rawValue: 2)))
        mockBorders.append(BorderSemanticToken(property: .width, variant: .default, state: .disabled, rawValue: BorderPrimitiveToken(property: .width, scale: .default, rawValue: 5)))
    }
}

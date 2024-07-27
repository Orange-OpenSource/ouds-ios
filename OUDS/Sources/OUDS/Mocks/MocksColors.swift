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

// swiftlint:disable line_length
struct Mocks {

    var OUDSDefaultTheme_mockColors = [ColorSemanticToken]()
    var OUDSDefaultTheme_mockBorders = [BorderSemanticToken]()
    var OUDSDefaultTheme_mockElevations = [ElevationSemanticToken]()

    var SomeDumbTheme_mockColors = [ColorSemanticToken]()
    var SomeDumbTheme_mockBorders = [BorderSemanticToken]()

    init() {

        // MARK: OUDS Default theme

        // Colors

        OUDSDefaultTheme_mockColors.append(ColorSemanticToken(property: .background, variant: .default, subvariant: .default, state: .enabled,
                                             rawValue: ColorPrimitiveToken(concept: .semantic, variant: .orange, mode: .value(mode: 500), rawValue: "FF7900")))
        OUDSDefaultTheme_mockColors.append(ColorSemanticToken(property: .background, variant: .default, subvariant: .default, state: .focus,
                                             rawValue: ColorPrimitiveToken(concept: .semantic, variant: .sun, mode: .value(mode: 100), rawValue: "FFF7D6")))
        OUDSDefaultTheme_mockColors.append(ColorSemanticToken(property: .background, variant: .default, subvariant: .default, state: .disabled,
                                             rawValue: ColorPrimitiveToken(concept: .semantic, variant: .orange, mode: .value(mode: 900), rawValue: "6B3300")))
        OUDSDefaultTheme_mockColors.append(ColorSemanticToken(property: .background, variant: .default, subvariant: .default, state: .disabled,
                                             rawValue: ColorPrimitiveToken(concept: .semantic, variant: .lightGray, mode: .value(mode: 80), rawValue: "F4F4F4")))

        // Borders

        OUDSDefaultTheme_mockBorders.append(BorderSemanticToken(property: .width, variant: .default, state: .enabled, rawValue: BorderPrimitiveToken(property: .width, scale: .default, rawValue: 2)))
        OUDSDefaultTheme_mockBorders.append(BorderSemanticToken(property: .width, variant: .default, state: .disabled, rawValue: BorderPrimitiveToken(property: .width, scale: .default, rawValue: 5)))

        // Elevations

        OUDSDefaultTheme_mockElevations.append(ElevationSemanticToken(property: .zIndex, variant: .default, subvariant: .default, rawValue: ElevationPrimitiveToken(property: .zIndex, mode: .value(mode: 42), rawValue: 100)))

        // MARK: Some Dumb Theme

        // Colors

        SomeDumbTheme_mockColors.append(ColorSemanticToken(property: .background, variant: .default, subvariant: .default, state: .enabled,
                                             rawValue: ColorPrimitiveToken(concept: .semantic, variant: .orange, mode: .value(mode: 500), rawValue: "007777")))

        SomeDumbTheme_mockColors.append(ColorSemanticToken(property: .background, variant: .default, subvariant: .default, state: .disabled,
                                             rawValue: ColorPrimitiveToken(concept: .semantic, variant: .orange, mode: .value(mode: 900), rawValue: "001111")))

        // Borders

        SomeDumbTheme_mockBorders.append(BorderSemanticToken(property: .width, variant: .default, state: .disabled, rawValue: BorderPrimitiveToken(property: .width, scale: .default, rawValue: 1)))
    }
}
// swiftlint:enable line_length

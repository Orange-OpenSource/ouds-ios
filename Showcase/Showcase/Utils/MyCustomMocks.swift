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
import OUDSTokens

// swiftlint:disable line_length
struct MyCustomMocks {

    var MyCustomTheme_mockColors = [OUDSColorSemanticToken]()
    var MyCustomTheme_mockBorders = [OUDSBorderSemanticToken]()
    var MyCustomTheme_mockElevations = [OUDSElevationSemanticToken]()

    init() {

        // MARK: OUDS Default theme

        // Colors

        MyCustomTheme_mockColors.append(OUDSColorSemanticToken(property: .background, variant: .default, subvariant: .default, state: .enabled,
                                             rawValue: ColorPrimitiveToken(concept: .semantic, variant: .orange, mode: .value(mode: 500), rawValue: "22FF22")))
        MyCustomTheme_mockColors.append(OUDSColorSemanticToken(property: .background, variant: .default, subvariant: .default, state: .focus,
                                             rawValue: ColorPrimitiveToken(concept: .semantic, variant: .sun, mode: .value(mode: 100), rawValue: "33FF33")))
        MyCustomTheme_mockColors.append(OUDSColorSemanticToken(property: .background, variant: .default, subvariant: .default, state: .disabled,
                                             rawValue: ColorPrimitiveToken(concept: .semantic, variant: .orange, mode: .value(mode: 900), rawValue: "44FF44")))
        MyCustomTheme_mockColors.append(OUDSColorSemanticToken(property: .background, variant: .default, subvariant: .default, state: .disabled,
                                             rawValue: ColorPrimitiveToken(concept: .semantic, variant: .lightGray, mode: .value(mode: 80), rawValue: "55FF55")))

        // Borders

        MyCustomTheme_mockBorders.append(OUDSBorderSemanticToken(property: .width, variant: .default, state: .enabled, rawValue: BorderPrimitiveToken(property: .width, scale: .default, rawValue: 1)))
        MyCustomTheme_mockBorders.append(OUDSBorderSemanticToken(property: .width, variant: .default, state: .disabled, rawValue: BorderPrimitiveToken(property: .width, scale: .default, rawValue: 0)))

        // Elevations

        MyCustomTheme_mockElevations.append(OUDSElevationSemanticToken(property: .zIndex, variant: .default, subvariant: .default, rawValue: ElevationPrimitiveToken(property: .zIndex, mode: .value(mode: 42), rawValue: 500)))
    }
}
// swiftlint:enable line_length

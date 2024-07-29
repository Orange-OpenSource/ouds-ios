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
import OUDSTokens
import OUDSMocks

/// Use an open Swift class will help users to make their own themes by overriding this current theme
open class OUDSDefaultTheme: ThemeContract {

    public var colors: [ColorSemanticToken]

    public var borders: [BorderSemanticToken]

    public var elevations: [ElevationSemanticToken]

    public convenience init() {
        self.init(colors: SomeMocks().OUDSDefaultTheme_mockColors,
                  borders: SomeMocks().OUDSDefaultTheme_mockBorders,
                  elevations: SomeMocks().OUDSDefaultTheme_mockElevations)
    }

    public init(colors: [ColorSemanticToken], borders: [BorderSemanticToken], elevations: [ElevationSemanticToken]) {
        self.colors = colors
        self.borders = borders
        self.elevations = elevations
    }
}

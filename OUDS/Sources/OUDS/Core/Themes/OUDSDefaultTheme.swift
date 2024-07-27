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

/// Use an open Swift class will help users to make their own themes by overriding this current theme
open class OUDSDefaultTheme: ThemeContract {

    public var colors: [ColorSemanticToken]

    public var borders: [BorderSemanticToken]

    public var elevations: [ElevationSemanticToken]

    public convenience init() {
        self.init(colors: Mocks().OUDSDefaultTheme_mockColors,
                  borders: Mocks().OUDSDefaultTheme_mockBorders,
                  elevations: Mocks().OUDSDefaultTheme_mockElevations)
    }

    public init(colors: [ColorSemanticToken], borders: [BorderSemanticToken], elevations: [ElevationSemanticToken]) {
        self.colors = colors
        self.borders = borders
        self.elevations = elevations
    }
}

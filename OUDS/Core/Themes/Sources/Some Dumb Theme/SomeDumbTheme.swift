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

/// Another theme we don't allow to see subclassed.
public final class SomeDumbTheme: OUDSThemeContract {

    public var colors: [OUDSColorSemanticToken]
    public var borders: [OUDSBorderSemanticToken]
    public var elevations: [OUDSElevationSemanticToken]

    public init() {
        colors = SomeMocks().SomeDumbTheme_mockColors
        borders = SomeMocks().SomeDumbTheme_mockBorders
        elevations = []
    }
}

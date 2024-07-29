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

/// Use an open Swift class will help users to make their own themes by overriding this current theme.
/// Any properties of an overridable theme should be defined so as to provide deffaults values.
/// We allow this theme to be derivated / be overriden.
open class OUDSDefaultTheme: OUDSThemeContract {

    public var colors: [OUDSColorSemanticToken]

    public var borders: [OUDSBorderSemanticToken]

    public var elevations: [OUDSElevationSemanticToken]

    public init() {
        colors = OUDSSemanticColors().values
        borders = OUDSSemanticBorders().values
        elevations = OUDSSemanticElevations().values
    }
}

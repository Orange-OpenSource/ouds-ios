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

/// Defines a component which can have background colors
protocol OUDSComponentWithBackgroundColor: OUDSComponentContract {
    
    var colorBackgroundEnabled: OUDSColorSemanticToken { get set }
    var colorBackgroundDisabled: OUDSColorSemanticToken { get set }
}

/// Defines a component which can have foreground colors
protocol OUDSComponentWithForegroundColor: OUDSComponentContract {
    
    var colorForegroundEnabled: OUDSColorSemanticToken { get set }
    var colorForegroundDisabled: OUDSColorSemanticToken { get set }
}

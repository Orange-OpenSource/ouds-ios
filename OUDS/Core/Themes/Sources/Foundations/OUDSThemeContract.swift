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
import OUDSTokensSemantic

// MARK: - Theme Contract

/// A theme must define all the rules applied to the product (themes, modules, components, etc).
/// Colors, spacings, borders, elevations, typography, opacity... any available
/// and usable values must be defined in a `OUDSThemeContract`
public protocol OUDSThemeContract: BorderSemanticTokens, ColorSemanticTokens {

}

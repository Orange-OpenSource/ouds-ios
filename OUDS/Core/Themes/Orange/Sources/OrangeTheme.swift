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

import OUDS
import OUDSTokensSemantic

/// This is an override of the default basic ``OUDSTheme`` and should be seen as the default theme for the OUDS library.
/// It can override any properties from its superclass, and can be derived too.
open class OrangeTheme: OUDSTheme, @unchecked Sendable {

    // MARK: - Initializers

    /// Initializes the `OrangeTheme`
    public init() {
        super.init()
    }

    /// Initializes the `OrangeTheme` and lets children classes to user their own tokens implementations
    /// - Parameters:
    ///    - borders: An object providing all the border semantic tokens, as `BorderSemanticTokens` implementation
    ///    - opacities: An object providing all the opacity semantic tokens, as `OpacitySemanticTokens` implementation
    override public init(borders: BorderSemanticTokens,
                         opacities: OpacitySemanticTokens) {
        super.init(borders: borders)
    }

    deinit { }
}

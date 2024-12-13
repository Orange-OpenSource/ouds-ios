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

import OUDSFoundations
import OUDSThemesOrange
import OUDSTokensSemantic

/// This is an override of the default basic `OrangeTheme` with some inverted colors.
/// It can overrides any properties from its superclass, and can be derived too.
public final class InverseTheme: OrangeTheme, @unchecked Sendable {

    // MARK: - Initializers

    /// Initializes the `InverseTheme`
    override public init() {
        OUDSLogger.debug("Init of InverseTheme")
        super.init(colors: InverseThemeColorSemanticTokensWrapper())
    }

    deinit { }
}

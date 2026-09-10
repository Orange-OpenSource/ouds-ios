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

import OUDSSwiftUI
import SwiftUI

// MARK: - Lime Theme

class LimeTheme: OrangeTheme {

    override init() {
        super.init(
            borders: LimeThemeBorderProvider(),
            colors: LimeThemeColorProvider(),
            spaces: LimeThemeSpaceProvider())
    }
}

// MARK: - Space Provider

class LimeThemeSpaceProvider: OrangeThemeSpaceSemanticTokensProvider {

    override var fixedMedium: SpaceSemanticToken { DimensionRawTokens._150 }
    override var fixedLarge: SpaceSemanticToken { DimensionRawTokens._200 }
}

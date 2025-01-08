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
import OUDSTokensComponent
import OUDSTokensSemantic

/// Defines a provider of component tokens for `OUDSButton`.
/// Implements `ButtonsComponentTokensRequirements` so as to be forced to get the needed semantic token providers
/// to be able to use them later for definition of `ButtonsComponentTokens`
///
/// - Since: 0.10.0
open class OrangeThemeButtonComponentTokensProvider: ButtonsComponentTokensRequirements {

    public var sizes: AllSizeSemanticTokensProvider
    public var borders: AllBorderSemanticTokensProvider
    public var colors: AllColorSemanticTokensProvider
    public var spaces: AllSpaceSemanticTokensProvider

    public init(sizes: AllSizeSemanticTokensProvider,
                borders: AllBorderSemanticTokensProvider,
                colors: AllColorSemanticTokensProvider,
                spaces: AllSpaceSemanticTokensProvider) {
        OUDSLogger.debug("Init of OrangeThemeButtonComponentTokensProvider")
        self.sizes = sizes
        self.borders = borders
        self.colors = colors
        self.spaces = spaces
    }

    deinit{ }
}

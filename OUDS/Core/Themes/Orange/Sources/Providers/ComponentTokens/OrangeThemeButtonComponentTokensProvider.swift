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
import OUDSTokensSemantic

/// Defines a provider of component tokens for button objects like `OUDSButton`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// Custom themes can use subclass of ``OrangeThemeButtonComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `ButtonsComponentTokens` sp as to expose the component tokens for buttons through any `OUDSTheme`.
/// Button components tokens are defined with raw and semantic tokens of sizes (from `AllSizeSemanticTokensProvider`), borders
/// (from `AllBorderSemanticTokensProvider`), colors (from `AllColorSemanticTokensProvider`) and
/// spaces (from `AllSpaceSemanticTokensProvider`).
///
/// - Since: 0.10.0
open class OrangeThemeButtonComponentTokensProvider {

    /// Provider of size semantic tokens to use for button sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of border semantic tokens to use for button borders
    public let borders: AllBorderSemanticTokensProvider

    /// Provider of color semantic tokens to use for button colors
    public let colors: AllColorSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for button spaces
    public let spaces: AllSpaceSemanticTokensProvider

    /// Defines a provider of component tokens dedicated to `OUDSButton`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens
    ///    - borders: Provider for border semantic tokens
    ///    - colors: Provider for color semantic tokens
    ///    - spaces: Provider for space semantic tokens
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

    deinit { }
}

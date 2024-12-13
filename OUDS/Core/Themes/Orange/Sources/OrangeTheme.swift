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

/// This is an override of the default basic ``OUDSTheme`` and **must be seen as the default theme for the OUDS library**.
/// It can override any properties from its superclass, and can be derived too.
/// The `InverseTheme` inherits from this `OrangeTheme`.
open class OrangeTheme: OUDSTheme, @unchecked Sendable {

    // MARK: - Initializers

    /// Initializes the `OrangeTheme` with its `OrangeThemeColorSemanticTokensWrapper` for colors token management
    public init() {
        super.init(colors: OrangeThemeColorSemanticTokensWrapper())
    }

    /// Initializes the `OrangeTheme` and lets children classes to user their own tokens implementations.
    /// This constructor is mainly used by `InverseTheme`.
    /// - Parameters:
    ///    - colors: An object providing all the color semantic tokens, as `AllColorSemanticTokens` implementation
    public init(colors: AllColorSemanticTokens) {
        super.init(colors: colors)
    }

    /// Initializes the `OrangeTheme` and lets children classes to user their own tokens implementations
    /// - Parameters:
    ///    - borders: An object providing all the border semantic tokens, as `BorderSemanticTokens` implementation
    ///    - opacities: An object providing all the opacity semantic tokens, as `OpacitySemanticTokens` implementation
    ///    - colors: An object providing all the color semantic tokens, as `AllColorSemanticTokens` implementation
    ///    - elevations: An object providing all the elevation semantic tokens, by default `AllElevationSemanticTokens`
    ///    - fonts: An object providing all the font semantic tokens, by default `AllFontemanticTokens`
    override public init(borders: AllBorderSemanticTokens,
                         opacities: AllOpacitySemanticTokens,
                         colors: AllColorSemanticTokens,
                         elevations: AllElevationSemanticTokens,
                         fonts: AllFontSemanticTokens) {
        super.init(borders: borders,
                   opacities: opacities,
                   colors: colors,
                   elevations: elevations,
                   fonts: fonts)
    }

    deinit { }
}

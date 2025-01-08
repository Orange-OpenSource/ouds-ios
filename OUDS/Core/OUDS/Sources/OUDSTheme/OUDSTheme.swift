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
import OUDSTokensComponent
import OUDSTokensSemantic

/// This is a basic theme any theme must be a subclass off, or all themes must have as ancestor.
/// A Swift `class` has been used so as to allow to easily override some attributes and have inheritance, without having for developers
/// to implement all tokens.
/// Any properties of an overridable theme should be defined so as to provide defaults values.
/// We allow this theme to be derivated and be overriden.
///
/// ``OUDSTheme`` can be seen as a kind of "abstract class" in _object oriented paradigm_.
///
/// Because `OUDSTheme` is not a *final* class, its type cannot be seen as `Sendable`, that is the reason why this conformity is unchecked.
///
/// **Warning: You are not supposed to use this abstract default theme directly. Please prefer `OrangeTheme` instead**
///
/// - Since: 0.8.0
open class OUDSTheme: @unchecked Sendable {

    // MARK: - Semantic tokens

    /// All color semantic tokens exposed in one object
    public let colors: AllColorSemanticTokensProvider

    /// All border semantic tokens exposed in one object
    public let borders: AllBorderSemanticTokensProvider

    /// All elevation semantic tokens exposed in one object
    public let elevations: AllElevationSemanticTokensProvider

    /// A theme can have a custom font which is not the system font
    public let fontFamily: FontFamilySemanticToken?

    /// All font semantic tokens exposed in one object
    public let fonts: AllFontSemanticTokensProvider

    /// All grid semantic tokens exposed in one object
    public let grids: AllGridSemanticTokensProvider

    /// All opacity semantic tokens exposed in one object
    public let opacities: AllOpacitySemanticTokensProvider

    /// All size semantic tokens exposed in one object
    public let sizes: AllSizeSemanticTokensProvider

    /// All size semantic tokens exposed in one object
    public let spaces: AllSpaceSemanticTokensProvider

    // MARK: - Component tokens

    /// All components tokens related to button components like `OUDSButton`
    public let button: AllButtonComponentTokens

    // MARK: - Initializers

    /// Defines a basic kind of abstract theme to subclass then.
    /// No custom font family will be used.
    /// - Parameters:
    ///    - colors: An object providing all the color semantic tokens
    ///    - borders: An object providing all the border semantic tokens
    ///    - elevations: An object providing all the elevation semantic tokens
    ///    - fonts: An object providing all the font semantic tokens
    ///    - grids: An object providing all the grid semantic tokens
    ///    - opacities: An object providing all the opacity semantic tokens
    ///    - sizes: An object providing all the size semantic tokens
    ///    - spaces: An object providing all the space semantic tokens
    ///    - button: An object providing all the component tokens for buttons
    public init(colors: AllColorSemanticTokensProvider,
                borders: AllBorderSemanticTokensProvider,
                elevations: AllElevationSemanticTokensProvider,
                fonts: AllFontSemanticTokensProvider,
                grids: AllGridSemanticTokensProvider,
                opacities: AllOpacitySemanticTokensProvider,
                sizes: AllSizeSemanticTokensProvider,
                spaces: AllSpaceSemanticTokensProvider,
                button: AllButtonComponentTokens) {
        self.colors = colors
        self.borders = borders
        self.elevations = elevations
        fontFamily = nil
        self.fonts = fonts
        self.grids = grids
        self.opacities = opacities
        self.sizes = sizes
        self.spaces = spaces
        self.button = button
    }

    /// Defines a basic kind of abstract theme to subclass then.
    /// - Parameters:
    ///    - colors: An object providing all the color semantic tokens, as `AllColorSemanticTokens` implementation
    ///    - borders: An object providing all the border semantic tokens, as `AllBorderSemanticTokensProvider` implementation
    ///    - elevations: An object providing all the elevation semantic tokens, by default `AllElevationSemanticTokensProvider`
    ///    - fontFamily: Set `nil` if system font to use, otherwise use the `FontFamilySemanticToken` you want to apply
    ///    - fonts: An object providing all the font semantic tokens, by default `AllFontemanticTokens`
    ///    - grids: An object providing all the grid semantic tokens, by default `AllGridSemanticTokens`
    ///    - opacities: An object providing all the opacity semantic tokens, as `AllOpacitySemanticTokensProvider` implementation
    ///    - sizes: An object providing all the size semantic tokens, as `AllSizeSemanticTokens` implementation
    ///    - spaces: An object providing all the space semantic tokens, as `AllSpaceSemanticTokensProvider` implementation
    ///    - button: An object providing all the component tokens for buttons
    public init(colors: AllColorSemanticTokensProvider,
                borders: AllBorderSemanticTokensProvider,
                elevations: AllElevationSemanticTokensProvider,
                fontFamily: FontFamilySemanticToken?,
                fonts: AllFontSemanticTokensProvider,
                grids: AllGridSemanticTokensProvider,
                opacities: AllOpacitySemanticTokensProvider,
                sizes: AllSizeSemanticTokensProvider,
                spaces: AllSpaceSemanticTokensProvider,
                button: AllButtonComponentTokens) {
        self.colors = colors
        self.borders = borders
        self.elevations = elevations
        self.fontFamily = fontFamily
        self.fonts = fonts
        self.grids = grids
        self.opacities = opacities
        self.sizes = sizes
        self.spaces = spaces
        self.button = button
    }

    deinit { }
}

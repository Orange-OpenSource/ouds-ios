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
open class OUDSTheme: @unchecked Sendable {

    // MARK: - Properties

    /// All color semantic tokens exposed in one object
    public let colors: AllColorSemanticTokens

    /// All border semantic tokens exposed in one object
    public let borders: AllBorderSemanticTokens

    /// All elevation semantic tokens exposed in one object
    public let elevations: AllElevationSemanticTokens

    /// A theme can have a custom font which is not the system font
    public let fontFamily: FontFamilySemanticToken?

    /// All font semantic tokens exposed in one object
    public let fonts: AllFontSemanticTokens

    /// All grid semantic tokens exposed in one object
    public let grids: AllGridSemanticTokens

    /// All opacity semantic tokens exposed in one object
    public let opacities: AllOpacitySemanticTokens

    /// All size semantic tokens exposed in one object
    public let sizes: AllSizeSemanticTokens

    /// All size semantic tokens exposed in one object
    public let spaces: AllSpaceSemanticTokens

    // TODO: Add components tokens

    // MARK: - Initializers

    /// Defines a basic kind of abstract theme to subclass then.
    /// No custom font family will be used.
    /// - Parameters:
    ///    - colors: An object providing all the color semantic tokens, by default `OUDSColorSemanticTokensWrapper`
    ///    - borders: An object providing all the border semantic tokens, by default `OUDSBorderSemanticTokensWrapper`
    ///    - elevations: An object providing all the elevation semantic tokens, by default `OUDSElevationSemanticTokensWrapper`
    ///    - fonts: An object providing all the font semantic tokens, by default `OUDSFontSemanticTokensWrapper`
    ///    - grids: An object providing all the grid semantic tokens, by default `OUDSGridSemanticTokensWrapper`
    ///    - opacities: An object providing all the opacity semantic tokens, by default `OUDSOpacitySemanticTokensWrapper`
    ///    - sizes: An object providing all the size semantic tokens, by default `OUDSSizeSemanticTokensWrapper`
    ///    - spaces: An object providing all the space semantic tokens, by default `OUDSSpaceSemanticTokensWrapper`
    public init(colors: AllColorSemanticTokens = OUDSColorSemanticTokensWrapper(),
                borders: AllBorderSemanticTokens = OUDSBorderSemanticTokensWrapper(),
                elevations: AllElevationSemanticTokens = OUDSElevationSemanticTokensWrapper(),
                fonts: AllFontSemanticTokens = OUDSFontSemanticTokensWrapper(),
                grids: AllGridSemanticTokens = OUDSGridSemanticTokensWrapper(),
                opacities: AllOpacitySemanticTokens = OUDSOpacitySemanticTokensWrapper(),
                sizes: AllSizeSemanticTokens = OUDSSizeSemanticTokensWrapper(),
                spaces: AllSpaceSemanticTokens = OUDSSpaceSemanticTokensWrapper()) {
        self.colors = colors
        self.borders = borders
        self.elevations = elevations
        fontFamily = nil
        self.fonts = fonts
        self.grids = grids
        self.opacities = opacities
        self.sizes = sizes
        self.spaces = spaces
    }

    /// Defines a basic kind of abstract theme to subclass then.
    /// - Parameters:
    ///    - colors: An object providing all the color semantic tokens, as `AllColorSemanticTokens` implementation
    ///    - borders: An object providing all the border semantic tokens, as `BorderSemanticTokens` implementation
    ///    - elevations: An object providing all the elevation semantic tokens, by default `AllElevationSemanticTokens`
    ///    - fontFamily: Set `nil` if system font to use, otherwise use the `FontFamilySemanticToken` you want to apply
    ///    - fonts: An object providing all the font semantic tokens, by default `AllFontemanticTokens`
    ///    - grids: An object providing all the grid semantic tokens, by default `AllGridSemanticTokens`
    ///    - opacities: An object providing all the opacity semantic tokens, as `AllOpacitySemanticTokens` implementation
    ///    - sizes: An object providing all the size semantic tokens, as `AllSizeSemanticTokens` implementation
    ///    - spaces: An object providing all the space semantic tokens, as `AllSpaceSemanticTokens` implementation
    public init(colors: AllColorSemanticTokens,
                borders: AllBorderSemanticTokens,
                elevations: AllElevationSemanticTokens,
                fontFamily: FontFamilySemanticToken?,
                fonts: AllFontSemanticTokens,
                grids: AllGridSemanticTokens,
                opacities: AllOpacitySemanticTokens,
                sizes: AllSizeSemanticTokens,
                spaces: AllSpaceSemanticTokens) {
        self.colors = colors
        self.borders = borders
        self.elevations = elevations
        self.fontFamily = fontFamily
        self.fonts = fonts
        self.grids = grids
        self.opacities = opacities
        self.sizes = sizes
        self.spaces = spaces
    }

    deinit { }
}

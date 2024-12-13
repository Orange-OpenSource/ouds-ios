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

    /// All border semantic tokens exposed in one object
    public let borders: AllBorderSemanticTokens

    /// All opacity semantic tokens exposed in one object
    public let opacities: AllOpacitySemanticTokens

    /// All color semantic tokens exposed in one object
    public let colors: AllColorSemanticTokens

    /// All elevation semantic tokens exposed in one object
    public let elevations: AllElevationSemanticTokens

    /// A theme can have a custom font which is not the system font
    public let customFontFamily: FontFamilySemanticToken?

    // MARK: - Initializers

    /// Defines a basic kind of abstract theme to subclass then.
    /// No custom font family will be used.
    /// - Parameters:
    ///    - borders: An object providing all the border semantic tokens, by default `OUDSBorderSemanticTokensWrapper`
    ///    - opacities: An object providing all the opacity semantic tokens, by default `OUDSOpacitySemanticTokensWrapper`
    ///    - colors: An object providing all the color semantic tokens, by default `OUDSColorSemanticTokensWrapper`
    ///    - elevations: An object providing all the elevation semantic tokens, by default `OUDSElevationSemanticTokensWrapper`
    public init(borders: AllBorderSemanticTokens = OUDSBorderSemanticTokensWrapper(),
                opacities: AllOpacitySemanticTokens = OUDSOpacitySemanticTokensWrapper(),
                colors: AllColorSemanticTokens = OUDSColorSemanticTokensWrapper(),
                elevations: AllElevationSemanticTokens = OUDSElevationSemanticTokensWrapper()) {
        self.borders = borders
        self.opacities = opacities
        self.colors = colors
        self.elevations = elevations
        customFontFamily = nil
    }

    /// Defines a basic kind of abstract theme to subclass then.
    /// - Parameters:
    ///    - borders: An object providing all the border semantic tokens, as `BorderSemanticTokens` implementation
    ///    - opacities: An object providing all the opacity semantic tokens, as `OpacitySemanticTokens` implementation
    ///    - colors: An object providing all the color semantic tokens, as `AllColorSemanticTokens` implementation
    ///    - elevations: An object providing all the elevation semantic tokens, by default `AllElevationSemanticTokens`
    ///    - customFontFamily: Set `nil` if system font to use, otherwise use the `FontFamilySemanticToken` you want to apply
    public init(borders: AllBorderSemanticTokens,
                opacities: AllOpacitySemanticTokens,
                colors: AllColorSemanticTokens,
                elevations: AllElevationSemanticTokens,
                customFontFamily: FontFamilySemanticToken?) {
        self.borders = borders
        self.opacities = opacities
        self.colors = colors
        self.elevations = elevations
        self.customFontFamily = customFontFamily
    }

    deinit { }
}

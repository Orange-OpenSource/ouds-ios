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
import OUDSTokensRaw
import SwiftUI

/// Kind of semantic tokens which will wrap a combination of ``ColorSemanticToken`` depending to *color scheme* (i.e. ligh mode or dark mode).
/// Kind of composite token with multiple values, but not named "composite" because this word is already used in the design system.
/// Allows to gather the multiple-value tokens from *Figma* inside one object.
/// If a color token exists with its value depending to the color scheme, it must be packed in such ``MultipleColorSemanticTokens`
///
/// ```swift
///         // Assuming in Figma with have a color semantic token colorBgPrimary,
///         // two semantic color tokens will be defined in Figma and generated by tokenator.
///         // They can be declared in protocol ColorSemanticTokens,
///         // and defined automaticaly in OUDSTheme+ColorSemanticTokens extension
///         var colorBgPrimaryLight: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }
///         var colorBgPrimaryDark: ColorSemanticToken { ColorRawTokens.colorFunctionalDarkGray880 }
///
///         // Then the develoment team declares an "higher" level color semantic token for colorBgPrimary
///         // inside ColorMultipleSemanticTokens protocol,
///         // and defined inside OUDSTheme+ColorMultipleSemanticToken extension
///         var colorBgPrimary: MultipleColorSemanticTokens { MultipleColorSemanticTokens(light: colorBgPrimaryLight, dark: colorBgPrimaryDark) }
///
///         // If the same color is used whatever the color scheme is
///         var colorBgPrimary: MultipleColorSemanticTokens { MultipleColorSemanticTokens(colorBgPrimaryLight) }
///
///         // The theme exposes both generated color semantic tokens and "crafted" higher level color semantic tokens.
///         // It is recommended to use the higher level version as it is less error-prone.
/// ```
///
/// - Since: 0.8.0
public final class MultipleColorSemanticTokens: NSObject, Sendable {

    /// For **light** mode scheme
    public let light: ColorSemanticToken

    /// For **dark** mode scheme
    public let dark: ColorSemanticToken

    /// Initializes a new color multiple semantic token with the same value for light and dark modes
    /// - Parameter value: The `ColorSemanticToken` to apply wether the device is in *light* and *dark* mode
    public init(_ value: ColorSemanticToken) {
        self.light = value
        self.dark = value
    }

    /// Initializes a new color multiple semantic token with two values
    /// - Parameters:
    ///    - light: The `ColorSemanticToken` to apply if device in *light* mode
    ///    - dark: The `ColorSemanticToken` to apply if device in *dark* mode
    public init(light: ColorSemanticToken, dark: ColorSemanticToken) {
        self.light = light
        self.dark = dark
    }

    deinit { }

    /// Returns `true` if `self` and `object` has the same `light` and `dark` values and with `object`
    /// as a `MultipleColorRawToken`. Otherwise returns `false`.
    /// `isEqual` override is preferred for `NSObject`.
    override public func isEqual(_ object: Any?) -> Bool {
        guard let other = object as? MultipleColorSemanticTokens else { return false }
        return self.light == other.light && self.dark == other.dark
    }

    /// Returns the right color according to the `colorScheme`.
    /// - Parameter colorScheme: The color scheme in use to define the value to use
    /// - Returns: The `SwiftUI.Color` value to use
    public func color(for colorScheme: ColorScheme) -> Color {
        (colorScheme == .light ? light : dark).color
    }
}

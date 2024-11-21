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

/// Semantic tokens which will wrap a combination of `ElevationCompositeRawToken` depending to color scheme (i.e. light mode or dark mode)
/// Kind of composite token with multiple values, but not named "composite" because this word is already used in the design system.
/// Allows to gather the multiple-value tokens from *Figma* inside one object.
/// If an elevation token exists with its value depending to the color scheme, it must be packed in such `MultipleElevationTokens`
///
///         // Assuming in Figma with have a elevation semantic token elevationNone,
///         // with values depending to color scheme. These values are defined as elevation raw tokens.
///         let elevationBottom_0 = ElevationCompositeRawToken(x: elevationX0, y: elevationY0, blur: elevationBlur0, color: ColorRawTokens.colorTransparentBlack0)
///         let elevationBottom_1_100 = ElevationCompositeRawToken(x: elevationX0, y: elevationY100, blur: elevationBlur200, color: ColorRawTokens.colorTransparentBlack100)
///
///         // Then the develoment team declares an "higher" level elevation semantic token
///         // inside ElevationCompositeSemanticTokens protocol,
///         // and defined inside OUDSTheme+ElevationCompositeSemanticTokens extension
///         // ElevationCompositeSemanticToken is a typealias for MultipleElevationTokens to keep same grammar as dsign kit
///         var elevationNone: ElevationCompositeSemanticToken { ElevationCompositeSemanticToken(light: elevationBottom_0, dark: elevationBottom_1_100) }
///
///         // If the same color is used whatever the color scheme is
///         var elevationNone: ElevationCompositeSemanticToken { ElevationCompositeSemanticToken(elevationBottom_0) }
///
///         // The theme exposes both generated elevation semantic tokens and "crafted" higher level elevation semantic tokens.
///         // It is recommended to use the higher level version as it is less error-prone.
///
/// The case of this `MultipleElevationTokens` is quite particular because in fact it contains `ElevationCompositeRawToken` (i.e. raw tokens) instead of semantic tokens.
/// In fact only the *color* of the elevation effect vary depending to the color scheme,
/// but in the *Figma* kit this is composite raw tokens which are defined for ligh and dark mode as only one token.
public final class MultipleElevationTokens: NSObject, Sendable {

    /// For **light** mode scheme
    public let light: ElevationCompositeRawToken

    /// For **dark** mode scheme
    public let dark: ElevationCompositeRawToken

    /// Initializes a new elevation composite raw token with the same value for light and dark modes
    /// - Parameter value: The `ElevationCompositeRawToken` to apply wether the device is in *light* and *dark* mode
    public init(_ value: ElevationCompositeRawToken) {
        self.light = value
        self.dark = value
    }

    /// Initializes a new elevation composite raw token with two values
    /// - Parameters:
    ///    - light: The `ElevationCompositeRawToken` to apply if device in *light* mode
    ///    - dark: The `ElevationCompositeRawToken` to apply if device in *dark* mode
    public init(light: ElevationCompositeRawToken, dark: ElevationCompositeRawToken) {
        self.light = light
        self.dark = dark
    }

    deinit { }

    /// Returns `true` if `self` and `object` has the same `light` and `dark` values and with `object`
    /// as a `MultipleElevationTokens`. Otherwise returns `false`.
    /// `isEqual` override is preferred for `NSObject`.
    override public func isEqual(_ object: Any?) -> Bool {
        guard let other = object as? MultipleElevationTokens else { return false }
        return self.light == other.light && self.dark == other.dark
    }

    /// Returns the right elevation according to the `colorScheme`.
    /// - Parameter colorScheme: The color scheme
    /// - Returns: The `ElevationCompositeRawToken` to use depending to `colorScheme`
    public func elevation(for colorScheme: ColorScheme) -> ElevationCompositeRawToken {
        (colorScheme == .light ? light : dark)
    }
}

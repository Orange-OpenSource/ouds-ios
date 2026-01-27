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

import OUDSTokensRaw
import SwiftUI

// swiftlint:disable line_length

/// Semantic tokens which will wrap a combination of `ElevationCompositeRawToken` depending to color scheme (i.e. light mode or dark mode)
/// Kind of composite token with multiple values, but not named "composite" because this word is already used in the design system.
/// Allows to gather the multiple-value tokens from *Figma* inside one object.
/// If an elevation token exists with its value depending to the color scheme, it must be packed in such ``MultipleElevationCompositeRawToken`
///
/// ```swift
///         // Assuming in Figma with have a elevation semantic token none,
///         // with values depending to color scheme. These values are defined as elevation raw tokens.
///         let bottom_0 = ElevationCompositeRawToken(x: x0, y: y0, blur: blur0, color: ColorRawTokens.opacityBlack0)
///         let bottom_1_100 = ElevationCompositeRawToken(x: x0, y: y100, blur: blur200, color: ColorRawTokens.opacityBlack100)
///
///         // Then the develoment team declares an "higher" level elevation semantic token
///         // inside ElevationCompositeSemanticTokens protocol,
///         // and defined inside OrangeTheme+ElevationCompositeSemanticTokens extension
///         // ElevationCompositeSemanticToken is a typealias for MultipleElevationCompositeRawToken to keep same grammar as design kit
///         var none: ElevationCompositeSemanticToken {
///             ElevationCompositeSemanticToken(light: bottom_0, dark: bottom_1_100)
///         }
///
///         // If the same elevation is used whatever the color scheme is
///         var none: ElevationCompositeSemanticToken {
///             ElevationCompositeSemanticToken(bottom_0)
///         }
/// ```
///
/// ```swift
///         // The theme exposes both generated elevation semantic tokens and "crafted" higher level elevation semantic tokens.
///         // It is recommended to use the higher level version as it is less error-prone.
///
///         @Environment(\.theme) var theme
///         @Environment(\.colorScheme) var colorScheme
///
///         // Given you want to apply the elevation token "raised"
///         var body: some View {
///             // Apply the token of elevation for the shadow effect without managing yourself the color scheme
///             Rectangle()
///                 .shadow(elevation: theme.elevations.raised))
///         }
/// ```
///
/// ```swift
///     // Or get the token depending to the color scheme and do whatever you want with
///     theme.elevations.raised.elevation(for: colorScheme)
/// ```
///
/// The case of this `MultipleElevationCompositeRawToken` is quite particular because in fact it contains `MultipleElevationCompositeRawToken` (i.e. raw tokens) instead of semantic tokens.
/// In fact only the *color* of the elevation effect vary depending to the color scheme,
/// but in the *Figma* kit this is composite raw tokens which are defined for ligh and dark mode as only one token.
///
/// - Since: 0.8.0
public final class MultipleElevationCompositeRawToken: NSObject, Sendable {

    /// For **light** mode scheme
    public let light: ElevationCompositeRawToken

    /// For **dark** mode scheme
    public let dark: ElevationCompositeRawToken

    /// Initializes a new elevation composite raw token with the same value for light and dark modes
    /// - Parameter value: The `ElevationCompositeRawToken` to apply wether the device is in *light* and *dark* mode
    public init(_ value: ElevationCompositeRawToken) {
        light = value
        dark = value
    }

    /// Initializes a new elevation composite raw token with two values
    /// - Parameters:
    ///    - light: The `ElevationCompositeRawToken` to apply if device in *light* mode
    ///    - dark: The `ElevationCompositeRawToken` to apply if device in *dark* mode
    public init(light: ElevationCompositeRawToken, dark: ElevationCompositeRawToken) {
        self.light = light
        self.dark = dark
    }

    deinit {}

    /// Returns `true` if `self` and `object` has the same `light` and `dark` values and with `object`
    /// as a `MultipleElevationCompositeRawToken`. Otherwise returns `false`.
    /// `isEqual` override is preferred for `NSObject`.
    override public func isEqual(_ object: Any?) -> Bool {
        guard let other = object as? MultipleElevationCompositeRawToken else { return false }
        return light == other.light && dark == other.dark
    }

    /// Returns the right elevation according to the `colorScheme`.
    /// - Parameter colorScheme: The color scheme
    /// - Returns: The `ElevationCompositeRawToken` to use depending to `colorScheme`
    public func elevation(for colorScheme: ColorScheme) -> ElevationCompositeRawToken {
        colorScheme == .light ? light : dark
    }
}

// swiftlint:enable line_length

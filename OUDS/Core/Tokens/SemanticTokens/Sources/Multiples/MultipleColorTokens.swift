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
import OUDSFoundations
import SwiftUI

/// Kind of semantic tokens which will wrap a combination of `ColorRawToken` depending to color scheme.
/// Kind of composite token with multiple values, but not named "composite" because this word is already used in the design system.
/// Allows to gather the multiple-value tokens from Figma inside one object.
public final class MultipleColorTokens: NSObject {

    /// For **light** mode scheme
    public let light: ColorRawToken

    /// For **dark** mode scheme
    public let dark: ColorRawToken

    /// Initializes a new color composite semantic token with the same value for light and dark modes
    /// - Parameter value: The `ColorRawToken` to apply wether the device is in *light* and *dark* mode
    public init(_ value: ColorRawToken) {
        self.light = value
        self.dark = value
    }

    /// Initializes a new color composite semantic token with the same value for light and dark modes, 
    /// which can be `nil` (because for example use of optional `ColorAliasSemanticToken`)
    /// - Parameter value: The `ColorRawToken` to apply wether the device is in *light* and *dark* mode
    public convenience init?(_ value: ColorRawToken?) {
        guard let value = value else {
            OUDSLogger.error("Tried to define a MultipleColorTokens with a nil unique value!")
            return nil
        }
        self.init(value)
    }

    /// Initializes a new color composite semantic token with two values
    /// - Parameters:
    ///    - light: The `ColorRawToken` to apply if device in *light* mode
    ///    - dark: The `ColorRawToken` to apply if device in *dark* mode
    public init(light: ColorRawToken, dark: ColorRawToken) {
        self.light = light
        self.dark = dark
    }

    /// Initializes a new color composite semantic token with two values which can be `nil` (because for example use of optional `ColorAliasSemanticToken`)
    /// - Parameters:
    ///    - light: The `ColorRawToken` to apply if device in *light* mode
    ///    - dark: The `ColorRawToken` to apply if device in *dark* mode
    public convenience init?(light: ColorRawToken?, dark: ColorRawToken?) {
        guard let light = light, let dark = dark else {
            OUDSLogger.error("Tried to define a MultipleColorTokens with at least one nil value! (light = '\(light ?? "nil")', dark = '\(dark ?? "nil")')")
            return nil
        }
        self.init(light: light, dark: dark)
    }

    /// Returns `true` if `self` and `object` has the same `light` and `dark` values and with `object`
    /// as a `MultipleColorRawToken`. Otherwise returns `false`.
    /// `isEqual` override is preferred for `NSObject`.
    public override func isEqual(_ object: Any?) -> Bool {
        guard let other = object as? MultipleColorTokens else { return false }
        return self.light == other.light && self.dark == other.dark
    }

    /// Returns the right color according to the `colorScheme`.
    /// - Parameter colorScheme: The color scheme
    /// - Returns: The right color raw token
    public func color(for colorSheme: ColorScheme) -> Color {
        (colorSheme == .light ? light : dark).color
    }
}

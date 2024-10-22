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

/// Semantic tokens which will wrap a combination of `ElevationCompositeRawToken` depending to color scheme.
/// Kind of composite token with multiple values, but not named "composite" because this word is already used in the design system.
/// Allows to gather the multiple-value tokens from Figma inside one object.
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
    /// - Returns: The right elevation raw token
    public func elevation(for colorSheme: ColorScheme) -> ElevationCompositeRawToken {
        (colorSheme == .light ? light : dark)
    }
}

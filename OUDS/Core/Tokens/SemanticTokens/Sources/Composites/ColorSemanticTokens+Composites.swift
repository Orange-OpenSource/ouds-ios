//
// Software Name: OUDS iOS
// SPDX-FileCopyrightText: Copyright (c) Orange SA
// SPDX-License-Identifier: MIT
//
// This software is distributed under the MIT license,
// the text of which is available at https://opensource.org/license/MIT/
// or see the "LICENSE" file for more details.
// ww
// Authors: See CONTRIBUTORS.txt
// Software description: A SwiftUI components library with code examples for Orange Unified Design System
//

import Foundation
import OUDSTokensRaw

/// Composite semantic tokens which will wrap a combination of `ColorRawToken` depending to color scheme
public final class ColorCompositeSemanticToken: NSObject {

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
        guard let value = value else { return nil }
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
        guard let light = light, let dark = dark else { return nil }
        self.init(light: light, dark: dark)
    }

    /// Returns `true` if `self` and `object` has the same `light` and `dark` values and with `object`
    /// as a `ColorCompositeSemanticToken`. Otherwise returns `false`.
    /// `isEqual` override is preferred for `NSObject`.
    public override func isEqual(_ object: Any?) -> Bool {
        guard let other = object as? ColorCompositeSemanticToken else { return false }
        return self.light == other.light && self.dark == other.dark
    }
}

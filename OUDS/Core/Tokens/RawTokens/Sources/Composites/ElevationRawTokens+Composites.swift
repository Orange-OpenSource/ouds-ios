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

/// In the global design system, composite tokens are defined for elevation effects.
/// It is defined as a `final class` and `NSObject` so as to be shared through `@objc` with extensions and protocols within modules.
public final class ElevationCompositeRawToken: NSObject { // For @objc compatibility

    /// The X offset for the elevation
    public let x: ElevationRawToken
    /// The Y offset for the elevation
    public let y: ElevationRawToken
    /// The color of the shadow effect
    public let color: ColorRawToken

    /// The *Figma* tool uses its own implementation of shadow or elevation effect with a *blur* and a *spread* values defined in the *tokens*, inherited from web universe.
    /// However *SwiftUI* for shadows effects uses only a *radius* which does not match the *Figma* *blur* and *spread* radiuses values.
    public let radius: ElevationRawToken

    /// Defines a composite elevation token and computes the *SwftUI radius* from the given *Figma blur* applying formula:
    ///
    /// ** radius = blur / 2 **
    ///
    /// - Parameters:
    ///    - x: The X offset for elevation
    ///    - y: The Y offset for elevation
    ///    - blur: The blur effect from *Figma*, used to compute *SwiftUI radius*
    ///    - color: The color to apply on the shafow
    public init(x: ElevationRawToken, y: ElevationRawToken, blur: ElevationRawToken, color: ColorRawToken) {
        self.x = x
        self.y = y
        self.color = color
        radius = blur / 2
    }

    /// Compares the `self.x`, `self.y`, `self.blur` and `self.color` values between tokens.
    /// If `object` is not an `ElevationCompositeRawToken`, or ahs one of its four proeprties with another value than `self`,
    /// return `false`. Otherwise returns `true`. `isEqual` override is preferred for `NSObject`.
    public override func isEqual(_ object: Any?) -> Bool {
        guard let other = object as? ElevationCompositeRawToken else { return false }
        return self.x == other.x
        && self.y == other.y
        && self.radius == other.radius
        && self.color == other.color
    }
}
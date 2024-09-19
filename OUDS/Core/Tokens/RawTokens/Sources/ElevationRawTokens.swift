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

// MARK: - Type aliases to keep grammar clear

/// Type aliases precising `CGFloat` values are used (because used in _SwiftUI_ API) for each **elevation raw token**.
public typealias ElevationRawToken = CGFloat

// MARK: - Composite raw token

/// In the global design system, composite tokens are defined for elevation effects.
/// It is defined as a `final class` and `NSObject` so as to be shared through `@objc` with extensions and protocols within modules.
public final class ElevationCompositeRawToken: NSObject { // For @objc compatibility

    /// The X offset for the elevation
    public let x: ElevationRawToken
    /// The Y offset for the elevation
    public let y: ElevationRawToken
    /// The *Figma* blur effect for the elevation, to use for `radius` computations.
    public let blur: ElevationRawToken
    /// The color of the shadow effect
    public let color: ColorRawToken

    /// The *Figma* tool uses its own implementation of shadow or elevation effect with a *blur* and a *spread* values defined in the *tokens*, inherited from web universe.
    /// However *SwiftUI* for shadows effects uses only a *radius* which does not match the *Figma* *blur* and *spread* radiuses values.
    /// Thus this value is computed from the *blur* value so as to try to reproduce the same effect applying the formula
    ///
    /// ** radius = blur +  / 2**
    public var radius: ElevationRawToken {
        blur / 2
    }

    public init(x: ElevationRawToken, y: ElevationRawToken, blur: ElevationRawToken, color: ColorRawToken) {
        self.x = x
        self.y = y
        self.blur = blur
        self.color = color
    }

    public override func isEqual(_ object: Any?) -> Bool {
        guard let other = object as? ElevationCompositeRawToken else { return false }
        return self.x == other.x
        && self.y == other.y
        && self.blur == other.blur
        && self.color == other.color
    }
}

// MARK: - Raw tokens

/// This is the group of all **raw tokens** related to **elevations**.
/// Primitive types such as `CGFloat` must be used to as to allow to use `@objc` keywords in extensions for overriding.
/// Such tokens are packed in a _Swift enum_ so as to gather them in one object with the suitable namespace and avoid to have just constants in nothing else
///  (i.e. publicly accessible from everywhere). More optimized than _struct_.
public enum ElevationRawTokens { }

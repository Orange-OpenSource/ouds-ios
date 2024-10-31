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
import OUDSTokensRaw
import SwiftUICore

/// Kind of semantic tokens which will wrap a combination of `DimensionRawToken` depending to size classes.
/// Kind of composite token with multiple values, but not named "composite" because this word is already used in the design system.
/// Allows to gather the multiple-value tokens from Figma inside one object.
public final class MultipleSpaceTokens: NSObject, Sendable {

    /// For **extra-compact** and **compact** viewports
    public let compact: DimensionRawToken

    /// For **regular** and **medium** viewports
    public let regular: DimensionRawToken

    /// Initializes a new spacing composite semantic token.
    /// - Parameters:
    ///    - compact: The `DimensionRawToken` to apply if device in *compact* mode
    ///    - regular: The `DimensionRawToken` to apply if device in *regular* mode
    public init(compact: DimensionRawToken, regular: DimensionRawToken) {
        self.compact = compact
        self.regular = regular
    }

    deinit { }

    /// Returns `true` if `self` and `object` has the same `compact` and `regular` values and with `object`
    /// as a `MultipleSpaceTokens`. Otherwise returns `false`.
    /// `isEqual` override is preferred for `NSObject`.
    override public func isEqual(_ object: Any?) -> Bool {
        guard let other = object as? MultipleSpaceTokens else { return false }
        return self.compact == other.compact && self.regular == other.regular
    }

    /// Returns the right dimension according to the `userInterfaceSizeClass`.
    /// - Parameter userInterfaceSizeClass: The user interface size class (Could be the horizontal or the vertical size class)
    /// - Returns: The right dimension raw token
    public func dimension(for userInterfaceSizeClass: UserInterfaceSizeClass) -> DimensionRawToken {
        userInterfaceSizeClass == .compact ? compact : regular
    }
}

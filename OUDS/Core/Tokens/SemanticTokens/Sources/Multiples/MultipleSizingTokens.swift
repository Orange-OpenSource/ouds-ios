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

/// Kind of semantic tokens which will wrap a combination of `SizingSemanticToken` depending to viewports / size classes.
/// Kind of composite token with multiple values, but not named "composite" because this word is already used in the design system.
/// Allows to gather the multiple-value tokens from Figma inside one object.
public final class MultipleSizingTokens: NSObject {

    /// For **extra-compact** and **compact** viewports
    public let compact: SizingSemanticToken

    /// For **regular** and **medium** viewports
    public let regular: SizingSemanticToken

    /// Initializes a new sizing composite semantic token.
    /// - Parameter value: The `SizingSemanticToken` to apply if device in *compact* mode or *regular* mode
    public init(_ value: SizingSemanticToken) {
        self.compact = value
        self.regular = value
    }

    /// Initializes a new sizing composite semantic token.
    /// - Parameters:
    ///    - compact: The `SizingSemanticToken` to apply if device in *compact* mode
    ///    - regular: The `SizingSemanticToken` to apply if device in *regular* mode
    public init(compact: SizingSemanticToken, regular: SizingSemanticToken) {
        self.compact = compact
        self.regular = regular
    }

    deinit { }

    /// Returns `true` if `self` and `object` has the same `compact` and `regular` values and with `object`
    /// as a `MultipleSizingTokens`. Otherwise returns `false`.
    /// `isEqual` override is preferred for `NSObject`.
    override public func isEqual(_ object: Any?) -> Bool {
        guard let other = object as? MultipleSizingTokens else {
            return false
        }
        return self.compact == other.compact && self.regular == other.regular
    }
}

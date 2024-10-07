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

/// Kind of semantic tokens which will wrap a combination of `TypographyCompositeRawToken` depending to size classes.
/// Kind of composite token with multiple values, but not named "composite" because this word is already used in the design system.
/// Allows to gather the multiple-value tokens from Figma inside one object.
public final class MultipleTypographyTokens: NSObject {

    /// For **extra-compact** and **compact** viewports
    public let compact: TypographyCompositeRawToken

    /// For **regular** and **medium** viewports
    public let regular: TypographyCompositeRawToken

    /// Initializes a new typography composite semantic token.
    /// - Parameter unique: The `TypographyCompositeRawToken` to apply for both in *compact* and *regular* modes
    public init(_ unique: TypographyCompositeRawToken) {
        self.compact = unique
        self.regular = unique
    }
    
    /// Initializes a new typography composite semantic token.
    /// - Parameters:
    ///    - compact: The `TypographyCompositeRawToken` to apply if device in *compact* mode
    ///    - regular: The `TypographyCompositeRawToken` to apply if device in *regular* mode
    public init(compact: TypographyCompositeRawToken, regular: TypographyCompositeRawToken) {
        self.compact = compact
        self.regular = regular
    }

    /// Returns `true` if `self` and `object` has the same `compact` and `regular` values and with `object`
    /// as a `MultipleTypographyTokens`. Otherwise returns `false`.
    /// `isEqual` override is preferred for `NSObject`.
    public override func isEqual(_ object: Any?) -> Bool {
        guard let object = object as? MultipleTypographyTokens else { return false }
        return self.compact == object.compact && self.regular == object.regular
    }
}

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

/// Kind of semantic tokens which will wrap a combination of `TypographyFontLineHeightSemanticToken` depending to size classes.
/// Allows to gather the multiple-value tokens from Figma inside one object.
public final class MultipleFontLineHeightTokens: NSObject {

    /// For **extra-compact** and **compact** viewports
    public let compact: TypographyFontLineHeightSemanticToken

    /// For **regular** and **medium** viewports
    public let regular: TypographyFontLineHeightSemanticToken

    /// Initializes a new multiple font token with the same value for both *compact* and *regular* size classes
    /// - Parameter value: The `TypographyFontLineHeightSemanticToken` to apply if device in *compact* mode
    public init(_ value: TypographyFontLineHeightSemanticToken) {
        self.compact = value
        self.regular = value
    }

    /// Initializes a new multiple font token.
    /// - Parameters:
    ///    - compact: The `TypographyFontLineHeightSemanticToken` to apply if device in *compact* mode
    ///    - regular: The `TypographyFontLineHeightSemanticToken` to apply if device in *regular* mode
    public init(compact: TypographyFontLineHeightSemanticToken, regular: TypographyFontLineHeightSemanticToken) {
        self.compact = compact
        self.regular = regular
    }

    /// Returns `true` if `self` and `object` has the same `compact` and `regular` values and with `object`
    /// as a `MultipleFontTokens`. Otherwise returns `false`.
    /// `isEqual` override is preferred for `NSObject`.
    public override func isEqual(_ object: Any?) -> Bool {
        guard let object = object as? MultipleFontLineHeightTokens else { return false }
        return self.compact == object.compact && self.regular == object.regular
    }
}
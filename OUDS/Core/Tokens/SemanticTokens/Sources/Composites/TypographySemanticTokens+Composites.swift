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

/// Composite semantic tokens which will wrap a combination of `TypographyCompositeRawToken` depending to viewports.
public final class TypographyCompositeSemanticToken: NSObject {

    /// For **extra-compact** and **compact** viewports
    public let compact: TypographyCompositeRawToken

    /// For **regular** and **medium** viewports
    public let regular: TypographyCompositeRawToken

    /// Initializes a new typography composite semantic token.
    /// - Parameters:
    ///    - compact: The `TypographyCompositeRawToken` to apply if device in *compact* mode
    ///    - regular: The `TypographyCompositeRawToken` to apply if device in *regular* mode
    public init(compact: TypographyCompositeRawToken, regular: TypographyCompositeRawToken) {
        self.compact = compact
        self.regular = regular
    }

    /// Returns `true` if `self` and `object` has the same `compact` and `regular` values and with `object`
    /// as a `TypographyCompositeSemanticToken`. Otherwise returns `false`.
    public override func isEqual(_ object: Any?) -> Bool {
        guard let object = object as? TypographyCompositeSemanticToken else { return false }
        return self.compact == object.compact && self.regular == object.regular
    }
}

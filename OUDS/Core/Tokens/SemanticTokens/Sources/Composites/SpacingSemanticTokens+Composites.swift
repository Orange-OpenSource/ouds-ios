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

/// Composite semantic tokens which will wrap a combination of `DimensionRawToken` depending to viewports.
public final class SpacingCompositeSemanticToken: NSObject {

    /// For **extra-compact** and **compact** viewports
    public let compact: DimensionRawToken
    /// For **regular** and **medium** viewports
    public let regular: DimensionRawToken

    public init(compact: DimensionRawToken, regular: DimensionRawToken) {
        self.compact = compact
        self.regular = regular
    }

    public override func isEqual(_ object: Any?) -> Bool {
        guard let other = object as? SpacingCompositeSemanticToken else { return false }
        return self.compact == other.compact && self.regular == other.regular
    }
}

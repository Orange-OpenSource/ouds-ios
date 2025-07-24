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

import OUDSTokensRaw

/// Basically a color semantic  token is a `ColorRawToken`, to keep grammar clean and clear with design system grammar.
public typealias ColorSemanticToken = ColorRawToken

extension ColorSemanticToken {

    /// Because some color semantic tokens can have forbidden values,
    /// this helpers returns a flag saying if its the case or not
    /// - Returns: True if forbidden color value, false otherwise
    public func isForbiddenValueColor() -> Bool {
        self == "ouds-forbidden-color-value"
    }
}

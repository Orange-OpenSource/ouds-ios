//
// Software Name: OUDSThemesContract iOS
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

import SwiftUI

extension View {

    /// Modifies the current `View` to apply or not a flip effect
    ///
    /// - Parameter flip: if `true` mirrors the view, `false` does nothing
    /// - Returns some View: The current `View` with or not a flip effect
    func toFlip(_ flip: Bool) -> some View {
        modifier(FlipperModifier(flip: flip))
    }
}

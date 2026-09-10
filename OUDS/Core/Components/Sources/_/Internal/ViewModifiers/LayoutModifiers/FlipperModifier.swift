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

import SwiftUI

/// A `ViewModifier` which will apply a specific flip effect on a `View`
struct FlipperModifier: ViewModifier { // 🐬

    // MARK: - Stored properties

    let flip: Bool

    // MARK: - Body

    func body(content: Content) -> some View {
        if flip {
            content.scaleEffect(x: -1, y: 1)
        } else {
            content
        }
    }
}

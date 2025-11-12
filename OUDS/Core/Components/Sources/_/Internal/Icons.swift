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

// MARK: - Fixed Icon

struct FixedIcon: View {

    let icon: Image
    let flipped: Bool
    let size: CGFloat

    init(icon: Image, size: CGFloat, flipped: Bool = false) {
        self.icon = icon
        self.size = size
        self.flipped = flipped
    }

    var body: some View {
        icon.resizable()
            .frame(width: size, height: size, alignment: .center)
            .toFlip(flipped)
    }
}

// MARK: - Scaled icon

struct ScaledIcon: View {

    let icon: Image
    let flipped: Bool
    @ScaledMetric var size: CGFloat

    init(icon: Image, size: CGFloat, flipped: Bool = false) {
        self.icon = icon
        self.flipped = flipped
        _size = ScaledMetric(wrappedValue: size)
    }

    var body: some View {
        icon.resizable()
            .frame(width: size, height: size, alignment: .center)
            .toFlip(flipped)
    }
}

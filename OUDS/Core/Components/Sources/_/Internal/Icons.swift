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

    let image: OUDSImage
    let size: CGFloat

    var body: some View {
        image
            .frame(width: size, height: size, alignment: .center)
    }
}

// MARK: - Scaled icon

struct ScaledIcon: View {

    let image: OUDSImage
    @ScaledMetric var size: CGFloat

    init(image: OUDSImage, size: CGFloat) {
        self.image = image
        _size = ScaledMetric(wrappedValue: size)
    }

    var body: some View {
        image
            .frame(width: size, height: size, alignment: .center)
    }
}

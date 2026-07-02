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

/// Defines an image based on ``OUDSImage`` with with a fixed size
///
/// ## Code samples
///
/// ```swift
///   OUDSFixedIcon(image: someOudsImage, size: someTokenOfSize)
/// ```
///
/// - Since: 2.3.0
public struct OUDSFixedIcon: View {

    let image: OUDSImage
    let size: CGFloat

    public init(image: OUDSImage, size: CGFloat) {
        self.image = image
        self.size = size
    }

    public var body: some View {
        image
            .frame(width: size, height: size, alignment: .center)
    }
}

// MARK: - Scaled icon

/// Defines an image based on ``OUDSImage`` with with a dynamic size depending to `ScaledMetric`
///
/// ## Code samples
///
/// ```swift
///   OUDSScaledIcon(image: someOudsImage, size: someTokenOfSize)
/// ```
///
/// - Since: 2.3.0
public struct OUDSScaledIcon: View {

    let image: OUDSImage
    @ScaledMetric var size: CGFloat

    public init(image: OUDSImage, size: CGFloat) {
        self.image = image
        _size = ScaledMetric(wrappedValue: size)
    }

    public var body: some View {
        image
            .frame(width: size, height: size, alignment: .center)
    }
}

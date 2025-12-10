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

import UIKit

extension UIBlurEffect {

    /// Using a `CGFloat`, like for example a token of effect, defines which blur effect it will be
    ///
    /// - Parameter radius: Blur radius in points
    public convenience init(radius: CGFloat) {
        let style = Self.blurStyleMaterial(forRadius: radius)
        self.init(style: style)
    }

    /// Makes a radius to a blur effect material.
    ///
    /// - Parameter radius: Radius in points
    /// - Returns: The associated `UIBlurEffect` style
    /// - Note: Arbitrary values
    private static func blurStyleMaterial(forRadius radius: CGFloat) -> UIBlurEffect.Style {
        switch radius {
        case 0 ..< 3:
            .systemUltraThinMaterial
        case 3 ..< 6:
            .systemThinMaterial
        case 6 ..< 10:
            .systemMaterial
        case 10 ..< 15:
            .regular
        case 15 ..< 20:
            .systemThickMaterial
        default:
            .prominent
        }
    }
}

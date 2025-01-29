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
import SwiftUI

extension View {

    /// Wraps the *SwiftUI* `shadow(color:radius:x:y)` method so as to use as `radius` value
    /// the computed `radius` value of the given `ElevationCompositeRawToken`.
    /// - Parameter elevation: The token to give for the shadow / elevation effect
    /// - Returns `View`: The current `View` with the shadow / elevation effect
    public func shadow(elevation: ElevationCompositeRawToken) -> some View {
        self.shadow(color: elevation.color.color,
                    radius: elevation.radius,
                    x: CGFloat(elevation.x),
                    y: CGFloat(elevation.y))
    }
}

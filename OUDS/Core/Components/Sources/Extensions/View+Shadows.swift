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
import OUDSTokensSemantic
import SwiftUI

extension View {

    /// Wraps the *SwiftUI* `shadow(color:radius:x:y)` method so as to use as `radius` value
    /// the computed `radius` value of the given `ElevationCompositeSemanticToken`.
    /// - Parameter elevation: The token to give for the shadow / elevation effect
    /// - Returns `View`: The current `View` with the shadow / elevation effect
    public func shadow(elevation: ElevationCompositeSemanticToken) -> some View {
        // TODO: Manage light and dark color scheme
        return self
            .shadow(color: elevation.light.color.color,
                    radius: elevation.light.radius,
                    x: CGFloat(elevation.light.x),
                    y: CGFloat(elevation.light.y))
    }
}
/*
extension View {
    func elevationRaised() -> some View {
        ...
    }
    
    func elevationAllSticky() -> some View {
        ...
    }
}*/

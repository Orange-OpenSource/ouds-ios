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

extension View {

    /// Helper to set the current view on colored surface based on ``OUDSColoredSurface``.
    ///
    /// - Parameter colorMode: The color mode applied as background on the current view.
    public func oudsColoredSurface(colorMode: OUDSColoredSurface.SurfaceColor) -> some View {
        self.modifier(OUDSColoredSurfaceModifier(backgroundSurfaceColor: colorMode))
    }
}

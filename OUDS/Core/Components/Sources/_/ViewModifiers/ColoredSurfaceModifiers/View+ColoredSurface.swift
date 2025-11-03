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

import OUDSTokensSemantic // NOTE: "unused" false positive by periphery (https://github.com/peripheryapp/periphery/issues/943)
import SwiftUI

extension View {

    /// Helper to set the current view on colored surface based on ``OUDSColoredSurface``.
    /// Will use a surface color, i.e. a kind of configuration to apply considering monochrome mode and color scheme.
    ///
    /// - Parameter surfaceColor: The surface color applied as background on the current view
    public func oudsColoredSurface(_ surfaceColor: OUDSColoredSurface.SurfaceColor) -> some View {
        modifier(OUDSColoredSurfaceModifier(backgroundSurfaceColor: surfaceColor))
    }
}

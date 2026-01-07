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

import Figma
import OUDSComponents
import SwiftUI

struct OUDSVerticalDividerConnection: FigmaConnect {

    let component = OUDSVerticalDivider.self
    let variant = ["Orientation": "Vertical"]
    let figmaNodeUrl: String = "<FIGMA_COMPONENTS_DIVIDER>"

    var body: some View {
        // Divider color can be changed by setting the color parameter
        // to a different OUDSDividerColor enum value
        // OUDSVerticalDivider(color: OUDSDividerColor.emphasized)
        OUDSVerticalDivider()
    }
}

struct OUDSHorizontalDividerConnection: FigmaConnect {
    let component = OUDSHorizontalDivider.self
    let variant = ["Orientation": "Horizontal"]
    let figmaNodeUrl = "<FIGMA_COMPONENTS_DIVIDER>"

    var body: some View {
        // Divider color can be changed by setting the color parameter
        // to a different OUDSDividerColor enum value
        // OUDSHorizontalDivider(color: OUDSDividerColor.emphasized)
        OUDSHorizontalDivider()
    }
}

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

struct OUDSSwitchConnection: FigmaConnect {

    let component = OUDSSwitch.self
    let figmaNodeUrl = "<FIGMA_COMPONENTS_SWITCH>"

    @FigmaBoolean("Selected")
    var selected = false

    @FigmaEnum("State",
               mapping: ["Enabled": false,
                         "Hover": false,
                         "Focus": false,
                         "Pressed": false,
                         "Read only": false,
                         "Disabled": true,
                         "Skeleton": false],
               hideDefault: true)
    var isDisabled = false

    @FigmaEnum("State",
               mapping: ["Enabled": false,
                         "Hover": false,
                         "Focus": false,
                         "Pressed": false,
                         "Read only": true,
                         "Disabled": false,
                         "Skeleton": false],
               hideDefault: true)
    var isReadOnly = true

    var body: some View {
        OUDSSwitch(isOn: .constant(selected), accessibilityLabel: "accessibilityLabel", isReadOnly: isReadOnly)
            .disabled(isDisabled)
    }
}

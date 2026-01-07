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

struct OUDSRadioButtonItemWithDescriptionConnection: FigmaConnect {

    let component = OUDSRadioItem.self
    let figmaNodeUrl = "<FIGMA_COMPONENTS_RADIO_BUTTON_ITEM>"
    let variant = ["Description": true]

    @FigmaBoolean("Selected")
    var selected = false

    @FigmaString("✏️ Label")
    var label = "Label"

    @FigmaBoolean("Extra label")
    var hasExtraLabel = false

    @FigmaString("✏️ Extra label")
    var extraLabel: String = "Extra label"

    @FigmaString("✏️ Description")
    var description = "Description"

    //  @FigmaProperty(FigmaType.Instance, "Icon")
    //  val icon: OudsControlItemIcon? = null

    @FigmaBoolean("Divider")
    var divider = false

    @FigmaBoolean("Outlined")
    var isOutlined = false

    @FigmaBoolean("Reverse")
    var isReversed = false

    @FigmaEnum("State",
               mapping: ["Enabled": false,
                         "Hover": false,
                         "Focus": false,
                         "Pressed": false,
                         "Read only": false,
                         "Disabled": true,
                         "Skeleton": false],
               hideDefault: true)
    var isDisabled: Bool = false

    @FigmaEnum("State",
               mapping: ["Enabled": false,
                         "Hover": false,
                         "Focus": false,
                         "Pressed": false,
                         "Read only": true,
                         "Disabled": false,
                         "Skeleton": false],
               hideDefault: true)
    var isReadOnly: Bool = true

    @FigmaBoolean("Error")
    var isError = false

    var body: some View {
        OUDSRadioItem(isOn: .constant(selected),
                      label: label,
                      extraLabel: extraLabel,
                      description: description,
                      icon: nil,
                      flipIcon: false,
                      isOutlined: isOutlined,
                      isReversed: isReversed,
                      isError: isError,
                      errorText: "Error message",
                      isReadOnly: isReadOnly,
                      hasDivider: divider,
                      constrainedMaxWidth: false,
                      action: {})
            .disabled(isDisabled)
    }
}

struct OUDSRadioButtonItemConnection: FigmaConnect {

    let component = OUDSRadioItem.self
    let figmaNodeUrl = "<FIGMA_COMPONENTS_RADIO_BUTTON_ITEM>"
    let variant = ["Description": false]

    @FigmaBoolean("Selected")
    var selected = false

    @FigmaString("✏️ Label")
    var label = "Label"

    @FigmaBoolean("Extra label")
    var hasExtraLabel = false

    @FigmaString("✏️ Extra label")
    var extraLabel = "Extra label"

    //  @FigmaProperty(FigmaType.Instance, "Icon")
    //  val icon: OudsControlItemIcon? = null

    @FigmaBoolean("Divider")
    var divider = false

    @FigmaBoolean("Outlined")
    var isOutlined = false

    @FigmaBoolean("Reverse")
    var isReversed = false

    @FigmaEnum("State",
               mapping: ["Enabled": false,
                         "Hover": false,
                         "Focus": false,
                         "Pressed": false,
                         "Read only": false,
                         "Disabled": true,
                         "Skeleton": false],
               hideDefault: true)
    var isDisabled: Bool = false

    @FigmaEnum("State",
               mapping: ["Enabled": false,
                         "Hover": false,
                         "Focus": false,
                         "Pressed": false,
                         "Read only": true,
                         "Disabled": false,
                         "Skeleton": false],
               hideDefault: true)
    var isReadOnly: Bool = true

    @FigmaBoolean("Error")
    var isError = false

    var body: some View {
        OUDSRadioItem(isOn: .constant(selected),
                      label: label,
                      extraLabel: extraLabel,
                      icon: nil,
                      flipIcon: false,
                      isOutlined: isOutlined,
                      isReversed: isReversed,
                      isError: isError,
                      errorText: "Error message",
                      isReadOnly: isReadOnly,
                      hasDivider: divider,
                      constrainedMaxWidth: false,
                      action: {})
            .disabled(isDisabled)
    }
}

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

struct SwitchItemElement: DesignToolboxElement {
    let name: String
    let image: Image
    let pageDescription: AnyView

    init() {
        name = "app_components_switch_controlItem_label"
        image = Image(decorative: "il_component_switch_controlItem").renderingMode(.original)
        pageDescription = AnyView(DesignToolboxElementPage(
            name: name,
            image: nil,
            description: "app_components_switch_controlItem_description_text",
            illustration: AnyView(SwitchItemPage())))
    }
}

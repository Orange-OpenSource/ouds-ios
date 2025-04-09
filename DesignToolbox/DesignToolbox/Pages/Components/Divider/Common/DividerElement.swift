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

struct DividerElement: DesignToolboxElement {
    let name: String
    let image: Image
    let pageDescription: AnyView

    init(orientation: DividerConfigurationModel.Orientation) {
        name = orientation == .horizontal ? "app_components_divider_horizontalDivider_label" : "app_components_divider_verticalDivider_label"
        image = Image(decorative: "il_component_divider").renderingMode(.original)
        pageDescription = AnyView(DesignToolboxElementPage(
                name: name,
                image: nil,
                description: "",
                illustration: AnyView(DividerPage(orientation: orientation))
            )
        )
    }
}

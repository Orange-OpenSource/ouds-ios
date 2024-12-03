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

// swiftlint:disable force_cast
@MainActor
let kButtonEntry = ComponentEntity(
    name: "Button",
    imageName: "ic_token",
    configuration: ButtonPageConfigurationModel(),
    componentView: { model in
        AnyView(ButtonPageComponent(model: model as! ButtonPageConfigurationModel))
    },
    configurationView: { model in
        AnyView(ButtonPageConfiguration(model: model as! ButtonPageConfigurationModel))
    }
)
// swiftlint:enable force_cast

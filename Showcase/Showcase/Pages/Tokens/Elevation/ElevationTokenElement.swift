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

struct ElevationTokenElement: ShowcaseElement {
    let name: String
    let imageName: String
    let pageDescription: AnyView

    init() {
        name = "app_tokens_elevation_label"
        imageName = "ic_layers"
        pageDescription = AnyView(ShowcaseElementPage(
            name: name,
            imageName: imageName,
            description: "app_tokens_elevation_description_text",
            illustration: AnyView(ElevationTokenPage())))
    }
}

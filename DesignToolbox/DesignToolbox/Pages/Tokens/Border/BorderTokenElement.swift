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

struct BorderTokenElement: DesignToolboxElement {
    let name: String
    let image: Image
    let pageDescription: AnyView

    init() {
        name = "app_tokens_border_label"
<<<<<<< HEAD
        image = Image(decorative: "ic_border").renderingMode(.template)
        pageDescription = AnyView(ShowcaseElementPage(
=======
        imageName = "ic_border"
        pageDescription = AnyView(DesignToolboxElementPage(
>>>>>>> 23cfdd7ca (refactor: objects and files of demo app (#85))
            name: name,
            image: Image(decorative: "ic_border").renderingMode(.template),
            description: "app_tokens_border_description_text",
            illustration: AnyView(BorderTokenPage())))
    }
}

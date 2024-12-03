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

struct DimensionTokenElement: ShowcaseElement {

    let name: String
    let imageName: String
    let pageDescription: AnyView

    init() {
        let variants: [TokenElement] = [
            SizeTokenElement(),
            SpaceTokenElement(),
        ]

        name = "app_tokens_dimension_label"
        imageName = "ic_dimension"
        pageDescription = AnyView(ShowcaseElementPage(
            name: name,
            imageName: imageName,
            description: "app_tokens_dimension_description_text",
            illustration: AnyView(ShowcaseVariantElement(elements: variants))))
    }
}

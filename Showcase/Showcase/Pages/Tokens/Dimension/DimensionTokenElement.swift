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

struct DimensionTokenElement: TokenElement {
    let name: String
    let imageName: String
    let description: String
    let pageDescription: AnyView

    let variants: [TokenElement] = [
        SizingTokenElement(),
        SpacingTokenElement(),
    ]

    init() {
        name = "app_tokens_dimension_label"
        imageName = "ic_dimension"
        description = "app_tokens_dimension_description_text"
        pageDescription = AnyView(ShowcaseVariantElement(elements: variants))
    }
}
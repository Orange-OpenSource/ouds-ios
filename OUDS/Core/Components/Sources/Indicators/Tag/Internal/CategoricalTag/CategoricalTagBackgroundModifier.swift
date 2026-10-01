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

import OUDSTokensSemantic
import SwiftUI

struct CategoricalTagBackgroundModifier: ViewModifier {

    let category: OUDSCategoricalTag.Category

    @Environment(\.theme) private var theme

    func body(content: Content) -> some View {
        content.background(backgroundColor)
    }

    private var backgroundColor: MultipleColorSemanticToken {
        switch category {
        case .category1:
            theme.categoricalTag.colorBgCategory1
        case .category2:
            theme.categoricalTag.colorBgCategory2
        case .category3:
            theme.categoricalTag.colorBgCategory3
        case .category4:
            theme.categoricalTag.colorBgCategory4
        case .category5:
            theme.categoricalTag.colorBgCategory5
        }
    }
}

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

import OUDS
import OUDSComponents
import SwiftUI

struct ComponentsPage: View {

<<<<<<< HEAD
    let componentElements: [ShowcaseElement] = [
        ButtonElement()
    ]

    var body: some View {
        ShowcaseElementsPage(elements: componentElements)
            .oudsNavigationTitle("app_bottomBar_components_label")
=======
//    let componentElements: [DesignToolboxElement] = [
//        ButtonElement()
//    ]

    var body: some View {
        NavigationView {
            EmptyState()
            //        DesignToolboxElementsPage(elements: componentElements)
                .oudsNavigationTitle("app_bottomBar_components_label")
        }
>>>>>>> 23cfdd7ca (refactor: objects and files of demo app (#85))
    }
}

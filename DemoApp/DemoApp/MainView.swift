//
// Software Name: Orange } Design System
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

struct MainView: View {
    var body: some View {
        TabView {
            GuidelinesPage()
                .tabItem {
                    Label("guidelines.page.title", image: "ic_guidelines")
                }
            ComponentsPage()
                .tabItem {
                    Label("components.page.title", image: "ic_components")
                }
            InfoPage()
                .tabItem {
                    Label("info.page.title", image: "ic_info")
                }

        }
    }
}

#Preview {
    MainView()
}

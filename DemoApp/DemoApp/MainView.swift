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
                    Label("app_bottomBar_guidelines", image: "ic_guideline_dna")
                }
            ComponentsPage()
                .tabItem {
                    Label("app_bottomBar_components", image: "ic_component_atom")
                }
            AboutPage()
                .tabItem {
                    Label("app_bottomBar_about", image: "ic_info")
                }

        }
    }
}

#Preview {
    MainView()
}

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

import OUDSSwiftUI
import SwiftUI

struct ContentView: View {

    private let theme = OrangeTheme()

    var body: some View {
        OUDSThemeableView(theme: theme) {
            HomeScreen()
        }
    }
}

#Preview {
    ContentView()
        .orangePreview()
}

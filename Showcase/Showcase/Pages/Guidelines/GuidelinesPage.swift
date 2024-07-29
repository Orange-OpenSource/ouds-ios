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

import OUDSComponents
import SwiftUI

struct GuidelinesPage: View {

    @State private var writtenText: String = ""

    var body: some View {
        NavigationView {
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                OUDSFormTextInput(placeholder: "Placeholder defined in app",
                                  value: $writtenText)

                OUDSFormTextInput(placeholder: "Placeholder defined in app",
                                  value: $writtenText,
                                  isEnabled: false)
            }
            .padding(.horizontal, 20)
            .navigationTitle("app_bottomBar_guidelines")
        }
    }
}

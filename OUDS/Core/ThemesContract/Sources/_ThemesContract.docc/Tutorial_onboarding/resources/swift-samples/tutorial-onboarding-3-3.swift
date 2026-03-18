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

struct Navigation: View {

    @Environment(\.theme) private var theme
    @Environment(\.verticalSizeClass) private var verticalSizeClass

    var body: some View {
        VStack(spacing: theme.spaces.fixedNone) {
            OUDSLink(text: "Link", indicator: .next) {}
            OUDSLink(text: "Link", indicator: .back) {}
            OUDSLink(text: "Read OUDS Documentation") {
                UIApplication.shared.open(URL(string: "https://unified-design-system.orange.com")!)
            }
        }
    }
}

#Preview {
    ScrollView {
        Navigation().orangePreview()
    }
}

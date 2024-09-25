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

struct BorderTokenPage: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    
    var foregroundColor: Color {
        switch colorScheme {
        case .light:
            "#f4f4f4".color
        case .dark:
            "#272727".color
        @unknown default:
            fatalError()
        }
    }

    // ==========
    // MARK: Body
    // ==========

    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            rectangle.border(.red, width: theme.borderWidthNone)
            rectangle.border(.red, width: theme.borderWidthDefault)
            rectangle.border(.red, width: theme.borderWidthThin)
            rectangle.border(.red, width: theme.borderWidthMedium)
            rectangle.border(.red, width: theme.borderWidthThick)
            rectangle.border(.red, width: theme.borderWidthThicker)
            rectangle.border(.red, width: theme.borderWidthOutsideFocus)
                .cornerRadius(15)
        }
    }

    var rectangle: some View {
        Rectangle().fill(self.foregroundColor)
            .frame(width: 300, height: 80)
    }
}

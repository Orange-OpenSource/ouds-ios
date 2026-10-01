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

struct CategoricalTagLabel: View {

    let size: OUDSTag.Size
    let label: String

    @Environment(\.theme) private var theme

    var body: some View {
        Group {
            switch size {
            case .default:
                Text(label)
                    .labelStrongMedium(theme)
            case .small:
                Text(label)
                    .labelModerateSmall(theme)
            }
        }
        .foregroundColor(theme.categoricalTag.colorContent)
    }
}

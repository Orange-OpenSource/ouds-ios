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

    // MARK: Properties

    let size: OUDSTag.Size
    let label: String
    let isLoading: Bool

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled

    // MARK: Body

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
        .foregroundColor(contentColor)
    }

    // MARK: Helpers

    private var contentColor: MultipleColorSemanticToken {
        if isLoading {
            return theme.colors.contentDefault
        }
        return isEnabled ? theme.categoricalTag.colorContent : theme.colors.contentOnActionDisabled
    }
}

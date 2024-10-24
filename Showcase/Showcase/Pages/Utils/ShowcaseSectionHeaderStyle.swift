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
import OUDSTokensSemantic
import SwiftUI

struct ShowcaseSectionHeaderModifier: ViewModifier {

    @Environment(\.theme) private var theme

    func body(content: Content) -> some View {
        content
            .typeHeadingMedium(theme)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

extension Text {
    func showcaseSectionHeaderStyle() -> some View {
        self.modifier(ShowcaseSectionHeaderModifier())
    }
}
